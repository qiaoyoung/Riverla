//
//  FFFTextView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FFFTextView : UITextView

@property (nonatomic, copy)void (^selectBlock)(FFFMediaItem *item);

@property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);

@property (nonatomic, copy) NSArray *selectedAllRangeButtons;
@property (nonatomic, copy) NSArray *selectedPartRangeButtons;

@property (nonatomic,weak) id<FFFSessionConfig> config;
@property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;


//取消文本选中效果
- (void)hideTextSelection;

- (void)genMediaButtonsWithMessage:(NIMMessage *)message;

// 群公告复制
- (void)new_genMediaButton;

@end

NS_ASSUME_NONNULL_END
