
#import <Foundation/Foundation.h>

NSString *StringFromMythData(Byte *data);        


//: HEIC
Byte kStr_biasData[] = {81, 4, 52, 9, 96, 253, 182, 150, 222, 20, 17, 21, 15, 20};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteraciton.m
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionInteractorImpl.h"
#import "SessionImageIndependent.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFSessionTableAdapter.h"
#import "FixingSelected.h"
//: #import "FFFKitMediaFetcher.h"
#import "ReplyFetcher.h"
//: #import "FFFMessageMaker.h"
#import "ThreadMaker.h"
//: #import "FFFKitAudioCenter.h"
#import "ColorCenter.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "ActionUtil.h"
//: #import "UIImage+SNCompress.h"
#import "UIImage+Detail.h"

//: static const void * const NTESDispatchMessageDataPrepareSpecificKey = &NTESDispatchMessageDataPrepareSpecificKey;
static const void * const kLet_viewEmptyName = &kLet_viewEmptyName;

//: typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);
typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);

//: dispatch_queue_t NTESMessageDataPrepareQueue()
dispatch_queue_t NTESMessageDataPrepareQueue()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.message.queue", 0);
        queue = dispatch_queue_create("nim.demo.message.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchMessageDataPrepareSpecificKey, (void *)NTESDispatchMessageDataPrepareSpecificKey, NULL);
        dispatch_queue_set_specific(queue, kLet_viewEmptyName, (void *)kLet_viewEmptyName, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: @interface FFFSessionInteractorImpl()<NIMMediaManagerDelegate>
@interface SessionImageIndependent()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,strong) id<FFFSessionConfig> sessionConfig;
@property (nonatomic,strong) id<FrameConfig> sessionConfig;

//: @property (nonatomic,strong) FFFKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) ReplyFetcher *mediaFetcher;

//: @property (nonatomic,strong) NSMutableArray *pendingChatroomModels;
@property (nonatomic,strong) NSMutableArray *pendingChatroomModels;

//: @property (nonatomic,strong) NSMutableArray *pendingAudioMessages;
@property (nonatomic,strong) NSMutableArray *pendingAudioMessages;

//: @property (nonatomic,assign) NIMKitSessionState sessionState;
@property (nonatomic,assign) NIMKitSessionState sessionState;

//: @property (nonatomic,strong) NIMMessage *referenceMessage;
@property (nonatomic,strong) NIMMessage *referenceMessage;

//: @end
@end

//: @implementation FFFSessionInteractorImpl
@implementation SessionImageIndependent

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithExceptText:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig
                         shouldTo:(id<FrameConfig>)sessionConfig
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
        //: _sessionConfig = sessionConfig;
        _sessionConfig = sessionConfig;
        //: [self addListener];
        [self steps];
    }
    //: return self;
    return self;
}


//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [self removeListenner];
    [self reply];
}

//: - (NSArray *)items
- (NSArray *)textSize
{
    //: return [self.dataSource items];
    return [self.dataSource allowShould];
}

//: - (void)markRead:(BOOL)needMarkDataModel
- (void)bar:(BOOL)needMarkDataModel
{
    //: if ([self shouldAutoMarkRead])
    if ([self gen])
    {
        //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
        [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];

        //: if ([self shouldHandleReceipt])
        if ([self blueSuccess])
        {
            //: [self sendMessageReceipt:self.items];
            [self disenable:self.textSize];
        }

        //: if (needMarkDataModel)
        if (needMarkDataModel)
        {
            //: [self markReadInDataModel];
            [self signal];
        }
    }
}

//: - (void)markReadInDataModel {
- (void)signal {
    //: for (id model in [self items]) {
    for (id model in [self textSize]) {
        //: if ([model isKindOfClass:[FFFMessageModel class]]) {
        if ([model isKindOfClass:[StochasticProcessTeam class]]) {
            //: FFFMessageModel *messageModel = (FFFMessageModel *)model;
            StochasticProcessTeam *messageModel = (StochasticProcessTeam *)model;
            //: if (messageModel.message.status == NIMMessageStatusNone) {
            if (messageModel.message.status == NIMMessageStatusNone) {
                //: messageModel.message.status = NIMMessageStatusRead;
                messageModel.message.status = NIMMessageStatusRead;
            }
        }
    }
}


//: - (void)addMessages:(NSArray *)messages
- (void)messages:(NSArray *)messages
{
    //: NIMMessage *message = messages.firstObject;
    NIMMessage *message = messages.firstObject;
    //: if (message.session.sessionType == NIMSessionTypeChatroom) {
    if (message.session.sessionType == NIMSessionTypeChatroom) {
        //: [self addChatroomMessages:messages];
        [self read:messages];
    //: }else{
    }else{
        //: [self addNormalMessages:messages];
        [self tap:messages];
    }
}

//: - (void)insertMessages:(NSArray *)messages
- (void)sessionOrientation:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
        StochasticProcessTeam *model = [[StochasticProcessTeam alloc] initWithDate:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(pointing:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig pointing:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(overInfoText)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig overInfoText];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(emptyMark)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig emptyMark];
        }

        //: if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
        if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
            //撤回消息过滤
        //: }else{
        }else{
            //: [models addObject:model];
            [models addObject:model];
        }
    }

    //: NIMSessionMessageOperateResult *result = [self.dataSource insertMessageModels:models];
    AlongActivity *result = [self.dataSource optionLibrarySelect:models];
    //: [self refreshAllChatExtendDatasByModels:models completion:nil];
    [self afterCompletion:models action:nil];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout state:result.indexpaths plugMagnitudeo:YES];
}

