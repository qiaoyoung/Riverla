// __DEBUG__
// __CLOSE_PRINT__
//
//  ALaCarteRecentView.h
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
@class ALaCarteRecentView;
//: @protocol FUPopupMenuDelegate <NSObject>
@protocol LinkByDelegate <NSObject>

//: @optional
@optional
/**
 点击事件回调
 */
//: - (void)fuPopupMenuSegment:(FUSegmentedControl *)segment didSelectedAtIndex:(NSInteger)index;
- (void)modelEnable:(PraiseView *)segment item:(NSInteger)index;
//: - (void)fuPopupMenuDidSelectedImage;
- (void)sizeInfo;
//: @end
@end

//: @interface FUPopupMenu : UIView
@interface ALaCarteRecentView : UIView

/**
 代理
 */
//: @property (nonatomic, weak) id <FUPopupMenuDelegate> delegate;
@property (nonatomic, weak) id <LinkByDelegate> delegate;


///  弹出
/// @param view b绑定的view
/// @param frame 尺寸
/// @param index 分辨率默认选中
/// @param onlyTop 是否只显示分辨率
/// @param delegate 代理
//: + (FUPopupMenu *)showRelyOnView:(UIView *)view frame:(CGRect)frame defaultSelectedAtIndex:(int)index onlyTop:(BOOL)onlyTop delegate:(id<FUPopupMenuDelegate>)delegate;
+ (ALaCarteRecentView *)location:(UIView *)view fullPhaseOfTheMoon:(CGRect)frame doingLevelDelegate:(int)index maturityDate:(BOOL)onlyTop exhibit:(id<LinkByDelegate>)delegate;

///  弹出
/// @param view b绑定的view
/// @param frame 尺寸
/// @param index 分辨率默认选中
/// @param onlyTop 是否只显示分辨率
/// @param dataSource 数据源
/// @param delegate 代理
//: + (FUPopupMenu *)showRelyOnView:(UIView *)view frame:(CGRect)frame defaultSelectedAtIndex:(int)index onlyTop:(BOOL)onlyTop dataSource:(nullable NSArray *)dataSource delegate:(id<FUPopupMenuDelegate>)delegate;
+ (ALaCarteRecentView *)clean:(UIView *)view message:(CGRect)frame length:(int)index key:(BOOL)onlyTop image:(nullable NSArray *)dataSource language:(id<LinkByDelegate>)delegate;

//: @property (nonatomic) int selIndex;
@property (nonatomic) int selIndex;


/// 隐藏
//: - (void)dismiss;
- (void)tinkleWindow;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END