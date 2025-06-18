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
#import "FrameConfig.h"
//: #import "UserInputProtocol.h"
#import "UserInputProtocol.h"
//: #import "CustomAlbumPickerView.h"
#import "WorkerView.h"

//: @protocol moreCustomPickerViewDelegate <NSObject>
@protocol moreCustomPickerViewDelegate <NSObject>

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)trivialityBe:(NSArray<PHAsset *> *)assets;

//: @end
@end

//: @interface FFFInputMoreContainerView : UIView
@interface ArrayView : UIView

//: @property (nonatomic,weak) id<FFFSessionConfig> config;
@property (nonatomic,weak) id<FrameConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<SizeDelegate> actionDelegate;

//: @property (nonatomic, strong) CustomAlbumPickerView *albumPickerView;
@property (nonatomic, strong) WorkerView *albumPickerView;

//: @property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;
@property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;

//: @end
@end
