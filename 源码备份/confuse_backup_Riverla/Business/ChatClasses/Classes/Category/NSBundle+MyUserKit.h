//
//  NSBundle+MyUserKit.h
// MyUserKit
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (MyUserKit)

+ (NSBundle *)nim_defaultEmojiBundle;

+ (nullable NSBundle *)nim_defaultLanguageBundle;

+ (NSString *)nim_EmojiPlistFile;

+ (NSString *)nim_EmojiGifPlistFile;

+ (NSString *)nim_EmojiImage:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
