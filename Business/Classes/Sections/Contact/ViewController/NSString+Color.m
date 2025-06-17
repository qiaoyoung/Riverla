
#import <Foundation/Foundation.h>

NSString *StringFromStatusData(Byte *data);


//: xia
Byte kStr_imageTimeText[] = {82, 3, 41, 9, 189, 155, 88, 26, 202, 161, 146, 138, 53};


//: chong
Byte kStr_intervalName[] = {32, 5, 99, 14, 181, 246, 228, 205, 221, 191, 133, 88, 114, 152, 198, 203, 210, 209, 202, 37};


//: chang
Byte kStr_itemScaleData[] = {70, 5, 60, 12, 214, 177, 168, 196, 182, 131, 38, 131, 159, 164, 157, 170, 163, 74};


//: shen
Byte kStr_scaleName[] = {10, 4, 20, 6, 252, 216, 135, 124, 121, 130, 81};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Color.m
//  Demo
//
//  Created by LeeJay on 2018/7/5.
//  Copyright © 2018年 LeeJay. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+LJExtension.h"
#import "NSString+Color.h"

//: @implementation NSString (LJExtension)
@implementation NSString (Color)

//: + (NSString *)lj_filterSpecialString:(NSString *)string
+ (NSString *)with:(NSString *)string
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
+ (NSString *)domain:(NSString *)string
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
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:StringFromStatusData(kStr_itemScaleData)];
    }
    //: if ([str isEqualToString:@"沈"])
    if ([str isEqualToString:@"沈"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:StringFromStatusData(kStr_scaleName)];
    }
    //: if ([str isEqualToString:@"厦"])
    if ([str isEqualToString:@"厦"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:StringFromStatusData(kStr_imageTimeText)];
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
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:StringFromStatusData(kStr_intervalName)];
    }

    //: return [[pinyinString lowercaseString] copy];
    return [[pinyinString lowercaseString] copy];
}

//: @end
@end

Byte * StatusDataToCache(Byte *data) {
    int mobile = data[0];
    int imageTitle = data[1];
    Byte addItemContent = data[2];
    int viewItem = data[3];
    if (!mobile) return data + viewItem;
    for (int i = viewItem; i < viewItem + imageTitle; i++) {
        int value = data[i] - addItemContent;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[viewItem + imageTitle] = 0;
    return data + viewItem;
}

NSString *StringFromStatusData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)StatusDataToCache(data)];
}
