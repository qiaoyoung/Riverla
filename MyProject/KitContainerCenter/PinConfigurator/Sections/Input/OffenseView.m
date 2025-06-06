
#import <Foundation/Foundation.h>

NSString *StringFromSurroundingData(Byte *data);        


//: photo_select
Byte kStr_meterName[] = {68, 12, 31, 11, 109, 77, 110, 28, 146, 2, 175, 81, 73, 80, 85, 80, 64, 84, 70, 77, 70, 68, 85, 139};


//: video_icon
Byte kStr_savingName[] = {94, 10, 63, 5, 119, 55, 42, 37, 38, 48, 32, 42, 36, 48, 47, 108};


//: photo_selected
Byte kStr_nanaAccessValue[] = {27, 14, 14, 14, 214, 108, 232, 52, 41, 68, 223, 216, 10, 25, 98, 90, 97, 102, 97, 81, 101, 87, 94, 87, 85, 102, 87, 86, 28};


//: MediaCell
Byte kStr_tressValue[] = {7, 9, 17, 13, 175, 21, 88, 113, 8, 174, 1, 2, 54, 60, 84, 83, 88, 80, 50, 84, 91, 91, 138};


//: user_profile_avtivity_send
Byte kStr_reluctantData[] = {68, 26, 43, 13, 69, 189, 126, 139, 63, 27, 21, 33, 122, 74, 72, 58, 71, 52, 69, 71, 68, 59, 62, 65, 58, 52, 54, 75, 73, 62, 75, 62, 73, 78, 52, 72, 58, 67, 57, 184};


//: #B391FF
Byte kStr_direTractionData[] = {4, 7, 90, 8, 22, 229, 126, 44, 201, 232, 217, 223, 215, 236, 236, 183};


//: creationDate
Byte kStr_rompTitle[] = {51, 12, 24, 5, 84, 75, 90, 77, 73, 92, 81, 87, 86, 44, 73, 92, 77, 61};


//: camera_icon
Byte kStr_treasureTitle[] = {69, 11, 16, 12, 33, 215, 181, 227, 72, 113, 167, 213, 83, 81, 93, 85, 98, 81, 79, 89, 83, 95, 94, 201};


//: 确认选择(%ld)
Byte kStr_roseWithDireData[] = {89, 17, 3, 8, 214, 140, 108, 206, 228, 158, 171, 229, 171, 161, 230, 125, 134, 227, 136, 166, 37, 34, 105, 97, 38, 96};


//: CameraCell
Byte kStr_pitData[] = {77, 10, 67, 9, 31, 237, 58, 246, 183, 0, 30, 42, 34, 47, 30, 0, 34, 41, 41, 11};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffenseView.m
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CustomAlbumPickerView.h"
#import "OffenseView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: @interface CustomAlbumPickerView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PHPhotoLibraryChangeObserver, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@interface OffenseView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PHPhotoLibraryChangeObserver, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

//: @property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) UIButton *confirmButton;
//: @property (nonatomic, weak) UIViewController *presentingViewController;
@property (nonatomic, weak) UIViewController *presentingViewController;

//: @end
@end

//: @implementation CustomAlbumPickerView
@implementation OffenseView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setup];
        [self link];
    }
    //: return self;
    return self;
}

//: - (void)setup {
- (void)link {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

    //: _assets = [NSMutableArray array];
    _assets = [NSMutableArray array];
    //: _selectedAssets = [NSMutableArray array];
    _selectedAssets = [NSMutableArray array];
    //: _imageManager = [[PHCachingImageManager alloc] init];
    _imageManager = [[PHCachingImageManager alloc] init];
    //: _allowCamera = YES;
    _allowCamera = YES;
    //: _allowVideoRecording = YES;
    _allowVideoRecording = YES;
    //: _mediaType = MediaPickerMediaTypeAll;
    _mediaType = MediaPickerMediaTypeAll;

    //: [self setupCollectionView];
    [self facialVein];
//    [self setupConfirmButton];
    //: [self fetchMediaAssets];
    [self with];
    //: [[PHPhotoLibrary sharedPhotoLibrary] registerChangeObserver:self];
    [[PHPhotoLibrary sharedPhotoLibrary] registerChangeObserver:self];
}

