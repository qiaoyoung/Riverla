// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemConverter.m
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFPinyinConverter.h"
#import "ItemConverter.h"

//: @interface FFFPinyinConverter ()
@interface ItemConverter ()
{
    //: int *_codeIndex;
    int *_codeIndex;
    //: char *_pinyin;
    char *_pinyin;
    //: BOOL _inited;
    BOOL _inited;
}
//: @end
@end

//: @implementation FFFPinyinConverter
@implementation ItemConverter
//: + (FFFPinyinConverter *)sharedInstance
+ (ItemConverter *)query
{
    //: static FFFPinyinConverter *instance = nil;
    static ItemConverter *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFPinyinConverter alloc] init];
        instance = [[ItemConverter alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (NSString *)toPinyin: (NSString *)source
- (NSString *)assignment: (NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NSMutableString *mutableString = [NSMutableString stringWithString:source];
    NSMutableString *mutableString = [NSMutableString stringWithString:source];
    //: CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //: mutableString = (NSMutableString *)[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
    mutableString = (NSMutableString *)[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
    //: return [mutableString stringByReplacingOccurrencesOfString:@"'" withString:@""];
    return [mutableString stringByReplacingOccurrencesOfString:@"'" withString:@""];
}




//: @end
@end