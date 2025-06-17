// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.m
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionDataSourceImpl.h"
#import "ViewKey.h"
//: #import "FFFSessionMsgDatasource.h"
#import "PointDatasource.h"

//: @interface FFFSessionDataSourceImpl()
@interface ViewKey()

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,strong) FFFSessionMsgDatasource *dataSource;
@property (nonatomic,strong) PointDatasource *dataSource;

//: @property (nonatomic,strong) NSMutableArray *pendingMessages; 
@property (nonatomic,strong) NSMutableArray *pendingMessages; //缓存的插入消息,聊天室需要在另外个线程计算高度,减少UI刷新

//: @property (nonatomic,strong) id<FFFSessionConfig> sessionConfig;
@property (nonatomic,strong) id<FrameConfig> sessionConfig;

//: @end
@end

//: @implementation FFFSessionDataSourceImpl
@implementation ViewKey

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithShow:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig
                         dedication:(id<FrameConfig>)sessionConfig
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
        //: _sessionConfig = sessionConfig;
        _sessionConfig = sessionConfig;
        //: _pendingMessages = [[NSMutableArray alloc] init];
        _pendingMessages = [[NSMutableArray alloc] init];
        //: _dataSource = [[FFFSessionMsgDatasource alloc] initWithSession:_session config:_sessionConfig];
        _dataSource = [[PointDatasource alloc] initWithDevice:_session cannister:_sessionConfig];
    }
    //: return self;
    return self;
}

//: - (NSArray *)items
- (NSArray *)allowShould
{
    //: return self.dataSource.items;
    return self.dataSource.items;
}

//: - (NIMSessionMessageOperateResult *)addMessageModels:(NSArray *)models
- (AlongActivity *)read:(NSArray *)models
{
    //: NSArray *indexpaths = [self.dataSource appendMessageModels:models];
    NSArray *indexpaths = [self.dataSource auditoryImage:models];
    //: NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    AlongActivity *result = [[AlongActivity alloc] init];
    //: result.indexpaths = indexpaths;
    result.indexpaths = indexpaths;
    //: result.messageModels = models;
    result.messageModels = models;
    //: return result;
    return result;
}

//: - (NIMSessionMessageOperateResult *)insertMessageModels:(NSArray *)models
- (AlongActivity *)optionLibrarySelect:(NSArray *)models
{
    //: NSArray *indexpaths = [self.dataSource insertMessageModels:models];
    NSArray *indexpaths = [self.dataSource color:models];
    //: NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    AlongActivity *result = [[AlongActivity alloc] init];
    //: result.indexpaths = indexpaths;
    result.indexpaths = indexpaths;
    //: result.messageModels = models;
    result.messageModels = models;
    //: return result;
    return result;
}

//: - (NIMSessionMessageOperateResult *)deleteMessageModel:(FFFMessageModel *)model
- (AlongActivity *)bar:(StochasticProcessTeam *)model
{
    //: NSArray *indexs = [self.dataSource deleteMessageModel:model];
    NSArray *indexs = [self.dataSource title:model];
    //: NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    AlongActivity *result = [[AlongActivity alloc] init];
    //: NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    //: for (NSNumber *index in indexs) {
    for (NSNumber *index in indexs) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
        //: [indexPaths addObject:indexPath];
        [indexPaths addObject:indexPath];
    }
    //: result.indexpaths = indexPaths;
    result.indexpaths = indexPaths;
    //: result.messageModels = @[model];
    result.messageModels = @[model];
    //: return result;
    return result;
}

