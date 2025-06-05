// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// Notice
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"
//: #import "FFFSessionConfig.h"
#import "BlueConfig.h"

//: @interface FFFSessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface SmartImpl : NSObject<WordTitleCell>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithTitle:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         sole:(id<BlueConfig>)sessionConfig;

//: @end
@end