// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowTeamView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/26.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFCommonTableViewCell.h"
#import "CompartmentCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESCardVerificationCell : UITableViewCell<FFFCommonTableViewCell>
@interface ShowTeamView : UITableViewCell<CompartmentCell>
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @property (nonatomic ,strong) UITextView *textView;
@property (nonatomic ,strong) UITextView *textView;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END