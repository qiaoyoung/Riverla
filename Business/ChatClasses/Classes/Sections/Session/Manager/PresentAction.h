// __DEBUG__
// __CLOSE_PRINT__
//
//  PresentAction.h
// Notice
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFChatUIManagerProtocol.h"
#import "FFFChatUIManagerProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFChatUIManager : NSObject<FFFChatUIManager>
@interface PresentAction : NSObject<PresentAction>

//: + (instancetype)sharedManager;
+ (instancetype)mutual;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END