//: - (void)addNormalMessages:(NSArray *)messages
- (void)tap:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if (message.isDeleted)
        if (message.isDeleted)
        {
            //: continue;
            continue;
        }
        //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
        StochasticProcessTeam *model = [[StochasticProcessTeam alloc] initWithDate:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(pointing:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig pointing:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(overInfoText)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig overInfoText];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(emptyMark)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig emptyMark];
        }


        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]]; 
        [self viewAcross:[self fullPhaseOfTheMoon:message]]; // 刷新父消息
        //: [self refreshAllChatExtendDatasByModel:model completion:nil]; 
        [self month:model direction:nil]; // 刷新本条消息

        //: [models addObject:model];
        [models addObject:model];
    }
    //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:models];
    AlongActivity *result = [self.dataSource read:models];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout state:result.indexpaths plugMagnitudeo:YES];
}

//: - (void)addChatroomMessages:(NSArray *)messages
- (void)read:(NSArray *)messages
{
    //: if (!self.pendingChatroomModels) {
    if (!self.pendingChatroomModels) {
        //: self.pendingChatroomModels = [[NSMutableArray alloc] init];
        self.pendingChatroomModels = [[NSMutableArray alloc] init];
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: dispatch_async(NTESMessageDataPrepareQueue(), ^{
    dispatch_async(NTESMessageDataPrepareQueue(), ^{
        //: NSMutableArray *models = [[NSMutableArray alloc] init];
        NSMutableArray *models = [[NSMutableArray alloc] init];
        //: for (NIMMessage *message in messages)
        for (NIMMessage *message in messages)
        {
            //: if (message.isDeleted)
            if (message.isDeleted)
            {
                //: continue;
                continue;
            }
            //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
            StochasticProcessTeam *model = [[StochasticProcessTeam alloc] initWithDate:message];
            //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
            if ([_sessionConfig respondsToSelector:@selector(pointing:)]) {
                //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
                model.disableSelected = [_sessionConfig pointing:model.message];;
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
            if ([_sessionConfig respondsToSelector:@selector(overInfoText)]) {
                //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
                model.enableRepliedContent = [_sessionConfig overInfoText];
            }

            //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
            if ([_sessionConfig respondsToSelector:@selector(emptyMark)]) {
                //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
                model.enableQuickComments = [_sessionConfig emptyMark];
            }

            //: [weakSelf.layout calculateContent:model];
            [weakSelf.layout press:model];
            //: [models addObject:model];
            [models addObject:model];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            //: [weakSelf processChatroomMessageModels];
            [weakSelf containerObject];
        //: });
        });
    //: });
    });
}

//: - (FFFMessageModel *)deleteMessage:(NIMMessage *)message
- (StochasticProcessTeam *)value:(NIMMessage *)message
{
    //: FFFMessageModel *model = [self findMessageModel:message];
    StochasticProcessTeam *model = [self isChild:message];
    //: if (model) {
    if (model) {
        //: NIMSessionMessageOperateResult *result = [self.dataSource deleteMessageModel:model];
        AlongActivity *result = [self.dataSource bar:model];
        //: [self.layout remove:result.indexpaths];
        [self.layout celled:result.indexpaths];

        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasBySubModel:model completion:nil];
        [self labelCompletion:model request:nil];
    }
    //: return model;
    return model;
}

//: - (FFFMessageModel *)updateMessage:(NIMMessage *)message
- (StochasticProcessTeam *)principal:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return nil;
        return nil;
    }

    //: FFFMessageModel *model = [self findMessageModel:message];
    StochasticProcessTeam *model = [self isChild:message];
    //: if (model)
    if (model)
    {
        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]];
        [self viewAcross:[self fullPhaseOfTheMoon:message]];
        //: [self refreshAllChatExtendDatasByModel:model
        [self month:model
                                  //: completion:nil];
                                  direction:nil];
        //: NIMSessionMessageOperateResult *result = [self.dataSource updateMessageModel:model];
        AlongActivity *result = [self.dataSource possibility:model];
        //: NSInteger index = [result.indexpaths.firstObject row];
        NSInteger index = [result.indexpaths.firstObject row];
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        //: [self safelyReloadRowAtIndexPath:indexPath];
        [self sub:indexPath];
    }
    //: return model;
    return model;
}

//: - (void)addPinForMessage:(NIMMessage *)message
- (void)cellHand:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource addPinForMessage:message callback:^(NSError *error) {
    [self.dataSource past:message path:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself principal:message];
    //: }];
    }];
}

//: - (void)removePinForMessage:(NIMMessage *)message
- (void)userView:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource removePinForMessage:message callback:^(NSError *error) {
    [self.dataSource keep:message subjectMatter:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself principal:message];
    //: }];
    }];
}

//: - (void)setSessionState:(NIMKitSessionState)sessionState {
- (void)setSessionState:(NIMKitSessionState)sessionState {
    //: if (_sessionState != sessionState) {
    if (_sessionState != sessionState) {
        //: [self.dataSource refreshMessageModelShowSelect:(sessionState == NIMKitSessionStateSelect)];
        [self.dataSource tinkleMessage:(sessionState == NIMKitSessionStateSelect)];
        //: [self.layout reloadTable];
        [self.layout stockOption];
        //: _sessionState = sessionState;
        _sessionState = sessionState;
    }
}

//: - (FFFMessageModel *)findMessageModel:(NIMMessage *)message
- (StochasticProcessTeam *)isChild:(NIMMessage *)message
{
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: return [self.dataSource findModel:message];
        return [self.dataSource computerSimulation:message];
    }
    //: return nil;
    return nil;
}