//: - (NIMSessionMessageOperateResult *)updateMessageModel:(FFFMessageModel *)model
- (AlongActivity *)possibility:(StochasticProcessTeam *)model
{
    //: NSInteger index = [self.dataSource indexAtModelArray:model];
    NSInteger index = [self.dataSource cell:model];
    //: [[self.dataSource items] replaceObjectAtIndex:index withObject:model];
    [[self.dataSource items] replaceObjectAtIndex:index withObject:model];
    //: NIMSessionMessageOperateResult *result = [[NIMSessionMessageOperateResult alloc] init];
    AlongActivity *result = [[AlongActivity alloc] init];
    //: NSIndexPath *indexpath = [NSIndexPath indexPathForRow:index inSection:0];
    NSIndexPath *indexpath = [NSIndexPath indexPathForRow:index inSection:0];
    //: result.indexpaths = @[indexpath];
    result.indexpaths = @[indexpath];
    //: result.messageModels = @[model];
    result.messageModels = @[model];
    //: return result;
    return result;
}

//: - (NSInteger)indexAtModelArray:(FFFMessageModel *)model
- (NSInteger)quantityRelationHarvestMoonMeasure:(StochasticProcessTeam *)model
{
    //: return [self.dataSource indexAtModelArray:model];
    return [self.dataSource cell:model];
}

//: - (NSArray *)deleteModels:(NSRange)range
- (NSArray *)fast:(NSRange)range
{
    //: return [self.dataSource deleteModels:range];
    return [self.dataSource removeModels:range];
}

//: - (FFFMessageModel *)findModel:(NIMMessage *)message{
- (StochasticProcessTeam *)computerSimulation:(NIMMessage *)message{
    //: FFFMessageModel *model;
    StochasticProcessTeam *model;
    //: for (FFFMessageModel *item in self.dataSource.items.reverseObjectEnumerator.allObjects) {
    for (StochasticProcessTeam *item in self.dataSource.items.reverseObjectEnumerator.allObjects) {
        //: if ([item isKindOfClass:[FFFMessageModel class]] && [item.message.messageId isEqual:message.messageId]) {
        if ([item isKindOfClass:[StochasticProcessTeam class]] && [item.message.messageId isEqual:message.messageId]) {
            //: model = item;
            model = item;
            //防止那种进了会话又退出去再进来这种行为，防止SDK里回调上来的message和会话持有的message不是一个，导致刷界面刷跪了的情况
//            model.message = message;
        }
    }
    //: return model;
    return model;
}

//: - (void)cleanCache
- (void)comment
{
    //: [self.dataSource cleanCache];
    [self.dataSource manager];
}

//: - (void)refreshMessageModelShowSelect:(BOOL)isShow {
- (void)tinkleMessage:(BOOL)isShow {
    //: [self.dataSource refreshMessageModelShowSelect:isShow];
    [self.dataSource film:isShow];
}

//: - (void)resetMessages:(void(^)(NSError *error))handler{
- (void)iconShow:(void(^)(NSError *error))handler{
    //: [self.dataSource resetMessages:handler];
    [self.dataSource min:handler];
}

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler
- (void)frame:(void(^)(NSError *error, NSArray *))handler
{
    //: [self.dataSource enhancedResetMessages:handler];
    [self.dataSource should:handler];
}

//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler{
- (void)independent:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler{
    //: [self.dataSource loadHistoryMessagesWithComplete:handler];
    [self.dataSource image:handler];
}

//: - (void)loadNewMessagesWithComplete:(void (^)(NSInteger, NSArray *, NSError *))handler {
- (void)managingDirector:(void (^)(NSInteger, NSArray *, NSError *))handler {
    //: [self.dataSource loadPullUpMessagesWithComplete:handler];
    [self.dataSource bottom:handler];
}

//: - (void)loadMessagePins:(void (^)(NSError *))handler
- (void)viewPins:(void (^)(NSError *))handler
{
    //: [self.dataSource loadMessagePins:handler];
    [self.dataSource bombUp:handler];
}

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model
- (void)show:(StochasticProcessTeam *)model
{
    //: [self.dataSource willDisplayMessageModel:model];
    [self.dataSource withLimit:model];
}

//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
- (void)past:(NIMMessage *)message path:(void (^)(NSError *))handler
{
    //: [self.dataSource addPinForMessage:message callback:handler];
    [self.dataSource holdfastLikeInfo:message cancel:handler];
}

