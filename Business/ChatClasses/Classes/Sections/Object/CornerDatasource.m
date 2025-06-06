// __DEBUG__
// __CLOSE_PRINT__
//
//  CornerDatasource.m
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMsgDatasource.h"
#import "CornerDatasource.h"
//: #import "UITableView+NIMScrollToBottom.h"
#import "UITableView+NIMScrollToBottom.h"
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "FFFTimestampModel.h"
#import "IndexIcon.h"
//: #import "ViewGlobalMacro.h"
#import "ViewGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"

//: @interface FFFSessionMsgDatasource()
@interface CornerDatasource()

//: @property (nonatomic,strong) id<FFFKitMessageProvider> dataProvider;
@property (nonatomic,strong) id<OriginMessageLength> dataProvider;

//: @property (nonatomic,strong) NSMutableDictionary *msgIdDict;
@property (nonatomic,strong) NSMutableDictionary *msgIdDict;

//: @property (nonatomic,assign) BOOL messageModelShowSelect;
@property (nonatomic,assign) BOOL messageModelShowSelect;

//: @end
@end

//: @implementation FFFSessionMsgDatasource
@implementation CornerDatasource
{
    //: NIMSession *_currentSession;
    NIMSession *_currentSession;
    //: dispatch_queue_t _messageQueue;
    dispatch_queue_t _messageQueue;
}

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithPacket:(NIMSession*)session
                         //: config:(id<FFFSessionConfig>)sessionConfig
                         doing:(id<BlueConfig>)sessionConfig
{
    //: if (self = [self init]) {
    if (self = [self init]) {
        //: _currentSession = session;
        _currentSession = session;
        //: _sessionConfig = sessionConfig;
        _sessionConfig = sessionConfig;
        //: id<FFFKitMessageProvider> dataProvider = [_sessionConfig respondsToSelector:@selector(messageDataProvider)] ? [_sessionConfig messageDataProvider] : nil;
        id<OriginMessageLength> dataProvider = [_sessionConfig respondsToSelector:@selector(progressSession)] ? [_sessionConfig progressSession] : nil;

        //: NSInteger limit = [MyUserKit sharedKit].config.messageLimit;
        NSInteger limit = [Notice fullKit].config.messageLimit;
        //: NSTimeInterval showTimestampInterval = [MyUserKit sharedKit].config.messageInterval;
        NSTimeInterval showTimestampInterval = [Notice fullKit].config.messageInterval;

        //: _dataProvider = dataProvider;
        _dataProvider = dataProvider;
        //: _messageLimit = limit;
        _messageLimit = limit;
        //: _showTimeInterval = showTimestampInterval;
        _showTimeInterval = showTimestampInterval;
        //: _items = [NSMutableArray array];
        _items = [NSMutableArray array];
        //: _msgIdDict = [NSMutableDictionary dictionary];
        _msgIdDict = [NSMutableDictionary dictionary];
        //: _pinUsers = [NSMutableDictionary dictionary];
        _pinUsers = [NSMutableDictionary dictionary];
    }
    //: return self;
    return self;
}