//: - (NSInteger)findMessageIndex:(NIMMessage *)message {
- (NSInteger)mark:(NIMMessage *)message {
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: FFFMessageModel *model = [[FFFMessageModel alloc] initWithMessage:message];
        StochasticProcessTeam *model = [[StochasticProcessTeam alloc] initWithDate:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(pointing:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig pointing:model.message];;
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(overInfoText)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig overInfoText];
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(emptyMark)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig emptyMark];
        }

        //: return [self.dataSource indexAtModelArray:model];
        return [self.dataSource quantityRelationHarvestMoonMeasure:model];
    }
    //: return -1;
    return -1;
}

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)light:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldHandleReceipt])
    if ([self blueSuccess])
    {
        //: NSDictionary *models = [self.dataSource checkReceipts:receipts];
        NSDictionary *models = [self.dataSource magnitude:receipts];
        //: for (NSNumber *index in models.allKeys) {
        for (NSNumber *index in models.allKeys) {
            //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            //: [self safelyReloadRowAtIndexPath:indexPath];
            [self sub:indexPath];
        }
    }
}

//: - (BOOL)shouldHandleReceipt
- (BOOL)blueSuccess
{
    //: return [self.sessionConfig respondsToSelector:@selector(shouldHandleReceipt)] &&
    return [self.sessionConfig respondsToSelector:@selector(blueSuccess)] &&
    //: [self.sessionConfig shouldHandleReceipt];
    [self.sessionConfig blueSuccess];
}

//: - (void)markAllMessagesRead
- (void)pressRead
{
    //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
    [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
}

//: - (void)sendMessageReceipt:(NSArray *)messages
- (void)disenable:(NSArray *)messages
{
    //: [self.dataSource sendMessageReceipt:messages];
    [self.dataSource astatine:messages];
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)tempHide:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion
             lineContainer:(void(^)(NSError *error))completion
{
    //: NIMMessage *message = self.referenceMessage;
    NIMMessage *message = self.referenceMessage;
    //: if (message)
    if (message)
    {
        //: [self addQuickComment:comment
        [self view:comment
                    //: toMessage:message
                    bottom:message
                   //: completion:^(NSError *error)
                   icon:^(NSError *error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
        //: }];
        }];
        //: self.referenceMessage = nil;
        self.referenceMessage = nil;
    }
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)view:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)message
              bottom:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             icon:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
                                                //: toMessage:message
                                                toMessage:message
                                               //: completion:^(NSError * _Nullable error)
                                               completion:^(NSError * _Nullable error)
    {
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf completion:message fewnessQuantityeractorHandler:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)packet:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          goopCompletion:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             communication:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
                                                  //: completion:^(NSError * _Nullable error)
                                                  completion:^(NSError * _Nullable error)
    {
        //: weakSelf.referenceMessage = nil;
        weakSelf.referenceMessage = nil;
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf completion:message fewnessQuantityeractorHandler:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)resetLayout
- (void)showInfo
{
    //: [self.layout resetLayout];
    [self.layout language];
}

//: - (void)changeLayout:(CGFloat)inputHeight
- (void)change:(CGFloat)inputHeight
{
    //: [self.layout changeLayout:inputHeight];
    [self.layout inputSignal:inputHeight];
}

//: - (void)cleanCache
- (void)comment
{
    //: [self.dataSource cleanCache];
    [self.dataSource comment];
}


//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler
- (void)snap:(void (^)(NSArray *messages, NSError *error))handler
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    //: [self.dataSource loadHistoryMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource independent:^(NSInteger index, NSArray *messages, NSError *error) {
//        [SVProgressHUD dismiss];
        //: if (messages.count) {
        if (messages.count) {

            //: if (wself.session.sessionType != NIMSessionTypeChatroom) {
            if (wself.session.sessionType != NIMSessionTypeChatroom) {
                //: [wself refreshAllAfterFetchCommentsByMessages:messages];
                [wself text:messages];
            }

            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(fileMedia)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.fileMedia) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource textBlock:messages];
            }
        }
        //: if (handler) {
        if (handler) {
            //: handler(messages,error);
            handler(messages,error);
        }
    //: }];
    }];
}

//: - (void)pullUp {
- (void)media {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(didPullUpMessageData)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(outSub)]) {
        //: [self.delegate didPullUpMessageData];
        [self.delegate outSub];
    }
}

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler {
- (void)arrayCustom:(void(^)(NSArray *messages, NSError *error))handler {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource loadNewMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource managingDirector:^(NSInteger index, NSArray *messages, NSError *error) {
        //: if (messages.count) {
        if (messages.count) {
            //: [wself.layout layoutAfterRefresh];
            [wself.layout rubric];
            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(fileMedia)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.fileMedia) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource textBlock:messages];
            }
        }

        //: [wself refreshAllAfterFetchCommentsByMessages:messages];
        [wself text:messages];

        //: if (handler) {
        if (handler) {
            //: handler(messages, error);
            handler(messages, error);
        }
    //: }];
    }];
}

