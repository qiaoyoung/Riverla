//
//  NIMSessionInteractor.h
// NeeyoKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFSessionPrivateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"

@interface FFFSessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>

- (instancetype)initWithSession:(NIMSession *)session
                         config:(id<FFFSessionConfig>)sessionConfig;

@property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;

@property(nonatomic,strong) id<NIMSessionDataSource> dataSource;

@property(nonatomic,strong) id<NIMSessionLayout>     layout;

@end
