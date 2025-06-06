// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCreateTeamAnnouncement.h
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol NTESCreateTeamAnnouncementDelegate <NSObject>
@protocol ChildIndex <NSObject>

//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content;
- (void)announcementColor:(NSString *)title content:(NSString *)content;

//: @end
@end

//: @interface FFFCreateTeamAnnouncement : UIViewController
@interface PinViewController : UIViewController

//: @property (nonatomic, weak) id<NTESCreateTeamAnnouncementDelegate> delegate;
@property (nonatomic, weak) id<ChildIndex> delegate;

//: @property (nonatomic, copy) NSString *defaultTitle;
@property (nonatomic, copy) NSString *defaultTitle;

//: @property (nonatomic, copy) NSString *defaultContent;
@property (nonatomic, copy) NSString *defaultContent;

//: @end
@end