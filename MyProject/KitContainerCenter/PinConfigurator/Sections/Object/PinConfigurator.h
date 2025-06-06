// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionViewConfigurator.h
// Notice
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionViewController.h"
#import "BarOriginViewController.h"
//: #import "ViewSessionConfigurateProtocol.h"
#import "ViewSessionConfigurateProtocol.h"

//: @class FFFSessionViewController;
@class BarOriginViewController;

//: @interface FFFSessionConfigurator : NSObject
@interface PinConfigurator : NSObject

//: - (void)setup:(FFFSessionViewController *)vc;
- (void)pastVerticalKit:(BarOriginViewController *)vc;

//: @end
@end