//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
- (void)keep:(NIMMessage *)message subjectMatter:(void (^)(NSError *))handler
{
    //: [self.dataSource removePinForMessage:message callback:handler];
    [self.dataSource callback:message burrFromCallback:handler];
}

//: - (void)checkAttachmentState:(NSArray *)messages{
- (void)textBlock:(NSArray *)messages{
    //: NSArray *items = [NSArray arrayWithArray:messages];
    NSArray *items = [NSArray arrayWithArray:messages];
    //: for (id item in items) {
    for (id item in items) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if ([item isKindOfClass:[NIMMessage class]]) {
        if ([item isKindOfClass:[NIMMessage class]]) {
            //: message = item;
            message = item;
        }
        //: if ([item isKindOfClass:[FFFMessageModel class]]) {
        if ([item isKindOfClass:[StochasticProcessTeam class]]) {
            //: message = [(FFFMessageModel *)item message];
            message = [(StochasticProcessTeam *)item message];
        }
        //: if (message && !message.isOutgoingMsg
        if (message && !message.isOutgoingMsg
            //: && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            //: && message.messageType != NIMMessageTypeFile)
            && message.messageType != NIMMessageTypeFile)
        {
            //: [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

//: - (NSDictionary *)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (NSDictionary *)magnitude:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: return [self checkP2PReceipts:receipts];
        return [self pencilBox:receipts];
    }
    //: else
    else
    {
        //: return [self checkTeamReceipts:receipts];
        return [self month:receipts];
    }

}

//: - (NSDictionary *)checkP2PReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (NSDictionary *)pencilBox:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: BOOL hasConfig = self.sessionConfig && [self.sessionConfig respondsToSelector:@selector(shouldHandleReceiptForMessage:)];
    BOOL hasConfig = self.sessionConfig && [self.sessionConfig respondsToSelector:@selector(lastsed:)];
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: BOOL findLastReceipt = NO;
    BOOL findLastReceipt = NO;

    //: for (NSInteger i = [[self.dataSource items] count] - 1; i >= 0; i--) {
    for (NSInteger i = [[self.dataSource items] count] - 1; i >= 0; i--) {
        //: id item = [[self.dataSource items] objectAtIndex:i];
        id item = [[self.dataSource items] objectAtIndex:i];
        //: if ([item isKindOfClass:[FFFMessageModel class]]) {
        if ([item isKindOfClass:[StochasticProcessTeam class]]) {
            //: FFFMessageModel *model = (FFFMessageModel *)item;
            StochasticProcessTeam *model = (StochasticProcessTeam *)item;
            //: NIMMessage *message = [model message];
            NIMMessage *message = [model message];
            //: if (message.isOutgoingMsg) {
            if (message.isOutgoingMsg) {

                //: if (!findLastReceipt) {
                if (!findLastReceipt) {

                    //: if (message.isRemoteRead && hasConfig && [self.sessionConfig shouldHandleReceiptForMessage:message])
                    if (message.isRemoteRead && hasConfig && [self.sessionConfig lastsed:message])
                    {
                        //: if (model.shouldShowReadLabel) {
                        if (model.shouldShowReadLabel) {
                            //: break; 
                            break; //当前没有变化
                        //: }else{
                        }else{
                            //: dict[@(i)] = model;
                            dict[@(i)] = model;
                            //: model.shouldShowReadLabel = YES;
                            model.shouldShowReadLabel = YES;
                            //: findLastReceipt = YES;
                            findLastReceipt = YES;
                        }
                    }
                }
                //: else {
                else {
                    //: if (model.shouldShowReadLabel) {
                    if (model.shouldShowReadLabel) {
                        //: dict[@(i)] = model;
                        dict[@(i)] = model;
                        //: model.shouldShowReadLabel = NO;
                        model.shouldShowReadLabel = NO;
                        //: break; 
                        break; //理论上只有一个已读标记在UI上,所以找到就可以跳出循环
                    }
                }
            }
        }
    }
    //: return dict;
    return dict;
}