//: - (void)resetMessages:(void(^)(NSError *error)) handler
- (void)min:(void(^)(NSError *error)) handler
{
    //: [self enhancedResetMessages:^(NSError *error, NSArray *models) {
    [self language:^(NSError *error, NSArray *models) {
       //: if (handler)
       if (handler)
       {
           //: handler(error);
           handler(error);
       }
    //: }];
    }];
}

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler
- (void)language:(void(^)(NSError *error, NSArray *))handler
{
    //: self.items = [NSMutableArray array];
    self.items = [NSMutableArray array];
    //: self.msgIdDict = [NSMutableDictionary dictionary];
    self.msgIdDict = [NSMutableDictionary dictionary];
    //: if ([self.dataProvider respondsToSelector:@selector(pullDown:handler:)])
    if ([self.dataProvider respondsToSelector:@selector(name:actionName:)])
    {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [self.dataProvider pullDown:nil handler:^(NSError *error, NSArray<NIMMessage *> *messages) {
        [self.dataProvider name:nil actionName:^(NSError *error, NSArray<NIMMessage *> *messages) {
            //: if ([NSThread isMainThread]) {^{ NSArray *models = [self modelsWithMessages:messages]; [wself appendMessageModels:models]; if (handler) { handler(error, models); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ NSArray *models = [self modelsWithMessages:messages]; [wself appendMessageModels:models]; if (handler) { handler(error, models); } });};
            if ([NSThread isMainThread]) {^{ NSArray *models = [self color:messages]; [wself flush:models]; if (handler) { handler(error, models); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ NSArray *models = [self color:messages]; [wself flush:models]; if (handler) { handler(error, models); } });};






        //: }];
        }];
    }
    //: else
    else
    {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: NSArray<NIMMessage *> *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
        NSArray<NIMMessage *> *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
                                                                                   //: message:nil
                                                                                   message:nil
                                                                                     //: limit:_messageLimit];
                                                                                     limit:_messageLimit];

        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (messages.count == 0){
        if (messages.count == 0){
            //: [self pullDown:nil handler:^(NSError *error, NSArray<NIMMessage *> *messages) {
            [self name:nil actionName:^(NSError *error, NSArray<NIMMessage *> *messages) {
                //: NSArray *models = [self modelsWithMessages:messages];
                NSArray *models = [self color:messages];
                //: [self appendMessageModels:models];
                [self flush:models];
                //: if (handler) {
                if (handler) {
                    //: handler(nil,models);
                    handler(nil,models);
                }
            //: }];
            }];
            //: return;
            return;
        }

        //: NSArray *models = [self modelsWithMessages:messages];
        NSArray *models = [self color:messages];
        //: [self appendMessageModels:models];
        [self flush:models];
        //: if (handler) {
        if (handler) {
            //: handler(nil,models);
            handler(nil,models);
        }
    }
}


/**
 *  从头插入消息
 *
 *  @param messages 消息
 *
 *  @return 插入后table要滑动到的位置
 */
//: - (NSInteger)insertMessages:(NSArray *)messages{
- (NSInteger)click:(NSArray *)messages{
    //: NSInteger count = self.items.count;
    NSInteger count = self.items.count;
    //: for (NIMMessage *message in messages.reverseObjectEnumerator.allObjects) {
    for (NIMMessage *message in messages.reverseObjectEnumerator.allObjects) {
        //: [self insertMessage:message];
        [self nameDoing:message];
    }
    //: NSInteger currentIndex = self.items.count - 1;
    NSInteger currentIndex = self.items.count - 1;
    //: return currentIndex - count;
    return currentIndex - count;
}

/**
 *  从后插入消息
 *
 *  @param models 消息集合
 *
 *  @return 插入的消息的index
 */
//: - (NSArray *)appendMessageModels:(NSArray *)models{
- (NSArray *)flush:(NSArray *)models{
    //: if (!models.count) {
    if (!models.count) {
        //: return @[];
        return @[];
    }
    //: NSMutableArray *append = [[NSMutableArray alloc] init];
    NSMutableArray *append = [[NSMutableArray alloc] init];
    //: for (FFFMessageModel *model in models) {
    for (MaxLink *model in models) {
        //: if ([self modelIsExist:model]) {
        if ([self show:model]) {
            //: continue;
            continue;
        }
        //: NSArray *result = [self insertMessageModel:model index:self.items.count];
        NSArray *result = [self index:model futurism:self.items.count];
        //: [append addObjectsFromArray:result];
        [append addObjectsFromArray:result];
    }
    //: return append;
    return append;
}


/**
 *  从中间插入消息
 *
 *  @param models 消息集合
 *
 *  @return 插入消息的index
 */
//: - (NSArray *)insertMessageModels:(NSArray *)models{
- (NSArray *)tingHigh:(NSArray *)models{
    //: if (!models.count) {
    if (!models.count) {
        //: return @[];
        return @[];
    }
    //: NSMutableArray *insert = [[NSMutableArray alloc] init];
    NSMutableArray *insert = [[NSMutableArray alloc] init];
    //由于找到插入位置后会直接插入，所以这里按时间戳大小先排个序，避免造成先插了时间大的，再插了时间小的，导致之前时间大的消息的位置还需要后移的情况.
    //: NSArray *sortModels = [models sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
    NSArray *sortModels = [models sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
        //: FFFMessageModel *first = obj1;
        MaxLink *first = obj1;
        //: FFFMessageModel *second = obj2;
        MaxLink *second = obj2;
        //: return first.messageTime < second.messageTime ? NSOrderedAscending : NSOrderedDescending;
        return first.messageTime < second.messageTime ? NSOrderedAscending : NSOrderedDescending;
    //: }];
    }];
    //: for (FFFMessageModel *model in sortModels) {
    for (MaxLink *model in sortModels) {
        //: if ([self modelIsExist:model]) {
        if ([self show:model]) {
            //: continue;
            continue;
        }

        //: NSInteger i = [self findInsertPosistion:model];
        NSInteger i = [self bar:model];
        //: NSArray *result = [self insertMessageModel:model index:i];
        NSArray *result = [self index:model futurism:i];
        //: [insert addObjectsFromArray:result];
        [insert addObjectsFromArray:result];
    }
    //: return insert;
    return insert;
}


//: - (NSInteger)indexAtModelArray:(FFFMessageModel *)model
- (NSInteger)searchedAtColor:(MaxLink *)model
{
    //: __block NSInteger index = -1;
    __block NSInteger index = -1;
    //: if (![_msgIdDict objectForKey:model.message.messageId]) {
    if (![_msgIdDict objectForKey:model.message.messageId]) {
        //: return index;
        return index;
    }
    //: [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: if ([obj isKindOfClass:[FFFMessageModel class]]) {
        if ([obj isKindOfClass:[MaxLink class]]) {
            //: if ([model isEqual:obj]) {
            if ([model isEqual:obj]) {
                //: index = idx;
                index = idx;
                //: *stop = YES;
                *stop = YES;
            }
        }
    //: }];
    }];
    //: return index;
    return index;
}