// 在子视图类中重写hitTest方法
//: - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    //: UIView *hitView = [super hitTest:point withEvent:event];
    UIView *hitView = [super hitTest:point withEvent:event];
    //: if (hitView == self) {
    if (hitView == self) {
        //: return self; 
        return self; // 确保子视图能接收到事件
    }
    //: return hitView;
    return hitView;
}

//: - (void)setPresentingViewController:(UIViewController *)viewController {
- (void)setPresentingViewController:(UIViewController *)viewController {
    //: _presentingViewController = viewController;
    _presentingViewController = viewController;
}

//: - (void)setupCollectionView {
- (void)facialVein {
    //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //: layout.minimumInteritemSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    //: layout.minimumLineSpacing = 5;
    layout.minimumLineSpacing = 5;
    //: CGFloat itemSize = (self.frame.size.width - 10) / 3;
    CGFloat itemSize = (self.frame.size.width - 10) / 3;
    //: layout.itemSize = CGSizeMake(itemSize, itemSize);
    layout.itemSize = CGSizeMake(itemSize, itemSize);

    //: _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:layout];
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:layout];
    //: _collectionView.delegate = self;
    _collectionView.delegate = self;
    //: _collectionView.dataSource = self;
    _collectionView.dataSource = self;
    //: _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.backgroundColor = [UIColor whiteColor];
    //: [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"MediaCell"];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:StringFromSurroundingData(kStr_tressValue)];
    //: [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"CameraCell"];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:StringFromSurroundingData(kStr_pitData)];
    //: [self addSubview:_collectionView];
    [self addSubview:_collectionView];
}

//: - (void)setupConfirmButton {
- (void)title {
    //: _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
    //: _confirmButton.frame = CGRectMake(0, self.frame.size.height - 50, self.frame.size.width, 48);
    _confirmButton.frame = CGRectMake(0, self.frame.size.height - 50, self.frame.size.width, 48);
    //: _confirmButton.layer.cornerRadius = 24;
    _confirmButton.layer.cornerRadius = 24;
    //: [_confirmButton setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
    [_confirmButton setTitle:[TeamManager sizeKey:StringFromSurroundingData(kStr_reluctantData)] forState:UIControlStateNormal];
    //: [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_confirmButton addTarget:self action:@selector(requestTap) forControlEvents:UIControlEventTouchUpInside];
    //: _confirmButton.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    _confirmButton.backgroundColor = [UIColor isView:StringFromSurroundingData(kStr_direTractionData)];
    //: [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self addSubview:_confirmButton];
    [self addSubview:_confirmButton];
}

//: - (void)fetchMediaAssets {
- (void)with {
    //: [_assets removeAllObjects];
    [_assets removeAllObjects];

    //: PHFetchOptions *options = [[PHFetchOptions alloc] init];
    PHFetchOptions *options = [[PHFetchOptions alloc] init];
    //: options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:StringFromSurroundingData(kStr_rompTitle) ascending:NO]];

    //: PHFetchResult *result;
    PHFetchResult *result;
    //: switch (self.mediaType) {
    switch (self.mediaType) {
        //: case MediaPickerMediaTypeImageOnly:
        case MediaPickerMediaTypeImageOnly:
            //: result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:options];
            result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:options];
            //: break;
            break;
        //: case MediaPickerMediaTypeVideoOnly:
        case MediaPickerMediaTypeVideoOnly:
            //: result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeVideo options:options];
            result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeVideo options:options];
            //: break;
            break;
        //: case MediaPickerMediaTypeAll:
        case MediaPickerMediaTypeAll:
        //: default:
        default:
            //: result = [PHAsset fetchAssetsWithOptions:options];
            result = [PHAsset fetchAssetsWithOptions:options];
            //: break;
            break;
    }

    //: [result enumerateObjectsUsingBlock:^(PHAsset *asset, NSUInteger idx, BOOL *stop) {
    [result enumerateObjectsUsingBlock:^(PHAsset *asset, NSUInteger idx, BOOL *stop) {
        //: [_assets addObject:asset];
        [_assets addObject:asset];
    //: }];
    }];

    //: [_collectionView reloadData];
    [_collectionView reloadData];
}

