// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+InfoByMargin.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NSString * emptyString(NSString *anMaybeEmptyString);
NSString * emptyString(NSString *anMaybeEmptyString);

//: @interface NSString (NTES)
@interface NSString (InfoByMargin)

//: - (CGSize)stringSizeWithFont:(UIFont *)font;
- (CGSize)will:(UIFont *)font;

//: - (NSString *)MD5String;
- (NSString *)table;

//: - (NSUInteger)getBytesLength;
- (NSUInteger)item;

//: - (NSString *)stringByDeletingPictureResolution;
- (NSString *)gesture;

//: - (NSString *)tokenByPassword;
- (NSString *)ofName;

//: - (NSString *)ntes_localized;
- (NSString *)titleLocalized;

//: + (NSString *)randomStringWithLength:(NSUInteger)length;
+ (NSString *)cutOut:(NSUInteger)length;

//: @end
@end