//: #pragma mark - msg
#pragma mark - msg

//: - (BOOL)modelIsExist:(FFFMessageModel *)model
- (BOOL)show:(MaxLink *)model
{
    //: return [_msgIdDict objectForKey:model.message.messageId] != nil;
    return [_msgIdDict objectForKey:model.message.messageId] != nil;
}


//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler
- (void)image:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler
{
    //: __block FFFMessageModel *currentOldestMsg = nil;
    __block MaxLink *currentOldestMsg = nil;
    //: [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.items enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: if ([obj isKindOfClass:[FFFMessageModel class]]) {
        if ([obj isKindOfClass:[MaxLink class]]) {
            //: currentOldestMsg = (FFFMessageModel*)obj;
            currentOldestMsg = (MaxLink*)obj;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: if ([self.dataProvider respondsToSelector:@selector(pullDown:handler:)])
    if ([self.dataProvider respondsToSelector:@selector(name:actionName:)])
    {
        //: [self.dataProvider pullDown:currentOldestMsg.message handler:^(NSError *error, NSArray *messages) {
        [self.dataProvider name:currentOldestMsg.message actionName:^(NSError *error, NSArray *messages) {
            //: if ([NSThread isMainThread]) {^{ if (handler) { handler(index,messages,error); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ if (handler) { handler(index,messages,error); } });};
            if ([NSThread isMainThread]) {^{ if (handler) { handler(index,messages,error); } }();} else {dispatch_async(dispatch_get_main_queue(), ^{ if (handler) { handler(index,messages,error); } });};




        //: }];
        }];
        //: return;
        return;
    }
    //: else
    else
    {
        //: NSArray *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
        NSArray *messages = [[[NIMSDK sharedSDK] conversationManager] messagesInSession:_currentSession
                                                                                //: message:currentOldestMsg.message
                                                                                message:currentOldestMsg.message
                                                                                  //: limit:self.messageLimit];
                                                                                  limit:self.messageLimit];

        //: if (messages.count == 0){
        if (messages.count == 0){
            /// 如果本地db 消息为空，读服务端会话
            //: [self pullDown:currentOldestMsg.message handler:^(NSError *error, NSArray<NIMMessage *> *messages) {
            [self name:currentOldestMsg.message actionName:^(NSError *error, NSArray<NIMMessage *> *messages) {
                //: index = [self insertMessages:messages];
                index = [self click:messages];
                //: if (handler) {
                if (handler) {
                    //: handler(index,messages,nil);
                    handler(index,messages,nil);
                }
            //: }];
            }];
            //: return;
            return;
        }

        //: index = [self insertMessages:messages];
        index = [self click:messages];
        //: if (handler) {
        if (handler) {
            //: if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};
            if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};


        }
    }
}

//: - (void)pullDown:(NIMMessage *)firstMessage handler:(NIMKitDataProvideHandler)handler{
- (void)name:(NIMMessage *)firstMessage actionName:(NIMKitDataProvideHandler)handler{
    //: [self remoteFetchMessage:firstMessage handler:handler];
    [self bar:firstMessage model:handler];
}

