// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamView.h
// Notice
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FFFTeamCardHeaderViewDelegate <NSObject>
@protocol MessageDelegate <NSObject>

//: - (void)onTouchAvatar:(id)sender;
- (void)baring:(id)sender;

//: @end
@end

//: @interface FFFTeamCardHeaderView : UIView
@interface TeamView : UIView

//: @property (nonatomic, weak) id<FFFTeamCardHeaderViewDelegate> delegate;
@property (nonatomic, weak) id<MessageDelegate> delegate;

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END