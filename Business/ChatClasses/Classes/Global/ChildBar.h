// __DEBUG__
// __CLOSE_PRINT__
//
//  ChildBar.h
// Notice
//
//  Created by chris on 2017/10/25.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitSetting.h"
#import "ShowClickMessage.h"

//: @class FFFKitSettings;
@class ViewSettings;
//: @class NIMMessage;
@class NIMMessage;

//: typedef NS_ENUM(NSInteger,NIMKitAvatarType) {
typedef NS_ENUM(NSInteger,NIMKitAvatarType) {
    /*矩形直角头像*/
    //: NIMKitAvatarTypeNone,
    NIMKitAvatarTypeNone,
    /*圆形头像*/
    //: NIMKitAvatarTypeRounded,
    NIMKitAvatarTypeRounded,
    /*圆角头像*/
    //: NIMKitAvatarTypeRadiusCorner,
    NIMKitAvatarTypeRadiusCorner,
//: };
};

//: @interface FFFKitConfig : NSObject
@interface ChildBar : NSObject


/*全局设置*/

/**
 *  每隔多久显示一条消息
 */
//: @property (nonatomic, assign) NSTimeInterval messageInterval;
@property (nonatomic, assign) NSTimeInterval messageInterval;

/**
 *  每次抓取的消息个数
 */
//: @property (nonatomic, assign) NSInteger messageLimit;
@property (nonatomic, assign) NSInteger messageLimit;


/**
 *  录音的最大时长
 */
//: @property (nonatomic, assign) NSTimeInterval recordMaxDuration;
@property (nonatomic, assign) NSTimeInterval recordMaxDuration;


/**
 *  输入框的占位符
 */
//: @property (nonatomic, copy) NSString *placeholder;
@property (nonatomic, copy) NSString *placeholder;


/**
 *  输入框能容纳的最大字符长度
 */
//: @property (nonatomic, assign) NSInteger inputMaxLength;
@property (nonatomic, assign) NSInteger inputMaxLength;


/**
 *  cell 的背景色
 */
//: @property (nonatomic, strong) UIColor *cellBackgroundColor;
@property (nonatomic, strong) UIColor *cellBackgroundColor;


/**
 *  头像类型
 */
//: @property (nonatomic, assign) NIMKitAvatarType avatarType;
@property (nonatomic, assign) NIMKitAvatarType avatarType;


/**
 *  昵称字体
 */
//: @property (nonatomic, strong) UIFont *nickFont;
@property (nonatomic, strong) UIFont *nickFont;

/**
 *  已读回执字体
 */
//: @property (nonatomic, strong) UIFont *receiptFont;
@property (nonatomic, strong) UIFont *receiptFont;

/**
 *  昵称颜色
 */
//: @property (nonatomic, strong) UIColor *nickColor;
@property (nonatomic, strong) UIColor *nickColor;


/**
 *  已读回执颜色
 */
//: @property (nonatomic, strong) UIColor *receiptColor;
@property (nonatomic, strong) UIColor *receiptColor;


/**
 *  左侧气泡设置
 */
//: @property (nonatomic, strong) FFFKitSettings *leftBubbleSettings;
@property (nonatomic, strong) ViewSettings *leftBubbleSettings;

/**
 *  右侧气泡设置
 */
//: @property (nonatomic, strong) FFFKitSettings *rightBubbleSettings;
@property (nonatomic, strong) ViewSettings *rightBubbleSettings;


/*默认内置配置*/

//: - (NSArray *)defaultMediaItems;
- (NSArray *)buildImage;

//: - (NSArray *)defaultMenuItemsWithMessage:(NIMMessage *)message;
- (NSArray *)greenTextMessage:(NIMMessage *)message;

//: - (CGFloat)maxNotificationTipPadding;
- (CGFloat)enable;


/*根据消息取到配置*/

//: - (FFFKitSetting *)setting:(NIMMessage *)message;
- (ShowClickMessage *)sizeGroupBar:(NIMMessage *)message;


/*被回复消息取到配置*/

//: - (FFFKitSetting *)repliedSetting:(NIMMessage *)message;
- (ShowClickMessage *)extent:(NIMMessage *)message;

//: @end
@end




/**
 *  组件 UI 设置
 */
//: @interface FFFKitSettings : NSObject
@interface ViewSettings : NSObject

/**
 *  文本类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *textSetting;
@property (nonatomic, strong) ShowClickMessage *textSetting;

/**
 *  音频类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *audioSetting;
@property (nonatomic, strong) ShowClickMessage *audioSetting;

/**
 *  视频类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *videoSetting;
@property (nonatomic, strong) ShowClickMessage *videoSetting;

/**
 *  文件类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *fileSetting;
@property (nonatomic, strong) ShowClickMessage *fileSetting;

/**
 *  图片类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *imageSetting;
@property (nonatomic, strong) ShowClickMessage *imageSetting;

/**
 *  地理位置类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *locationSetting;
@property (nonatomic, strong) ShowClickMessage *locationSetting;

/**
 *  提示类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *tipSetting;
@property (nonatomic, strong) ShowClickMessage *tipSetting;

/**
 *  Rtc话单类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *rtcCallRecordSetting;
@property (nonatomic, strong) ShowClickMessage *rtcCallRecordSetting;

/**
 *  无法识别类型消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *unsupportSetting;
@property (nonatomic, strong) ShowClickMessage *unsupportSetting;

/**
 *  群组通知类型通知消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *teamNotificationSetting;
@property (nonatomic, strong) ShowClickMessage *teamNotificationSetting;

/**
 *  群组通知类型通知消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *superTeamNotificationSetting;
@property (nonatomic, strong) ShowClickMessage *superTeamNotificationSetting;

/**
 *  聊天室类型类型通知消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *chatroomNotificationSetting;
@property (nonatomic, strong) ShowClickMessage *chatroomNotificationSetting;

/**
 *  网络电话类型类型通知消息设置
 */
//: @property (nonatomic, strong) FFFKitSetting *netcallNotificationSetting;
@property (nonatomic, strong) ShowClickMessage *netcallNotificationSetting;

/**
 *  被回复消息的设置
 */
//: @property (nonatomic, strong) FFFKitSetting *repliedSetting;
@property (nonatomic, strong) ShowClickMessage *repliedSetting;


//: @end
@end