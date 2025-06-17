// __DEBUG__
// __CLOSE_PRINT__
//
//  NumberView.h
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/27.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFSessionConfig.h"
#import "FrameConfig.h"
//: #import "FFFInputProtocol.h"
#import "FFFInputProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFInputAudioView : UIView
@interface NumberView : UIView

//: @property (nonatomic,weak) id<FFFSessionConfig> config;
@property (nonatomic,weak) id<FrameConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<SizeDelegate> actionDelegate;


//: @property (nonatomic, assign) NSTimeInterval recordTime;
@property (nonatomic, assign) NSTimeInterval recordTime;

//: @property (nonatomic, strong) UIButton *audioButton;
@property (nonatomic, strong) UIButton *audioButton;

//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;

/** 动画显示 */
//: - (void)animationShow;
- (void)endShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)textLanguage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END