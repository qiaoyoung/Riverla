
#import <Foundation/Foundation.h>

NSString *StringFromThoroughData(Byte *data);


//: data
Byte kStr_promBiasData[] = {29, 4, 24, 11, 135, 76, 99, 237, 123, 72, 225, 124, 121, 140, 121, 253};


//: normal
Byte kStr_priestText[] = {97, 6, 42, 13, 168, 237, 164, 16, 56, 20, 183, 228, 54, 152, 153, 156, 151, 139, 150, 28};


//: gif
Byte kStr_significanceName[] = {67, 3, 45, 4, 148, 150, 147, 94};


//: file
Byte kStr_gasBroadcastText[] = {75, 4, 24, 9, 142, 152, 195, 175, 31, 126, 129, 132, 125, 31};


//: info
Byte kStr_requestRedValue[] = {2, 4, 96, 14, 235, 116, 69, 161, 179, 127, 218, 83, 148, 238, 201, 206, 198, 207, 43};


//: title
Byte kStr_harshCurrentName[] = {32, 5, 49, 10, 200, 24, 34, 91, 49, 29, 165, 154, 165, 157, 150, 79};


//: unicode
Byte kStr_edictText[] = {95, 7, 61, 5, 159, 178, 171, 166, 160, 172, 161, 162, 185};


//: tag
Byte kStr_edictData[] = {79, 3, 79, 4, 195, 176, 182, 93};


//: pressed
Byte kStr_hugeBlindData[] = {99, 7, 50, 4, 162, 164, 151, 165, 165, 151, 150, 117};

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
#import "ViewManager.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Afterwards.h"

//: @implementation NIMInputEmoticon
@implementation CommentToTemp

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
@implementation ImageHigh
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation TingLayout

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initTimeEmoji:(CGFloat)width
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
- (id)initContainerLayout:(CGFloat)width{
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
@interface ViewManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation FFFInputEmoticonManager
@implementation ViewManager

//: + (instancetype)sharedManager
+ (instancetype)common
{
    //: static FFFInputEmoticonManager *instance = nil;
    static ViewManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonManager alloc]init];
        instance = [[ViewManager alloc]init];
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
        [self cell];
        //: [self preloadEmoticonResource];
        [self hidden];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)date {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (ImageHigh *)message:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (ImageHigh *catalog in _catalogs)
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
- (CommentToTemp *)mark:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    CommentToTemp *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ImageHigh *catalog in _catalogs)
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
- (CommentToTemp *)deviceId:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    CommentToTemp *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ImageHigh *catalog in _catalogs)
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
- (CommentToTemp *)tapId:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           picture:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    CommentToTemp *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ImageHigh *catalog in _catalogs)
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
- (void)cell
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle beyondSize];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[StringFromThoroughData(kStr_requestRedValue)];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[StringFromThoroughData(kStr_promBiasData)];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            ImageHigh *catalog = [self catalogTitle:info
                                                     //: emoticons:emoticons];
                                                     color:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle path];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[StringFromThoroughData(kStr_requestRedValue)];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[StringFromThoroughData(kStr_promBiasData)];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            ImageHigh *catalog = [self catalogTitle:info
                                                     //: emoticons:emoticons];
                                                     color:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (ImageHigh *)catalogTitle:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             color:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    ImageHigh *catalog = [[ImageHigh alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[StringFromThoroughData(kStr_harshCurrentName)];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[StringFromThoroughData(kStr_priestText)];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[StringFromThoroughData(kStr_hugeBlindData)];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        CommentToTemp *emoticon = [[CommentToTemp alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[StringFromThoroughData(kStr_edictData)];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[StringFromThoroughData(kStr_edictText)];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[StringFromThoroughData(kStr_gasBroadcastText)];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[StringFromThoroughData(kStr_significanceName)];

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
- (void)hidden {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (ImageHigh *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(CommentToTemp *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage light:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end

Byte * ThoroughDataToCache(Byte *data) {
    int disputable = data[0];
    int destruct = data[1];
    Byte lengthSex = data[2];
    int ration = data[3];
    if (!disputable) return data + ration;
    for (int i = ration; i < ration + destruct; i++) {
        int value = data[i] - lengthSex;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[ration + destruct] = 0;
    return data + ration;
}

NSString *StringFromThoroughData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ThoroughDataToCache(data)];
}
