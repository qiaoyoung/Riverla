//
//  NIMSessionTableData.h
// MyUserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionPrivateProtocol.h"
#import "FFFSessionConfig.h"

@interface FFFSessionDataSourceImpl : NSObject<NIMSessionDataSource>

- (instancetype)initWithSession:(NIMSession *)session
                         config:(id<FFFSessionConfig>)sessionConfig;

@end
