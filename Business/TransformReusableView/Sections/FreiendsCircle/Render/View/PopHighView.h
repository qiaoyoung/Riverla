// __DEBUG__
// __CLOSE_PRINT__
//
//  PopHighView.h
//  FULiveDemo
//
//  Created by 孙慕 on 2019/10/11.
//  Copyright © 2019 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @class FUPopupMenu;
@class PopHighView;
//: @protocol FUPopupMenuDelegate <NSObject>
@protocol ActivityDelegate <NSObject>

//: @optional
@optional
/**
 点击事件回调
 */
//: - (void)fuPopupMenuSegment:(FUSegmentedControl *)segment didSelectedAtIndex:(NSInteger)index;
- (void)searched:(PasskeyView *)segment control:(NSInteger)index;
//: - (void)fuPopupMenuDidSelectedImage;
- (void)onOption;
//: @end
@end

//: @interface FUPopupMenu : UIView
@interface PopHighView : UIView

/**
 代理
 */
//: @property (nonatomic, weak) id <FUPopupMenuDelegate> delegate;
@property (nonatomic, weak) id <ActivityDelegate> delegate;


///  弹出
/// @param view b绑定的view
/// @param frame 尺寸
/// @param index 分辨率默认选中
/// @param onlyTop 是否只显示分辨率
/// @param delegate 代理
//: + (FUPopupMenu *)showRelyOnView:(UIView *)view frame:(CGRect)frame defaultSelectedAtIndex:(int)index onlyTop:(BOOL)onlyTop delegate:(id<FUPopupMenuDelegate>)delegate;
+ (PopHighView *)clear:(UIView *)view cleanRect:(CGRect)frame flipSource:(int)index justLanguageDelegate:(BOOL)onlyTop titleView:(id<ActivityDelegate>)delegate;

///  弹出
/// @param view b绑定的view
/// @param frame 尺寸
/// @param index 分辨率默认选中
/// @param onlyTop 是否只显示分辨率
/// @param dataSource 数据源
/// @param delegate 代理
//: + (FUPopupMenu *)showRelyOnView:(UIView *)view frame:(CGRect)frame defaultSelectedAtIndex:(int)index onlyTop:(BOOL)onlyTop dataSource:(nullable NSArray *)dataSource delegate:(id<FUPopupMenuDelegate>)delegate;
+ (PopHighView *)areaConstant:(UIView *)view table:(CGRect)frame view:(int)index addIndex:(BOOL)onlyTop bar:(nullable NSArray *)dataSource eliteDelegate:(id<ActivityDelegate>)delegate;

//: @property (nonatomic) int selIndex;
@property (nonatomic) int selIndex;


/// 隐藏
//: - (void)dismiss;
- (void)filter;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END