//: - (void)confirmButtonTapped {
- (void)requestTap {
    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(mediaDetail:)]) {
        //: [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
        [self.delegate mediaDetail:[_selectedAssets copy]];
    }
}

//: - (void)reloadMediaData {
- (void)name {
    //: [self fetchMediaAssets];
    [self with];
}

//- (NSArray<PHAsset *> *)selectedAssets {
//    return [_selectedAssets copy];
//}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return _assets.count + (self.allowCamera ? 1 : 0);
    return _assets.count + (self.allowCamera ? 1 : 0);
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (self.allowCamera && indexPath.item == 0) {
    if (self.allowCamera && indexPath.item == 0) {
        //: return [self cameraCellForCollectionView:collectionView atIndexPath:indexPath];
        return [self sizeIn:collectionView bar:indexPath];
    }

    //: return [self mediaCellForCollectionView:collectionView atIndexPath:indexPath];
    return [self searchedKit:collectionView celluloidToWayOfLife:indexPath];
}

//: - (UICollectionViewCell *)cameraCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)sizeIn:(UICollectionView *)collectionView bar:(NSIndexPath *)indexPath {
    //: UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CameraCell" forIndexPath:indexPath];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:StringFromSurroundingData(kStr_pitData) forIndexPath:indexPath];
    //: cell.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.6];
    cell.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.6];
    //: cell.layer.cornerRadius = 4;
    cell.layer.cornerRadius = 4;

    //: [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: UIImageView *cameraIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    UIImageView *cameraIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    //: cameraIcon.image = [UIImage imageNamed:@"camera_icon"];
    cameraIcon.image = [UIImage imageNamed:StringFromSurroundingData(kStr_treasureTitle)];
    //: cameraIcon.center = CGPointMake(cell.bounds.size.width/2, cell.bounds.size.height/2);
    cameraIcon.center = CGPointMake(cell.bounds.size.width/2, cell.bounds.size.height/2);
    //: [cell.contentView addSubview:cameraIcon];
    [cell.contentView addSubview:cameraIcon];

    //: return cell;
    return cell;
}

