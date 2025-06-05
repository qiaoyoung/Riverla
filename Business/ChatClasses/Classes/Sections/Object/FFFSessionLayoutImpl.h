//
//  NIMSessionLayout.h
// NeeyoKit
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "FFFSessionConfigurator.h"
#import "FFFSessionPrivateProtocol.h"

@interface FFFSessionLayoutImpl : NSObject<NIMSessionLayout>

@property (nonatomic,strong)  UITableView *tableView;

@property (nonatomic,strong)  FFFInputView *inputView;

- (instancetype)initWithSession:(NIMSession *)session
                         config:(id<FFFSessionConfig>)sessionConfig;

@end
