// __DEBUG__
// __CLOSE_PRINT__
//
//  ObstructContentView.h
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: extern NSString *const NIMDemoEventNameOpenSnapPicture; 
extern NSString *const kLet_formatText; //自定义消息阅后即焚，打开阅后即焚预览窗口
//: extern NSString *const NIMDemoEventNameCloseSnapPicture; 
extern NSString *const kLet_keyValue; //自定义消息阅后即焚，关闭阅后即焚预览窗口

//: @interface NTESSessionSnapchatContentView : FFFSessionMessageContentView
@interface ObstructContentView : CypherView

//: @end
@end