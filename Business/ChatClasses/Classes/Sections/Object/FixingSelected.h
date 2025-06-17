// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface FixingSelected : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<ViewHighMagnitudeeractor> interactor;

//: @property (nonatomic,weak) id<FFFMessageCellDelegate> delegate;
@property (nonatomic,weak) id<BubbleArray> delegate;

//: @end
@end