//: - (void)remoteFetchMessage:(NIMMessage *)message
- (void)bar:(NIMMessage *)message
                   //: handler:(NIMKitDataProvideHandler)handler
                   model:(NIMKitDataProvideHandler)handler
{
    //: NIMHistoryMessageSearchOption *searchOpt = [[NIMHistoryMessageSearchOption alloc] init];
    NIMHistoryMessageSearchOption *searchOpt = [[NIMHistoryMessageSearchOption alloc] init];
    //: searchOpt.startTime = 0;
    searchOpt.startTime = 0;
    //: searchOpt.endTime = message.timestamp;
    searchOpt.endTime = message.timestamp;
    //: searchOpt.currentMessage = message;
    searchOpt.currentMessage = message;
    //: searchOpt.limit = 20;
    searchOpt.limit = 20;
    //: [[NIMSDK sharedSDK].conversationManager fetchMessageHistory:_currentSession option:searchOpt result:^(NSError *error, NSArray *messages) {
    [[NIMSDK sharedSDK].conversationManager fetchMessageHistory:_currentSession option:searchOpt result:^(NSError *error, NSArray *messages) {
        //: if (handler) {
        if (handler) {
            //: handler(error,messages.reverseObjectEnumerator.allObjects);
            handler(error,messages.reverseObjectEnumerator.allObjects);
        //: };
        };
    //: }];
    }];
}

//: - (void)loadPullUpMessagesWithComplete:(void (^)(NSInteger, NSArray *, NSError *))handler {
- (void)white:(void (^)(NSInteger, NSArray *, NSError *))handler {
    //: __block FFFMessageModel *currentNewestMsg = self.items.lastObject;
    __block MaxLink *currentNewestMsg = self.items.lastObject;
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: NIMMessageSearchOption *option = [NIMMessageSearchOption new];
    NIMMessageSearchOption *option = [NIMMessageSearchOption new];
    //: option.startTime = currentNewestMsg.messageTime - 0.1;
    option.startTime = currentNewestMsg.messageTime - 0.1;
    //: option.limit = [MyUserKit sharedKit].config.messageLimit;
    option.limit = [Notice fullKit].config.messageLimit;
    //: option.allMessageTypes = YES;
    option.allMessageTypes = YES;
    //: option.order = NIMMessageSearchOrderAsc;
    option.order = NIMMessageSearchOrderAsc;
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].conversationManager searchMessages:_currentSession
    [[NIMSDK sharedSDK].conversationManager searchMessages:_currentSession
                                                    //: option:option
                                                    option:option
                                                    //: result:^(NSError * _Nullable error, NSArray<NIMMessage *> * _Nullable messages) {
                                                    result:^(NSError * _Nullable error, NSArray<NIMMessage *> * _Nullable messages) {
                                                        //: index = [wself appendMessageModels:[self modelsWithMessages:messages]].count;
                                                        index = [wself flush:[self color:messages]].count;
                                                        //: if (handler) {
                                                        if (handler) {
                                                            //: if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};
                                                            if ([NSThread isMainThread]) {^{ handler(index,messages,nil); }();} else {dispatch_async(dispatch_get_main_queue(), ^{ handler(index,messages,nil); });};


                                                        }
                                                    //: }];
                                                    }];
}

//: - (void)loadMessagePins:(void (^)(NSError *))handler
- (void)nameLoadDownTelephoneMessage:(void (^)(NSError *))handler
{
    //: [NIMSDK.sharedSDK.chatExtendManager loadMessagePinsForSession:_currentSession completion:^(NSError * _Nonnull error, NSArray<NIMMessagePinItem *> * _Nullable items) {
    [NIMSDK.sharedSDK.chatExtendManager loadMessagePinsForSession:_currentSession completion:^(NSError * _Nonnull error, NSArray<NIMMessagePinItem *> * _Nullable items) {
        //: [items enumerateObjectsUsingBlock:^(NIMMessagePinItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [items enumerateObjectsUsingBlock:^(NIMMessagePinItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: NSString *pinUserID = obj.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
            NSString *pinUserID = obj.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
            //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
            Option *option = [[Option alloc] init];
            //: option.session = _currentSession;
            option.session = _currentSession;
            //: self.pinUsers[obj.messageId] = [MyUserKit.sharedKit infoByUser:pinUserID option:option].showName;
            self.pinUsers[obj.messageId] = [Notice.fullKit value:pinUserID manager:option].showName;
        //: }];
        }];
        //: if (handler) {
        if (handler) {
            //: handler(nil);
            handler(nil);
        }
    //: }];
    }];
}

