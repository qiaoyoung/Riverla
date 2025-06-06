// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+Notice.h
// Notice
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSBundle (MyUserKit)
@interface NSBundle (Notice)

//: + (NSBundle *)nim_defaultEmojiBundle;
+ (NSBundle *)send;

//: + (nullable NSBundle *)nim_defaultLanguageBundle;
+ (nullable NSBundle *)bundle;

//: + (NSString *)nim_EmojiPlistFile;
+ (NSString *)titleTable;

//: + (NSString *)nim_EmojiGifPlistFile;
+ (NSString *)file;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END