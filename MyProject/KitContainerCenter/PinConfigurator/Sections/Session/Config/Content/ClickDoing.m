// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickDoing.m
// Notice
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFFileContentConfig.h"
#import "ClickDoing.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @implementation FFFFileContentConfig
@implementation ClickDoing

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
    //: return CGSizeMake(110, 110);
    return CGSizeMake(110, 110);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)result:(NIMMessage *)message
{
    //: return @"FFFSessionFileTransContentView";
    return @"FileView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Notice fullKit].config sizeGroupBar:message].contentInsets;
}



//: @end
@end