//
//  FFFLanguageManager.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FFFLanguageManager : NSObject
@property (nonatomic,strong) NSMutableDictionary *langDict;
+ (FFFLanguageManager *)shareInstance;
- (void)setLanguagre:(NSString *)langType;
+ (NSString *)getTextWithKey:(NSString *)key;

+ (NSString *)getLocale;

@end

NS_ASSUME_NONNULL_END
