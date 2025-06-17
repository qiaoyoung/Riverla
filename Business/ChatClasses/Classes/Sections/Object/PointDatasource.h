// __DEBUG__
// __CLOSE_PRINT__
//
//  PointDatasource.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFKitMessageProvider.h"
#import "TitleWireProvider.h"
//: #import "FFFSessionConfig.h"
#import "FrameConfig.h"

//: @class FFFMessageModel;
@class StochasticProcessTeam;

//: @interface FFFSessionMsgDatasource : NSObject
@interface PointDatasource : NSObject

//: - (instancetype)initWithSession:(NIMSession*)session
- (instancetype)initWithDevice:(NIMSession*)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         cannister:(id<FrameConfig>)sessionConfig;


//: @property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) NSMutableArray *items;
//: @property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
@property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
//: @property (nonatomic, readonly) NSInteger messageLimit; 
@property (nonatomic, readonly) NSInteger messageLimit; //每页消息显示条数
//: @property (nonatomic, readonly) NSInteger showTimeInterval; 
@property (nonatomic, readonly) NSInteger showTimeInterval; //两条消息相隔多久显示一条时间戳
//: @property (nonatomic, weak) id<FFFSessionConfig> sessionConfig;
@property (nonatomic, weak) id<FrameConfig> sessionConfig;

//: - (NSInteger)indexAtModelArray:(FFFMessageModel*)model;
- (NSInteger)cell:(StochasticProcessTeam*)model;

//复位消息
//: - (void)resetMessages:(void(^)(NSError *error)) handler;
- (void)min:(void(^)(NSError *error)) handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)should:(void(^)(NSError *error, NSArray *))handler;

//数据对外接口
//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;
- (void)image:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;

//数据load接口
//: - (void)loadPullUpMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;
- (void)bottom:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;

//获取PIN
//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)bombUp:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(FFFMessageModel *)model;
- (void)withLimit:(StochasticProcessTeam *)model;

//添加消息，会根据时间戳插入到相应位置
//: - (NSArray<NSNumber *> *)insertMessageModels:(NSArray*)models;
- (NSArray<NSNumber *> *)color:(NSArray*)models;

//添加消息，直接插入消息列表末尾
//: - (NSArray<NSNumber *> *)appendMessageModels:(NSArray *)models;
- (NSArray<NSNumber *> *)auditoryImage:(NSArray *)models;

//删除消息
//: - (NSArray<NSNumber *> *)deleteMessageModel:(FFFMessageModel*)model;
- (NSArray<NSNumber *> *)title:(StochasticProcessTeam*)model;

//根据范围批量删除消息
//: - (NSArray<NSNumber *> *)deleteModels:(NSRange)range;
- (NSArray<NSNumber *> *)removeModels:(NSRange)range;

// 添加pin
//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)holdfastLikeInfo:(NIMMessage *)message cancel:(void (^)(NSError *))handler;

// 移除pin
//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)callback:(NIMMessage *)message burrFromCallback:(void (^)(NSError *))handler;

//清理缓存数据
//: - (void)cleanCache;
- (void)manager;

//是否显示选择
//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)film:(BOOL)isShow;

//: @end
@end