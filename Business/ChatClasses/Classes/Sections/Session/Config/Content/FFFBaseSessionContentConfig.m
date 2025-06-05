//
//  FFFBaseSessionContentConfig.m
// NeeyoKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "FFFBaseSessionContentConfig.h"
#import "FFFTextContentConfig.h"
#import "FFFImageContentConfig.h"
#import "FFFAudioContentConfig.h"
#import "FFFVideoContentConfig.h"
#import "FFFFileContentConfig.h"
#import "FFFNotificationContentConfig.h"
#import "FFFLocationContentConfig.h"
#import "FFFUnsupportContentConfig.h"
#import "FFFTipContentConfig.h"
#import "FFFReplyedTextContentConfig.h"
#import "FFFRtcCallRecordContentConfig.h"

@interface FFFSessionContentConfigFactory ()
@property (nonatomic,strong)    NSDictionary                *dict;
@property (nonatomic,strong)    NSDictionary                *replyDict;
@property (nonatomic,strong)    FFFUnsupportContentConfig   *unsupportConfig;
@end

@implementation FFFSessionContentConfigFactory

+ (instancetype)sharedFacotry
{
    static FFFSessionContentConfigFactory *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[FFFSessionContentConfigFactory alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _dict = @{@(NIMMessageTypeText)         :       [FFFTextContentConfig new],
                  @(NIMMessageTypeImage)        :       [FFFImageContentConfig new],
                  @(NIMMessageTypeAudio)        :       [FFFAudioContentConfig new],
                  @(NIMMessageTypeVideo)        :       [FFFVideoContentConfig new],
                  @(NIMMessageTypeFile)         :       [FFFFileContentConfig new],
                  @(NIMMessageTypeLocation)     :       [FFFLocationContentConfig new],
                  @(NIMMessageTypeNotification) :       [FFFNotificationContentConfig new],
                  @(NIMMessageTypeTip)          :       [FFFTipContentConfig new],
                  @(NIMMessageTypeRtcCallRecord):       [FFFRtcCallRecordContentConfig new],
        };
        
        FFFReplyedTextContentConfig *replyedTextConfig = [FFFReplyedTextContentConfig new];
        _replyDict = @{
            @(NIMMessageTypeText)       : replyedTextConfig,
            @(NIMMessageTypeAudio)      : replyedTextConfig,
            @(NIMMessageTypeVideo)      : replyedTextConfig,
            @(NIMMessageTypeFile)       : replyedTextConfig,
            @(NIMMessageTypeTip)        : replyedTextConfig,
            @(NIMMessageTypeRobot)      : replyedTextConfig,
            @(NIMMessageTypeNotification)   : replyedTextConfig,
            @(NIMMessageTypeLocation)   : replyedTextConfig,
            @(NIMMessageTypeCustom)     : replyedTextConfig,
            @(NIMMessageTypeImage)      : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord)      : replyedTextConfig,
        };
        _unsupportConfig = [[FFFUnsupportContentConfig alloc] init];
    }
    return self;
}

- (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
{
    NIMMessageType type = message.messageType;
    id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    if (config == nil)
    {
        config = _unsupportConfig;
    }
    return config;
}

- (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
{
    NIMMessageType type = message.messageType;
    id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    if (config == nil)
    {
        config = _unsupportConfig;
    }
    return config;
}

@end
