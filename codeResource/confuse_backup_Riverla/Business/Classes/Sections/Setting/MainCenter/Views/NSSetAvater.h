//
//  NSSetAvater.h
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@protocol NTESCustomUIAlertDelegate <NSObject>

- (void)didTouchTheBtnWith:(NSInteger )tag;

@end

@interface NSSetAvater : UIView

@property (nonatomic,weak) id<NTESCustomUIAlertDelegate> delegate;

/** 动画显示 */
- (void)animationShow;

/** 动画关闭 */
- (void)animationClose;

@end

NS_ASSUME_NONNULL_END
