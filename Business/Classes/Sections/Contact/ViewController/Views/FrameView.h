// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactHeaderView : UIView
@interface FrameView : UIView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: -(void)reloadCountNumber:(NSInteger)systemCount;
-(void)sole:(NSInteger)systemCount;
//: @end
@end

//: @protocol NTESContactHeaderDelegate <NSObject>
@protocol OpenBottom <NSObject>


//: -(void)searchClick;
-(void)moveImage;
//: -(void)addFriend;
-(void)endOf;
//: -(void)newGroup;
-(void)viewUp;
//: -(void)scan;
-(void)colorIndex;
//: -(void)friendNotification;
-(void)mobileView;
//: -(void)groupNotification;
-(void)can;
//: -(void)deviceList;
-(void)isMenu;
//: -(void)blackFriendList;
-(void)asShared;
//: -(void)signIn;
-(void)at;
//: -(void)collectList;
-(void)name;
//: -(void)onlineServer;
-(void)gestureNeed;

//: -(void)sliderWithIndex:(NSInteger)index;
-(void)centerWith:(NSInteger)index;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END