//: - (void)resetMessages:(void (^)(NSError *error))handler
- (void)successBottomMessages:(void (^)(NSError *error))handler
{
//    [SVProgressHUD show];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: __block NSError *e = nil;
    __block NSError *e = nil;
    //: dispatch_group_t group = dispatch_group_create();
    dispatch_group_t group = dispatch_group_create();

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
    [self.dataSource frame:^(NSError *error, NSArray *models) {
        //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
        [weakSelf maxWith:models];

        //: e = error;
        e = error;
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self loadMessagePins:^(NSError *error) {
    [self currentness:^(NSError *error) {
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{

        //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
        if([weakSelf.delegate respondsToSelector:@selector(teamFilter)])
        {
            //: [weakSelf.delegate didFetchMessageData];
            [weakSelf.delegate teamFilter];
            //: if (handler) {
            if (handler) {
                //: handler(e);
                handler(e);
            }
        }
    //: });
    });

//    [SVProgressHUD dismiss];

}

//: - (void)autoFetchMessages
- (void)before
{
    //: if (![self.sessionConfig respondsToSelector:@selector(autoFetchWhenOpenSession)]
    if (![self.sessionConfig respondsToSelector:@selector(smartIn)]
        //: || self.sessionConfig.autoFetchWhenOpenSession) {
        || self.sessionConfig.smartIn) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: dispatch_group_t group = dispatch_group_create();
        dispatch_group_t group = dispatch_group_create();

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
        [self.dataSource frame:^(NSError *error, NSArray *models) {
            //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
            [weakSelf maxWith:models];
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self loadMessagePins:^(NSError *error) {
        [self currentness:^(NSError *error) {
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
            //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
            if([weakSelf.delegate respondsToSelector:@selector(teamFilter)])
            {
                //: [weakSelf.delegate didFetchMessageData];
                [weakSelf.delegate teamFilter];

                //: if (![weakSelf.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
                if (![weakSelf.sessionConfig respondsToSelector:@selector(fileMedia)]
                    //: || weakSelf.sessionConfig.autoFetchAttachment) {
                    || weakSelf.sessionConfig.fileMedia) {
                    //: [weakSelf.dataSource checkAttachmentState:weakSelf.items];
                    [weakSelf.dataSource textBlock:weakSelf.textSize];
                }
            }
        //: });
        });

    }
}

//: - (void)setDataSource:(id<NIMSessionDataSource>)dataSource
- (void)setDataSource:(id<EmptySource>)dataSource
{
    //: _dataSource = dataSource;
    _dataSource = dataSource;
    //: [self autoFetchMessages];
    [self before];
}


//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)view:(NIMMessage *)message
{
    //: NSError *err;
    NSError *err;
    //: [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    //: NSLog(@"sendMessageError:%@",err);
    //: [self.layout dismissReplyContent];
    [self.layout buttonName];
}

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage
- (void)areaData:(NIMMessage *)message selectDay:(NIMMessage *)toMessage
{
    //: if (toMessage)
    if (toMessage)
    {
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:toMessage
                                                   to:toMessage
                                                //: error:nil];
                                                error:nil];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(inheritanceDismiss)] && [self.sessionConfig inheritanceDismiss])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig inheritanceDismiss];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                                //: error:nil];
                                                error:nil];

        //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
        if ([self.sessionConfig respondsToSelector:@selector(buttonBubble)])
        {
            //: if ([self.sessionConfig clearThreadMessageAfterSent])
            if ([self.sessionConfig buttonBubble])
            {
                //: [self.sessionConfig cleanThreadMessage];
                [self.sessionConfig visible];
            }
        }
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message];
        [self view:message];
    }

    //: [self.layout dismissReplyContent];
    [self.layout buttonName];
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError *))completion
- (void)view:(NIMMessage *)message message:(void(^)(NSError *))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
    [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
        //: if(completion) {
        if(completion) {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf.layout dismissReplyContent];
        [weakSelf.layout buttonName];
    //: }];
    }];
}

//: - (void)sendMessage:(NIMMessage *)message
- (void)cypher:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          label:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion
         with:(void(^)(NSError * error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
   //: if (toMessage)
   if (toMessage)
    {
        //: [[NIMSDK sharedSDK].chatExtendManager reply:message
        [[NIMSDK sharedSDK].chatExtendManager reply:message
                                                //: to:toMessage
                                                to:toMessage
                                        //: completion:^(NSError * _Nullable error)
                                        completion:^(NSError * _Nullable error)
         {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:toMessage]];
            [weakSelf viewAcross:[self fullPhaseOfTheMoon:toMessage]];

        //: }];
        }];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(inheritanceDismiss)] && [self.sessionConfig inheritanceDismiss])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig inheritanceDismiss];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                           //: completion:^(NSError * _Nullable error) {
                                           completion:^(NSError * _Nullable error) {
            //: if ([weakSelf.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
            if ([weakSelf.sessionConfig respondsToSelector:@selector(buttonBubble)])
            {
                //: if ([weakSelf.sessionConfig clearThreadMessageAfterSent])
                if ([weakSelf.sessionConfig buttonBubble])
                {
                    //: [weakSelf.sessionConfig cleanThreadMessage];
                    [weakSelf.sessionConfig visible];
                }
            }

            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[weakSelf threadMessageOfMessage:toMessage]];
            [weakSelf viewAcross:[weakSelf fullPhaseOfTheMoon:toMessage]];
        //: }];
        }];
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message completion:completion];
        [self view:message message:completion];
    }

    //: [self.layout dismissReplyContent];
    [self.layout buttonName];
}

//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification
- (void)rubricses:(NSNotification *)notification
{
//    NSArray *models = [self.dataSource items];
//    [self sendMessageReceipt:models];
}

//: - (void)onUserInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)boxTemp:(NSNotification *)notification {
    //: [self.delegate didRefreshMessageData];
    [self.delegate dataName];
}

//: - (void)onTeamMembersHasUpdatedNotification:(NSNotification *)notification {
- (void)directioning:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *FFFKitInfoKey;
    extern NSString *FFFKitInfoKey;
    //: NSArray *teamIds = userInfo[FFFKitInfoKey];
    NSArray *teamIds = userInfo[FFFKitInfoKey];
    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate dataName];
    }
}

//: - (void)onTeamInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)putUp:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *FFFKitInfoKey;
    extern NSString *FFFKitInfoKey;
    //: NSArray *teamIds = userInfo[FFFKitInfoKey];
    NSArray *teamIds = userInfo[FFFKitInfoKey];

    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate dataName];
    }
}

//: #pragma mark - NIMSessionTableDataDelegate
#pragma mark - NIMSessionTableDataDelegate

//: - (void)didRefreshMessageData
- (void)dataName
{
    //: if ([self.delegate respondsToSelector:@selector(didRefreshMessageData)]) {
    if ([self.delegate respondsToSelector:@selector(dataName)]) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate dataName];
    }
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)mediaAudioPressed:(FFFMessageModel *)messageModel
- (void)audio:(StochasticProcessTeam *)messageModel
{
    //: if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
    if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
        //: [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        //: self.pendingAudioMessages = [self findRemainAudioMessages:messageModel.message];
        self.pendingAudioMessages = [self offBar:messageModel.message];
        //: [[FFFKitAudioCenter instance] play:messageModel.message];
        [[ColorCenter name] originCell:messageModel.message];

    //: } else {
    } else {
        //: self.pendingAudioMessages = nil;
        self.pendingAudioMessages = nil;
        //: [[NIMSDK sharedSDK].mediaManager stopPlay];
        [[NIMSDK sharedSDK].mediaManager stopPlay];
    }
}