//: - (NSDictionary *)checkTeamReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (NSDictionary *)month:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: NSMutableSet *filtedMessaegeIds = nil;
    NSMutableSet *filtedMessaegeIds = nil;
    //: if (receipts.count)
    if (receipts.count)
    {
        //说明只要局部更新
        //: filtedMessaegeIds = [[NSMutableSet alloc] init];
        filtedMessaegeIds = [[NSMutableSet alloc] init];
        //: for (NIMMessageReceipt *receipt in receipts)
        for (NIMMessageReceipt *receipt in receipts)
        {
            //: [filtedMessaegeIds addObject:receipt.messageId];
            [filtedMessaegeIds addObject:receipt.messageId];
        }
    }
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: BOOL hasConfig = self.sessionConfig && [self.sessionConfig respondsToSelector:@selector(shouldHandleReceiptForMessage:)];
    BOOL hasConfig = self.sessionConfig && [self.sessionConfig respondsToSelector:@selector(lastsed:)];
    //: NSMutableArray *queryMessages = [NSMutableArray array];
    NSMutableArray *queryMessages = [NSMutableArray array];
    //: for (NSInteger i = [[self.dataSource items] count] - 1; i >= 0; i--)
    for (NSInteger i = [[self.dataSource items] count] - 1; i >= 0; i--)
    {
        //: id item = [[self.dataSource items] objectAtIndex:i];
        id item = [[self.dataSource items] objectAtIndex:i];
        //: if ([item isKindOfClass:[FFFMessageModel class]])
        if ([item isKindOfClass:[StochasticProcessTeam class]])
        {
            //: FFFMessageModel *model = (FFFMessageModel *)item;
            StochasticProcessTeam *model = (StochasticProcessTeam *)item;
            //: NIMMessage *message = [model message];
            NIMMessage *message = [model message];
            //: if (filtedMessaegeIds && ![filtedMessaegeIds containsObject:message.messageId])
            if (filtedMessaegeIds && ![filtedMessaegeIds containsObject:message.messageId])
            {
                //本次刷新不包含此消息，略过
                //: continue;
                continue;
            }
            //: if (!receipts)
            if (!receipts)
            {
                //说明是全部刷新，这个时候消息的回执数可能是过期的，查刷一下
                //: [queryMessages addObject:message];
                [queryMessages addObject:message];
            }

            //: if (message.isOutgoingMsg)
            if (message.isOutgoingMsg)
            {
                //: if (message.setting.teamReceiptEnabled &&
                if (message.setting.teamReceiptEnabled &&
                    //: hasConfig &&
                    hasConfig &&
                    //: [self.sessionConfig shouldHandleReceiptForMessage:message])
                    [self.sessionConfig lastsed:message])
                {
                    //: model.shouldShowReadLabel = YES;
                    model.shouldShowReadLabel = YES;
                    //: dict[@(i)] = model;
                    dict[@(i)] = model;
                }
            }
        }
    }
    //: if ([queryMessages count])
    if ([queryMessages count])
    {
        //: [[NIMSDK sharedSDK].chatManager refreshTeamMessageReceipts:queryMessages];
        [[NIMSDK sharedSDK].chatManager refreshTeamMessageReceipts:queryMessages];
    }



    //: return dict;
    return dict;
}


//: - (void)sendMessageReceipt:(NSArray *)messages
- (void)astatine:(NSArray *)messages
{
    //只有在当前 Application 是激活的状态下才发送已读回执
    //: if ([[UIApplication sharedApplication] applicationState] == UIApplicationStateActive)
    if ([[UIApplication sharedApplication] applicationState] == UIApplicationStateActive)
    {
        //: if (self.session.sessionType == NIMSessionTypeP2P)
        if (self.session.sessionType == NIMSessionTypeP2P)
        {
            //: [self sendP2PMessageReceipt:messages];
            [self doing:messages];
        }
        //: else if (self.session.sessionType == NIMSessionTypeTeam)
        else if (self.session.sessionType == NIMSessionTypeTeam)
        {
            //: [self sendTeamMessageReceipt:messages];
            [self toReceipt:messages];
        }
        //: else if (self.session.sessionType == NIMSessionTypeSuperTeam)
        else if (self.session.sessionType == NIMSessionTypeSuperTeam)
        {
            //超大群回执功能未开放，先占位
        }
    }
}