//: - (NSArray*)deleteMessageModel:(FFFMessageModel *)msgModel
- (NSArray*)alongShow:(MaxLink *)msgModel
{
    //: NSMutableArray *dels = [NSMutableArray array];
    NSMutableArray *dels = [NSMutableArray array];
    //: NSInteger delTimeIndex = -1;
    NSInteger delTimeIndex = -1;
    //: NSInteger delMsgIndex = [self.items indexOfObject:msgModel];
    NSInteger delMsgIndex = [self.items indexOfObject:msgModel];
    //: if (delMsgIndex > 0) {
    if (delMsgIndex > 0) {
        //: BOOL delMsgIsSingle = (delMsgIndex == self.items.count-1 || [self.items[delMsgIndex+1] isKindOfClass:[FFFTimestampModel class]]);
        BOOL delMsgIsSingle = (delMsgIndex == self.items.count-1 || [self.items[delMsgIndex+1] isKindOfClass:[IndexIcon class]]);
        //: if ([self.items[delMsgIndex-1] isKindOfClass:[FFFTimestampModel class]] && delMsgIsSingle) {
        if ([self.items[delMsgIndex-1] isKindOfClass:[IndexIcon class]] && delMsgIsSingle) {
            //: delTimeIndex = delMsgIndex-1;
            delTimeIndex = delMsgIndex-1;
            //: [self.items removeObjectAtIndex:delTimeIndex];
            [self.items removeObjectAtIndex:delTimeIndex];
            //: [dels addObject:@(delTimeIndex)];
            [dels addObject:@(delTimeIndex)];
        }
    }
    //: if (delMsgIndex > -1) {
    if (delMsgIndex > -1) {
        //: [self.items removeObject:msgModel];
        [self.items removeObject:msgModel];
        //: [_msgIdDict removeObjectForKey:msgModel.message.messageId];
        [_msgIdDict removeObjectForKey:msgModel.message.messageId];
        //: [dels addObject:@(delMsgIndex)];
        [dels addObject:@(delMsgIndex)];
    }
    //: return dels;
    return dels;
}

//: - (NSArray<NSIndexPath *> *)deleteModels:(NSRange)range
- (NSArray<NSIndexPath *> *)button:(NSRange)range
{
    //: NSArray *models = [self.items subarrayWithRange:range];
    NSArray *models = [self.items subarrayWithRange:range];
    //: NSMutableArray *dels = [NSMutableArray array];
    NSMutableArray *dels = [NSMutableArray array];
    //: NSMutableArray *all = [NSMutableArray arrayWithArray:self.items];
    NSMutableArray *all = [NSMutableArray arrayWithArray:self.items];
    //: for (FFFMessageModel *model in models) {
    for (MaxLink *model in models) {
        //: if ([model isKindOfClass:[FFFTimestampModel class]]) {
        if ([model isKindOfClass:[IndexIcon class]]) {
            //: continue;
            continue;
        }
        //: NSInteger delTimeIndex = -1;
        NSInteger delTimeIndex = -1;
        //: NSInteger delMsgIndex = [all indexOfObject:model];
        NSInteger delMsgIndex = [all indexOfObject:model];
        //: if (delMsgIndex > 0) {
        if (delMsgIndex > 0) {
            //: BOOL delMsgIsSingle = (delMsgIndex == all.count-1 || [all[delMsgIndex+1] isKindOfClass:[FFFTimestampModel class]]);
            BOOL delMsgIsSingle = (delMsgIndex == all.count-1 || [all[delMsgIndex+1] isKindOfClass:[IndexIcon class]]);
            //: if ([all[delMsgIndex-1] isKindOfClass:[FFFTimestampModel class]] && delMsgIsSingle) {
            if ([all[delMsgIndex-1] isKindOfClass:[IndexIcon class]] && delMsgIsSingle) {
                //: delTimeIndex = delMsgIndex-1;
                delTimeIndex = delMsgIndex-1;
                //: [self.items removeObjectAtIndex:delTimeIndex];
                [self.items removeObjectAtIndex:delTimeIndex];
                //: NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delTimeIndex inSection:0];
                NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delTimeIndex inSection:0];
                //: [dels addObject:indexpath];
                [dels addObject:indexpath];
            }
        }
        //: if (delMsgIndex > -1) {
        if (delMsgIndex > -1) {
            //: [self.items removeObject:model];
            [self.items removeObject:model];
            //: [_msgIdDict removeObjectForKey:model.message.messageId];
            [_msgIdDict removeObjectForKey:model.message.messageId];
            //: NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delMsgIndex inSection:0];
            NSIndexPath *indexpath = [NSIndexPath indexPathForRow:delMsgIndex inSection:0];
            //: [dels addObject:indexpath];
            [dels addObject:indexpath];
        }
    }
    //: return dels;
    return dels;
}

