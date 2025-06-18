// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+Closes.h
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSData (NTES)
@interface NSData (Closes)
//: - (NSString *)MD5String;
- (NSString *)subMessage;

//: - (NSData *)aes256EncryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)indexSession:(NSString *)key start:(NSString *)vector;
//: - (NSData *)aes256DecryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)orientation:(NSString *)key shared:(NSString *)vector;

//: - (NSData *)rc4EncryptWithKey:(NSString *)key;
- (NSData *)sizeShow:(NSString *)key;
//: - (NSData *)rc4DecryptWithKey:(NSString *)key;
- (NSData *)colorView:(NSString *)key;

//: @end
@end