//: - (void)mediaPicturePressed
- (void)dogTag
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchPhotoFromLibrary:^(NSArray *images, NSString *path, PHAssetMediaType type) {
    [self.mediaFetcher direct:^(NSArray *images, NSString *path, PHAssetMediaType type) {
        //: switch (type) {
        switch (type) {
            //: case PHAssetMediaTypeImage:
            case PHAssetMediaTypeImage:
            {
                //: for (UIImage *image in images) {
                for (UIImage *image in images) {



                    //: NIMMessage *message = [FFFMessageMaker msgWithImage:image];
                    NIMMessage *message = [ThreadMaker tool:image];

                    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[ButtonConfig inputConfig] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf areaData:message selectDay:nil];
                }
                //: if (path) {
                if (path) {
                    //: NIMMessage *message;
                    NIMMessage *message;
                    //: if ([path.pathExtension isEqualToString:@"HEIC"])
                    if ([path.pathExtension isEqualToString:StringFromMythData(kStr_biasData)])
                    {
                        //iOS 11 苹果采用了新的图片格式 HEIC ，如果采用原图会导致其他设备的兼容问题，在上层做好格式的兼容转换,压成 jpeg
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [FFFMessageMaker msgWithImage:image];
                        message = [ThreadMaker tool:image];
                    }
                    //: else
                    else
                    {
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [FFFMessageMaker msgWithImage:image];
                        message = [ThreadMaker tool:image];
                    }


                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf areaData:message selectDay:nil];
                }
            }
                //: break;
                break;
            //: case PHAssetMediaTypeVideo:
            case PHAssetMediaTypeVideo:
            {
                //: NIMMessage *message = [FFFMessageMaker msgWithVideo:path];
                NIMMessage *message = [ThreadMaker theFind:path];
                //: [weakSelf sendMessage:message toMessage:nil];
                [weakSelf areaData:message selectDay:nil];
            }
                //: break;
                break;
            //: default:
            default:
                //: return;
                return;
        }

    //: }];
    }];
}

//对图片尺寸进行压缩--
//: -(UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
-(UIImage*)view:(UIImage*)image title:(CGSize)newSize
{
    //: UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContext(newSize);
    //: [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    //: UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (void)mediaShootPressed
- (void)financialCenter
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchMediaFromCamera:^(NSString *path, UIImage *image) {
    [self.mediaFetcher albumTing:^(NSString *path, UIImage *image) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if (image) {
        if (image) {
            //: message = [FFFMessageMaker msgWithImage:image];
            message = [ThreadMaker tool:image];
        //: }else{
        }else{
            //: message = [FFFMessageMaker msgWithVideo:path];
            message = [ThreadMaker theFind:path];
        }
        //: [weakSelf sendMessage:message toMessage:nil];
        [weakSelf areaData:message selectDay:nil];
    //: }];
    }];
}

//: - (void)mediaLocationPressed
- (void)item
{

}

//: - (void)onSendLocation:(MyUserKitLocationPoint *)locationPoint{
- (void)componentPartLocation:(MyUserKitLocationPoint *)locationPoint{

}


//: - (void)onViewWillAppear
- (void)margin
{
    //fix bug: 竖屏进入会话界面，然后右上角进入群信息，再横屏，左上角返回，横屏的会话界面显示的就是竖屏时的大小
    //: [self cleanCache];
    [self comment];
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [self.layout reloadTable];
//    });

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)onViewDidDisappear
- (void)monthDisappear
{
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message {
- (BOOL)date:(NIMMessage *)message {
    //: return YES;
    return YES;
}

//: - (void)loadMessagePins:(void (^)(NSError *))handler
- (void)currentness:(void (^)(NSError *))handler
{
    //: [self.dataSource loadMessagePins:handler];
    [self.dataSource viewPins:handler];
}

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model
- (void)needWith:(StochasticProcessTeam *)model
{
    //: [self.dataSource willDisplayMessageModel:model];
    [self.dataSource show:model];
}

//: #pragma mark - NIMSessionLayoutDelegate
#pragma mark - TitleDetail
//: - (void)onRefresh
- (void)redNim
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self loadMessages:^(NSArray *messages, NSError *error) {
    [self snap:^(NSArray *messages, NSError *error) {
        //: [wself.layout layoutAfterRefresh];
        [wself.layout rubric];
        //: if (messages.count) {
        if (messages.count) {
            //: [wself insertMessages:messages];
            [wself sessionOrientation:messages];
        }
        //: if (messages.count)
        if (messages.count)
        {
            //: [wself checkReceipts:nil];
            [wself light:nil];
            //: [wself markRead:NO];
            [wself bar:NO];
        }

        //: [wself refreshAllChatExtendDatasByMessages:messages];
        [wself datas:messages];
    //: }];
    }];
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(stateManager)] && [self.sessionConfig stateManager];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self magnitudeAdjacent];
        }
    }
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(stateManager)] && [self.sessionConfig stateManager];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self magnitudeAdjacent];
        }
    }
}

//: - (void)playNextAudio
- (void)magnitudeAdjacent
{
    //: NIMMessage *message = self.pendingAudioMessages.lastObject;
    NIMMessage *message = self.pendingAudioMessages.lastObject;
    //: if (self.pendingAudioMessages.count) {
    if (self.pendingAudioMessages.count) {
        //: [self.pendingAudioMessages removeLastObject];
        [self.pendingAudioMessages removeLastObject];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [[FFFKitAudioCenter instance] play:message];
            [[ColorCenter name] originCell:message];
        //: });
        });
    }
}