//: - (void)cleanCache
- (void)everyGreen
{
    //: for (id item in self.items)
    for (id item in self.items)
    {
        //: if ([item isKindOfClass:[FFFMessageModel class]])
        if ([item isKindOfClass:[MaxLink class]])
        {
            //: FFFMessageModel *model = (FFFMessageModel *)item;
            MaxLink *model = (MaxLink *)item;
            //: [model cleanCache];
            [model cache];
        }
    }
}

//: - (void)refreshMessageModelShowSelect:(BOOL)isShow {
- (void)doingLength:(BOOL)isShow {
    //: _messageModelShowSelect = isShow;
    _messageModelShowSelect = isShow;

    //: for (id item in self.items)
    for (id item in self.items)
    {
        //: if ([item isKindOfClass:[FFFMessageModel class]])
        if ([item isKindOfClass:[MaxLink class]])
        {
            //: FFFMessageModel *model = (FFFMessageModel *)item;
            MaxLink *model = (MaxLink *)item;
            //: model.shouldShowSelect = isShow;
            model.shouldShowSelect = isShow;
            //: model.selected = NO;
            model.selected = NO;
            //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
            if ([_sessionConfig respondsToSelector:@selector(visualCommunication:)]) {
                //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
                model.disableSelected = [_sessionConfig visualCommunication:model.message];;
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
            if ([_sessionConfig respondsToSelector:@selector(assemblageTab)]) {
                //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
                model.enableRepliedContent = [_sessionConfig assemblageTab];
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
            if ([_sessionConfig respondsToSelector:@selector(valueBy)]) {
                //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
                model.enableQuickComments = [_sessionConfig valueBy];
            }
        }
    }
}

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model
- (void)team:(MaxLink *)model
{
    //: if ([_sessionConfig respondsToSelector:@selector(shouldShowPinContent)]) {
    if ([_sessionConfig respondsToSelector:@selector(bringHome)]) {
        //: model.shouldShowPinContent = [_sessionConfig shouldShowPinContent];
        model.shouldShowPinContent = [_sessionConfig bringHome];
    }
    //: model.pinUserName = self.pinUsers[model.message.messageId];
    model.pinUserName = self.pinUsers[model.message.messageId];
}

//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
- (void)marginCallback:(NIMMessage *)message performance:(void (^)(NSError *))handler
{
    //: if (!message) {
    if (!message) {
        //: !handler ?: handler(nil);
        !handler ?: handler(nil);
        //: return;
        return;
    }
    //: NIMMessagePinItem *item = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    NIMMessagePinItem *item = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    //: NSString *accountID = item.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
    NSString *accountID = item.accountID ?: NIMSDK.sharedSDK.loginManager.currentAccount;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: NSString *pinUserName = [MyUserKit.sharedKit infoByUser:accountID option:option].showName;
    NSString *pinUserName = [Notice.fullKit value:accountID manager:option].showName;
    //: self.pinUsers[message.messageId] = pinUserName;
    self.pinUsers[message.messageId] = pinUserName;
    //: !handler ?: handler(nil);
    !handler ?: handler(nil);
}

//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler
- (void)textOrigin:(NIMMessage *)message totalerval:(void (^)(NSError *))handler
{
    //: if (message) {
    if (message) {
        //: self.pinUsers[message.messageId] = nil;
        self.pinUsers[message.messageId] = nil;
    }
    //: !handler ?: handler(nil);
    !handler ?: handler(nil);
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)insertMessage:(NIMMessage *)message{
- (void)nameDoing:(NIMMessage *)message{
    //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
    MaxLink *model = [[MaxLink alloc] initWithDigitizer:message];
    //: model.shouldShowSelect = _messageModelShowSelect;
    model.shouldShowSelect = _messageModelShowSelect;
    //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
    if ([_sessionConfig respondsToSelector:@selector(visualCommunication:)]) {
        //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
        model.disableSelected = [_sessionConfig visualCommunication:model.message];;
    }
    //: if ([_sessionConfig respondsToSelector:@selector(enableRepliedContent)]) {
    if ([_sessionConfig respondsToSelector:@selector(enableRepliedContent)]) {
        //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
        model.enableRepliedContent = [_sessionConfig assemblageTab];
    }
    //: if ([_sessionConfig respondsToSelector:@selector(shouldShowPinContent)]) {
    if ([_sessionConfig respondsToSelector:@selector(bringHome)]) {
        //: model.shouldShowPinContent = [_sessionConfig shouldShowPinContent];
        model.shouldShowPinContent = [_sessionConfig bringHome];
    }
    //: model.pinUserName = self.pinUsers[model.message.messageId];
    model.pinUserName = self.pinUsers[model.message.messageId];
    //: if ([self modelIsExist:model]) {
    if ([self show:model]) {
        //: return;
        return;
    }


    //: NSTimeInterval firstTimeInterval = [self firstTimeInterval];
    NSTimeInterval firstTimeInterval = [self fast];
    //: if (firstTimeInterval && firstTimeInterval - model.messageTime < self.showTimeInterval) {
    if (firstTimeInterval && firstTimeInterval - model.messageTime < self.showTimeInterval) {
        //此时至少有一条消息和时间戳（如果有的话）
        //干掉时间戳（如果有的话）
        //: if ([self.items.firstObject isKindOfClass:[FFFTimestampModel class]]) {
        if ([self.items.firstObject isKindOfClass:[IndexIcon class]]) {
            //: [self.items removeObjectAtIndex:0];
            [self.items removeObjectAtIndex:0];
        }
    }
    //: [self.items insertObject:model atIndex:0];
    [self.items insertObject:model atIndex:0];
    //: if ((![self.dataProvider respondsToSelector:@selector(needTimetag)] || self.dataProvider.needTimetag) && self.dataProvider) {
    if ((![self.dataProvider respondsToSelector:@selector(versionExtra)] || self.dataProvider.versionExtra) && self.dataProvider) {
        //这种情况下必须要插入时间戳
        //: FFFTimestampModel *timeModel = [[FFFTimestampModel alloc] init];
        IndexIcon *timeModel = [[IndexIcon alloc] init];
        //: timeModel.messageTime = model.messageTime;
        timeModel.messageTime = model.messageTime;
        //: [self.items insertObject:timeModel atIndex:0];
        [self.items insertObject:timeModel atIndex:0];
    }
    //: [self.msgIdDict setObject:model forKey:model.message.messageId];
    [self.msgIdDict setObject:model forKey:model.message.messageId];
}


//: - (NSArray *)insertMessageModel:(FFFMessageModel *)model index:(NSInteger)index{
- (NSArray *)index:(MaxLink *)model futurism:(NSInteger)index{
    //: NSMutableArray *inserts = [[NSMutableArray alloc] init];
    NSMutableArray *inserts = [[NSMutableArray alloc] init];
    //: if (![self.dataProvider respondsToSelector:@selector(needTimetag)] || self.dataProvider.needTimetag)
    if (![self.dataProvider respondsToSelector:@selector(versionExtra)] || self.dataProvider.versionExtra)
    {
        //: if ([self shouldInsertTimestamp:model]) {
        if ([self futurismTimestamp:model]) {
            //: FFFTimestampModel *timeModel = [[FFFTimestampModel alloc] init];
            IndexIcon *timeModel = [[IndexIcon alloc] init];
            //: timeModel.messageTime = model.messageTime;
            timeModel.messageTime = model.messageTime;
            //: [self.items insertObject:timeModel atIndex:index];
            [self.items insertObject:timeModel atIndex:index];
            //: [inserts addObject:@(index)];
            [inserts addObject:@(index)];
            //: index++;
            index++;
        }
    }
    //: [self.items insertObject:model atIndex:index];
    [self.items insertObject:model atIndex:index];
    //: [self.msgIdDict setObject:model forKey:model.message.messageId];
    [self.msgIdDict setObject:model forKey:model.message.messageId];
    //: [inserts addObject:@(index)];
    [inserts addObject:@(index)];
    //: return inserts;
    return inserts;
}

//: - (void)subHeadMessages:(NSInteger)count
- (void)sub:(NSInteger)count
{
    //: NSInteger catch = 0;
    NSInteger catch = 0;
    //: NSArray *modelArray = [NSArray arrayWithArray:self.items];
    NSArray *modelArray = [NSArray arrayWithArray:self.items];
    //: for (FFFMessageModel *model in modelArray) {
    for (MaxLink *model in modelArray) {
        //: if ([model isKindOfClass:[FFFMessageModel class]]) {
        if ([model isKindOfClass:[MaxLink class]]) {
            //: catch++;
            catch++;
            //: [self deleteMessageModel:model];
            [self alongShow:model];
        }
        //: if (catch == count) {
        if (catch == count) {
            //: break;
            break;
        }
    }
}

//: - (NSArray<FFFMessageModel *> *)modelsWithMessages:(NSArray<NIMMessage *> *)messages
- (NSArray<MaxLink *> *)color:(NSArray<NIMMessage *> *)messages
{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
        MaxLink *model = [[MaxLink alloc] initWithDigitizer:message];
        //: model.shouldShowSelect = _messageModelShowSelect;
        model.shouldShowSelect = _messageModelShowSelect;
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(visualCommunication:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig visualCommunication:model.message];;
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(assemblageTab)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig assemblageTab];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(valueBy)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig valueBy];
        }
        //: if ([_sessionConfig respondsToSelector:@selector(shouldShowPinContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(bringHome)]) {
            //: model.shouldShowPinContent = [_sessionConfig shouldShowPinContent];
            model.shouldShowPinContent = [_sessionConfig bringHome];
        }
        //: model.pinUserName = self.pinUsers[model.message.messageId];
        model.pinUserName = self.pinUsers[model.message.messageId];
        //: [array addObject:model];
        [array addObject:model];
    }
    //: return array;
    return array;
}


