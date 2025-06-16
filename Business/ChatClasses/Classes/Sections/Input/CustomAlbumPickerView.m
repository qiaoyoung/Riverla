//
//  CustomAlbumPickerView.m
//  Neeyo
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "CustomAlbumPickerView.h"
#import <AVFoundation/AVFoundation.h>

@interface CustomAlbumPickerView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PHPhotoLibraryChangeObserver, UIImagePickerControllerDelegate, UINavigationControllerDelegate> 

@property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, weak) UIViewController *presentingViewController;

@end

@implementation CustomAlbumPickerView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.backgroundColor = [UIColor whiteColor];
    
    _assets = [NSMutableArray array];
    _selectedAssets = [NSMutableArray array];
    _imageManager = [[PHCachingImageManager alloc] init];
    _allowCamera = YES;
    _allowVideoRecording = YES;
    _mediaType = MediaPickerMediaTypeAll;
    
    [self setupCollectionView];
//    [self setupConfirmButton];
    [self fetchMediaAssets];
    [[PHPhotoLibrary sharedPhotoLibrary] registerChangeObserver:self];
}

// 在子视图类中重写hitTest方法
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *hitView = [super hitTest:point withEvent:event];
    if (hitView == self) {
        return self; // 确保子视图能接收到事件
    }
    return hitView;
}

- (void)setPresentingViewController:(UIViewController *)viewController {
    _presentingViewController = viewController;
}

- (void)setupCollectionView {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 5;
    layout.minimumLineSpacing = 5;
    CGFloat itemSize = (self.frame.size.width - 10) / 3;
    layout.itemSize = CGSizeMake(itemSize, itemSize);
    
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:layout];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"MediaCell"];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"CameraCell"];
    [self addSubview:_collectionView];
}

- (void)setupConfirmButton {
    _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _confirmButton.frame = CGRectMake(0, self.frame.size.height - 50, self.frame.size.width, 48);
    _confirmButton.layer.cornerRadius = 24;
    [_confirmButton setTitle:LangKey(@"user_profile_avtivity_send") forState:UIControlStateNormal];
    [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    _confirmButton.backgroundColor = ThemeColor;
    [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [self addSubview:_confirmButton];
}

- (void)fetchMediaAssets {
    [_assets removeAllObjects];
    
    PHFetchOptions *options = [[PHFetchOptions alloc] init];
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
    
    PHFetchResult *result;
    switch (self.mediaType) {
        case MediaPickerMediaTypeImageOnly:
            result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:options];
            break;
        case MediaPickerMediaTypeVideoOnly:
            result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeVideo options:options];
            break;
        case MediaPickerMediaTypeAll:
        default:
            result = [PHAsset fetchAssetsWithOptions:options];
            break;
    }
    
    [result enumerateObjectsUsingBlock:^(PHAsset *asset, NSUInteger idx, BOOL *stop) {
        [_assets addObject:asset];
    }];
    
    [_collectionView reloadData];
}

- (void)confirmButtonTapped {
    if ([self.delegate respondsToSelector:@selector(mediaPickerDidSelectAssets:)]) {
        [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
    }
}

- (void)reloadMediaData {
    [self fetchMediaAssets];
}

//- (NSArray<PHAsset *> *)selectedAssets {
//    return [_selectedAssets copy];
//}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _assets.count + (self.allowCamera ? 1 : 0);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.allowCamera && indexPath.item == 0) {
        return [self cameraCellForCollectionView:collectionView atIndexPath:indexPath];
    }
    
    return [self mediaCellForCollectionView:collectionView atIndexPath:indexPath];
}

- (UICollectionViewCell *)cameraCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CameraCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.6];
    cell.layer.cornerRadius = 4;
    
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    UIImageView *cameraIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    cameraIcon.image = [UIImage imageNamed:@"camera_icon"];
    cameraIcon.center = CGPointMake(cell.bounds.size.width/2, cell.bounds.size.height/2);
    [cell.contentView addSubview:cameraIcon];
    
    return cell;
}

