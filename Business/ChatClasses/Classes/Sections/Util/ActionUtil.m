
#import <Foundation/Foundation.h>
typedef struct {
    Byte pinion;
    Byte *requestGrocer;
    unsigned int sizeSubmitIngredient;
    bool captain;
	int aideButtonMessage;
	int ambassador;
} HourData;

NSString *StringFromHourData(HourData *data);


//:  等%zd人
HourData kStr_noteCellData = (HourData){250, (Byte []){218, 29, 87, 115, 223, 128, 158, 30, 64, 64, 138}, 10, false, 175, 8};

// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.m
// Afterwards
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitQuickCommentUtil.h"
#import "ActionUtil.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFInputEmoticonManager.h"
#import "ViewManager.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"

//: static const CGFloat kHeightPerRow = 25.0;
static const CGFloat kLet_topTitle = 25.0;
//: static NSInteger kMaxWidthPerRow = 0;
static NSInteger kLet_objectData = 0;
//: const CGFloat NIMKitCommentUtilCellPadding = 2.f;
const CGFloat kLet_keyTitle = 2.f;
//: const CGFloat NIMKitCommentUtilCellContentPadding = 5.f;
const CGFloat kLet_untilText = 5.f;
//: NSString * const NIMKitQuickCommentFormat = @"emoticon_emoji_%02ld";
NSString * const kLet_tapTitle = @"emoticon_emoji_%02ld";


//: @implementation FFFKitQuickCommentUtil
@implementation ActionUtil

//: + (void)initialize
+ (void)initialize
{
    //: kMaxWidthPerRow = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
    kLet_objectData = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
}

//: + (UIFont *)commentFont
+ (UIFont *)criticize
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static UIFont *instance = nil;
    static UIFont *instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [UIFont systemFontOfSize:13];
        instance = [UIFont systemFontOfSize:13];
    //: });
    });
    //: return instance;
    return instance;
}

//: + (M80AttributedLabel *)newCommentLabel
+ (ShowTitleView *)valueDevice
{
    //: M80AttributedLabel *textLabel = [[M80AttributedLabel alloc] init];
    ShowTitleView *textLabel = [[ShowTitleView alloc] init];
    //: textLabel.backgroundColor = [UIColor clearColor];
    textLabel.backgroundColor = [UIColor clearColor];
    //: textLabel.numberOfLines = 1;
    textLabel.numberOfLines = 1;
    //: textLabel.textAlignment = kCTTextAlignmentLeft;
    textLabel.textAlignment = kCTTextAlignmentLeft;
    //: textLabel.font = [self commentFont];
    textLabel.font = [self criticize];
    //: textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    //: return textLabel;
    return textLabel;
}

