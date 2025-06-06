
#import <Foundation/Foundation.h>
typedef struct {
    Byte circulatorySystem;
    Byte *demandDisco;
    unsigned int guarKneel;
    bool investigationLiable;
	int sovereign;
} BillData;

NSString *StringFromBillData(BillData *data);


//: \\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]
BillData kStr_appreciateText = (BillData){43, (Byte []){119, 112, 112, 74, 6, 81, 106, 6, 113, 27, 6, 18, 119, 94, 31, 78, 27, 27, 6, 119, 94, 18, 77, 74, 30, 118, 0, 119, 118, 179}, 29, false, 42};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMEmoticonParser.m
// Notice
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonParser.h"
#import "EmoticonParser.h"
//: #import "FFFInputEmoticonManager.h"
#import "AppManager.h"

//: @implementation NIMInputTextToken
@implementation ShouldScale
//: @end
@end

//: @interface FFFInputEmoticonParser ()
@interface EmoticonParser ()
//: @property (nonatomic,strong) NSCache *tokens;
@property (nonatomic,strong) NSCache *tokens;
//: @end
@end


//: @implementation FFFInputEmoticonParser
@implementation EmoticonParser
//: + (instancetype)currentParser
+ (instancetype)scale
{
    //: static FFFInputEmoticonParser *instance = nil;
    static EmoticonParser *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonParser alloc] init];
        instance = [[EmoticonParser alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _tokens = [[NSCache alloc] init];
        _tokens = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSArray *)tokens:(NSString *)text
- (NSArray *)color:(NSString *)text
{
    //: NSArray *tokens = nil;
    NSArray *tokens = nil;
    //: if ([text length])
    if ([text length])
    {
        //: tokens = [_tokens objectForKey:text];
        tokens = [_tokens objectForKey:text];
        //: if (tokens == nil)
        if (tokens == nil)
        {
            //: tokens = [self parseToken:text];
            tokens = [self date:text];
            //: [_tokens setObject:tokens
            [_tokens setObject:tokens
                        //: forKey:text];
                        forKey:text];
        }
    }
    //: return tokens;
    return tokens;
}

//: - (NSArray *)parseToken:(NSString *)text
- (NSArray *)date:(NSString *)text
{
    //: NSMutableArray *tokens = [NSMutableArray array];
    NSMutableArray *tokens = [NSMutableArray array];
    //: static NSRegularExpression *exp;
    static NSRegularExpression *exp;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: exp = [NSRegularExpression regularExpressionWithPattern:@"\\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]"
        exp = [NSRegularExpression regularExpressionWithPattern:StringFromBillData(&kStr_appreciateText)
                                                        //: options:NSRegularExpressionCaseInsensitive
                                                        options:NSRegularExpressionCaseInsensitive
                                                          //: error:nil];
                                                          error:nil];
    //: });
    });
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: [exp enumerateMatchesInString:text
    [exp enumerateMatchesInString:text
                          //: options:0
                          options:0
                            //: range:NSMakeRange(0, [text length])
                            range:NSMakeRange(0, [text length])
                       //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                       usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                           //: NSString *rangeText = [text substringWithRange:result.range];
                           NSString *rangeText = [text substringWithRange:result.range];
                           //: if ([[FFFInputEmoticonManager sharedManager] emoticonByTag:rangeText])
                           if ([[AppManager administrator] doName:rangeText])
                           {
                               //: if (result.range.location > index)
                               if (result.range.location > index)
                               {
                                   //: NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                                   ShouldScale *token = [[ShouldScale alloc] init];
                                   //: token.type = NIMInputTokenTypeText;
                                   token.type = NIMInputTokenTypeText;
                                   //: token.text = rawText;
                                   token.text = rawText;
                                   //: [tokens addObject:token];
                                   [tokens addObject:token];
                               }
                               //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                               ShouldScale *token = [[ShouldScale alloc] init];
                               //: token.type = NIMInputTokenTypeEmoticon;
                               token.type = NIMInputTokenTypeEmoticon;
                               //: token.text = rangeText;
                               token.text = rangeText;
                               //: [tokens addObject:token];
                               [tokens addObject:token];

                               //: index = result.range.location + result.range.length;
                               index = result.range.location + result.range.length;
                           }
                       //: }];
                       }];

    //: if (index < [text length])
    if (index < [text length])
    {
        //: NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
        ShouldScale *token = [[ShouldScale alloc] init];
        //: token.type = NIMInputTokenTypeText;
        token.type = NIMInputTokenTypeText;
        //: token.text = rawText;
        token.text = rawText;
        //: [tokens addObject:token];
        [tokens addObject:token];
    }
    //: return tokens;
    return tokens;
}
//: @end
@end

Byte *BillDataToByte(BillData *data) {
    if (data->investigationLiable) return data->demandDisco;
    for (int i = 0; i < data->guarKneel; i++) {
        data->demandDisco[i] ^= data->circulatorySystem;
    }
    data->demandDisco[data->guarKneel] = 0;
    data->investigationLiable = true;
	if (data->guarKneel >= 1) {
		data->sovereign = data->demandDisco[0];
	}
    return data->demandDisco;
}

NSString *StringFromBillData(BillData *data) {
    return [NSString stringWithUTF8String:(char *)BillDataToByte(data)];
}
