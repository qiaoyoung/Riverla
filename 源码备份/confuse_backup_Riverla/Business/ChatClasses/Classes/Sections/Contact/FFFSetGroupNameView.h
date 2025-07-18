//
//  FFFSetGroupNameView.h
//  NIM
//
//  Created by Yan Wang on 2024/6/28.
//  Copyright © 2024 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^SpeiceBackBlock) (NSString *groupName);

@interface FFFSetGroupNameView : UIView

@property (nonatomic, copy) SpeiceBackBlock speiceBackBlock;

@property (nonatomic, strong) NSString *nickname;

//- (void)reloadWithNickname:(NSString *)name;

/** 动画显示 */
- (void)animationShow;

/** 动画关闭 */
- (void)animationClose;
@end

NS_ASSUME_NONNULL_END
