// __DEBUG__
// __CLOSE_PRINT__
//
//  StopViewController.h
// Afterwards
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFSessionConfig.h"
#import "FrameConfig.h"
//: #import "UserMessageCellProtocol.h"
#import "UserMessageCellProtocol.h"
//: #import "UserSessionConfigurateProtocol.h"
#import "UserSessionConfigurateProtocol.h"
//: #import "FFFInputView.h"
#import "DefenceView.h"

//: @interface FFFSessionViewController : UIViewController<NIMSessionInteractorDelegate,NIMInputActionDelegate,FFFMessageCellDelegate,NIMChatManagerDelegate,NIMConversationManagerDelegate,NIMChatExtendManagerDelegate>
@interface StopViewController : UIViewController<BubbleAction,SizeDelegate,BubbleArray,NIMChatManagerDelegate,NIMConversationManagerDelegate,NIMChatExtendManagerDelegate>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: @property (nonatomic, strong) FFFInputView *sessionInputView;
@property (nonatomic, strong) DefenceView *sessionInputView;
//: @property (nonatomic, assign) BOOL canTapVoiceBtn; 
@property (nonatomic, assign) BOOL canTapVoiceBtn; // 能够点击语音按钮

// "canMemberInfo": 1,//0 不允许查看资料 1 是允许
//: @property (nonatomic,assign) BOOL canMemberInfo;
@property (nonatomic,assign) BOOL canMemberInfo;
//: @property (nonatomic,assign) BOOL canNoticeMsg;
@property (nonatomic,assign) BOOL canNoticeMsg;//是否通知群消息
//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<ViewHighMagnitudeeractor> interactor;

/**
 *  当前当初的菜单所关联的消息
 *
 *  @discussion 在菜单点击方法中，想获取所点的消息，可以调用此接口
 */
//: @property (nonatomic, strong, readonly) NIMMessage *messageForMenu;
@property (nonatomic, strong, readonly) NIMMessage *messageForMenu;

/**
 *  会话页主标题
 *
 *  @discussion 可以更改文字的大小，颜色等属性，文案内容请使用 - (NSString *)sessionTitle 接口
 */
//: @property (nonatomic, strong, readonly) UILabel *titleLabel;
@property (nonatomic, strong, readonly) UILabel *titleLabel;

/**
 *  会话页子标题
 *
 *  @discussion 可以更改文字的大小，颜色等属性，文案内容请使用 - (NSString *)sessionSubTitle 接口
 */
//: @property (nonatomic, strong, readonly) UILabel *subTitleLabel;
@property (nonatomic, strong, readonly) UILabel *subTitleLabel;


/**
 *  初始化方法
 *
 *  @param session 所属会话
 *
 *  @return 会话页实例
 */
//: - (instancetype)initWithSession:(NIMSession *)session;
- (instancetype)initWithFind:(NIMSession *)session;


//: #pragma mark - 界面
#pragma mark - 界面
/**
 *  会话页导航栏标题
 */
//: - (NSString *)sessionTitle;
- (NSString *)disable;

/**
 *  会话页导航栏子标题
 */
//: - (NSString *)sessionSubTitle;
- (NSString *)picture;

/**
 *  刷新导航栏标题
 */
//: - (void)refreshSessionTitle:(NSString *)title;
- (void)domain:(NSString *)title;

/**
 *  刷新导航子栏标题
 */
//: - (void)refreshSessionSubTitle:(NSString *)title;
- (void)more:(NSString *)title;

/**
 *  刷新消息
 */
//: - (void)refreshMessages;
- (void)length;

/**
 *  会话页长按消息可以弹出的菜单
 *
 *  @param message 长按的消息
 *
 *  @return 菜单，为UIMenuItem的数组
 */
//: - (NSArray *)menusItems:(NIMMessage *)message;
- (NSArray *)send:(NIMMessage *)message;


/**
*  当前页面状态
*/
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)dateVoice;

