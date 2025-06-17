
#import <Foundation/Foundation.h>

NSString *StringFromOxygenGradData(Byte *data);


//: tyl_spellingCache
Byte kStr_heOptionName[] = {54, 17, 4, 182, 101, 104, 99, 97, 67, 103, 110, 105, 108, 108, 101, 112, 115, 95, 108, 121, 116, 18};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentCenter.m
//  NIM
//
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSpellingCenter.h"
#import "WithCenter.h"
//: #import "FFFPinyinConverter.h"
#import "ItemConverter.h"
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"

//: @implementation NIMSpellingUnit
@implementation CommentUnit

//: @end
@end

//: @interface FFFSpellingCenter ()
@interface WithCenter ()
//: - (NIMSpellingUnit *)calcSpellingOfString: (NSString *)source;
- (CommentUnit *)item: (NSString *)source;
//: @end
@end


//: @implementation FFFSpellingCenter
@implementation WithCenter
//: + (FFFSpellingCenter *)sharedCenter
+ (WithCenter *)center
{
    //: static FFFSpellingCenter *instance = nil;
    static WithCenter *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSpellingCenter alloc]init];
        instance = [[WithCenter alloc]init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (id)init
- (id)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_spellingCache"];
        NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromOxygenGradData(kStr_heOptionName)];
        //: if (spellingCache) {
        if (spellingCache) {
            //: _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[NIMSpellingUnit class] json:spellingCache]];
            _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[CommentUnit class] json:spellingCache]];
        }

        //: if (!_spellingCache)
        if (!_spellingCache)
        {
            //: _spellingCache = [[NSMutableDictionary alloc]init];
            _spellingCache = [[NSMutableDictionary alloc]init];
        }
    }
    //: return self;
    return self;
}



//: - (void)saveSpellingCache
- (void)taproomCache
{
    //: static const NSInteger kMaxEntriesCount = 5000;
    static const NSInteger kMaxEntriesCount = 5000;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NSInteger count = [_spellingCache count];
        NSInteger count = [_spellingCache count];
        //: if (count >= kMaxEntriesCount)
        if (count >= kMaxEntriesCount)
        {
            //: [_spellingCache removeAllObjects];
            [_spellingCache removeAllObjects];
        }
        //: if (_spellingCache)
        if (_spellingCache)
        {
            //: [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:@"tyl_spellingCache"];
            [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:StringFromOxygenGradData(kStr_heOptionName)];
        }

    }
}


//: - (NIMSpellingUnit *)spellingForString:(NSString *)source
- (CommentUnit *)tap:(NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NIMSpellingUnit *spellingUnit = nil;
    CommentUnit *spellingUnit = nil;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NIMSpellingUnit *unit = [_spellingCache objectForKey:source];
        CommentUnit *unit = [_spellingCache objectForKey:source];
        //: if (!unit)
        if (!unit)
        {
            //: unit = [self calcSpellingOfString:source];
            unit = [self item:source];
            //: if ([unit.fullSpelling length] && [unit.shortSpelling length])
            if ([unit.fullSpelling length] && [unit.shortSpelling length])
            {
                //: [_spellingCache setObject:unit forKey:source];
                [_spellingCache setObject:unit forKey:source];
            }
        }
        //: spellingUnit = unit;
        spellingUnit = unit;
    }
    //: return spellingUnit;
    return spellingUnit;
}

//: - (NSString *)firstLetter:(NSString *)input
- (NSString *)headerLetter:(NSString *)input
{
    //: NIMSpellingUnit *unit = [self spellingForString:input];
    CommentUnit *unit = [self tap:input];
    //: NSString *spelling = unit.fullSpelling;
    NSString *spelling = unit.fullSpelling;
    //: return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
    return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
}


//: - (NIMSpellingUnit *)calcSpellingOfString:(NSString *)source
- (CommentUnit *)item:(NSString *)source
{
    //: NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    //: NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    //: for (NSInteger i = 0; i < [source length]; i++)
    for (NSInteger i = 0; i < [source length]; i++)
    {
        //: NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        //: NSString *pinyin = [[FFFPinyinConverter sharedInstance] toPinyin:word];
        NSString *pinyin = [[ItemConverter query] assignment:word];

        //: if ([pinyin length])
        if ([pinyin length])
        {
            //: [fullSpelling appendString:pinyin];
            [fullSpelling appendString:pinyin];
            //: [shortSpelling appendString:[pinyin substringToIndex:1]];
            [shortSpelling appendString:[pinyin substringToIndex:1]];
        }
    }

    //: NIMSpellingUnit *unit = [[NIMSpellingUnit alloc]init];
    CommentUnit *unit = [[CommentUnit alloc]init];
    //: unit.fullSpelling = [fullSpelling lowercaseString];
    unit.fullSpelling = [fullSpelling lowercaseString];
    //: unit.shortSpelling= [shortSpelling lowercaseString];
    unit.shortSpelling= [shortSpelling lowercaseString];
    //: return unit;
    return unit;
}




//: @end
@end

Byte * OxygenGradDataToCache(Byte *data) {
    int capability = data[0];
    int falter = data[1];
    int sex = data[2];
    if (!capability) return data + sex;
    for (int i = 0; i < falter / 2; i++) {
        int begin = sex + i;
        int end = sex + falter - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[sex + falter] = 0;
    return data + sex;
}

NSString *StringFromOxygenGradData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OxygenGradDataToCache(data)];
}  
