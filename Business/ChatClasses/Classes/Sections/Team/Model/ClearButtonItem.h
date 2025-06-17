// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardRowItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: typedef void(^NIMTeamCardRowSelectedBlock)(id <FFFKitSelectCardData> item);
typedef void(^NIMTeamCardRowSelectedBlock)(id <FFFKitSelectCardData> item);

//: @interface FFFTeamCardRowItem : NSObject
@interface ClearButtonItem : NSObject

//: @property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *title;

//: @property(nonatomic,copy) NSString *subTitle;
@property(nonatomic,copy) NSString *subTitle;

//: @property(nonatomic,copy) UIImage *img;
@property(nonatomic,copy) UIImage *img;

//: @property(nonatomic,assign) CGFloat rowHeight;
@property(nonatomic,assign) CGFloat rowHeight;

//: @property(nonatomic,assign) SEL action;
@property(nonatomic,assign) SEL action;

//: @property(nonatomic,assign) BOOL actionDisabled;
@property(nonatomic,assign) BOOL actionDisabled;

//: @property(nonatomic,assign) BOOL disableUserInteraction;
@property(nonatomic,assign) BOOL disableUserInteraction;

//: @property(nonatomic,assign) NIMKitTeamCardRowItemType type;
@property(nonatomic,assign) NIMKitTeamCardRowItemType type;

//: @property(nonatomic,assign) BOOL switchOn;
@property(nonatomic,assign) BOOL switchOn;

//: @property(nonatomic,strong) id value;
@property(nonatomic,strong) id value;

//: @property(nonatomic,assign) NSInteger identify;
@property(nonatomic,assign) NSInteger identify;

//: @property(nonatomic,strong) NSMutableArray <id <FFFKitSelectCardData>> *optionItems;
@property(nonatomic,strong) NSMutableArray <id <FFFKitSelectCardData>> *optionItems;

//: @property(nonatomic,strong) NIMTeamCardRowSelectedBlock selectedBlock;
@property(nonatomic,strong) NIMTeamCardRowSelectedBlock selectedBlock;

//: @property(nonatomic,assign) BOOL selected;
@property(nonatomic,assign) BOOL selected;

//: @end
@end