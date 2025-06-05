//
//  FFFTeamCardSelectedViewController.h
// NeeyoKit
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFCardDataSourceProtocol.h"
#import "NeeyoKit.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^NIMSelectedCompletion)(id <FFFKitSelectCardData> item);

@interface FFFTeamCardSelectedViewController : UIViewController

@property (nonatomic, copy) NSString *titleString;

@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

+ (instancetype)instanceWithTitle:(NSString *)title
                            items:(NSMutableArray <id <FFFKitSelectCardData>> *)items
                           result:(NIMSelectedCompletion)result;

@end

NS_ASSUME_NONNULL_END
