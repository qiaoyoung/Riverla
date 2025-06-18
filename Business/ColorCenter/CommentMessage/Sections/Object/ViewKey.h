// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "UserSessionConfigurateProtocol.h"
#import "UserSessionConfigurateProtocol.h"
//: #import "UserSessionPrivateProtocol.h"
#import "UserSessionPrivateProtocol.h"
//: #import "FFFSessionConfig.h"
#import "FrameConfig.h"

//: @interface FFFSessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface ViewKey : NSObject<EmptySource>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithShow:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         dedication:(id<FrameConfig>)sessionConfig;

//: @end
@end
