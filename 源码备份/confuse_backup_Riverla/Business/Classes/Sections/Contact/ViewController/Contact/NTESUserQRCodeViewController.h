//
//  NTESUserQRCodeViewController.h
//  NIM
//
//  Created by 彭爽 on 2021/9/15.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "HMViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface NTESUserQRCodeViewController : HMViewController

@property(nonatomic, strong) NSString *userID;
@property(nonatomic, assign) BOOL isTeam;
@property (nonatomic, strong) NIMTeam *team;

@end

NS_ASSUME_NONNULL_END
