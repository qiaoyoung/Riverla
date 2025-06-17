// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeTeamViewController.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESAVMoivePlayerController.h"
#import "TallyController.h"

//: @interface NTESVideoViewItem : NSObject
@interface ToItem : NSObject

//: @property (nonatomic,copy) NSString *itemId;
@property (nonatomic,copy) NSString *itemId;//message Id

//: @property (nonatomic,copy) NSString *path;
@property (nonatomic,copy) NSString *path;

//: @property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *url;

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @end
@end

//: @interface NTESVideoViewController : UIViewController
@interface RangeTeamViewController : UIViewController

//: - (instancetype)initWithVideoViewItem:(NTESVideoViewItem *)item;
- (instancetype)initWithCenter:(ToItem *)item;

//: @property (nonatomic,strong) NIMMessage *message;
@property (nonatomic,strong) NIMMessage *message;

//: @property (nonatomic, readonly) NTESAVMoivePlayerController *avPlayer;
@property (nonatomic, readonly) TallyController *avPlayer;

//: @end
@end