//: + (NSString *)commentContent:(NIMQuickComment *)comment
+ (NSString *)red:(NIMQuickComment *)comment
{
    //: NSString *ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, (long)comment.replyType];
    NSString *ID = [NSString stringWithFormat:kLet_tapTitle, (long)comment.replyType];
    //: NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
    CommentToTemp *emoticon = [[ViewManager common] deviceId:ID];
    //: NSString *content = nil;
    NSString *content = nil;
    //: if (emoticon)
    if (emoticon)
    {
        //: if (emoticon.type == NIMEmoticonTypeUnicode) {
        if (emoticon.type == NIMEmoticonTypeUnicode) {
            //: content = emoticon.unicode;
            content = emoticon.unicode;
        //: } else {
        } else {
            //: content = emoticon.tag;
            content = emoticon.tag;
        }
    }
    //: content = [NSString stringWithFormat:@"%@", content.length ? content : @"[?]"];
    content = [NSString stringWithFormat:@"%@", content.length ? content : @"[?]"];
    //: return content;
    return content;
}

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments
+ (NSString *)shadow:(NSArray<NIMQuickComment *> *)comments
{
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMQuickComment *firstComment = comments.firstObject;
    NIMQuickComment *firstComment = comments.firstObject;
    //: for (NIMQuickComment *comment in comments)
    for (NIMQuickComment *comment in comments)
    {
        //: if ([currentAccount isEqualToString:comment.from])
        if ([currentAccount isEqualToString:comment.from])
        {
            //: firstComment = comment;
            firstComment = comment;
            //: break;
            break;
        }
    }

    //: NSMutableString *string = [NSMutableString string];
    NSMutableString *string = [NSMutableString string];
    //: NSString *fristShowName = [self showNameWithCommentFrom:firstComment];
    NSString *fristShowName = [self forward:firstComment];
    //: [string appendFormat:@"%@  %@", [self commentContent:firstComment], fristShowName];
    [string appendFormat:@"%@  %@", [self red:firstComment], fristShowName];
    //: if (comments.count > 1)
    if (comments.count > 1)
    {
        //: [string appendFormat:@" 等%zd人", comments.count];
        [string appendFormat:StringFromHourData(&kStr_noteCellData), comments.count];
    }
    //: return [string copy];
    return [string copy];
}

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment
+ (CGSize)data:(NIMQuickComment *)comment
{
    //: static M80AttributedLabel *label = nil;
    static ShowTitleView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self valueDevice];
    //: });
    });

    //: [label nim_setText:[self commentContent:comment]];
    [label time:[self red:comment]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(kLet_objectData, kLet_topTitle)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + kLet_untilText * 2, kLet_topTitle);
}

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments
+ (CGSize)voice:(NSArray<NIMQuickComment *> *)comments
{
    //: if (comments.count == 0)
    if (comments.count == 0)
    {
        //: return CGSizeZero;
        return CGSizeZero;
    }

    //: static M80AttributedLabel *label = nil;
    static ShowTitleView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self valueDevice];
    //: });
    });

    //: [label nim_setText:[self commentsContent:comments]];
    [label time:[self shadow:comments]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(kLet_objectData, kLet_topTitle)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + kLet_untilText * 2, kLet_topTitle);
}

//: + (CGSize)containerSizeWithComments:(NSMapTable *)table
+ (CGSize)user:(NSMapTable *)table
{
    //: NSArray *keys = [self sortedKeys:table];
    NSArray *keys = [self date:table];

    //: CGFloat sumWidth = 0;
    CGFloat sumWidth = 0;
    //: CGFloat maxWidth = sumWidth;
    CGFloat maxWidth = sumWidth;
    //: NSInteger row = 1;
    NSInteger row = 1;
    //: for (NSNumber *key in keys)
    for (NSNumber *key in keys)
    {
        //: NSArray<NIMQuickComment *> *comments = [table objectForKey:key];
        NSArray<NIMQuickComment *> *comments = [table objectForKey:key];
        //: if (!comments)
        if (!comments)
        {
            //: continue;
            continue;
        }

        //: CGSize size = [self itemSizeWithComments:comments];
        CGSize size = [self voice:comments];
        //: if (sumWidth + size.width + NIMKitCommentUtilCellPadding * 2 >= kMaxWidthPerRow)
        if (sumWidth + size.width + kLet_keyTitle * 2 >= kLet_objectData)
        {
            //: row ++;
            row ++;
            //: sumWidth = NIMKitCommentUtilCellPadding + size.width;
            sumWidth = kLet_keyTitle + size.width;
        }
        //: else
        else
        {
            //: sumWidth += NIMKitCommentUtilCellPadding + size.width;
            sumWidth += kLet_keyTitle + size.width;
        }

        //: if (maxWidth < sumWidth)
        if (maxWidth < sumWidth)
        {
            //: maxWidth = sumWidth;
            maxWidth = sumWidth;
        }
    }

    //: maxWidth += NIMKitCommentUtilCellPadding;
    maxWidth += kLet_keyTitle;

    //: return CGSizeMake(maxWidth, row * kHeightPerRow + (row + 1) * NIMKitCommentUtilCellPadding);
    return CGSizeMake(maxWidth, row * kLet_topTitle + (row + 1) * kLet_keyTitle);
}

