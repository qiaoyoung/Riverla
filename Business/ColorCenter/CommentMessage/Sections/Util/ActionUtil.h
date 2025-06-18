// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// Afterwards
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
@class ShowTitleView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat kLet_keyTitle;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat kLet_untilText;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const kLet_tapTitle;


//: @interface FFFKitQuickCommentUtil : NSObject
@interface ActionUtil : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)criticize;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)red:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)shadow:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)data:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)voice:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)user:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)tag:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      kit:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  cut:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (ShowTitleView *)valueDevice;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)date:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END