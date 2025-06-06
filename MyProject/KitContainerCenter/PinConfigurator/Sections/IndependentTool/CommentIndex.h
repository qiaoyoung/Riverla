// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// Notice
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class M80AttributedLabel;
@class PopScrollView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat let_beautyValue;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat let_addValue;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const let_tableKitContent;


//: @interface FFFKitQuickCommentUtil : NSObject
@interface CommentIndex : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)noComment;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)by:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)indexColor:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)countTotal:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)title:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)message:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)tableRead:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      share:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  rangeComments:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (PopScrollView *)center;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)nameTo:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END