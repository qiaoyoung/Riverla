// __DEBUG__
// __CLOSE_PRINT__
//
//  M80AttributedLabelDefines.h
//  ShowTitleView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <CoreText/CoreText.h>
#import <CoreText/CoreText.h>
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef NS_OPTIONS(NSUInteger, M80ImageAlignment) {
typedef NS_OPTIONS(NSUInteger, M80ImageAlignment) {
    //: M80ImageAlignmentTop,
    M80ImageAlignmentTop,
    //: M80ImageAlignmentCenter,
    M80ImageAlignmentCenter,
    //: M80ImageAlignmentBottom
    M80ImageAlignmentBottom
//: };
};

//: @class M80AttributedLabel;
@class ShowTitleView;

//: @protocol M80AttributedLabelDelegate <NSObject>
@protocol BoundaryDelegate <NSObject>
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)hold:(ShowTitleView *)label
             //: clickedOnLink:(id)linkData;
             label:(id)linkData;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END