- (UICollectionViewCell *)mediaCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MediaCell" forIndexPath:indexPath];
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    PHAsset *asset = _assets[assetIndex];
    
    // 添加媒体缩略图
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = 4;
    [cell.contentView addSubview:imageView];
    
    // 请求缩略图
    [_imageManager requestImageForAsset:asset
                            targetSize:CGSizeMake(200, 200)
                           contentMode:PHImageContentModeAspectFill
                               options:nil
                         resultHandler:^(UIImage *result, NSDictionary *info) {
        imageView.image = result;
    }];
    
    // 如果是视频，添加视频标记和时长
    if (asset.mediaType == PHAssetMediaTypeVideo) {
        // 视频遮罩层
        UIView *videoOverlay = [[UIView alloc] initWithFrame:CGRectMake(4, cell.bounds.size.height - 20, 48, 16)];
        videoOverlay.layer.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.4000].CGColor;
        videoOverlay.layer.cornerRadius = 4;
        [cell.contentView addSubview:videoOverlay];
        
        // 视频图标
        UIImageView *videoIcon = [[UIImageView alloc] initWithFrame:CGRectMake(2, 4, 8, 8)];
        videoIcon.image = [UIImage imageNamed:@"video_icon"];
        [videoOverlay addSubview:videoIcon];
        
        // 视频时长
        UILabel *durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 36, 16)];
        durationLabel.text = [self formattedDuration:asset.duration];
        durationLabel.textColor = [UIColor whiteColor];
        durationLabel.font = [UIFont systemFontOfSize:11];
        durationLabel.textAlignment = NSTextAlignmentLeft;
        [videoOverlay addSubview:durationLabel];
    }
    
    // 添加选中标记
    if ([_selectedAssets containsObject:asset]) {
//        UIView *selectionOverlay = [[UIView alloc] initWithFrame:cell.bounds];
//        selectionOverlay.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
//        [cell.contentView addSubview:selectionOverlay];
        
        UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        checkmark.image = [UIImage imageNamed:@"photo_selected"];
        [cell.contentView addSubview:checkmark];
    }else{
        UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        checkmark.image = [UIImage imageNamed:@"photo_select"];
        [cell.contentView addSubview:checkmark];
    }
    
    return cell;
}

- (NSString *)formattedDuration:(NSTimeInterval)duration {
    NSInteger minutes = (NSInteger)duration / 60;
    NSInteger seconds = (NSInteger)duration % 60;
    return [NSString stringWithFormat:@"%02ld:%02ld", (long)minutes, (long)seconds];
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.allowCamera && indexPath.item == 0) {
        [self showMediaPicker];
        return;
    }
    
    NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    PHAsset *asset = _assets[assetIndex];
    
    if ([_selectedAssets containsObject:asset]) {
        [_selectedAssets removeObject:asset];
    } else {
//        if (self.maxSelectionCount > 0 && _selectedAssets.count >= self.maxSelectionCount) {
//            [self showMaxSelectionAlert];
//            return;
//        }
        [_selectedAssets addObject:asset];
    }
    
//    [self updateConfirmButtonCount];
    [collectionView reloadItemsAtIndexPaths:@[indexPath]];
    
    if ([self.delegate respondsToSelector:@selector(mediaPickerDidSelectAssets:)]) {
        [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
    }
}

- (void)showMaxSelectionAlert {
    
}

#pragma mark - 拍照/拍视频功能

- (void)showMediaPicker {
    
    if ([self.delegate respondsToSelector:@selector(mediaPickerDidTapCamera)]) {
        [self.delegate mediaPickerDidTapCamera];
    }
    
    
//    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
//    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
//    picker.delegate = self;
////    picker.mediaTypes = @[mediaType];
//    [self.presentingViewController presentViewController:picker animated:YES completion:nil];
}


#pragma mark - UIImagePickerControllerDelegate

//- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
////    NSString *mediaType = info[UIImagePickerControllerMediaType];
//    
//    // 处理照片
//    UIImage *image = info[UIImagePickerControllerOriginalImage];
//    [self saveImageToPhotoLibrary:image];
//   
//    
//    [picker dismissViewControllerAnimated:YES completion:nil];
//}
//
//- (void)saveImageToPhotoLibrary:(UIImage *)image {
//    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
//        [PHAssetChangeRequest creationRequestForAssetFromImage:image];
//    } completionHandler:^(BOOL success, NSError * _Nullable error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (success) {
//                [self fetchMediaAssets];
//            } else {
//                NSLog(@"保存图片失败: %@", error.localizedDescription);
//            }
//        });
//    }];
//}
//
//- (void)saveVideoToPhotoLibrary:(NSURL *)videoURL {
//    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
//        [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:videoURL];
//    } completionHandler:^(BOOL success, NSError * _Nullable error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (success) {
//                [self fetchMediaAssets];
//            } else {
//                NSLog(@"保存视频失败: %@", error.localizedDescription);
//            }
//        });
//    }];
//}
//
//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
//    [picker dismissViewControllerAnimated:YES completion:nil];
//}

#pragma mark - Helper Methods

- (void)updateConfirmButtonCount {
    [_confirmButton setTitle:[NSString stringWithFormat:@"确认选择(%ld)", (long)_selectedAssets.count] forState:UIControlStateNormal];
}

#pragma mark - PHPhotoLibraryChangeObserver

- (void)photoLibraryDidChange:(PHChange *)changeInstance {
    dispatch_async(dispatch_get_main_queue(), ^{
        PHFetchResultChangeDetails *changes = [changeInstance changeDetailsForFetchResult:[PHAsset fetchAssetsWithOptions:nil]];
        if (changes) {
            [self fetchMediaAssets];
        }
    });
}

- (void)dealloc {
    [[PHPhotoLibrary sharedPhotoLibrary] unregisterChangeObserver:self];
}


@end