//: + (NIMQuickComment *)myCommentFromComments:(NSInteger )indexPath
+ (NIMQuickComment *)tag:(NSInteger )indexPath
                                      //: keys:(NSArray *)keys
                                      kit:(NSArray *)keys
                                  //: comments:(NSMapTable *)map
                                  cut:(NSMapTable *)map
{
    //: NSNumber *number = [keys objectAtIndex:indexPath];
    NSNumber *number = [keys objectAtIndex:indexPath];
    //: NSArray *comments = [map objectForKey:number];
    NSArray *comments = [map objectForKey:number];
    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMQuickComment * mine = nil;
    NIMQuickComment * mine = nil;
    //: for (NIMQuickComment *comment in comments)
    for (NIMQuickComment *comment in comments)
    {
        //: if ([comment.from isEqualToString:currentAcount])
        if ([comment.from isEqualToString:currentAcount])
        {
            //: mine = comment;
            mine = comment;
            //: break;
            break;
        }
    }
    //: return mine;
    return mine;
}

//: + (NSString *)showNameWithCommentFrom:(NIMQuickComment *)comment
+ (NSString *)forward:(NIMQuickComment *)comment
{
    //: FFFKitInfo *info = nil;
    MarginThanInfo *info = nil;
    //: NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    //: NIMSession *session = basicInfo.session;
    NIMSession *session = basicInfo.session;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    EmptyKey *option = [[EmptyKey alloc] init];
    //: option.session = session;
    option.session = session;
    //: info = [[MyUserKit sharedKit] infoByUser:comment.from option:option];
    info = [[Afterwards blue] put:comment.from button:option];

    //: return info.showName;
    return info.showName;
}

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
+ (NSArray *)date:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
{
    //: NSArray *keys = [map.keyEnumerator.allObjects sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
    NSArray *keys = [map.keyEnumerator.allObjects sortedArrayUsingComparator:^NSComparisonResult(id _Nonnull obj1, id _Nonnull obj2) {
               //: NSArray *array1 = (NSArray *)[map objectForKey:obj1];
               NSArray *array1 = (NSArray *)[map objectForKey:obj1];
               //: NIMQuickComment *comment1 = [array1 lastObject];
               NIMQuickComment *comment1 = [array1 lastObject];

               //: NSArray *array2 = (NSArray *)[map objectForKey:obj2];
               NSArray *array2 = (NSArray *)[map objectForKey:obj2];
               //: NIMQuickComment *comment2 = [array2 lastObject];
               NIMQuickComment *comment2 = [array2 lastObject];

               //: if (comment1.timestamp > comment2.timestamp)
               if (comment1.timestamp > comment2.timestamp)
               {
                   //: return NSOrderedDescending;
                   return NSOrderedDescending;
               }
               //: else if (comment1.timestamp == comment2.timestamp)
               else if (comment1.timestamp == comment2.timestamp)
               {
                   //: return NSOrderedSame;
                   return NSOrderedSame;
               }
               //: else
               else
               {
                   //: return NSOrderedAscending;
                   return NSOrderedAscending;
               }
           //: }];
           }];
    //: return keys;
    return keys;
}

//: @end
@end

Byte *HourDataToByte(HourData *data) {
    if (data->captain) return data->requestGrocer;
    for (int i = 0; i < data->sizeSubmitIngredient; i++) {
        data->requestGrocer[i] ^= data->pinion;
    }
    data->requestGrocer[data->sizeSubmitIngredient] = 0;
    data->captain = true;
	if (data->sizeSubmitIngredient >= 2) {
		data->aideButtonMessage = data->requestGrocer[0];
		data->ambassador = data->requestGrocer[1];
	}
    return data->requestGrocer;
}

NSString *StringFromHourData(HourData *data) {
    return [NSString stringWithUTF8String:(char *)HourDataToByte(data)];
}
