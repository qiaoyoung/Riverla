// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableAttributedString+M80.m
//  ShowTitleView
//
//  Created by amao on 13-8-31.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSMutableAttributedString+M80.h"
#import "NSMutableAttributedString+M80.h"

//: @implementation NSMutableAttributedString (M80)
@implementation NSMutableAttributedString (M80)

//: - (void)m80_setTextColor:(UIColor*)color
- (void)generate:(UIColor*)color
{
    //: [self m80_setTextColor:color range:NSMakeRange(0, [self length])];
    [self textRange:color spaceAfter:NSMakeRange(0, [self length])];
}

//: - (void)m80_setTextColor:(UIColor*)color range:(NSRange)range
- (void)textRange:(UIColor*)color spaceAfter:(NSRange)range
{
    //: [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
    [self addAttributes:@{NSForegroundColorAttributeName:color} range:range];
}


//: - (void)m80_setFont:(UIFont*)font
- (void)style:(UIFont*)font
{
    //: [self m80_setFont:font range:NSMakeRange(0, [self length])];
    [self rangeAcrossSumerval:font rowRange:NSMakeRange(0, [self length])];
}

//: - (void)m80_setFont:(UIFont*)font range:(NSRange)range
- (void)rangeAcrossSumerval:(UIFont*)font rowRange:(NSRange)range
{
    //: if (font)
    if (font)
    {
        //: [self addAttributes:@{NSFontAttributeName:font} range:range];
        [self addAttributes:@{NSFontAttributeName:font} range:range];
    }
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)input:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 text:(CTUnderlineStyleModifiers)modifier
{
    //: [self m80_setUnderlineStyle:style
    [self tap:style
                   //: modifier:modifier
                   edge:modifier
                      //: range:NSMakeRange(0, self.length)];
                      titleRange:NSMakeRange(0, self.length)];
}

//: - (void)m80_setUnderlineStyle:(CTUnderlineStyle)style
- (void)tap:(CTUnderlineStyle)style
                 //: modifier:(CTUnderlineStyleModifiers)modifier
                 edge:(CTUnderlineStyleModifiers)modifier
                    //: range:(NSRange)range
                    titleRange:(NSRange)range
{
    //: [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
    [self addAttributes:@{NSUnderlineStyleAttributeName :[NSNumber numberWithInt:(style|modifier)]} range:range];
}

//: @end
@end