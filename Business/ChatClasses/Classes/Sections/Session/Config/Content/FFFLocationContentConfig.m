//
//  FFFLocationContentConfig.m
// MyUserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "FFFLocationContentConfig.h"
#import "MyUserKit.h"
@implementation FFFLocationContentConfig

- (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
{
    return CGSizeMake(110.f, 105.f);
}

- (NSString *)cellContent:(NIMMessage *)message
{
    return @"FFFSessionLocationContentView";
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    return [[MyUserKit sharedKit].config setting:message].contentInsets;
}

@end
