// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+InfoByMargin.h
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSData (NTES)
@interface NSData (InfoByMargin)
//: - (NSString *)MD5String;
- (NSString *)sound;

//: - (NSData *)aes256EncryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)holder:(NSString *)key back_strong:(NSString *)vector;
//: - (NSData *)aes256DecryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)path:(NSString *)key to:(NSString *)vector;

//: - (NSData *)rc4EncryptWithKey:(NSString *)key;
- (NSData *)tingKey:(NSString *)key;
//: - (NSData *)rc4DecryptWithKey:(NSString *)key;
- (NSData *)should:(NSString *)key;

//: @end
@end