//: #pragma mark - Private
#pragma mark - Private

//是否需要开启自动设置所有消息已读 ： 某些场景不需要自动设置消息已读，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldAutoMarkRead
- (BOOL)gen
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAutoMarkMessageRead)]) {
    if ([self.sessionConfig respondsToSelector:@selector(votingRead)]) {
        //: should = ![self.sessionConfig disableAutoMarkMessageRead];
        should = ![self.sessionConfig votingRead];
    }
    //: return should;
    return should;
}

//: - (FFFKitMediaFetcher *)mediaFetcher
- (ReplyFetcher *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[FFFKitMediaFetcher alloc] init];
        _mediaFetcher = [[ReplyFetcher alloc] init];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//: - (void)addListener
- (void)steps
{
    //声音的监听放在 viewWillApear 回调里，不在这里添加
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(rubricses:) name:UIApplicationDidBecomeActiveNotification object:nil];
    //: if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
        //: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
        extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
        //: extern NSString *const NIMKitTeamMembersHasUpdatedNotification;
        extern NSString *const NIMKitTeamMembersHasUpdatedNotification;

        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamInfoHasUpdatedNotification:) name:NIMKitTeamInfoHasUpdatedNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(putUp:) name:NIMKitTeamInfoHasUpdatedNotification object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamMembersHasUpdatedNotification:) name:NIMKitTeamMembersHasUpdatedNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(directioning:) name:NIMKitTeamMembersHasUpdatedNotification object:nil];
    }

    //: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
    extern NSString *const NIMKitUserInfoHasUpdatedNotification;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoHasUpdatedNotification:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(boxTemp:) name:NIMKitUserInfoHasUpdatedNotification object:nil];
}

//: - (void)removeListenner
- (void)reply
{
    //声音的监听放在 viewDidDisappear 回调里，不在这里移除
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSMutableArray *)findRemainAudioMessages:(NIMMessage *)message
- (NSMutableArray *)offBar:(NIMMessage *)message
{
    //: if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //如果这条音频消息被播放过了 或者这条消息是属于自己的消息，则不进行轮播
        //: return nil;
        return nil;
    }
    //: NSMutableArray *messages = [[NSMutableArray alloc] init];
    NSMutableArray *messages = [[NSMutableArray alloc] init];
    //: [self.dataSource.items enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.dataSource.allowShould enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj isKindOfClass:[FFFMessageModel class]]) {
        if ([obj isKindOfClass:[StochasticProcessTeam class]]) {
            //: FFFMessageModel *model = (FFFMessageModel *)obj;
            StochasticProcessTeam *model = (StochasticProcessTeam *)obj;
            //: BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            //: if ([model.message.messageId isEqualToString:message.messageId])
            if ([model.message.messageId isEqualToString:message.messageId])
            {
                //: *stop = YES;
                *stop = YES;
            }
            //: else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            {
                //: [messages addObject:model.message];
                [messages addObject:model.message];
            }
        }
    //: }];
    }];
    //: return messages;
    return messages;
}


//: - (void)processChatroomMessageModels
- (void)containerObject
{
    //: NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    //: if (pendingMessageCount == 0) {
    if (pendingMessageCount == 0) {
        //: return;
        return;
    }
    //: if ([self.layout canInsertChatroomMessages])
    if ([self.layout clickImage])
    {
        //: static NSInteger NTESMaxInsert = 2;
        static NSInteger NTESMaxInsert = 2;
        //: NSArray *insert = nil;
        NSArray *insert = nil;
        //: NSRange range;
        NSRange range;
        //: if (pendingMessageCount > NTESMaxInsert)
        if (pendingMessageCount > NTESMaxInsert)
        {
            //: range = NSMakeRange(0, NTESMaxInsert);
            range = NSMakeRange(0, NTESMaxInsert);
        }
        //: else
        else
        {
            //: range = NSMakeRange(0, pendingMessageCount);
            range = NSMakeRange(0, pendingMessageCount);
        }
        //: insert = [self.pendingChatroomModels subarrayWithRange:range];
        insert = [self.pendingChatroomModels subarrayWithRange:range];
        //: [self.pendingChatroomModels removeObjectsInRange:range];
        [self.pendingChatroomModels removeObjectsInRange:range];
        //: NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        //: BOOL animated = leftPendingMessageCount== 0;
        BOOL animated = leftPendingMessageCount== 0;
        //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:insert];
        AlongActivity *result = [self.dataSource read:insert];
        //: [self.layout insert:result.indexpaths animated:animated];
        [self.layout state:result.indexpaths plugMagnitudeo:animated];

        //聊天室消息最大保存消息量，超过这个消息量则把消息列表的前一半挪出内存。
        //: static NSInteger NTESMaxChatroomMessageCount = 200;
        static NSInteger NTESMaxChatroomMessageCount = 200;
        //: NSInteger count = self.dataSource.items.count;
        NSInteger count = self.dataSource.allowShould.count;
        //: if (count > NTESMaxChatroomMessageCount) {
        if (count > NTESMaxChatroomMessageCount) {
            //: NSRange deleteRange = NSMakeRange(0, count/2);
            NSRange deleteRange = NSMakeRange(0, count/2);
            //: NSArray *delete = [self.dataSource deleteModels:deleteRange];
            NSArray *delete = [self.dataSource fast:deleteRange];
            //: [self.layout remove:delete];
            [self.layout celled:delete];
        }

        //: [self processChatroomMessageModels];
        [self containerObject];
    }
    //: else
    else
    {
        //不能插入是为了保证界面流畅，比如滑动，此时暂停处理
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: NSTimeInterval delay = 1;
        NSTimeInterval delay = 1;
        //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [weakSelf processChatroomMessageModels];
            [weakSelf containerObject];
        //: });
        });
    }
}

//: #pragma mark - 聊天扩展相关
#pragma mark - 聊天扩展相关

