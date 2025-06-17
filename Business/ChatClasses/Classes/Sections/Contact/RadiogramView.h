// __DEBUG__
// __CLOSE_PRINT__
//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFKitInfo;
@class MarginThanInfo;

//: @protocol FFFContactPickedViewDelegate <NSObject>
@protocol WearerButton <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)signaling:(NSString *)userId;

//: @end
@end

//: @interface FFFContactPickedView : UIView <UIScrollViewDelegate>
@interface RadiogramView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<FFFContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<WearerButton> delegate;

//: - (void)removeMemberInfo:(FFFKitInfo *)info;
- (void)customInfo:(MarginThanInfo *)info;

//: - (void)addMemberInfo:(FFFKitInfo *)info;
- (void)bubble:(MarginThanInfo *)info;

//: @end
@end