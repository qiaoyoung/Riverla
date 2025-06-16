//
//  NSArray+Safe.h
//  BustVideo
//
//  Created by jiangenhao on 2017/10/27.
//  Copyright © 2017年 360Video. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Safe)

- (NSArray *)arrayByReplacingNullsWithBlanks;

@end
