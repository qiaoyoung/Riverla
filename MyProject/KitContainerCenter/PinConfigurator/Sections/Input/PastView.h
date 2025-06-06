// __DEBUG__
// __CLOSE_PRINT__
//
//  PastView.h
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "CustomAlbumPickerView.h"
#import "OffenseView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol CustomUISeletePhotosDelegate <NSObject>
@protocol CenterDelegate <NSObject>

//: - (void)CustomPickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)proposeView:(NSArray<PHAsset *> *)assets;
//: - (void)CustomPickerDidSelectCamera;
- (void)lightCamera;


//: @end
@end

//: @interface PhotoContainerView : UIView
@interface PastView : UIView

//: @property (nonatomic,weak) id<CustomUISeletePhotosDelegate> delegate;
@property (nonatomic,weak) id<CenterDelegate> delegate;

//: @property (nonatomic, strong) NSArray *selectedPhoto;
@property (nonatomic, strong) NSArray *selectedPhoto;

//: @property (nonatomic, strong) UIView *viewBgApla;
@property (nonatomic, strong) UIView *viewBgApla;
//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;
//: @property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) UIButton *confirmButton;
//: @property (nonatomic, strong) CustomAlbumPickerView *albumPickerView;
@property (nonatomic, strong) OffenseView *albumPickerView;

/** 动画显示 */
//: - (void)animationShow;
- (void)text;

/** 动画关闭 */
//: - (void)animationClose;
- (void)randomShow;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END