//: - (void)sendP2PMessageReceipt:(NSArray *)messages
- (void)doing:(NSArray *)messages
{
    //找到最后一个需要发送已读回执的消息标记为已读
    //: for (NSInteger i = [messages count] - 1; i >= 0; i--) {
    for (NSInteger i = [messages count] - 1; i >= 0; i--) {
        //: id item = [messages objectAtIndex:i];
        id item = [messages objectAtIndex:i];
        //: NIMMessage *message = nil;
        NIMMessage *message = nil;
        //: if ([item isKindOfClass:[NIMMessage class]])
        if ([item isKindOfClass:[NIMMessage class]])
        {
            //: message = item;
            message = item;
        }
        //: else if ([item isKindOfClass:[FFFMessageModel class]])
        else if ([item isKindOfClass:[StochasticProcessTeam class]])
        {
            //: message = [(FFFMessageModel *)item message];
            message = [(StochasticProcessTeam *)item message];
        }
        //: if (message)
        if (message)
        {
            //: if (!message.isOutgoingMsg &&
            if (!message.isOutgoingMsg &&
                //: self.sessionConfig &&
                self.sessionConfig &&
                //: [self.sessionConfig respondsToSelector:@selector(shouldHandleReceiptForMessage:)] &&
                [self.sessionConfig respondsToSelector:@selector(lastsed:)] &&
                //: [self.sessionConfig shouldHandleReceiptForMessage:message])
                [self.sessionConfig lastsed:message])
            {

                //: NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
                NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];

                //: [[[NIMSDK sharedSDK] chatManager] sendMessageReceipt:receipt
                [[[NIMSDK sharedSDK] chatManager] sendMessageReceipt:receipt
                                                          //: completion:nil]; 
                                                          completion:nil]; //忽略错误,如果失败下次再发即可
                //: return;
                return;
            }
        }
    }
}

//: - (void)sendTeamMessageReceipt:(NSArray *)messages
- (void)toReceipt:(NSArray *)messages
{
    //: NSMutableArray *receipts = [NSMutableArray array];
    NSMutableArray *receipts = [NSMutableArray array];
    //: for (NIMMessage *item in messages)
    for (NIMMessage *item in messages)
    {
        //: NIMMessage *message = nil;
        NIMMessage *message = nil;
        //: if ([item isKindOfClass:[NIMMessage class]])
        if ([item isKindOfClass:[NIMMessage class]])
        {
            //: message = item;
            message = item;
        }
        //: else if ([item isKindOfClass:[FFFMessageModel class]])
        else if ([item isKindOfClass:[StochasticProcessTeam class]])
        {
            //: message = [(FFFMessageModel *)item message];
            message = [(StochasticProcessTeam *)item message];
        }
        //: if (message)
        if (message)
        {
            //: if (!message.isOutgoingMsg && message.setting.teamReceiptEnabled)
            if (!message.isOutgoingMsg && message.setting.teamReceiptEnabled)
            {
                //: NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
                NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
                //: [receipts addObject:receipt];
                [receipts addObject:receipt];
            }
        }
    }
    //: if([receipts count])
    if([receipts count])
    {
        //: [[[NIMSDK sharedSDK] chatManager] sendTeamMessageReceipts:receipts
        [[[NIMSDK sharedSDK] chatManager] sendTeamMessageReceipts:receipts
                                                       //: completion:nil];
                                                       completion:nil];
    }
}



//: @end
@end


//: @implementation NIMSessionMessageOperateResult
@implementation AlongActivity

//: @end
@end