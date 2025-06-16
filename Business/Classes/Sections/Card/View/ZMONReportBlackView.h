//
//  ZMONReportBlackView.h
//  Neeyo
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^SpeiceBackBlock) (NSString *Name);

@interface ZMONReportBlackView : UIView

@property (nonatomic,strong) NSString *userID;

@property (nonatomic, copy) SpeiceBackBlock speiceBackBlock;

/** 动画显示 */
- (void)animationShow;

/** 动画关闭 */
- (void)animationClose;

@end

NS_ASSUME_NONNULL_END