//: - (void)refreshAllChatExtendDatasByMessage:(NIMMessage *)message
- (void)viewAcross:(NIMMessage *)message
{
    //: FFFMessageModel *model = [self findMessageModel:message];
    StochasticProcessTeam *model = [self isChild:message];
    //: if (model)
    if (model)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self month:model direction:nil];
    }
}

//: - (void)refreshAllChatExtendDatasByMessages:(NSArray<NIMMessage *> *)messages
- (void)datas:(NSArray<NIMMessage *> *)messages
{
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: [self refreshAllChatExtendDatasByMessage:message];
        [self viewAcross:message];
    }
}

//: - (void)refreshAllAfterFetchCommentsByMessages:(NSArray<NIMMessage *> *)messages
- (void)text:(NSArray<NIMMessage *> *)messages
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
    [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
                                                  //: completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
                                                  completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
    {
        //: [weakSelf refreshAllChatExtendDatasByMessages:messages];
        [weakSelf datas:messages];
    //: }];
    }];
}

//: - (void)refreshAllAfterFetchCommentsByModels:(NSArray<FFFMessageModel *> *)models
- (void)maxWith:(NSArray<StochasticProcessTeam *> *)models
{
    //: NSMutableArray *messages = [NSMutableArray array];
    NSMutableArray *messages = [NSMutableArray array];
    //: for(FFFMessageModel *model in models)
    for(StochasticProcessTeam *model in models)
    {
        //: [messages addObject:model.message];
        [messages addObject:model.message];
    }

    //: [self refreshAllAfterFetchCommentsByMessages:messages];
    [self text:messages];
}

//: - (void)refreshAllChatExtendDatasBySubModel:(FFFMessageModel *)model
- (void)labelCompletion:(StochasticProcessTeam *)model
                                 //: completion:(NIMSessionInteractorHandler)completion
                                 request:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self fullPhaseOfTheMoon:message];
    //: FFFMessageModel *threadMessageModel = [self findMessageModel:threadMessage];
    StochasticProcessTeam *threadMessageModel = [self isChild:threadMessage];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self refreshAllChatExtendDatasByModel:threadMessageModel completion:completion];
        [self month:threadMessageModel direction:completion];
    }
    //: else
    else
    {
       //: if (completion)
       if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)refreshAllChatExtendDatasByModel:(FFFMessageModel *)model
- (void)month:(StochasticProcessTeam *)model
                              //: completion:(NIMSessionInteractorHandler)completion
                              direction:(NIMSessionInteractorHandler)completion

{

    // Thread & 被回复消息
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self loadThreadAndRepliedMessages:model completion:^(BOOL success, id result)
    [self totalInput:model theCompletionModel:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf selectedShared:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的子消息
    //: [self loadChildMessages:model completion:^(BOOL success, id result)
    [self eddo:model replyAdd:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf selectedShared:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的快捷回复
    //: [self loadQuickComments:model completion:^(BOOL success, id result)
    [self at:model recent:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf selectedShared:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];
}


//: - (void)refreshAllChatExtendDatasByModels:(NSArray<FFFMessageModel *> *)models
- (void)afterCompletion:(NSArray<StochasticProcessTeam *> *)models
                               //: completion:(NIMSessionInteractorHandler)completion
                               action:(NIMSessionInteractorHandler)completion
{
    //: for (FFFMessageModel *model in models)
    for (StochasticProcessTeam *model in models)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self month:model direction:nil];
    }
}

//: - (void)refreshQuickComments:(NIMMessage *)message
- (void)completion:(NIMMessage *)message
                  //: completion:(NIMSessionInteractorHandler)completion
                  fewnessQuantityeractorHandler:(NIMSessionInteractorHandler)completion
{
   //: FFFMessageModel *model = [self findMessageModel:message];
   StochasticProcessTeam *model = [self isChild:message];
    //: if (model)
    if (model)
    {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self loadQuickComments:model completion:^(BOOL success, id result) {
        [self at:model recent:^(BOOL success, id result) {
            //: [weakSelf uiReloadMessageCell:message];
            [weakSelf selectedShared:message];
            //: if (completion)
            if (completion)
            {
                //: completion(success, result);
                completion(success, result);
            }
        //: }];
        }];
    }
    //: else
    else
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)loadThreadAndRepliedMessages:(FFFMessageModel *)model
- (void)totalInput:(StochasticProcessTeam *)model
                          //: completion:(NIMSessionInteractorHandler)completion
                          theCompletionModel:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableRepliedContent || !message)
    if (!model.enableRepliedContent || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    // 父消息
    //: NIMMessage *threadMessage = nil;
    NIMMessage *threadMessage = nil;
    //: if (message.threadMessageId.length > 0)
    if (message.threadMessageId.length > 0)
    {
       //: threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       //: model.parentMessage = threadMessage;
       model.parentMessage = threadMessage;
        //: if (!threadMessage)
        if (!threadMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.threadMessageId;
            key.messageID = message.threadMessageId;
            //: key.fromAccount = message.threadMessageFrom;
            key.fromAccount = message.threadMessageFrom;
            //: key.toAccount = message.threadMessageTo;
            key.toAccount = message.threadMessageTo;
            //: key.serverID = message.threadMessageServerId;
            key.serverID = message.threadMessageServerId;
            //: key.timestamp = message.threadMessageTime;
            key.timestamp = message.threadMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (key.messageID.length == 0)
            if (key.messageID.length == 0)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self messageRecord:key contentShould:^(BOOL success, NIMMessage *result) {
                //: model.parentMessage = result;
                model.parentMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
        }
    }

    // 被回复消息
    //: NIMMessage *repliedMessage = nil;
    NIMMessage *repliedMessage = nil;
    //: if (message.repliedMessageId.length > 0)
    if (message.repliedMessageId.length > 0)
    {
       //: repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
       repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
                                                                        //: messageIds:@[message.repliedMessageId]] firstObject];
                                                                        messageIds:@[message.repliedMessageId]] firstObject];
        //: if (!repliedMessage)
        if (!repliedMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.repliedMessageId;
            key.messageID = message.repliedMessageId;
            //: key.fromAccount = message.repliedMessageFrom;
            key.fromAccount = message.repliedMessageFrom;
            //: key.toAccount = message.repliedMessageTo;
            key.toAccount = message.repliedMessageTo;
            //: key.serverID = message.repliedMessageServerId;
            key.serverID = message.repliedMessageServerId;
            //: key.timestamp = message.repliedMessageTime;
            key.timestamp = message.repliedMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (!key)
            if (!key)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self messageRecord:key contentShould:^(BOOL success, NIMMessage *result) {
                //: model.repliedMessage = result;
                model.repliedMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: model.repliedMessage = repliedMessage;
            model.repliedMessage = repliedMessage;
            //: if (completion)
            if (completion)
            {
                //: completion(YES, nil);
                completion(YES, nil);
            }
        }
    }
}

