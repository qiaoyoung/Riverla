//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FFFKitInfo;

@protocol FFFContactPickedViewDelegate <NSObject>

- (void)removeUser:(NSString *)userId;

@end

@interface FFFContactPickedView : UIView <UIScrollViewDelegate>

@property (nonatomic, weak) id<FFFContactPickedViewDelegate> delegate;

- (void)removeMemberInfo:(FFFKitInfo *)info;

- (void)addMemberInfo:(FFFKitInfo *)info;

@end
