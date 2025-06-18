// __DEBUG__
// __CLOSE_PRINT__
//
//  UserBaseSessionContentConfig.m
// Afterwards
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UserBaseSessionContentConfig.h"
#import "UserBaseSessionContentConfig.h"
//: #import "FFFTextContentConfig.h"
#import "DitheredColourRecent.h"
//: #import "FFFImageContentConfig.h"
#import "ImageClear.h"
//: #import "FFFAudioContentConfig.h"
#import "ImageConfig.h"
//: #import "FFFVideoContentConfig.h"
#import "MessageTemp.h"
//: #import "FFFFileContentConfig.h"
#import "KeyNameHide.h"
//: #import "FFFNotificationContentConfig.h"
#import "RangeConfig.h"
//: #import "FFFLocationContentConfig.h"
#import "DisableIndexConfig.h"
//: #import "FFFUnsupportContentConfig.h"
#import "DisableConfig.h"
//: #import "FFFTipContentConfig.h"
#import "SizeConfig.h"
//: #import "FFFReplyedTextContentConfig.h"
#import "TempSize.h"
//: #import "FFFRtcCallRecordContentConfig.h"
#import "ArrayConfig.h"

//: @interface FFFSessionContentConfigFactory ()
@interface MentalPictureFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) FFFUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) DisableConfig *unsupportConfig;
//: @end
@end

//: @implementation FFFSessionContentConfigFactory
@implementation MentalPictureFactory

//: + (instancetype)sharedFacotry
+ (instancetype)on
{
    //: static FFFSessionContentConfigFactory *instance = nil;
    static MentalPictureFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSessionContentConfigFactory alloc] init];
        instance = [[MentalPictureFactory alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _dict = @{@(NIMMessageTypeText) : [FFFTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [DitheredColourRecent new],
                  //: @(NIMMessageTypeImage) : [FFFImageContentConfig new],
                  @(NIMMessageTypeImage) : [ImageClear new],
                  //: @(NIMMessageTypeAudio) : [FFFAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [ImageConfig new],
                  //: @(NIMMessageTypeVideo) : [FFFVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [MessageTemp new],
                  //: @(NIMMessageTypeFile) : [FFFFileContentConfig new],
                  @(NIMMessageTypeFile) : [KeyNameHide new],
                  //: @(NIMMessageTypeLocation) : [FFFLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [DisableIndexConfig new],
                  //: @(NIMMessageTypeNotification) : [FFFNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [RangeConfig new],
                  //: @(NIMMessageTypeTip) : [FFFTipContentConfig new],
                  @(NIMMessageTypeTip) : [SizeConfig new],
                  //: @(NIMMessageTypeRtcCallRecord): [FFFRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [ArrayConfig new],
        //: };
        };

        //: FFFReplyedTextContentConfig *replyedTextConfig = [FFFReplyedTextContentConfig new];
        TempSize *replyedTextConfig = [TempSize new];
        //: _replyDict = @{
        _replyDict = @{
            //: @(NIMMessageTypeText) : replyedTextConfig,
            @(NIMMessageTypeText) : replyedTextConfig,
            //: @(NIMMessageTypeAudio) : replyedTextConfig,
            @(NIMMessageTypeAudio) : replyedTextConfig,
            //: @(NIMMessageTypeVideo) : replyedTextConfig,
            @(NIMMessageTypeVideo) : replyedTextConfig,
            //: @(NIMMessageTypeFile) : replyedTextConfig,
            @(NIMMessageTypeFile) : replyedTextConfig,
            //: @(NIMMessageTypeTip) : replyedTextConfig,
            @(NIMMessageTypeTip) : replyedTextConfig,
            //: @(NIMMessageTypeRobot) : replyedTextConfig,
            @(NIMMessageTypeRobot) : replyedTextConfig,
            //: @(NIMMessageTypeNotification) : replyedTextConfig,
            @(NIMMessageTypeNotification) : replyedTextConfig,
            //: @(NIMMessageTypeLocation) : replyedTextConfig,
            @(NIMMessageTypeLocation) : replyedTextConfig,
            //: @(NIMMessageTypeCustom) : replyedTextConfig,
            @(NIMMessageTypeCustom) : replyedTextConfig,
            //: @(NIMMessageTypeImage) : replyedTextConfig,
            @(NIMMessageTypeImage) : replyedTextConfig,
            //: @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
        //: };
        };
        //: _unsupportConfig = [[FFFUnsupportContentConfig alloc] init];
        _unsupportConfig = [[DisableConfig alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<ItemConfig>)valueBy:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<ItemConfig>config = [_replyDict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
- (id<ItemConfig>)configBy:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<ItemConfig>config = [_dict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: @end
@end
