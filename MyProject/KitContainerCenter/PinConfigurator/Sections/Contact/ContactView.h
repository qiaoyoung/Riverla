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
@class OriginBy;

//: @protocol FFFContactPickedViewDelegate <NSObject>
@protocol NumbereractionHouseDelegateVideo <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)towardInfo:(NSString *)userId;

//: @end
@end

//: @interface FFFContactPickedView : UIView <UIScrollViewDelegate>
@interface ContactView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<FFFContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<NumbereractionHouseDelegateVideo> delegate;

//: - (void)removeMemberInfo:(FFFKitInfo *)info;
- (void)shouldText:(OriginBy *)info;

//: - (void)addMemberInfo:(FFFKitInfo *)info;
- (void)member:(OriginBy *)info;

//: @end
@end