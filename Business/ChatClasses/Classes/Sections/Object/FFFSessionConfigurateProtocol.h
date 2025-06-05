// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFSessionConfigurateProtocol.h
// Notice
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "MaxLink.h"

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
@protocol ListingInsert <NSObject>

//: - (void)didFetchMessageData;
- (void)reloadColor;

//: - (void)didRefreshMessageData;
- (void)placeWith;

//: - (void)didPullUpMessageData;
- (void)tapTingData;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol ShowBlock <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)lastContent:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)digitizer:(NIMMessage *)message portion:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)blue:(NIMMessage *)message message:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)disable:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          view:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         table:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)sum:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)behindFace:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             voicePressed:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)from:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              content:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             disable:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)outLocation:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          color:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             quick:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)state:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)shouldMessages:(NSArray *)messages;

//: - (FFFMessageModel *)updateMessage:(NIMMessage *)message;
- (MaxLink *)statusTip:(NIMMessage *)message;

//: - (FFFMessageModel *)deleteMessage:(NIMMessage *)message;
- (MaxLink *)message:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)dataFor:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)progress:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)confirmItems;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)show:(BOOL)needMarkDataModel;

//: - (FFFMessageModel *)findMessageModel:(NIMMessage *)message;
- (MaxLink *)processor:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)indexChange;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)scale:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)title:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)bottomMessages:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)afterShow:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)telephoneMessage:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)someView:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)action:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model;
- (void)to:(MaxLink *)model;

//排版接口

//: - (void)resetLayout;
- (void)informationArea;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)tableGame:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)image;

//: - (void)pullUp;
- (void)patronym;

//按钮响应接口
//: - (void)mediaAudioPressed:(FFFMessageModel *)messageModel;
- (void)bar:(MaxLink *)messageModel;

//: - (void)mediaPicturePressed;
- (void)cell;

//: - (void)mediaShootPressed;
- (void)underReply;

//: - (void)mediaLocationPressed;
- (void)instrumentation;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)message;

//: - (void)onViewDidDisappear;
- (void)cancel;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)visualImage;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setVisualImage:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setRadiogram:(NIMMessage *)message;

//: @end
@end