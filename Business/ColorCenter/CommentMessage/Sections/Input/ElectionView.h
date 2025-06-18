// __DEBUG__
// __CLOSE_PRINT__
//
//  ElectionView.h
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "CustomAlbumPickerView.h"
#import "WorkerView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol CustomUISeletePhotosDelegate <NSObject>
@protocol TitleMax <NSObject>

//: - (void)CustomPickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)bared:(NSArray<PHAsset *> *)assets;
//: - (void)CustomPickerDidSelectCamera;
- (void)locationGray;


//: @end
@end

//: @interface PhotoContainerView : UIView
@interface ElectionView : UIView

//: @property (nonatomic,weak) id<CustomUISeletePhotosDelegate> delegate;
@property (nonatomic,weak) id<TitleMax> delegate;

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
@property (nonatomic, strong) WorkerView *albumPickerView;

/** 动画显示 */
//: - (void)animationShow;
- (void)searched;

/** 动画关闭 */
//: - (void)animationClose;
- (void)textLanguage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END