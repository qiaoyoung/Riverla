// __DEBUG__
// __CLOSE_PRINT__
//
//  OffView.h
// Afterwards
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "M80AttributedLabel.h"
#import "ShowTitleView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FFFReplyContentViewDelegate <NSObject>
@protocol EmptyPop <NSObject>

//: @optional
@optional
//: - (void)onClearReplyContent:(id)sender;
- (void)darkGreenCell:(id)sender;

//: @end
@end

//: @interface FFFReplyContentView : UIView
@interface OffView : UIView

//: @property (nonatomic,strong) UIButton *closeButton;
@property (nonatomic,strong) UIButton *closeButton;

//: @property (nonatomic,strong) UIView *divider;
@property (nonatomic,strong) UIView *divider;

//: @property (nonatomic,strong) UILabel *fromUser;
@property (nonatomic,strong) UILabel *fromUser;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIImageView *picView;
@property (nonatomic,strong) UIImageView *picView;

//: @property (nonatomic,strong) NIMMessage *replymessage;
@property (nonatomic,strong) NIMMessage *replymessage;

//: @property (nonatomic,weak) id<FFFReplyContentViewDelegate> delegate;
@property (nonatomic,weak) id<EmptyPop> delegate;

//: - (void)dismiss;
- (void)info;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END