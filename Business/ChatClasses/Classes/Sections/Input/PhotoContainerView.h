//
//  PhotoContainerView.h
//  Neeyo
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomAlbumPickerView.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CustomUISeletePhotosDelegate <NSObject>

- (void)CustomPickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)CustomPickerDidSelectCamera;


@end

@interface PhotoContainerView : UIView

@property (nonatomic,weak) id<CustomUISeletePhotosDelegate> delegate;

@property (nonatomic, strong) NSArray *selectedPhoto;

@property (nonatomic, strong) UIView *viewBgApla;
@property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) CustomAlbumPickerView *albumPickerView;

/** 动画显示 */
- (void)animationShow;

/** 动画关闭 */
- (void)animationClose;

@end

NS_ASSUME_NONNULL_END