//: - (NSInteger)findInsertPosistion:(FFFMessageModel *)model
- (NSInteger)bar:(MaxLink *)model
{
    //: return [self findInsertPosistion:self.items model:model];
    return [self request:self.items scaleOfMeasurement:model];
}

//: - (NSInteger)findInsertPosistion:(NSArray *)array model:(FFFMessageModel *)model
- (NSInteger)request:(NSArray *)array scaleOfMeasurement:(MaxLink *)model
{
    //: if (array.count == 0) {
    if (array.count == 0) {
        //即初始什么消息都没的情况下，调用了插入消息，放在第一个就好了。
        //: return 0;
        return 0;
    }
    //: if (array.count == 1) {
    if (array.count == 1) {
        //递归出口
        //: FFFMessageModel *obj = array.firstObject;
        MaxLink *obj = array.firstObject;
        //: NSInteger index = [self.items indexOfObject:obj];
        NSInteger index = [self.items indexOfObject:obj];
        //: return obj.messageTime > model.messageTime? index : index+1;
        return obj.messageTime > model.messageTime? index : index+1;
    }
    //: NSInteger sep = (array.count+1) / 2;
    NSInteger sep = (array.count+1) / 2;
    //: FFFMessageModel *center = array[sep];
    MaxLink *center = array[sep];
    //: NSTimeInterval timestamp = [center messageTime];
    NSTimeInterval timestamp = [center messageTime];
    //: NSArray *half;
    NSArray *half;
    //: if (timestamp <= [model messageTime]) {
    if (timestamp <= [model messageTime]) {
        //: half = [array subarrayWithRange:NSMakeRange(sep, array.count - sep)];
        half = [array subarrayWithRange:NSMakeRange(sep, array.count - sep)];
    //: }else{
    }else{
        //: half = [array subarrayWithRange:NSMakeRange(0, sep)];
        half = [array subarrayWithRange:NSMakeRange(0, sep)];
    }
    //: return [self findInsertPosistion:half model:model];
    return [self request:half scaleOfMeasurement:model];
}


