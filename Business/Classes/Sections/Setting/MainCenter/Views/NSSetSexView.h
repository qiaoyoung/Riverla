//
//  NSSetSexView.h
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef void(^SpeiceSexBackBlock) (NSInteger selectedGender);

@interface NSSetSexView : UIView

@property (nonatomic, copy) SpeiceSexBackBlock speiceBackBlock;

- (void)reloadWithGender:(NSInteger)gender;

- (void)animationShow;
- (void)animationClose;

@end

NS_ASSUME_NONNULL_END
