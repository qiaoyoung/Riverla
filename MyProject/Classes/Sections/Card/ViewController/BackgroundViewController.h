// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundViewController.h
//  NIM
//
//  Created by chrisRay on 2017/7/1.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NIMAvatarImageView.h"
#import "NIMAvatarImageView.h"
//: #import "NTESColorButtonCell.h"
#import "EasyLayViewCell.h"

// __M_A_C_R_O__

//: @interface NTESRobotCardViewController : UIViewController
@interface BackgroundViewController : UIViewController

//: @property (nonatomic,strong) IBOutlet NIMAvatarImageView *avatarImageView;
@property (nonatomic,strong) IBOutlet NIMAvatarImageView *avatarImageView;

//: @property (nonatomic,strong) IBOutlet UILabel *userIdLabel;
@property (nonatomic,strong) IBOutlet UILabel *userIdLabel;

//: @property (nonatomic,strong) IBOutlet UILabel *nickLabel;
@property (nonatomic,strong) IBOutlet UILabel *nickLabel;

//: @property (nonatomic,strong) IBOutlet UILabel *introLabel;
@property (nonatomic,strong) IBOutlet UILabel *introLabel;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithPinContent:(NSString *)userId;

//: @end
@end