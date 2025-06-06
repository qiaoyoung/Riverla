
#import <Foundation/Foundation.h>

NSString *StringFromBillLureData(Byte *data);        


//: tyl_spellingCache
Byte kStr_indicatorText[] = {64, 17, 45, 11, 109, 217, 150, 222, 148, 233, 97, 71, 76, 63, 50, 70, 67, 56, 63, 63, 60, 65, 58, 22, 52, 54, 59, 56, 10};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PinCenter.m
//  NIM
//
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSpellingCenter.h"
#import "TeamIndex.h"
//: #import "FFFPinyinConverter.h"
#import "BarConverter.h"
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"

//: @implementation NIMSpellingUnit
@implementation MasterPictureKtInput

//: @end
@end

//: @interface FFFSpellingCenter ()
@interface TeamIndex ()
//: - (NIMSpellingUnit *)calcSpellingOfString: (NSString *)source;
- (MasterPictureKtInput *)masterSize: (NSString *)source;
//: @end
@end


//: @implementation FFFSpellingCenter
@implementation TeamIndex
//: + (FFFSpellingCenter *)sharedCenter
+ (TeamIndex *)table
{
    //: static FFFSpellingCenter *instance = nil;
    static TeamIndex *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSpellingCenter alloc]init];
        instance = [[TeamIndex alloc]init];
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
        NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromBillLureData(kStr_indicatorText)];
        //: if (spellingCache) {
        if (spellingCache) {
            //: _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[NIMSpellingUnit class] json:spellingCache]];
            _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[MasterPictureKtInput class] json:spellingCache]];
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
- (void)salvage
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
            [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:StringFromBillLureData(kStr_indicatorText)];
        }

    }
}


//: - (NIMSpellingUnit *)spellingForString:(NSString *)source
- (MasterPictureKtInput *)imageName:(NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NIMSpellingUnit *spellingUnit = nil;
    MasterPictureKtInput *spellingUnit = nil;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NIMSpellingUnit *unit = [_spellingCache objectForKey:source];
        MasterPictureKtInput *unit = [_spellingCache objectForKey:source];
        //: if (!unit)
        if (!unit)
        {
            //: unit = [self calcSpellingOfString:source];
            unit = [self masterSize:source];
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
- (NSString *)button:(NSString *)input
{
    //: NIMSpellingUnit *unit = [self spellingForString:input];
    MasterPictureKtInput *unit = [self imageName:input];
    //: NSString *spelling = unit.fullSpelling;
    NSString *spelling = unit.fullSpelling;
    //: return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
    return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
}


//: - (NIMSpellingUnit *)calcSpellingOfString:(NSString *)source
- (MasterPictureKtInput *)masterSize:(NSString *)source
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
        NSString *pinyin = [[BarConverter count] bubble:word];

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
    MasterPictureKtInput *unit = [[MasterPictureKtInput alloc]init];
    //: unit.fullSpelling = [fullSpelling lowercaseString];
    unit.fullSpelling = [fullSpelling lowercaseString];
    //: unit.shortSpelling= [shortSpelling lowercaseString];
    unit.shortSpelling= [shortSpelling lowercaseString];
    //: return unit;
    return unit;
}




//: @end
@end

Byte * BillLureDataToCache(Byte *data) {
    int explore = data[0];
    int exhale = data[1];
    Byte trailOrdinary = data[2];
    int trimOho = data[3];
    if (!explore) return data + trimOho;
    for (int i = trimOho; i < trimOho + exhale; i++) {
        int value = data[i] + trailOrdinary;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[trimOho + exhale] = 0;
    return data + trimOho;
}

NSString *StringFromBillLureData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BillLureDataToCache(data)];
}