//: - (BOOL)shouldInsertTimestamp:(FFFMessageModel *)model
- (BOOL)futurismTimestamp:(MaxLink *)model
{
    //: FFFMessageModel *lastmodel = self.items.lastObject;
    MaxLink *lastmodel = self.items.lastObject;
    //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
    if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        //: return NO;
        return NO;
    }

    //: NIMNotificationObject *object = lastmodel.message.messageObject;
    NIMNotificationObject *object = lastmodel.message.messageObject;
    //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    {
        //: return NO;
        return NO;
    }

    //: NSTimeInterval lastTimeInterval = lastmodel.messageTime;
    NSTimeInterval lastTimeInterval = lastmodel.messageTime;
    //: return model.messageTime - lastTimeInterval > self.showTimeInterval;
    return model.messageTime - lastTimeInterval > self.showTimeInterval;
}

//: - (NSTimeInterval)firstTimeInterval
- (NSTimeInterval)fast
{
    //: if (!self.items.count) {
    if (!self.items.count) {
        //: return 0;
        return 0;
    }
    //: FFFMessageModel *model;
    MaxLink *model;
    //: if (![self.dataProvider respondsToSelector:@selector(needTimetag)] || self.dataProvider.needTimetag) {
    if (![self.dataProvider respondsToSelector:@selector(versionExtra)] || self.dataProvider.versionExtra) {
        //: model = self.items[1];
        model = self.items[1];
    //: }else
    }else
    {
        //: model = self.items[0];
        model = self.items[0];
    }
    //: return model.messageTime;
    return model.messageTime;
}

//: @end
@end
