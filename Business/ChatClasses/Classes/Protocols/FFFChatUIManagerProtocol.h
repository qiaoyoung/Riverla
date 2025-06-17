// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFChatUIManagerProtocol.h
// Afterwards
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class NIMMessage;
@class NIMMessage;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FFFChatUIManager <NSObject>
@protocol TableArrayKey <NSObject>

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC;
- (void)forefront:(NIMMessage *)message optionController:(UIViewController *)fromVC;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END