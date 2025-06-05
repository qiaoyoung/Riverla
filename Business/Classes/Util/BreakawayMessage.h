// __DEBUG__
// __CLOSE_PRINT__
//
//  BreakawayMessage.h
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESCADisplayLinkHolder;
@class BreakawayMessage;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol MarginMDelegate <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)fileLink:(BreakawayMessage *)holder
                 //: duration:(NSTimeInterval)duration
                 message:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              container:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface BreakawayMessage : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<MarginMDelegate> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)sendAdd: (id<MarginMDelegate>)delegate;

//: - (void)stop;
- (void)actionPerformance;

//: @end
@end