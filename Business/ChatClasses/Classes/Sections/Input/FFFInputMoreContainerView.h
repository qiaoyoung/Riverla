//
//  NTESInputMoreContainerView.h
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFSessionConfig.h"
#import "FFFInputProtocol.h"
#import "CustomAlbumPickerView.h"

@protocol moreCustomPickerViewDelegate <NSObject>

- (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets;

@end

@interface FFFInputMoreContainerView : UIView

@property (nonatomic,weak)  id<FFFSessionConfig> config;
@property (nonatomic,weak)  id<NIMInputActionDelegate> actionDelegate;

@property (nonatomic, strong) CustomAlbumPickerView *albumPickerView;

@property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;

@end
