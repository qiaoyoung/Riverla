// __DEBUG__
// __CLOSE_PRINT__
//
//  LatchkeyChange.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESSnapchatAttachment.h"
#import "PresentAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ChangeScale.h"
//: #import "NTESWhiteboardAttachment.h"
#import "PastAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "RubyRedRecentAttachmentCustom.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "StyleAction.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ConstituentAttachment.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageUtil : NSObject
@interface LatchkeyChange : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)at:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END