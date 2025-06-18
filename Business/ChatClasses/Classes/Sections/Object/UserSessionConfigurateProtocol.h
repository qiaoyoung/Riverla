// __DEBUG__
// __CLOSE_PRINT__
//
//  UserSessionConfigurateProtocol.h
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"

// __M_A_C_R_O__

//: typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
    //: NIMKitSessionStateNormal = 0,
    NIMKitSessionStateNormal = 0,
    //: NIMKitSessionStateSelect,
    NIMKitSessionStateSelect,
//: };
};

//: @protocol NIMSessionInteractorDelegate <NSObject>
@protocol BubbleAction <NSObject>

//: - (void)didFetchMessageData;
- (void)teamFilter;

//: - (void)didRefreshMessageData;
- (void)dataName;

//: - (void)didPullUpMessageData;
- (void)outSub;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol ViewHighMagnitudeeractor <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)view:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)areaData:(NIMMessage *)message selectDay:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)view:(NIMMessage *)message message:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)cypher:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          label:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         with:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)disenable:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)tempHide:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             lineContainer:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)view:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              bottom:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             icon:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)packet:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          goopCompletion:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             communication:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)messages:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)sessionOrientation:(NSArray *)messages;

//: - (FFFMessageModel *)updateMessage:(NIMMessage *)message;
- (StochasticProcessTeam *)principal:(NIMMessage *)message;

//: - (FFFMessageModel *)deleteMessage:(NIMMessage *)message;
- (StochasticProcessTeam *)value:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)cellHand:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)userView:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)textSize;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)bar:(BOOL)needMarkDataModel;

//: - (FFFMessageModel *)findMessageModel:(NIMMessage *)message;
- (StochasticProcessTeam *)isChild:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)blueSuccess;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)light:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)successBottomMessages:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)snap:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)arrayCustom:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)mark:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)date:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)currentness:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model;
- (void)needWith:(StochasticProcessTeam *)model;

//排版接口

//: - (void)resetLayout;
- (void)showInfo;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)change:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)comment;

//: - (void)pullUp;
- (void)media;

//按钮响应接口
//: - (void)mediaAudioPressed:(FFFMessageModel *)messageModel;
- (void)audio:(StochasticProcessTeam *)messageModel;

//: - (void)mediaPicturePressed;
- (void)dogTag;

//: - (void)mediaShootPressed;
- (void)financialCenter;

//: - (void)mediaLocationPressed;
- (void)item;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)margin;

//: - (void)onViewDidDisappear;
- (void)monthDisappear;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)markColor;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setMarkColor:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setReferenceMessage:(NIMMessage *)message;

//: @end
@end
