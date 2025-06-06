// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESInputMoreContainerView.h
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFSessionConfig.h"
#import "BlueConfig.h"
//: #import "ViewInputProtocol.h"
#import "ViewInputProtocol.h"
//: #import "CustomAlbumPickerView.h"
#import "OffenseView.h"

//: @protocol moreCustomPickerViewDelegate <NSObject>
@protocol moreCustomPickerViewDelegate <NSObject>

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)scaled:(NSArray<PHAsset *> *)assets;

//: @end
@end

//: @interface FFFInputMoreContainerView : UIView
@interface DevelopmentView : UIView

//: @property (nonatomic,weak) id<FFFSessionConfig> config;
@property (nonatomic,weak) id<BlueConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<CourseOfActionDelegate> actionDelegate;

//: @property (nonatomic, strong) CustomAlbumPickerView *albumPickerView;
@property (nonatomic, strong) OffenseView *albumPickerView;

//: @property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;
@property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;

//: @end
@end
