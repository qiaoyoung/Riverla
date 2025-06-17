
#import <Foundation/Foundation.h>

NSString *StringFromControlData(Byte *data);        


//: 回复详情
Byte kStr_recentContent[] = {66, 12, 6, 13, 149, 26, 220, 50, 249, 233, 196, 216, 141, 223, 149, 152, 223, 158, 135, 226, 169, 160, 224, 125, 127, 92};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESThreadTalkSessionViewController.h"
#import "AtViewController.h"
//: #import "NTESThreadSessionConfig.h"
#import "HighConferenceSessionConfig.h"

//: @interface NTESThreadTalkSessionViewController ()
@interface AtViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) NTESThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) HighConferenceSessionConfig *sessionConfig;
//: @end
@end

//: @implementation NTESThreadTalkSessionViewController
@implementation AtViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWithPlumbLine:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithFind:message.session];
    //: if (self)
    if (self)
    {
        //: _threadMesssage = message;
        _threadMesssage = message;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)setupNormalNav
- (void)empty
{
}

//: - (NSString *)sessionTitle
- (NSString *)disable
{
    //: return @"回复详情".ntes_localized;
    return StringFromControlData(kStr_recentContent).aboveMagnitude;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self totalContent:message])
    {
        //: return;
        return;
    }
    //: [super willSendMessage:message];
    [super willSendMessage:message];
}

//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self totalContent:message])
    {
       //: return;
       return;
    }

    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
     //: if (![self shouldReceive:message])
     if (![self totalContent:message])
     {
         //: return;
         return;
     }

    //: [super sendMessage:message progress:progress];
    [super sendMessage:message progress:progress];
}

//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: NSMutableArray *subMessages = [NSMutableArray array];
    NSMutableArray *subMessages = [NSMutableArray array];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self shouldReceive:message])
        if ([self totalContent:message])
        {
            //: [subMessages addObject:message];
            [subMessages addObject:message];
        }
    }
    //: if (subMessages.count == 0)
    if (subMessages.count == 0)
    {
        //: return;
        return;
    }
    //: [super onRecvMessages:messages];
    [super onRecvMessages:messages];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if (![self shouldReceive:message])
    if (![self totalContent:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message progress:progress];
    [super fetchMessageAttachment:message progress:progress];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (![self shouldReceive:message])
    if (![self totalContent:message])
    {
        //: return;
        return;
    }

    //: [super fetchMessageAttachment:message didCompleteWithError:error];
    [super fetchMessageAttachment:message didCompleteWithError:error];
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
}


//: - (BOOL)shouldReceive:(NIMMessage *)message
- (BOOL)totalContent:(NIMMessage *)message
{
    //: BOOL should = [message.session isEqual:self.session] &&
    BOOL should = [message.session isEqual:self.session] &&
    //: [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    [message.threadMessageId isEqualToString:self.threadMesssage.messageId];
    //: should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];
    should = should || [message.messageId isEqualToString:self.threadMesssage.messageId];

    //: return should;
    return should;
}

//: - (id<FFFSessionConfig>)sessionConfig
- (id<FrameConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[HighConferenceSessionConfig alloc] initWith:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)selected:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)showWill:(NIMMessage *)message
                 //: inView:(UIView *)view
                 range:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end

Byte * ControlDataToCache(Byte *data) {
    int searchedMax = data[0];
    int cellNim = data[1];
    Byte deviceFind = data[2];
    int endWith = data[3];
    if (!searchedMax) return data + endWith;
    for (int i = endWith; i < endWith + cellNim; i++) {
        int value = data[i] + deviceFind;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[endWith + cellNim] = 0;
    return data + endWith;
}

NSString *StringFromControlData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ControlDataToCache(data)];
}
