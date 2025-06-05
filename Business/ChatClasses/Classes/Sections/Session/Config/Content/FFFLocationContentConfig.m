//
//  FFFLocationContentConfig.m
// NeeyoKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "FFFLocationContentConfig.h"
#import "NeeyoKit.h"
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
    return [[NeeyoKit sharedKit].config setting:message].contentInsets;
}

@end
