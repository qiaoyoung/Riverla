// __DEBUG__
// __CLOSE_PRINT__
//
//  NameScrollView.h
// Afterwards
//
//  Created by chris on 16/3/27.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFGrowingTextView;
@class NameScrollView;

//: @protocol FFFGrowingTextViewDelegate <NSObject>
@protocol ShankDelegate <NSObject>
//: @optional
@optional

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)voice:(NSRange)range disabled:(NSString *)replacementText;

//: - (BOOL)shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)range;
- (BOOL)tinkle:(NSURL *)URL expanse:(NSRange)range;

//: - (BOOL)shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)range;
- (BOOL)title:(NSTextAttachment *)textAttachment success:(NSRange)range;

//: - (void)textViewDidBeginEditing:(FFFGrowingTextView *)growingTextView;
- (void)temps:(NameScrollView *)growingTextView;

//: - (void)textViewDidChangeSelection:(FFFGrowingTextView *)growingTextView;
- (void)characteristicRootOfASquareMatrixCheckion:(NameScrollView *)growingTextView;

//: - (void)textViewDidEndEditing:(FFFGrowingTextView *)growingTextView;
- (void)modes:(NameScrollView *)growingTextView;

//: - (BOOL)textViewShouldBeginEditing:(FFFGrowingTextView *)growingTextView;
- (BOOL)inputEditing:(NameScrollView *)growingTextView;

//: - (BOOL)textViewShouldEndEditing:(FFFGrowingTextView *)growingTextView;
- (BOOL)missiveShould:(NameScrollView *)growingTextView;

//: - (void)textViewDidChange:(FFFGrowingTextView *)growingTextView;
- (void)titleualMatterName:(NameScrollView *)growingTextView;

//: - (void)willChangeHeight:(CGFloat)height;
- (void)apps:(CGFloat)height;

//: - (void)didChangeHeight:(CGFloat)height;
- (void)heightTable:(CGFloat)height;

//: @end
@end

//: @interface FFFGrowingTextView : UIScrollView
@interface NameScrollView : UIScrollView

//: @property (nonatomic,weak) id<FFFGrowingTextViewDelegate> textViewDelegate;
@property (nonatomic,weak) id<ShankDelegate> textViewDelegate;

//: @property (nonatomic,assign) NSInteger minNumberOfLines;
@property (nonatomic,assign) NSInteger minNumberOfLines;

//: @property (nonatomic,assign) NSInteger maxNumberOfLines;
@property (nonatomic,assign) NSInteger maxNumberOfLines;

//: @property (nonatomic,strong) UIView *inputView;
@property (nonatomic,strong) UIView *inputView;

//: @end
@end

//: @interface FFFGrowingTextView(TextView)
@interface NameScrollView(TextView)

//: @property (nonatomic,copy) NSAttributedString *placeholderAttributedText;
@property (nonatomic,copy) NSAttributedString *placeholderAttributedText;

//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;

//: @property (nonatomic,strong) UIFont *font;
@property (nonatomic,strong) UIFont *font;

//: @property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIColor *textColor;

//: @property (nonatomic,assign) NSTextAlignment textAlignment;
@property (nonatomic,assign) NSTextAlignment textAlignment;

//: @property (nonatomic,assign) NSRange selectedRange;
@property (nonatomic,assign) NSRange selectedRange;

//: @property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;
@property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;

//: @property (nonatomic,assign) BOOL editable;
@property (nonatomic,assign) BOOL editable;

//: @property (nonatomic,assign) BOOL selectable;
@property (nonatomic,assign) BOOL selectable;

//: @property (nonatomic,assign) BOOL allowsEditingTextAttributes;
@property (nonatomic,assign) BOOL allowsEditingTextAttributes;

//: @property (nonatomic,copy) NSAttributedString *attributedText;
@property (nonatomic,copy) NSAttributedString *attributedText;

//: @property (nonatomic,strong) UIView *textViewInputAccessoryView;
@property (nonatomic,strong) UIView *textViewInputAccessoryView;

//: @property (nonatomic,assign) BOOL clearsOnInsertion;
@property (nonatomic,assign) BOOL clearsOnInsertion;

//: @property (nonatomic,readonly) NSTextContainer *textContainer;
@property (nonatomic,readonly) NSTextContainer *textContainer;

//: @property (nonatomic,assign) UIEdgeInsets textContainerInset;
@property (nonatomic,assign) UIEdgeInsets textContainerInset;

//: @property (nonatomic,readonly) NSLayoutManager *layoutManger;
@property (nonatomic,readonly) NSLayoutManager *layoutManger;

//: @property (nonatomic,readonly) NSTextStorage *textStorage;
@property (nonatomic,readonly) NSTextStorage *textStorage;

//: @property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;
@property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;

//: @property (nonatomic,assign) UIReturnKeyType returnKeyType;
@property (nonatomic,assign) UIReturnKeyType returnKeyType;

//: - (void)scrollRangeToVisible:(NSRange)range;
- (void)size:(NSRange)range;

//: @end
@end