//: - (void)fetchMessageInfo:(NIMChatExtendBasicInfo *)info
- (void)messageRecord:(NIMChatExtendBasicInfo *)info
              //: completion:(NIMSessionInteractorHandler)completion
              contentShould:(NIMSessionInteractorHandler)completion
{
    //: if (!info)
    if (!info)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
    [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
                                                      //: syncToDB:YES
                                                      syncToDB:YES
                                                    //: completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
                                                    completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
    {
        //: if (error)
        if (error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
            //: return;
            return;
        }

        //: completion(YES, [result objectForKey:info]);
        completion(YES, [result objectForKey:info]);
    //: }];
    }];
}

//: - (void)loadChildMessages:(FFFMessageModel *)model
- (void)eddo:(StochasticProcessTeam *)model
               //: completion:(NIMSessionInteractorHandler)completion
               replyAdd:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableSubMessages || !message)
    if (!model.enableSubMessages || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        //: model.childMessages = subMessages;
        model.childMessages = subMessages;
        //: model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion && subMessages.count > 0)
            if (completion && subMessages.count > 0)
            {
                //: completion(YES, subMessages);
                completion(YES, subMessages);
            }
        //: });
        });

    //: });
    });
}

//: - (void)loadQuickComments:(FFFMessageModel *)model
- (void)at:(StochasticProcessTeam *)model
               //: completion:(NIMSessionInteractorHandler)completion
               recent:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableQuickComments || !message)
    if (!model.enableQuickComments || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: model.quickComments = result;
            model.quickComments = result;
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: model.emoticonsContainerSize = [FFFKitQuickCommentUtil containerSizeWithComments:result];
                model.emoticonsContainerSize = [ActionUtil user:result];
            }
            //: else
            else
            {
                //: model.emoticonsContainerSize = CGSizeZero;
                model.emoticonsContainerSize = CGSizeZero;
            }
            //: if (error) {
            if (error) {
                //: completion(NO, nil);
                completion(NO, nil);
            //: } else {
            } else {
                //: if (result) {
                if (result) {
                    //: completion(YES, result);
                    completion(YES, result);
                //: } else {
                } else {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
            }
        }
    //: }];
    }];
}

//: - (void)uiReloadThreadMessageBySubMessage:(FFFMessageModel *)model
- (void)ofTing:(StochasticProcessTeam *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self fullPhaseOfTheMoon:message];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self uiReloadMessageCell:threadMessage];
        [self selectedShared:threadMessage];
    }
}

//: - (void)uiReloadMessageCell:(NIMMessage *)message
- (void)selectedShared:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return;
        return;
    }
    //: FFFMessageModel *model = [self findMessageModel:message];
    StochasticProcessTeam *model = [self isChild:message];
    //: if (model)
    if (model)
    {
//        AlongActivity *result = [self.dataSource updateMessageModel:model];
//        NSInteger index = [result.indexpaths.firstObject row];
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
//        [self safelyReloadRowAtIndexPath:indexPath];

        //: [self safelyReloadRowAtIndexPath:nil];
        [self sub:nil];
    }
    //: return;
    return;
}


//: - (NIMMessage *)threadMessageOfMessage:(NIMMessage *)message
- (NIMMessage *)fullPhaseOfTheMoon:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: NSString *messageID = message.threadMessageId;
    NSString *messageID = message.threadMessageId;
    //: if (messageID.length == 0)
    if (messageID.length == 0)
    {
        //: return nil;
        return nil;
    }
    //: return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
    return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
}

//: - (void)safelyReloadRowAtIndexPath:(NSIndexPath *)indexPath
- (void)sub:(NSIndexPath *)indexPath
{
    //: if (self.dataSource.items.count != [self.layout numberOfRows]) {
    if (self.dataSource.allowShould.count != [self.layout name]) {
        //: NSLog(@"Error: trying to reload message while cell count: %zd is not equal to item count %zd.", [self.layout numberOfRows], self.dataSource.items.count);
        //: return;
        return;
    }

    //: if (indexPath) {
    if (indexPath) {
        // 修改批量未读消息的问题
        //: [self.layout update:indexPath];
        [self.layout viewSession:indexPath];
    //: } else {
    } else {
        //: [self.layout reloadTable];
        [self.layout stockOption];
    }
}


//: @end
@end

Byte * MythDataToCache(Byte *data) {
    int priestCasualty = data[0];
    int carefully = data[1];
    Byte post = data[2];
    int ivyLeaguer = data[3];
    if (!priestCasualty) return data + ivyLeaguer;
    for (int i = ivyLeaguer; i < ivyLeaguer + carefully; i++) {
        int value = data[i] + post;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[ivyLeaguer + carefully] = 0;
    return data + ivyLeaguer;
}

NSString *StringFromMythData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MythDataToCache(data)];
}
