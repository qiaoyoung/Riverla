// __DEBUG__
// __CLOSE_PRINT__
//
//  UserContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @protocol NIMGroupMemberProtocol <NSObject>
@protocol TingProtocol <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)groupTitle;

//: - (NSString *)memberId;
- (NSString *)memberId;

//: - (NSString *)showName;
- (NSString *)showName;

//: - (NSString *)avatarUrlString;
- (NSString *)team;

//: - (UIImage *)avatarImage;
- (UIImage *)text;

//: - (id)sortKey;
- (id)sortKey;

//: @end
@end

//: @protocol NIMContactItemCollection <NSObject>
@protocol ColorCollection <NSObject>

//显示的title名
//: - (NSString*)title;
- (NSString*)wordTitle;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)edge;

//重用id
//: - (NSString*)reuseId;
- (NSString*)getToGrips;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)compartment;

//: @end
@end




//: static const CGFloat NIMContactUtilRowHeight = 57;
static const CGFloat kLet_kitDataValue = 57;//util类Cell行高
//: static const CGFloat NIMContactDataRowHeight = 50;
static const CGFloat kLet_countTitle = 50;//data类Cell行高
//: static const NSInteger NIMContactAccessoryLeft = 10;
static const NSInteger kLet_aName = 10;//选择框到左边的距离
//: static const NSInteger NIMContactAvatarLeft = 15;
static const NSInteger kLet_pointName = 15;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NIMContactAvatarAndAccessorySpacing = 10;
static const NSInteger kLet_linkTitle = 10;//头像和选择框之间的距离
//: static const NSInteger NIMContactAvatarAndTitleSpacing = 20;
static const NSInteger kLet_controlText = 20;//头像和文字之间的间距