//: - (UICollectionViewCell *)mediaCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)searchedKit:(UICollectionView *)collectionView celluloidToWayOfLife:(NSIndexPath *)indexPath {
    //: UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MediaCell" forIndexPath:indexPath];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:StringFromSurroundingData(kStr_tressValue) forIndexPath:indexPath];
    //: [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    //: PHAsset *asset = _assets[assetIndex];
    PHAsset *asset = _assets[assetIndex];

    // 添加媒体缩略图
    //: UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.bounds];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.bounds];
    //: imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    //: imageView.clipsToBounds = YES;
    imageView.clipsToBounds = YES;
    //: imageView.layer.cornerRadius = 4;
    imageView.layer.cornerRadius = 4;
    //: [cell.contentView addSubview:imageView];
    [cell.contentView addSubview:imageView];

    // 请求缩略图
    //: [_imageManager requestImageForAsset:asset
    [_imageManager requestImageForAsset:asset
                            //: targetSize:CGSizeMake(200, 200)
                            targetSize:CGSizeMake(200, 200)
                           //: contentMode:PHImageContentModeAspectFill
                           contentMode:PHImageContentModeAspectFill
                               //: options:nil
                               options:nil
                         //: resultHandler:^(UIImage *result, NSDictionary *info) {
                         resultHandler:^(UIImage *result, NSDictionary *info) {
        //: imageView.image = result;
        imageView.image = result;
    //: }];
    }];

    // 如果是视频，添加视频标记和时长
    //: if (asset.mediaType == PHAssetMediaTypeVideo) {
    if (asset.mediaType == PHAssetMediaTypeVideo) {
        // 视频遮罩层
        //: UIView *videoOverlay = [[UIView alloc] initWithFrame:CGRectMake(4, cell.bounds.size.height - 20, 48, 16)];
        UIView *videoOverlay = [[UIView alloc] initWithFrame:CGRectMake(4, cell.bounds.size.height - 20, 48, 16)];
        //: videoOverlay.layer.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.4000].CGColor;
        videoOverlay.layer.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.4000].CGColor;
        //: videoOverlay.layer.cornerRadius = 4;
        videoOverlay.layer.cornerRadius = 4;
        //: [cell.contentView addSubview:videoOverlay];
        [cell.contentView addSubview:videoOverlay];

        // 视频图标
        //: UIImageView *videoIcon = [[UIImageView alloc] initWithFrame:CGRectMake(2, 4, 8, 8)];
        UIImageView *videoIcon = [[UIImageView alloc] initWithFrame:CGRectMake(2, 4, 8, 8)];
        //: videoIcon.image = [UIImage imageNamed:@"video_icon"];
        videoIcon.image = [UIImage imageNamed:StringFromSurroundingData(kStr_savingName)];
        //: [videoOverlay addSubview:videoIcon];
        [videoOverlay addSubview:videoIcon];

        // 视频时长
        //: UILabel *durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 36, 16)];
        UILabel *durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 36, 16)];
        //: durationLabel.text = [self formattedDuration:asset.duration];
        durationLabel.text = [self stop:asset.duration];
        //: durationLabel.textColor = [UIColor whiteColor];
        durationLabel.textColor = [UIColor whiteColor];
        //: durationLabel.font = [UIFont systemFontOfSize:11];
        durationLabel.font = [UIFont systemFontOfSize:11];
        //: durationLabel.textAlignment = NSTextAlignmentLeft;
        durationLabel.textAlignment = NSTextAlignmentLeft;
        //: [videoOverlay addSubview:durationLabel];
        [videoOverlay addSubview:durationLabel];
    }

    // 添加选中标记
    //: if ([_selectedAssets containsObject:asset]) {
    if ([_selectedAssets containsObject:asset]) {
//        UIView *selectionOverlay = [[UIView alloc] initWithFrame:cell.bounds];
//        selectionOverlay.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
//        [cell.contentView addSubview:selectionOverlay];

        //: UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        //: checkmark.image = [UIImage imageNamed:@"photo_selected"];
        checkmark.image = [UIImage imageNamed:StringFromSurroundingData(kStr_nanaAccessValue)];
        //: [cell.contentView addSubview:checkmark];
        [cell.contentView addSubview:checkmark];
    //: }else{
    }else{
        //: UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        //: checkmark.image = [UIImage imageNamed:@"photo_select"];
        checkmark.image = [UIImage imageNamed:StringFromSurroundingData(kStr_meterName)];
        //: [cell.contentView addSubview:checkmark];
        [cell.contentView addSubview:checkmark];
    }

    //: return cell;
    return cell;
}

