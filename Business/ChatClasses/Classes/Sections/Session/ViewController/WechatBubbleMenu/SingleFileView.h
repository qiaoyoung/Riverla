// __DEBUG__
// __CLOSE_PRINT__
//
//  SingleFileView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFTextView : UITextView
@interface SingleFileView : UITextView

//: @property (nonatomic, copy)void (^selectBlock)(FFFMediaItem *item);
@property (nonatomic, copy)void (^selectBlock)(ChangeMax *item);

//: @property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);
@property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);

//: @property (nonatomic, copy) NSArray *selectedAllRangeButtons;
@property (nonatomic, copy) NSArray *selectedAllRangeButtons;
//: @property (nonatomic, copy) NSArray *selectedPartRangeButtons;
@property (nonatomic, copy) NSArray *selectedPartRangeButtons;

//: @property (nonatomic,weak) id<FFFSessionConfig> config;
@property (nonatomic,weak) id<BlueConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<CourseOfActionDelegate> actionDelegate;


//取消文本选中效果
//: - (void)hideTextSelection;
- (void)titleColor;

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message;
- (void)title:(NIMMessage *)message;

// 群公告复制
//: - (void)new_genMediaButton;
- (void)save;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END