// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamPictureViewController.h
// Notice
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFContactSelectConfig.h"
#import "LinkConfig.h"

//: typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
//: typedef void(^ContactSelectCancelBlock)(void);
typedef void(^ContactSelectCancelBlock)(void);

//: @protocol NIMContactSelectDelegate <NSObject>
@protocol MessageAction <NSObject>

//: @optional
@optional

//: - (void)didFinishedSelect:(NSArray *)selectedContacts; 
- (void)ting:(NSArray *)selectedContacts; // 返回userID

//: - (void)didCancelledSelect;
- (void)containerTap;

//: @end
@end


//: @interface FFFContactSelectViewController : UIViewController
@interface TeamPictureViewController : UIViewController

//: @property (nonatomic, strong, readonly) UITableView *tableView;
@property (nonatomic, strong, readonly) UITableView *tableView;

//: @property (nonatomic, strong, readonly) id<FFFContactSelectConfig> config;
@property (nonatomic, strong, readonly) id<LinkConfig> config;

//回调处理
//: @property (nonatomic, weak) id<NIMContactSelectDelegate> delegate;
@property (nonatomic, weak) id<MessageAction> delegate;

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
- (instancetype)initWithIconTitle:(id<LinkConfig>) config;

/**
 *  弹出联系人选择器
 */
//: - (void)show;
- (void)application;

//: @end
@end