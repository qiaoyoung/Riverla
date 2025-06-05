// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldChild.m
// Notice
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLocationContentConfig.h"
#import "ShouldChild.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @implementation FFFLocationContentConfig
@implementation ShouldChild

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
    //: return CGSizeMake(110.f, 105.f);
    return CGSizeMake(110.f, 105.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)result:(NIMMessage *)message
{
    //: return @"FFFSessionLocationContentView";
    return @"MessageTitleView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Notice fullKit].config sizeGroupBar:message].contentInsets;
}

//: @end
@end