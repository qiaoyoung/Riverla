
#import <Foundation/Foundation.h>

NSString *StringFromSupplierData(Byte *data);


//: pressed
Byte kStr_authorizeValue[] = {25, 7, 12, 53, 183, 60, 255, 165, 100, 200, 14, 235, 100, 101, 115, 115, 101, 114, 112, 241};


//: unicode
Byte kStr_removeCapableParkData[] = {64, 7, 7, 53, 100, 222, 28, 101, 100, 111, 99, 105, 110, 117, 39};


//: file
Byte kStr_forthCapableText[] = {18, 4, 12, 159, 33, 255, 221, 169, 150, 35, 30, 132, 101, 108, 105, 102, 26};


//: normal
Byte kStr_cruText[] = {72, 6, 4, 70, 108, 97, 109, 114, 111, 110, 182};


//: info
Byte kStr_rowText[] = {22, 4, 13, 4, 75, 222, 16, 189, 186, 76, 237, 80, 155, 111, 102, 110, 105, 40};


//: data
Byte kStr_ragText[] = {95, 4, 7, 223, 167, 221, 161, 97, 116, 97, 100, 203};


//: tag
Byte kStr_tineConceptionValue[] = {27, 3, 9, 30, 49, 85, 245, 174, 245, 103, 97, 116, 242};


//: title
Byte kStr_ahData[] = {31, 5, 9, 211, 178, 141, 171, 59, 245, 101, 108, 116, 105, 116, 19};


//: gif
Byte kStr_utilityValue[] = {89, 3, 8, 29, 243, 190, 12, 255, 102, 105, 103, 16};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESEmoticonManager.h
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonManager.h"
#import "AppManager.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Notice.h"

//: @implementation NIMInputEmoticon
@implementation CellEmoticon

//: - (NIMEmoticonType)type {
- (NIMEmoticonType)type {
    //: if (_unicode.length) {
    if (_unicode.length) {
        //: return NIMEmoticonTypeUnicode;
        return NIMEmoticonTypeUnicode;
    }
    //: else if (_gif.length) {
    else if (_gif.length) {
        //: return NIMEmoticonTypeGif;
        return NIMEmoticonTypeGif;
    }
    //: else {
    else {
        //: return NIMEmoticonTypeFile;
        return NIMEmoticonTypeFile;
    }
}

//: @end
@end

//: @implementation NIMInputEmoticonCatalog
@implementation ShowRecent
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation LanguageAt

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initSearchedText:(CGFloat)width
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 3;
        _rows = 3;
        //: _columes = ((width - 15 - 15) / 46.0);
        _columes = ((width - 15 - 15) / 46.0);
        //: _itemCountInPage = _rows * _columes -1;
        _itemCountInPage = _rows * _columes -1;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 46.0;
        _cellHeight = 46.0;
        //: _imageWidth = 46.0;
        _imageWidth = 46.0;
        //: _imageHeight = 46.0;
        _imageHeight = 46.0;
        //: _emoji = YES;
        _emoji = YES;
    }
    //: return self;
    return self;
}

//: - (id)initCharletLayout:(CGFloat)width{
- (id)initTing:(CGFloat)width{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 2;
        _rows = 2;
        //: _columes = ((width - 15 - 15) / 70.f);
        _columes = ((width - 15 - 15) / 70.f);
        //: _itemCountInPage = _rows * _columes;
        _itemCountInPage = _rows * _columes;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 76.0;
        _cellHeight = 76.0;
        //: _imageWidth = 70.f;
        _imageWidth = 70.f;
        //: _imageHeight = 70.f;
        _imageHeight = 70.f;
        //: _emoji = NO;
        _emoji = NO;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface FFFInputEmoticonManager ()
@interface AppManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation FFFInputEmoticonManager
@implementation AppManager

//: + (instancetype)sharedManager
+ (instancetype)administrator
{
    //: static FFFInputEmoticonManager *instance = nil;
    static AppManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonManager alloc]init];
        instance = [[AppManager alloc]init];
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
        //: [self parsePlist];
        [self mode];
        //: [self preloadEmoticonResource];
        [self key];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)with {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (ShowRecent *)name:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (ShowRecent *catalog in _catalogs)
    {
        //: if ([catalog.catalogID isEqualToString:catalogID])
        if ([catalog.catalogID isEqualToString:catalogID])
        {
            //: return catalog;
            return catalog;
        }
    }
    //: return nil;
    return nil;
}


