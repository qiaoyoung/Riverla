//
//  ViewCardDataSourceProtocol.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <NIMSDK/NIMSDK.h>

@protocol FFFKitSelectCardData;

typedef void(^NIMTeamCardRowSelectedBlock)(id <FFFKitSelectCardData> item);

typedef NS_ENUM(NSInteger, NIMKitCardHeaderOpeator){
    CardHeaderOpeatorNone   = 0,
    CardHeaderOpeatorAdd    = (1UL << 0),
    CardHeaderOpeatorRemove = (1UL << 1),
};

typedef NS_ENUM(NSInteger, NIMKitTeamCardRowItemType) {
    TeamCardRowItemTypeCommon,
    TeamCardRowItemTypeTeamMember,
    TeamCardRowItemTypeRedButton,
    TeamCardRowItemTypeBlueButton,
    TeamCardRowItemTypeSwitch,
    TeamCardRowItemTypeSelected,
};

@protocol FFFKitCardHeaderData <NSObject>

- (NSString*)teamId;

- (NSString*)userId;

- (NIMTeamMemberType)userType;

- (void)setUserType:(NIMTeamMemberType)userType;

- (NIMTeamType)teamType;

- (UIImage*)imageNormal;

- (NSString*)title;

- (NSString*)imageUrl;

- (NSString*)inviterAccid;

- (BOOL)isMuted;

- (BOOL)isMyUserId;

@end

@protocol FFFKitSelectCardData <NSObject>

- (id)value;

- (NSString*)title;

- (NSString*)img;

- (BOOL)selected;

- (void)setSelected:(BOOL)selected;

@end

@protocol NTESCardBodyData <NSObject>

- (NSString*)title;

- (id)value;

- (NIMKitTeamCardRowItemType)type;

- (CGFloat)rowHeight;

- (NIMTeamCardRowSelectedBlock)selectedBlock;

- (NSMutableArray <id <FFFKitSelectCardData>> *)optionItems;

@optional
- (NSString*)subTitle;

- (UIImage*)img;

- (SEL)action;

- (BOOL)actionDisabled;

- (BOOL)switchOn;

- (NSInteger)identify;

- (BOOL)disableUserInteraction;

@end
