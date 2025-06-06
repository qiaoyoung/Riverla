// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentLayerView.m
//  FUCommonUIComponent
//
//  Created by 项林平 on 2022/6/20.
//

// __M_A_C_R_O__
//: #import "FUInsetsLabel.h"
#import "RecentLayerView.h"

//: @interface FUInsetsLabel ()
@interface RecentLayerView ()

//: @property (nonatomic) UIEdgeInsets insets;
@property (nonatomic) UIEdgeInsets insets;

//: @end
@end

//: @implementation FUInsetsLabel
@implementation RecentLayerView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: return [self initWithFrame:frame insets:UIEdgeInsetsMake(8, 8, 8, 8)];
    return [self initWithAssumedTitleInsets:frame background:UIEdgeInsetsMake(8, 8, 8, 8)];
}

//: - (instancetype)initWithFrame:(CGRect)frame insets:(UIEdgeInsets)insets {
- (instancetype)initWithAssumedTitleInsets:(CGRect)frame background:(UIEdgeInsets)insets {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.insets = insets;
        self.insets = insets;
    }
    //: return self;
    return self;
}

//: - (void)drawTextInRect:(CGRect)rect {
- (void)drawTextInRect:(CGRect)rect {
    //: [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.insets)];
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.insets)];
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: CGSize fitSize = [super sizeThatFits:size];
    CGSize fitSize = [super sizeThatFits:size];
    //: fitSize.width += self.insets.left + self.insets.right;
    fitSize.width += self.insets.left + self.insets.right;
    //: fitSize.height += self.insets.top + self.insets.bottom;
    fitSize.height += self.insets.top + self.insets.bottom;
    //: return fitSize;
    return fitSize;
}

//: - (CGSize)intrinsicContentSize {
- (CGSize)intrinsicContentSize {
    //: CGSize contentSize = [super intrinsicContentSize];
    CGSize contentSize = [super intrinsicContentSize];
    //: contentSize.width += self.insets.left + self.insets.right;
    contentSize.width += self.insets.left + self.insets.right;
    //: contentSize.height += self.insets.top + self.insets.bottom;
    contentSize.height += self.insets.top + self.insets.bottom;
    //: return contentSize;
    return contentSize;
}

//: @end
@end