//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag
- (CellEmoticon *)doName:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    CellEmoticon *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ShowRecent *catalog in _catalogs)
        {
            //: emoticon = [catalog.tag2Emoticons objectForKey:tag];
            emoticon = [catalog.tag2Emoticons objectForKey:tag];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}


//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID
- (CellEmoticon *)colorId:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    CellEmoticon *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ShowRecent *catalog in _catalogs)
        {
            //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (CellEmoticon *)labelRange:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           cut_strong:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    CellEmoticon *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ShowRecent *catalog in _catalogs)
        {
            //: if ([catalog.catalogID isEqualToString:catalogID])
            if ([catalog.catalogID isEqualToString:catalogID])
            {
                //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (void)parsePlist
- (void)mode
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle titleTable];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[StringFromSupplierData(kStr_rowText)];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[StringFromSupplierData(kStr_ragText)];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            ShowRecent *catalog = [self listSum:info
                                                     //: emoticons:emoticons];
                                                     bySelected:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle file];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[StringFromSupplierData(kStr_rowText)];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[StringFromSupplierData(kStr_ragText)];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            ShowRecent *catalog = [self listSum:info
                                                     //: emoticons:emoticons];
                                                     bySelected:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (ShowRecent *)listSum:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             bySelected:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    ShowRecent *catalog = [[ShowRecent alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[StringFromSupplierData(kStr_ahData)];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[StringFromSupplierData(kStr_cruText)];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[StringFromSupplierData(kStr_authorizeValue)];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        CellEmoticon *emoticon = [[CellEmoticon alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[StringFromSupplierData(kStr_tineConceptionValue)];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[StringFromSupplierData(kStr_removeCapableParkData)];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[StringFromSupplierData(kStr_forthCapableText)];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[StringFromSupplierData(kStr_utilityValue)];

        //: if (emoticon.emoticonID) {
        if (emoticon.emoticonID) {
            //: [emoticons addObject:emoticon];
            [emoticons addObject:emoticon];
            //: id2Emoticons[emoticon.emoticonID] = emoticon;
            id2Emoticons[emoticon.emoticonID] = emoticon;
        }
        //: if (emoticon.tag) {
        if (emoticon.tag) {
            //: tag2Emoticons[emoticon.tag] = emoticon;
            tag2Emoticons[emoticon.tag] = emoticon;
        }
    }

    //: catalog.emoticons = emoticons;
    catalog.emoticons = emoticons;
    //: catalog.id2Emoticons = id2Emoticons;
    catalog.id2Emoticons = id2Emoticons;
    //: catalog.tag2Emoticons = tag2Emoticons;
    catalog.tag2Emoticons = tag2Emoticons;
    //: return catalog;
    return catalog;
}

//: - (void)preloadEmoticonResource {
- (void)key {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (ShowRecent *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(CellEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage disable:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end

Byte * SupplierDataToCache(Byte *data) {
    int languageReverse = data[0];
    int cotta = data[1];
    int batteryDifficultyBedroom = data[2];
    if (!languageReverse) return data + batteryDifficultyBedroom;
    for (int i = 0; i < cotta / 2; i++) {
        int begin = batteryDifficultyBedroom + i;
        int end = batteryDifficultyBedroom + cotta - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[batteryDifficultyBedroom + cotta] = 0;
    return data + batteryDifficultyBedroom;
}

NSString *StringFromSupplierData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SupplierDataToCache(data)];
}  
