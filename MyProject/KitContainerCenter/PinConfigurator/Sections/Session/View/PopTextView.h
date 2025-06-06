// __DEBUG__
// __CLOSE_PRINT__
//
//  PopTextView.h
// Notice
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFMessageCell.h"
#import "CompartmentInputView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFAdvancedMessageCell : FFFMessageCell
@interface PopTextView : CompartmentInputView

//: @property (nonatomic,strong) UIButton *replyButton;
@property (nonatomic,strong) UIButton *replyButton;
//: @property (nonatomic,strong) UIButton *pinView;
@property (nonatomic,strong) UIButton *pinView;

//: @property (nonatomic,nullable,strong) UICollectionView *emoticonsContainerView;
@property (nonatomic,nullable,strong) UICollectionView *emoticonsContainerView;

//: @property (nonatomic,strong) UIView *translationView;
@property (nonatomic,strong) UIView *translationView;

//: @property (nonatomic,strong) UIView *praiseView;
@property (nonatomic,strong) UIView *praiseView;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END