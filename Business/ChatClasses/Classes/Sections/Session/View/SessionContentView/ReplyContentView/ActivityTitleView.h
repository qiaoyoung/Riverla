// __DEBUG__
// __CLOSE_PRINT__
//
//  ActivityTitleView.h
// Afterwards
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "CypherView.h"

//: @class M80AttributedLabel;
@class ShowTitleView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFReplyedTextContentView : FFFSessionMessageContentView
@interface ActivityTitleView : CypherView

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) ShowTitleView *textLabel;
//: @property (nonatomic, strong) UILabel *audioLabel;
@property (nonatomic, strong) UILabel *audioLabel;

//: @property (nonatomic,strong) UILabel *fromUser;
@property (nonatomic,strong) UILabel *fromUser;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIImageView *picView;
@property (nonatomic,strong) UIImageView *picView;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END