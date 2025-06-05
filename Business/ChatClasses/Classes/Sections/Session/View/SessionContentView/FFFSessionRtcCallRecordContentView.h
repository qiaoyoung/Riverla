//
//  FFFSessionRtcCallRecordContentView.h
// MyUserKit
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFSessionMessageContentView.h"

NS_ASSUME_NONNULL_BEGIN

@interface FFFSessionRtcCallRecordContentView : FFFSessionMessageContentView

@property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UIImageView *icImage;

@end

NS_ASSUME_NONNULL_END
