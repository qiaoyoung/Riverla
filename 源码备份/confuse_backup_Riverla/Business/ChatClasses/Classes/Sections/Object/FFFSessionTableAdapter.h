//
//  NIMSessionTableDelegate.h
// MyUserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFSessionConfigurateProtocol.h"
#import "FFFMessageCellProtocol.h"

@interface FFFSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,weak) id<NIMSessionInteractor> interactor;

@property (nonatomic,weak) id<FFFMessageCellDelegate> delegate;

@end