//: - (NSString *)formattedDuration:(NSTimeInterval)duration {
- (NSString *)stop:(NSTimeInterval)duration {
    //: NSInteger minutes = (NSInteger)duration / 60;
    NSInteger minutes = (NSInteger)duration / 60;
    //: NSInteger seconds = (NSInteger)duration % 60;
    NSInteger seconds = (NSInteger)duration % 60;
    //: return [NSString stringWithFormat:@"%02ld:%02ld", (long)minutes, (long)seconds];
    return [NSString stringWithFormat:@"%02ld:%02ld", (long)minutes, (long)seconds];
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (self.allowCamera && indexPath.item == 0) {
    if (self.allowCamera && indexPath.item == 0) {
        //: [self showMediaPicker];
        [self bubblePicker];
        //: return;
        return;
    }

    //: NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    //: PHAsset *asset = _assets[assetIndex];
    PHAsset *asset = _assets[assetIndex];

    //: if ([_selectedAssets containsObject:asset]) {
    if ([_selectedAssets containsObject:asset]) {
        //: [_selectedAssets removeObject:asset];
        [_selectedAssets removeObject:asset];
    //: } else {
    } else {
//        if (self.maxSelectionCount > 0 && _selectedAssets.count >= self.maxSelectionCount) {
//            [self showMaxSelectionAlert];
//            return;
//        }
        //: [_selectedAssets addObject:asset];
        [_selectedAssets addObject:asset];
    }

//    [self updateConfirmButtonCount];
    //: [collectionView reloadItemsAtIndexPaths:@[indexPath]];
    [collectionView reloadItemsAtIndexPaths:@[indexPath]];

    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(mediaDetail:)]) {
        //: [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
        [self.delegate mediaDetail:[_selectedAssets copy]];
    }
}

//: - (void)showMaxSelectionAlert {
- (void)item {

}

//: #pragma mark - 拍照/拍视频功能
#pragma mark - 拍照/拍视频功能

//: - (void)showMediaPicker {
- (void)bubblePicker {

    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidTapCamera)]) {
    if ([self.delegate respondsToSelector:@selector(commentShow)]) {
        //: [self.delegate mediaPickerDidTapCamera];
        [self.delegate commentShow];
    }


//    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
//    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
//    picker.delegate = self;
////    picker.mediaTypes = @[mediaType];
//    [self.presentingViewController presentViewController:picker animated:YES completion:nil];
}


//: #pragma mark - UIImagePickerControllerDelegate
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

//: #pragma mark - Helper Methods
#pragma mark - Helper Methods

//: - (void)updateConfirmButtonCount {
- (void)from {
    //: [_confirmButton setTitle:[NSString stringWithFormat:@"确认选择(%ld)", (long)_selectedAssets.count] forState:UIControlStateNormal];
    [_confirmButton setTitle:[NSString stringWithFormat:StringFromSurroundingData(kStr_roseWithDireData), (long)_selectedAssets.count] forState:UIControlStateNormal];
}

//: #pragma mark - PHPhotoLibraryChangeObserver
#pragma mark - PHPhotoLibraryChangeObserver

//: - (void)photoLibraryDidChange:(PHChange *)changeInstance {
- (void)photoLibraryDidChange:(PHChange *)changeInstance {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: PHFetchResultChangeDetails *changes = [changeInstance changeDetailsForFetchResult:[PHAsset fetchAssetsWithOptions:nil]];
        PHFetchResultChangeDetails *changes = [changeInstance changeDetailsForFetchResult:[PHAsset fetchAssetsWithOptions:nil]];
        //: if (changes) {
        if (changes) {
            //: [self fetchMediaAssets];
            [self with];
        }
    //: });
    });
}

//: - (void)dealloc {
- (void)dealloc {
    //: [[PHPhotoLibrary sharedPhotoLibrary] unregisterChangeObserver:self];
    [[PHPhotoLibrary sharedPhotoLibrary] unregisterChangeObserver:self];
}


//: @end
@end

Byte * SurroundingDataToCache(Byte *data) {
    int cafeteria = data[0];
    int highwayReally = data[1];
    Byte gap = data[2];
    int auctionTeach = data[3];
    if (!cafeteria) return data + auctionTeach;
    for (int i = auctionTeach; i < auctionTeach + highwayReally; i++) {
        int value = data[i] + gap;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[auctionTeach + highwayReally] = 0;
    return data + auctionTeach;
}

NSString *StringFromSurroundingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SurroundingDataToCache(data)];
}
