//
//  FFFAdvancedMessageCell.h
// NeeyoKit
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFMessageCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface FFFAdvancedMessageCell : FFFMessageCell

@property (nonatomic,strong) UIButton *replyButton;
@property (nonatomic,strong) UIButton *pinView;

@property (nonatomic,nullable,strong) UICollectionView *emoticonsContainerView;

@property (nonatomic,strong) UIView *translationView;

@property (nonatomic,strong) UIView *praiseView;

@end

NS_ASSUME_NONNULL_END
