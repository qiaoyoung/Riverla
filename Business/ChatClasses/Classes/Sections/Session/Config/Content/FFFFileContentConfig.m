//
//  FFFFileContentConfig.m
// NeeyoKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "FFFFileContentConfig.h"
#import "NeeyoKit.h"

@implementation FFFFileContentConfig

- (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
{
    return CGSizeMake(110, 110);
}

- (NSString *)cellContent:(NIMMessage *)message
{
    return @"FFFSessionFileTransContentView";
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    return [[NeeyoKit sharedKit].config setting:message].contentInsets;
}



@end
