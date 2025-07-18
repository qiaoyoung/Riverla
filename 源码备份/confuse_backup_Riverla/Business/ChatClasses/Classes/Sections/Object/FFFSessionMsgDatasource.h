//
//  FFFSessionMsgDatasource.h
// MyUserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFKitMessageProvider.h"
#import "FFFSessionConfig.h"

@class FFFMessageModel;

@interface FFFSessionMsgDatasource : NSObject

- (instancetype)initWithSession:(NIMSession*)session
                         config:(id<FFFSessionConfig>)sessionConfig;


@property (nonatomic, strong) NSMutableArray      *items;
@property (nonatomic, strong) NSMutableDictionary<NSString *, NSString *> *pinUsers;
@property (nonatomic, readonly) NSInteger         messageLimit;                //每页消息显示条数
@property (nonatomic, readonly) NSInteger         showTimeInterval;            //两条消息相隔多久显示一条时间戳
@property (nonatomic, weak) id<FFFSessionConfig> sessionConfig;

- (NSInteger)indexAtModelArray:(FFFMessageModel*)model;

//复位消息
- (void)resetMessages:(void(^)(NSError *error)) handler;

- (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;

//数据对外接口
- (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index , NSArray *messages ,NSError *error))handler;

//数据load接口
- (void)loadPullUpMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages, NSError *error))handler;

//获取PIN
- (void)loadMessagePins:(void (^)(NSError *))handler;

// 展示message之前做额外配置
- (void)willDisplayMessageModel:(FFFMessageModel *)model;

//添加消息，会根据时间戳插入到相应位置
- (NSArray<NSNumber *> *)insertMessageModels:(NSArray*)models;

//添加消息，直接插入消息列表末尾
- (NSArray<NSNumber *> *)appendMessageModels:(NSArray *)models;

//删除消息
- (NSArray<NSNumber *> *)deleteMessageModel:(FFFMessageModel*)model;

//根据范围批量删除消息
- (NSArray<NSNumber *> *)deleteModels:(NSRange)range;

// 添加pin
- (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;

// 移除pin
- (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;

//清理缓存数据
- (void)cleanCache;

//是否显示选择
- (void)refreshMessageModelShowSelect:(BOOL)isShow;

@end
