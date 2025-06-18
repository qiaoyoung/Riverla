// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemManager.h
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
@interface ItemManager : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (FFFLanguageManager *)shareInstance;
+ (ItemManager *)quickInstance;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setRow:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)sessionInformation:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)press;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END