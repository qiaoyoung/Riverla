// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+NIM.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonDigest.h>
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation NSString (MyUserKit)
@implementation NSString (Afterwards)

//: - (CGSize)nim_stringSizeWithFont:(UIFont *)font{
- (CGSize)contentFont:(UIFont *)font{
    //: return [self sizeWithAttributes:@{NSFontAttributeName:font}];
    return [self sizeWithAttributes:@{NSFontAttributeName:font}];
}

//: - (NSString *)nim_MD5String {
- (NSString *)ting {
    //: const char *cstr = [self UTF8String];
    const char *cstr = [self UTF8String];
    //: unsigned char result[16];
    unsigned char result[16];
    //: CC_MD5(cstr, (CC_LONG)strlen(cstr), result);
    CC_MD5(cstr, (CC_LONG)strlen(cstr), result);
    //: return [NSString stringWithFormat:
    return [NSString stringWithFormat:
            //: @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            //: result[0], result[1], result[2], result[3],
            result[0], result[1], result[2], result[3],
            //: result[4], result[5], result[6], result[7],
            result[4], result[5], result[6], result[7],
            //: result[8], result[9], result[10], result[11],
            result[8], result[9], result[10], result[11],
            //: result[12], result[13], result[14], result[15]
            result[12], result[13], result[14], result[15]
            //: ];
            ];
}


//: - (NSUInteger)nim_getBytesLength
- (NSUInteger)lengthRestore
{
    //: NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    //: return [self lengthOfBytesUsingEncoding:enc];
    return [self lengthOfBytesUsingEncoding:enc];
}


//: - (NSString *)nim_stringByDeletingPictureResolution{
- (NSString *)color{
    //: NSString *doubleResolution = @"@2x";
    NSString *doubleResolution = @"@2x";
    //: NSString *tribleResolution = @"@3x";
    NSString *tribleResolution = @"@3x";
    //: NSString *fileName = self.stringByDeletingPathExtension;
    NSString *fileName = self.stringByDeletingPathExtension;
    //: NSString *res = [self copy];
    NSString *res = [self copy];
    //: if ([fileName hasSuffix:doubleResolution] || [fileName hasSuffix:tribleResolution]) {
    if ([fileName hasSuffix:doubleResolution] || [fileName hasSuffix:tribleResolution]) {
        //: res = [fileName substringToIndex:fileName.length - 3];
        res = [fileName substringToIndex:fileName.length - 3];
        //: if (self.pathExtension.length) {
        if (self.pathExtension.length) {
            //: res = [res stringByAppendingPathExtension:self.pathExtension];
            res = [res stringByAppendingPathExtension:self.pathExtension];
        }
    }
    //: return res;
    return res;
}


//: - (UIColor *)nim_hexToColor
- (UIColor *)title
{
    //: unsigned rgbValue = 0;
    unsigned rgbValue = 0;
    //: NSScanner *scanner = [NSScanner scannerWithString:self];
    NSScanner *scanner = [NSScanner scannerWithString:self];
    //去掉#
    //: [scanner setScanLocation:1];
    [scanner setScanLocation:1];
    //: [scanner scanHexInt:&rgbValue];
    [scanner scanHexInt:&rgbValue];
    //: return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

//: - (BOOL)nim_fileIsExist {
- (BOOL)checked {
    //: NSFileManager *fm =[NSFileManager defaultManager];
    NSFileManager *fm =[NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: BOOL isExist = (![fm fileExistsAtPath:self isDirectory:&isDir] || isDir);
    BOOL isExist = (![fm fileExistsAtPath:self isDirectory:&isDir] || isDir);
    //: return isExist;
    return isExist;
}

//: - (NSString *)nim_localized {
- (NSString *)textKey {
    //: NSString * result = [self nim_localizedWithTable:[MyUserKit sharedKit].languageTable];
    NSString * result = [self display:[Afterwards blue].languageTable];
    //: return result;
    return result;
}

//: - (NSString *)nim_localizedWithTable:(NSString *)table {
- (NSString *)display:(NSString *)table {
    //: NSBundle * languageBundle = [MyUserKit sharedKit].languageBundle;
    NSBundle * languageBundle = [Afterwards blue].languageBundle;
    //: return [self nim_localizedByBundle:languageBundle table:table];
    return [self sizeView:languageBundle session:table];
}

//: - (NSString *)nim_localizedByBundle:(NSBundle *)bundle table:(NSString *)table {
- (NSString *)sizeView:(NSBundle *)bundle session:(NSString *)table {
    //: if (!bundle) {
    if (!bundle) {
        //: return self;
        return self;
    }
    //: return NSLocalizedStringFromTableInBundle(self, nil, bundle, @"");
    return NSLocalizedStringFromTableInBundle(self, nil, bundle, @"");
}

//: - (BOOL)nim_containsEmoji {
- (BOOL)userDate {
    //: __block BOOL returnValue =NO;
    __block BOOL returnValue =NO;
    //: [self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
    [self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        //: const unichar hs = [substring characterAtIndex:0];
        const unichar hs = [substring characterAtIndex:0];
        // surrogate pair
        //: if (0xd800) {
        if (0xd800) {
            //: if (0xd800 <= hs && hs <= 0xdbff) {
            if (0xd800 <= hs && hs <= 0xdbff) {
                //: if (substring.length > 1) {
                if (substring.length > 1) {
                    //: const unichar ls = [substring characterAtIndex:1];
                    const unichar ls = [substring characterAtIndex:1];
                    //: const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                    const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                    //: if (0x1d000 <= uc && uc <= 0x1f77f) {
                    if (0x1d000 <= uc && uc <= 0x1f77f) {
                        //: returnValue =YES;
                        returnValue =YES;
                    }
                }
            //: }else if (substring.length > 1) {
            }else if (substring.length > 1) {
                //: const unichar ls = [substring characterAtIndex:1];
                const unichar ls = [substring characterAtIndex:1];
                //: if (ls == 0x20e3) {
                if (ls == 0x20e3) {
                    //: returnValue =YES;
                    returnValue =YES;
                }
            //: }else {
            }else {
                // non surrogate
                //: if (0x2100 <= hs && hs <= 0x27ff) {
                if (0x2100 <= hs && hs <= 0x27ff) {
                    //: returnValue =YES;
                    returnValue =YES;
                //: }else if (0x2B05 <= hs && hs <= 0x2b07) {
                }else if (0x2B05 <= hs && hs <= 0x2b07) {
                    //: returnValue =YES;
                    returnValue =YES;
                //: }else if (0x2934 <= hs && hs <= 0x2935) {
                }else if (0x2934 <= hs && hs <= 0x2935) {
                    //: returnValue =YES;
                    returnValue =YES;
                //: }else if (0x3297 <= hs && hs <= 0x3299) {
                }else if (0x3297 <= hs && hs <= 0x3299) {
                    //: returnValue =YES;
                    returnValue =YES;
                //: }else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                }else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                    //: returnValue =YES;
                    returnValue =YES;
                }
            }
        }
    //: }];
    }];
    //: return returnValue;
    return returnValue;
}

//: - (NSRange)nim_rangeOfLastUnicode
- (NSRange)show
{
    //: NSUInteger lastCharIndex = [self length] - 1;
    NSUInteger lastCharIndex = [self length] - 1;
    //: NSRange rangeOfLastChar = [self rangeOfComposedCharacterSequenceAtIndex:lastCharIndex];
    NSRange rangeOfLastChar = [self rangeOfComposedCharacterSequenceAtIndex:lastCharIndex];
    //: return rangeOfLastChar;
    return rangeOfLastChar;
}

//: @end
@end