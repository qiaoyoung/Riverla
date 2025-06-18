//
//  FFFReplyedTextContentView.h
// MyUserKit
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "FFFSessionMessageContentView.h"

@class M80AttributedLabel;
NS_ASSUME_NONNULL_BEGIN

@interface FFFReplyedTextContentView : FFFSessionMessageContentView

@property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) UILabel *audioLabel;

@property (nonatomic,strong) UILabel *fromUser;

@property (nonatomic,strong) UILabel *label;

@property (nonatomic,strong) UIImageView *picView;

@end

NS_ASSUME_NONNULL_END
