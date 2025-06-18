// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentUtil.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESSnapchatAttachment.h"
#import "FileAllocationTableTransform.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ChapterAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ButtonSupport.h"
//: #import "NTESRedPacketAttachment.h"
#import "RecentAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "CommentAttachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "StopOperationAttachment.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageUtil : NSObject
@interface IndependentUtil : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)digitizer:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END