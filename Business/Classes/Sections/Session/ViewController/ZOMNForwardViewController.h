//
//  ZOMNForwardViewController.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZOMNForwardViewController : UIViewController

@property (nonatomic,strong) NIMMessage *message;
@property (nonatomic,strong) NIMSession *session;

@property (nonatomic,assign) BOOL isCard;
@property (nonatomic,assign) BOOL isdisCorvey;

@end

NS_ASSUME_NONNULL_END
