// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkerView.h
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: typedef NS_ENUM(NSInteger, MediaPickerMediaType) {
typedef NS_ENUM(NSInteger, MediaPickerMediaType) {
    //: MediaPickerMediaTypeAll, 
    MediaPickerMediaTypeAll, // 图片和视频
    //: MediaPickerMediaTypeImageOnly, 
    MediaPickerMediaTypeImageOnly, // 仅图片
    //: MediaPickerMediaTypeVideoOnly 
    MediaPickerMediaTypeVideoOnly // 仅视频
//: };
};

//: @protocol CustomMediaPickerViewDelegate <NSObject>
@protocol AtRandom <NSObject>
//: - (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)pastCenter:(NSArray<PHAsset *> *)assets;
//: - (void)mediaPickerDidTapCamera;
- (void)filmInCamera;
//: @end
@end

//: @interface CustomAlbumPickerView : UIView
@interface WorkerView : UIView

//: @property (nonatomic, weak) id<CustomMediaPickerViewDelegate> delegate;
@property (nonatomic, weak) id<AtRandom> delegate;
//: @property (nonatomic, assign) NSInteger maxSelectionCount; 
@property (nonatomic, assign) NSInteger maxSelectionCount; // 最大选择数量(0表示无限制)
//: @property (nonatomic, assign) MediaPickerMediaType mediaType; 
@property (nonatomic, assign) MediaPickerMediaType mediaType; // 媒体类型
//: @property (nonatomic, assign) BOOL allowCamera; 
@property (nonatomic, assign) BOOL allowCamera; // 是否显示拍照按钮
//: @property (nonatomic, assign) BOOL allowVideoRecording; 
@property (nonatomic, assign) BOOL allowVideoRecording; // 是否允许拍摄视频

//: @property (nonatomic, strong) NSMutableArray<PHAsset *> *assets;
@property (nonatomic, strong) NSMutableArray<PHAsset *> *assets;
//: @property (nonatomic, strong) NSMutableArray<PHAsset *> *selectedAssets;
@property (nonatomic, strong) NSMutableArray<PHAsset *> *selectedAssets;
//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;
//: @property (nonatomic, strong) PHCachingImageManager *imageManager;
@property (nonatomic, strong) PHCachingImageManager *imageManager;

//: - (void)reloadMediaData;
- (void)parentBar;
//- (NSArray<PHAsset *> *)selectedAssets;

//: @end
@end