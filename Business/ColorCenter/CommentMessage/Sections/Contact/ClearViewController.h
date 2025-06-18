// __DEBUG__
// __CLOSE_PRINT__
//
//  ClearViewController.h
// Afterwards
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFContactSelectConfig.h"
#import "UndersurfacePoint.h"

//: typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
//: typedef void(^ContactSelectCancelBlock)(void);
typedef void(^ContactSelectCancelBlock)(void);

//: @protocol NIMContactSelectDelegate <NSObject>
@protocol CipherColor <NSObject>

//: @optional
@optional

//: - (void)didFinishedSelect:(NSArray *)selectedContacts; 
- (void)frameEffectCheck:(NSArray *)selectedContacts; // 返回userID

//: - (void)didCancelledSelect;
- (void)colorFor;

//: @end
@end


//: @interface FFFContactSelectViewController : UIViewController
@interface ClearViewController : UIViewController

//: @property (nonatomic, strong, readonly) UITableView *tableView;
@property (nonatomic, strong, readonly) UITableView *tableView;

//: @property (nonatomic, strong, readonly) id<FFFContactSelectConfig> config;
@property (nonatomic, strong, readonly) id<UndersurfacePoint> config;

//回调处理
//: @property (nonatomic, weak) id<NIMContactSelectDelegate> delegate;
@property (nonatomic, weak) id<CipherColor> delegate;

//: @property (nonatomic, copy) ContactSelectFinishBlock finshBlock;
@property (nonatomic, copy) ContactSelectFinishBlock finshBlock;

//: @property (nonatomic, copy) ContactSelectCancelBlock cancelBlock;
@property (nonatomic, copy) ContactSelectCancelBlock cancelBlock;

/**
 *  初始化方法
 *
 *  @param config 联系人选择器配置
 *
 *  @return 选择器
 */
//: - (instancetype)initWithConfig:(id<FFFContactSelectConfig>) config;
- (instancetype)initWithRecording:(id<UndersurfacePoint>) config;

/**
 *  弹出联系人选择器
 */
//: - (void)show;
- (void)parent;

//: @end
@end