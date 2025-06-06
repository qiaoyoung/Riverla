// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// Notice
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ViewSessionConfigurateProtocol.h"
#import "ViewSessionConfigurateProtocol.h"
//: #import "ViewMessageCellProtocol.h"
#import "ViewMessageCellProtocol.h"

//: @interface FFFSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface ContentAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<ShowBlock> interactor;

//: @property (nonatomic,weak) id<FFFMessageCellDelegate> delegate;
@property (nonatomic,weak) id<RubricTing> delegate;

//: @end
@end
