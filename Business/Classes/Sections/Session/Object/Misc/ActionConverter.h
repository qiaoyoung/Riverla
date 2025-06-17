// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESJanKenPonAttachment;
@class ChapterAttachment;
//: @class NTESSnapchatAttachment;
@class FileAllocationTableTransform;
//: @class NTESWhiteboardAttachment;
@class ButtonSupport;
//: @class NTESRedPacketAttachment;
@class RecentAttachment;
//: @class NTESRedPacketTipAttachment;
@class CommentAttachment;
//: @class NTESMultiRetweetAttachment;
@class StopOperationAttachment;
//: @class NTESShareCardAttachment;
@class TableFit;

//: @interface NTESSessionMsgConverter : NSObject
@interface ActionConverter : NSObject

//: + (NIMMessage *)msgWithText:(NSString *)text;
+ (NIMMessage *)doing:(NSString *)text;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)control:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)lipPath:(NSString *)path;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)edgeLabel:(NSString *)filePath;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)videoRefer:(NSString *)filePath;

//: + (NIMMessage *)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment;
+ (NIMMessage *)message:(ChapterAttachment *)attachment;

//: + (NIMMessage *)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment;
+ (NIMMessage *)to:(FileAllocationTableTransform *)attachment;

//: + (NIMMessage *)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment;
+ (NIMMessage *)can:(ButtonSupport *)attachment;

//: + (NIMMessage *)msgWithFilePath:(NSString *)path;
+ (NIMMessage *)atPath:(NSString *)path;

//: + (NIMMessage *)msgWithFileData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)max:(NSData *)data itemExtension:(NSString *)extension;

//: + (NIMMessage *)msgWithTip:(NSString *)tip;
+ (NIMMessage *)checkTip:(NSString *)tip;

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)voiceSize:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              library:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt;
         deviceExt:(NSString *)revokeCallbackExt;

//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment;
+ (NIMMessage *)network:(RecentAttachment *)attachment;

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment;
+ (NIMMessage *)inputIndicator:(CommentAttachment *)attachment;

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment;
+ (NIMMessage *)diam:(StopOperationAttachment *)attachment;

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage;
+ (NIMMessage *)query:(NIMMessage *)revocationMessage;

//: + (NIMMessage *)msgWithShareCard:(NTESShareCardAttachment *)attachment;
+ (NIMMessage *)pushShare:(TableFit *)attachment;

//: @end
@end