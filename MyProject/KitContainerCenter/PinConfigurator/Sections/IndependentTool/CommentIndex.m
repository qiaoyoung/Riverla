
#import <Foundation/Foundation.h>
typedef struct {
    Byte tingBird;
    Byte *replacementEnable;
    unsigned int hangmanSRopeMad;
    bool countHungWindow;
	int ofBesides;
} ApplyData;

NSString *StringFromApplyData(ApplyData *data);


//:  等%zd人
ApplyData kStr_sagNorthGasolineContent = (ApplyData){65, (Byte []){97, 166, 236, 200, 100, 59, 37, 165, 251, 251, 208}, 10, false, 198};

// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.m
// Notice
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitQuickCommentUtil.h"
#import "CommentIndex.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "PopScrollView+Notice.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFInputEmoticonManager.h"
#import "AppManager.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"

//: static const CGFloat kHeightPerRow = 25.0;
static const CGFloat let_pathTitle = 25.0;
//: static NSInteger kMaxWidthPerRow = 0;
static NSInteger let_taskValue = 0;
//: const CGFloat NIMKitCommentUtilCellPadding = 2.f;
const CGFloat let_beautyValue = 2.f;
//: const CGFloat NIMKitCommentUtilCellContentPadding = 5.f;
const CGFloat let_addValue = 5.f;
//: NSString * const NIMKitQuickCommentFormat = @"emoticon_emoji_%02ld";
NSString * const let_tableKitContent = @"emoticon_emoji_%02ld";


//: @implementation FFFKitQuickCommentUtil
@implementation CommentIndex

//: + (void)initialize
+ (void)initialize
{
    //: kMaxWidthPerRow = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
    let_taskValue = [UIScreen mainScreen].bounds.size.width * 3.5 / 5;
}

//: + (UIFont *)commentFont
+ (UIFont *)noComment
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
+ (PopScrollView *)center
{
    //: M80AttributedLabel *textLabel = [[M80AttributedLabel alloc] init];
    PopScrollView *textLabel = [[PopScrollView alloc] init];
    //: textLabel.backgroundColor = [UIColor clearColor];
    textLabel.backgroundColor = [UIColor clearColor];
    //: textLabel.numberOfLines = 1;
    textLabel.numberOfLines = 1;
    //: textLabel.textAlignment = kCTTextAlignmentLeft;
    textLabel.textAlignment = kCTTextAlignmentLeft;
    //: textLabel.font = [self commentFont];
    textLabel.font = [self noComment];
    //: textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    textLabel.lineBreakMode = kCTLineBreakByTruncatingTail;
    //: return textLabel;
    return textLabel;
}

//: + (NSString *)commentContent:(NIMQuickComment *)comment
+ (NSString *)by:(NIMQuickComment *)comment
{
    //: NSString *ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, (long)comment.replyType];
    NSString *ID = [NSString stringWithFormat:let_tableKitContent, (long)comment.replyType];
    //: NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
    CellEmoticon *emoticon = [[AppManager administrator] colorId:ID];
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
+ (NSString *)indexColor:(NSArray<NIMQuickComment *> *)comments
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
    NSString *fristShowName = [self modelErase:firstComment];
    //: [string appendFormat:@"%@  %@", [self commentContent:firstComment], fristShowName];
    [string appendFormat:@"%@  %@", [self by:firstComment], fristShowName];
    //: if (comments.count > 1)
    if (comments.count > 1)
    {
        //: [string appendFormat:@" 等%zd人", comments.count];
        [string appendFormat:StringFromApplyData(&kStr_sagNorthGasolineContent), comments.count];
    }
    //: return [string copy];
    return [string copy];
}

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment
+ (CGSize)countTotal:(NIMQuickComment *)comment
{
    //: static M80AttributedLabel *label = nil;
    static PopScrollView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self center];
    //: });
    });

    //: [label nim_setText:[self commentContent:comment]];
    [label pose:[self by:comment]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(let_taskValue, let_pathTitle)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + let_addValue * 2, let_pathTitle);
}

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments
+ (CGSize)title:(NSArray<NIMQuickComment *> *)comments
{
    //: if (comments.count == 0)
    if (comments.count == 0)
    {
        //: return CGSizeZero;
        return CGSizeZero;
    }

    //: static M80AttributedLabel *label = nil;
    static PopScrollView *label = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: label = [self newCommentLabel];
        label = [self center];
    //: });
    });

    //: [label nim_setText:[self commentsContent:comments]];
    [label pose:[self indexColor:comments]];
    //: CGSize size = [label sizeThatFits:CGSizeMake(kMaxWidthPerRow, kHeightPerRow)];
    CGSize size = [label sizeThatFits:CGSizeMake(let_taskValue, let_pathTitle)];
    //: return CGSizeMake(size.width + NIMKitCommentUtilCellContentPadding * 2, kHeightPerRow);
    return CGSizeMake(size.width + let_addValue * 2, let_pathTitle);
}

