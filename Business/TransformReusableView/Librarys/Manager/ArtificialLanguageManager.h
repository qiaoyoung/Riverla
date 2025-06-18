// __DEBUG__
// __CLOSE_PRINT__
//
//  ArtificialLanguageManager.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESLanguageManager : NSObject
@interface ArtificialLanguageManager : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (NTESLanguageManager *)shareInstance;
+ (ArtificialLanguageManager *)touch;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setIndex:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)page:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)groupActionData;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END