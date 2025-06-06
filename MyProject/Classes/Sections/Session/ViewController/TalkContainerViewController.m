
#import <Foundation/Foundation.h>
typedef struct {
    Byte fast;
    Byte *relativelyMargin;
    unsigned int sizeRetail;
    bool standingAnimal;
} RestData;

NSString *StringFromRestData(RestData *data);


//: 回复详情
RestData kStr_devoteName = (RestData){135, (Byte []){98, 28, 25, 98, 35, 10, 111, 40, 33, 97, 4, 2, 84}, 12, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkContainerViewController.m
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESThreadTalkSessionViewController.h"
#import "TalkContainerViewController.h"
//: #import "NTESThreadSessionConfig.h"
#import "ByShowSessionConfig.h"

//: @interface NTESThreadTalkSessionViewController ()
@interface TalkContainerViewController ()
//: @property (nonatomic,strong) NIMMessage *threadMesssage;
@property (nonatomic,strong) NIMMessage *threadMesssage;
//: @property (nonatomic,strong) NTESThreadSessionConfig *sessionConfig;
@property (nonatomic,strong) ByShowSessionConfig *sessionConfig;
//: @end
@end

//: @implementation NTESThreadTalkSessionViewController
@implementation TalkContainerViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message
- (instancetype)initWithAnPage:(NIMMessage *)message
{
    //: self = [super initWithSession:message.session];
    self = [super initWithScale:message.session];
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
- (void)search
{
}

//: - (NSString *)sessionTitle
- (NSString *)name
{
    //: return @"回复详情".ntes_localized;
    return StringFromRestData(&kStr_devoteName).titleLocalized;
}

//接收消息

//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: if (![self shouldReceive:message])
    if (![self product:message])
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
    if (![self product:message])
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
     if (![self product:message])
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
        if ([self product:message])
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
    if (![self product:message])
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
    if (![self product:message])
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
- (BOOL)product:(NIMMessage *)message
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
- (id<BlueConfig>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESThreadSessionConfig alloc] initWithMessage:self.threadMesssage];
        _sessionConfig = [[ByShowSessionConfig alloc] initWithSend:self.threadMesssage];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)speedied:(NIMMessage *)message
{

}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)last:(NIMMessage *)message
                 //: inView:(UIView *)view
                 language:(UIView *)view
{
    //: return YES;
    return YES;
}

//: @end
@end

Byte *RestDataToByte(RestData *data) {
    if (data->standingAnimal) return data->relativelyMargin;
    for (int i = 0; i < data->sizeRetail; i++) {
        data->relativelyMargin[i] ^= data->fast;
    }
    data->relativelyMargin[data->sizeRetail] = 0;
    data->standingAnimal = true;
    return data->relativelyMargin;
}

NSString *StringFromRestData(RestData *data) {
    return [NSString stringWithUTF8String:(char *)RestDataToByte(data)];
}
