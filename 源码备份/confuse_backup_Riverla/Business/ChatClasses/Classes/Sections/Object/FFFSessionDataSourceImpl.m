//
//  NIMSessionTableData.m
// MyUserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "FFFSessionDataSourceImpl.h"
#import "FFFSessionMsgDatasource.h"

@interface FFFSessionDataSourceImpl()

@property (nonatomic,strong) NIMSession *session;

@property (nonatomic,strong) FFFSessionMsgDatasource *dataSource;

@property (nonatomic,strong) NSMutableArray *pendingMessages;   //缓存的插入消息,聊天室需要在另外个线程计算高度,减少UI刷新

@property (nonatomic,strong) id<FFFSessionConfig> sessionConfig;

@end

@implementation FFFSessionDataSourceImpl

- (instancetype)initWithSession:(NIMSession *)session
                         config:(id<FFFSessionConfig>)sessionConfig
{
    self = [super init];
    if (self) {
        _session = session;
        _sessionConfig = sessionConfig;
        _pendingMessages = [[NSMutableArray alloc] init];
        _dataSource = [[FFFSessionMsgDatasource alloc] initWithSession:_session config:_sessionConfig];
    }
    return self;
}

- (NSArray *)items
{
    return self.dataSource.items;
}

- (NIMSessionMessageOperateResult *)addMessageModels:(NSArray *)models
{
    NSArray *indexpaths = [self.dataSource appendMessageModels:models];
    NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    result.indexpaths = indexpaths;
    result.messageModels = models;
    return result;
}

- (NIMSessionMessageOperateResult *)insertMessageModels:(NSArray *)models
{
    NSArray *indexpaths = [self.dataSource insertMessageModels:models];
    NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    result.indexpaths = indexpaths;
    result.messageModels = models;
    return result;
}

- (NIMSessionMessageOperateResult *)deleteMessageModel:(FFFMessageModel *)model
{
    NSArray *indexs = [self.dataSource deleteMessageModel:model];
    NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    for (NSNumber *index in indexs) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
        [indexPaths addObject:indexPath];
    }
    result.indexpaths    = indexPaths;
    result.messageModels = @[model];
    return result;
}

- (NIMSessionMessageOperateResult *)updateMessageModel:(FFFMessageModel *)model
{
    NSInteger index = [self.dataSource indexAtModelArray:model];
    [[self.dataSource items] replaceObjectAtIndex:index withObject:model];
    NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    NSIndexPath *indexpath = [NSIndexPath indexPathForRow:index inSection:0];
    result.indexpaths = @[indexpath];
    result.messageModels = @[model];
    return result;
}

- (NSInteger)indexAtModelArray:(FFFMessageModel *)model
{
    return [self.dataSource indexAtModelArray:model];
}

- (NSArray *)deleteModels:(NSRange)range
{
    return [self.dataSource deleteModels:range];
}

- (FFFMessageModel *)findModel:(NIMMessage *)message{
    FFFMessageModel *model;
    for (FFFMessageModel *item in self.dataSource.items.reverseObjectEnumerator.allObjects) {
        if ([item isKindOfClass:[FFFMessageModel class]] && [item.message.messageId isEqual:message.messageId]) {
            model = item;
            //防止那种进了会话又退出去再进来这种行为，防止SDK里回调上来的message和会话持有的message不是一个，导致刷界面刷跪了的情况
//            model.message = message;
        }
    }
    return model;
}

- (void)cleanCache
{
    [self.dataSource cleanCache];
}

- (void)refreshMessageModelShowSelect:(BOOL)isShow {
    [self.dataSource refreshMessageModelShowSelect:isShow];
}

- (void)resetMessages:(void(^)(NSError *error))handler{
    [self.dataSource resetMessages:handler];
}