//: + (CGSize)containerSizeWithComments:(NSMapTable *)table
+ (CGSize)message:(NSMapTable *)table
{
    //: NSArray *keys = [self sortedKeys:table];
    NSArray *keys = [self nameTo:table];

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
        CGSize size = [self title:comments];
        //: if (sumWidth + size.width + NIMKitCommentUtilCellPadding * 2 >= kMaxWidthPerRow)
        if (sumWidth + size.width + let_beautyValue * 2 >= let_taskValue)
        {
            //: row ++;
            row ++;
            //: sumWidth = NIMKitCommentUtilCellPadding + size.width;
            sumWidth = let_beautyValue + size.width;
        }
        //: else
        else
        {
            //: sumWidth += NIMKitCommentUtilCellPadding + size.width;
            sumWidth += let_beautyValue + size.width;
        }

        //: if (maxWidth < sumWidth)
        if (maxWidth < sumWidth)
        {
            //: maxWidth = sumWidth;
            maxWidth = sumWidth;
        }
    }

    //: maxWidth += NIMKitCommentUtilCellPadding;
    maxWidth += let_beautyValue;

    //: return CGSizeMake(maxWidth, row * kHeightPerRow + (row + 1) * NIMKitCommentUtilCellPadding);
    return CGSizeMake(maxWidth, row * let_pathTitle + (row + 1) * let_beautyValue);
}

//: + (NIMQuickComment *)myCommentFromComments:(NSInteger )indexPath
+ (NIMQuickComment *)tableRead:(NSInteger )indexPath
                                      //: keys:(NSArray *)keys
                                      share:(NSArray *)keys
                                  //: comments:(NSMapTable *)map
                                  rangeComments:(NSMapTable *)map
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
+ (NSString *)modelErase:(NIMQuickComment *)comment
{
    //: FFFKitInfo *info = nil;
    OriginBy *info = nil;
    //: NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    NIMChatExtendBasicInfo *basicInfo = comment.basicInfo;
    //: NIMSession *session = basicInfo.session;
    NIMSession *session = basicInfo.session;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.session = session;
    option.session = session;
    //: info = [[MyUserKit sharedKit] infoByUser:comment.from option:option];
    info = [[Notice fullKit] value:comment.from manager:option];

    //: return info.showName;
    return info.showName;
}

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
+ (NSArray *)nameTo:(NSMapTable<NSNumber *, NIMQuickComment *> *)map
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

Byte *ApplyDataToByte(ApplyData *data) {
    if (data->countHungWindow) return data->replacementEnable;
    for (int i = 0; i < data->hangmanSRopeMad; i++) {
        data->replacementEnable[i] ^= data->tingBird;
    }
    data->replacementEnable[data->hangmanSRopeMad] = 0;
    data->countHungWindow = true;
	if (data->hangmanSRopeMad >= 1) {
		data->ofBesides = data->replacementEnable[0];
	}
    return data->replacementEnable;
}

NSString *StringFromApplyData(ApplyData *data) {
    return [NSString stringWithUTF8String:(char *)ApplyDataToByte(data)];
}