/**
*  切换页面状态
*
*  @param state 页面状态
*
*/
//: - (void)setSessionState:(NIMKitSessionState)state;
- (void)setDateVoice:(NIMKitSessionState)state;

/**
 *  会话页详细配置
 */
//: - (id<FFFSessionConfig>)sessionConfig;
- (id<FrameConfig>)sessionConfig;


//: #pragma mark - 消息接口
#pragma mark - 消息接口
/**
 *  发送消息
 *
 *  @param message 消息
 */
//: - (void)sendMessage:(NIMMessage *)message;
- (void)content:(NIMMessage *)message;

/**
 *  异步发送消息
 *
 *  @param message 消息
 *  @param 接口调用完成的回调，通常是所有本地工作完成，准备发送时回调
 *  @param completion 完成回调
 */
//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * err))completion;
- (void)screen:(NIMMessage *)message team:(void(^)(NSError * err))completion;


//: #pragma mark - 录音接口
#pragma mark - 录音接口
/**
 *  录音失败回调
 *
 *  @param error 失败原因
 */
//: - (void)onRecordFailed:(NSError *)error;
- (void)heather:(NSError *)error;

/**
 *  录音内容是否可以被发送
 *
 *  @param filepath 录音路径
 *
 *  @return 是否允许发送
 *
 *  @discussion 在此回调里检查录音时长是否满足要求发送的录音时长
 */
//: - (BOOL)recordFileCanBeSend:(NSString *)filepath;
- (BOOL)picture:(NSString *)filepath;

/**
 *  语音不能发送的原因
 *
 *  @discussion 可以显示录音时间不满足要求之类的文案
 */
//: - (void)showRecordFileNotSendReason;
- (void)scaleBy;

//: #pragma mark - 操作接口
#pragma mark - 操作接口

/**
 *  追加多条消息
 *
 *  @param messages 消息集合
 *
 *  @discussion 不会比较时间戳，直接加在消息列表末尾。不会触发 DB 操作，，请手动调用 SDK 里 saveMessage:forSession:completion: 接口。
 */

//: - (void)uiAddMessages:(NSArray *)messages;
- (void)parent:(NSArray *)messages;


/**
 *  插入多条消息
 *
 *  @param messages 消息集合
 *
 *  @discussion 会比较时间戳，加在合适的地方，不推荐聊天室这种大消息量场景使用。不会触发 DB 操作，，请手动调用 SDK 里 saveMessage:forSession:completion: 接口。
 */

//: - (void)uiInsertMessages:(NSArray *)messages;
- (void)announcementWith:(NSArray *)messages;

/**
 *  删除一条消息
 *
 *  @param message 消息
 *
 *  @return 被删除的 MessageModel
 *
 *  @discussion 不会触发 DB 操作，请手动调用 SDK 里 deleteMessage: 接口
 */
//: - (FFFMessageModel *)uiDeleteMessage:(NIMMessage *)message;
- (StochasticProcessTeam *)viewMore:(NIMMessage *)message;

/**
 *  更新一条消息
 *
 *  @param message 消息
 *
 *  @discussion 不会触发 DB 操作，请手动调用 SDK 里 updateMessage:forSession:completion: 接口
 */
//: - (void)uiUpdateMessage:(NIMMessage *)message;
- (void)ofVideo:(NIMMessage *)message;

/**
 * UI上添加PIN，SDK中添加了Pin后调用
 */
//: - (void)uiPinMessage:(NIMMessage *)message;
- (void)trapCell:(NIMMessage *)message;

/**
 * UI上移除PIN，SDK中移除了Pin后调用
 */
//: - (void)uiUnpinMessage:(NIMMessage *)message;
- (void)yank:(NIMMessage *)message;

/**
 * 跳转到对应消息
 */
//: - (void)scrollToMessage:(NIMMessage *)message;
- (void)color:(NIMMessage *)message;

//: @end
@end
