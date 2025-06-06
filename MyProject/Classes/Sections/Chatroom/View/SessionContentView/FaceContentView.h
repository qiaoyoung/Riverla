// __DEBUG__
// __CLOSE_PRINT__
//
//  FaceContentView.h
//  NIMDemo
//
//  Created by chris on 2017/6/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//
//: #import "NIMSessionMessageContentView.h"
#import "NIMSessionMessageContentView.h"

// __M_A_C_R_O__

//: @interface NTESSessionRobotContentView : NIMSessionMessageContentView
@interface FaceContentView : NIMSessionMessageContentView

// 参与 cell 行高的接口
//: - (void)setupRobot:(NIMMessageModel *)data;
- (void)noGolem:(NIMMessageModel *)data;

//: + (CGFloat)itemSpacing;
+ (CGFloat)message;

//: @end
@end