// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusViewText.h
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESAVNotifier : NSObject
@interface StatusViewText : NSObject
//: - (void)start:(NSString *)text;
- (void)itemStart:(NSString *)text;
//: - (void)stop;
- (void)show;
//: @end
@end