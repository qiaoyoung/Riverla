
#import <Foundation/Foundation.h>

NSString *StringFromTitleColorData(Byte *data);


//: xia
Byte kStr_enableValue[] = {3, 3, 15, 12, 63, 140, 250, 241, 201, 219, 3, 45, 135, 120, 112, 248};


//: chong
Byte kStr_fileChildText[] = {20, 5, 57, 11, 142, 255, 100, 190, 235, 240, 68, 156, 161, 168, 167, 160, 202};


//: chang
Byte kStr_barName[] = {30, 5, 56, 13, 100, 95, 215, 93, 49, 90, 232, 104, 113, 155, 160, 153, 166, 159, 77};


//: shen
Byte kStr_viewTitle[] = {55, 4, 16, 11, 250, 8, 154, 200, 24, 27, 224, 131, 120, 117, 126, 199};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Evaluate.m
//  Demo
//
//  Created by LeeJay on 2018/7/5.
//  Copyright © 2018年 LeeJay. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+LJExtension.h"
#import "NSString+Evaluate.h"

//: @implementation NSString (LJExtension)
@implementation NSString (Evaluate)

//: + (NSString *)lj_filterSpecialString:(NSString *)string
+ (NSString *)coverLibrary:(NSString *)string
{
    //: if (string == nil)
    if (string == nil)
    {
        //: return @"";
        return @"";
    }

    //: string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: return string;
    return string;
}

//: + (NSString *)lj_pinyinForString:(NSString *)string
+ (NSString *)printMedia:(NSString *)string
{
    //: if (string.length == 0)
    if (string.length == 0)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableString *mutableString = [NSMutableString stringWithString:string];
    NSMutableString *mutableString = [NSMutableString stringWithString:string];
    //: CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //: NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];
    NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];

    //: NSString *str = [string substringToIndex:1];
    NSString *str = [string substringToIndex:1];

    //: if ([str isEqualToString:@"长"])
    if ([str isEqualToString:@"长"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:StringFromTitleColorData(kStr_barName)];
    }
    //: if ([str isEqualToString:@"沈"])
    if ([str isEqualToString:@"沈"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:StringFromTitleColorData(kStr_viewTitle)];
    }
    //: if ([str isEqualToString:@"厦"])
    if ([str isEqualToString:@"厦"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:StringFromTitleColorData(kStr_enableValue)];
    }
    //: if ([str isEqualToString:@"地"])
    if ([str isEqualToString:@"地"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    //: if ([str isEqualToString:@"重"])
    if ([str isEqualToString:@"重"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:StringFromTitleColorData(kStr_fileChildText)];
    }

    //: return [[pinyinString lowercaseString] copy];
    return [[pinyinString lowercaseString] copy];
}

//: @end
@end

Byte * TitleColorDataToCache(Byte *data) {
    int file = data[0];
    int heatherMixture = data[1];
    Byte titleRed = data[2];
    int smart = data[3];
    if (!file) return data + smart;
    for (int i = smart; i < smart + heatherMixture; i++) {
        int value = data[i] - titleRed;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[smart + heatherMixture] = 0;
    return data + smart;
}

NSString *StringFromTitleColorData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TitleColorDataToCache(data)];
}
