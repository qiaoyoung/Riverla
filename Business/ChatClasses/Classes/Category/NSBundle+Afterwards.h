// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+Afterwards.h
// Afterwards
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
@interface NSBundle (Afterwards)

//: + (NSBundle *)nim_defaultEmojiBundle;
+ (NSBundle *)tag;

//: + (nullable NSBundle *)nim_defaultLanguageBundle;
+ (nullable NSBundle *)withFile;

//: + (NSString *)nim_EmojiPlistFile;
+ (NSString *)beyondSize;

//: + (NSString *)nim_EmojiGifPlistFile;
+ (NSString *)path;

//: + (NSString *)nim_EmojiImage:(NSString *)imageName;
+ (NSString *)color:(NSString *)imageName;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END