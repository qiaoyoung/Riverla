// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamManager.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFLanguageManager : NSObject
@interface TeamManager : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (FFFLanguageManager *)shareInstance;
+ (TeamManager *)instance;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setPile:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)sizeKey:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)title;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END