- (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler
{
    [self.dataSource enhancedResetMessages:handler];
}

- (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler{
    [self.dataSource loadHistoryMessagesWithComplete:handler];
}

- (void)loadNewMessagesWithComplete:(void (^)(NSInteger, NSArray *, NSError *))handler {
    [self.dataSource loadPullUpMessagesWithComplete:handler];
}

- (void)loadMessagePins:(void (^)(NSError *))handler
{
    [self.dataSource loadMessagePins:handler];
}

- (void)willDisplayMessageModel:(FFFMessageModel *)model
{
    [self.dataSource willDisplayMessageModel:model];
}

- (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
{
    [self.dataSource addPinForMessage:message callback:handler];
}

- (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
{
    [self.dataSource removePinForMessage:message callback:handler];
}

- (void)checkAttachmentState:(NSArray *)messages{
    NSArray *items = [NSArray arrayWithArray:messages];
    for (id item in items) {
        NIMMessage *message;
        if ([item isKindOfClass:[NIMMessage class]]) {
            message = item;
        }
        if ([item isKindOfClass:[FFFMessageModel class]]) {
            message = [(FFFMessageModel *)item message];
        }
        if (message && !message.isOutgoingMsg
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.messageType != NIMMessageTypeFile)
        {
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

- (NSDictionary *)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        return [self checkP2PReceipts:receipts];
    }
    else
    {
        return [self checkTeamReceipts:receipts];
    }
    
}

- (NSDictionary *)checkP2PReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    BOOL hasConfig = self.sessionConfig && [self.sessionConfig respondsToSelector:@selector(shouldHandleReceiptForMessage:)];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    BOOL findLastReceipt = NO;
    
    for (NSInteger i = [[self.dataSource items] count] - 1; i >= 0; i--) {
        id item = [[self.dataSource items] objectAtIndex:i];
        if ([item isKindOfClass:[FFFMessageModel class]]) {
            FFFMessageModel *model = (FFFMessageModel *)item;
            NIMMessage *message = [model message];
            if (message.isOutgoingMsg) {
                
                if (!findLastReceipt) {
                    
                    if (message.isRemoteRead && hasConfig && [self.sessionConfig shouldHandleReceiptForMessage:message])
                    {
                        if (model.shouldShowReadLabel) {
                            break;  //当前没有变化
                        }else{
                            dict[@(i)] = model;
                            model.shouldShowReadLabel = YES;
                            findLastReceipt = YES;
                        }
                    }
                }
                else {
                    if (model.shouldShowReadLabel) {
                        dict[@(i)] = model;
                        model.shouldShowReadLabel = NO;
                        break;  //理论上只有一个已读标记在UI上,所以找到就可以跳出循环
                    }
                }
            }
        }
    }
    return dict;
}

- (NSDictionary *)checkTeamReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    NSMutableSet *filtedMessaegeIds = nil;
    if (receipts.count)
    {
        //说明只要局部更新
        filtedMessaegeIds = [[NSMutableSet alloc] init];
        for (NIMMessageReceipt *receipt in receipts)
        {
            [filtedMessaegeIds addObject:receipt.messageId];
        }
    }
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    BOOL hasConfig = self.sessionConfig && [self.sessionConfig respondsToSelector:@selector(shouldHandleReceiptForMessage:)];
    NSMutableArray *queryMessages = [NSMutableArray array];
    for (NSInteger i = [[self.dataSource items] count] - 1; i >= 0; i--)
    {
        id item = [[self.dataSource items] objectAtIndex:i];
        if ([item isKindOfClass:[FFFMessageModel class]])
        {
            FFFMessageModel *model = (FFFMessageModel *)item;
            NIMMessage *message = [model message];
            if (filtedMessaegeIds && ![filtedMessaegeIds containsObject:message.messageId])
            {
                //本次刷新不包含此消息，略过
                continue;
            }
            if (!receipts)
            {
                //说明是全部刷新，这个时候消息的回执数可能是过期的，查刷一下
                [queryMessages addObject:message];
            }

            if (message.isOutgoingMsg)
            {
                if (message.setting.teamReceiptEnabled &&
                    hasConfig &&
                    [self.sessionConfig shouldHandleReceiptForMessage:message])
                {
                    model.shouldShowReadLabel = YES;
                    dict[@(i)] = model;
                }
            }
        }
    }
    if ([queryMessages count])
    {
        [[NIMSDK sharedSDK].chatManager refreshTeamMessageReceipts:queryMessages];
    }


    
    return dict;
}


- (void)sendMessageReceipt:(NSArray *)messages
{
    //只有在当前 Application 是激活的状态下才发送已读回执
    if ([[UIApplication sharedApplication] applicationState] == UIApplicationStateActive)
    {
        if (self.session.sessionType == NIMSessionTypeP2P)
        {
            [self sendP2PMessageReceipt:messages];
        }
        else if (self.session.sessionType == NIMSessionTypeTeam)
        {
            [self sendTeamMessageReceipt:messages];
        }
        else if (self.session.sessionType == NIMSessionTypeSuperTeam)
        {
            //超大群回执功能未开放，先占位
        }
    }
}

- (void)sendP2PMessageReceipt:(NSArray *)messages
{
    //找到最后一个需要发送已读回执的消息标记为已读
    for (NSInteger i = [messages count] - 1; i >= 0; i--) {
        id item = [messages objectAtIndex:i];
        NIMMessage *message = nil;
        if ([item isKindOfClass:[NIMMessage class]])
        {
            message = item;
        }
        else if ([item isKindOfClass:[FFFMessageModel class]])
        {
            message = [(FFFMessageModel *)item message];
        }
        if (message)
        {
            if (!message.isOutgoingMsg &&
                self.sessionConfig &&
                [self.sessionConfig respondsToSelector:@selector(shouldHandleReceiptForMessage:)] &&
                [self.sessionConfig shouldHandleReceiptForMessage:message])
            {
                
                NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
                
                [[[NIMSDK sharedSDK] chatManager] sendMessageReceipt:receipt
                                                          completion:nil];  //忽略错误,如果失败下次再发即可
                return;
            }
        }
    }
}

- (void)sendTeamMessageReceipt:(NSArray *)messages
{
    NSMutableArray *receipts = [NSMutableArray array];
    for (NIMMessage *item in messages)
    {
        NIMMessage *message = nil;
        if ([item isKindOfClass:[NIMMessage class]])
        {
            message = item;
        }
        else if ([item isKindOfClass:[FFFMessageModel class]])
        {
            message = [(FFFMessageModel *)item message];
        }
        if (message)
        {
            if (!message.isOutgoingMsg && message.setting.teamReceiptEnabled)
            {
                NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
                [receipts addObject:receipt];
            }
        }
    }
    if([receipts count])
    {
        [[[NIMSDK sharedSDK] chatManager] sendTeamMessageReceipts:receipts
                                                       completion:nil];
    }
}



@end


@implementation NIMSessionMessageOperateResult

@end
