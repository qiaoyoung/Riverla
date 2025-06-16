//
//  NIMSessionViewConfigurator.h
// NeeyoKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "FFFSessionViewController.h"
#import "FFFSessionConfigurateProtocol.h"

@class FFFSessionViewController;

@interface FFFSessionConfigurator : NSObject

- (void)setup:(FFFSessionViewController *)vc;

@end
