// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.h
//  ShowTitleView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "M80AttributedLabelDefines.h"
#import "M80AttributedLabelDefines.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSMutableAttributedString (M80)
@interface NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color;
- (void)generate:(UIColor*)color;
//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range;
- (void)textRange:(UIColor*)color spaceAfter:(NSRange)range;

//: - (void)m80_setFont:(UIFont*)font;
- (void)style:(UIFont*)font;
//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range;
- (void)rangeAcrossSumerval:(UIFont*)font rowRange:(NSRange)range;

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)input:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier;
                 text:(CTUnderlineStyleModifiers)modifier;
//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)tap:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 edge:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range;
                    titleRange:(NSRange)range;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END