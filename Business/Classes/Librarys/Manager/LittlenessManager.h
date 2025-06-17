// __DEBUG__
// __CLOSE_PRINT__
//
//  LittlenessManager.h
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFLoginViewController.h"
#import "LengthViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESRegistConfigManager : NSObject
@interface LittlenessManager : NSObject
//: @property (nonatomic ,strong) FFFLoginViewController *loginVC;
@property (nonatomic ,strong) LengthViewController *loginVC;
//: @property (nonatomic ,strong) NSMutableDictionary *registDict;
@property (nonatomic ,strong) NSMutableDictionary *registDict;
//: @property (nonatomic ,strong) UIImage *headerImage;
@property (nonatomic ,strong) UIImage *headerImage;

//: + (NTESRegistConfigManager *)shareConfigManager;
+ (LittlenessManager *)title;

//: + (void)refreshRegistConfig;
+ (void)upMax;

//: + (void)sendRegistRequest:(UINavigationController *)nav;
+ (void)request:(UINavigationController *)nav;


//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL ,NSString *))complete;
+ (void)archetypalFlushComplete:(NSString *)name sumNumberroductory:(NSString *)pd name:(void(^)(BOOL ,NSString *))complete;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END