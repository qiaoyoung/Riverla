
#import <Foundation/Foundation.h>
typedef struct {
    Byte significanceInvolvement;
    Byte *changeFlue;
    unsigned int dateHourMyth;
    bool dayTitle;
	int micaLag;
} TestimonialData;

NSString *StringFromTestimonialData(TestimonialData *data);


//: photo_selected
TestimonialData kStr_optionAyePrimName = (TestimonialData){122, (Byte []){10, 18, 21, 14, 21, 37, 9, 31, 22, 31, 25, 14, 31, 30, 112}, 14, false, 26};


//: user_profile_avtivity_send
TestimonialData kStr_universeValue = (TestimonialData){67, (Byte []){54, 48, 38, 49, 28, 51, 49, 44, 37, 42, 47, 38, 28, 34, 53, 55, 42, 53, 42, 55, 58, 28, 48, 38, 45, 39, 31}, 26, false, 238};


//: MediaCell
TestimonialData kStr_userValue = (TestimonialData){22, (Byte []){91, 115, 114, 127, 119, 85, 115, 122, 122, 37}, 9, false, 55};


//: #B391FF
TestimonialData kStr_hourRecessionContent = (TestimonialData){221, (Byte []){254, 159, 238, 228, 236, 155, 155, 74}, 7, false, 81};


//: creationDate
TestimonialData kStr_retreatContent = (TestimonialData){182, (Byte []){213, 196, 211, 215, 194, 223, 217, 216, 242, 215, 194, 211, 47}, 12, false, 221};


//: photo_select
TestimonialData kStr_whenGrocerData = (TestimonialData){70, (Byte []){54, 46, 41, 50, 41, 25, 53, 35, 42, 35, 37, 50, 101}, 12, false, 103};


//: CameraCell
TestimonialData kStr_maxVoiceData = (TestimonialData){237, (Byte []){174, 140, 128, 136, 159, 140, 174, 136, 129, 129, 218}, 10, false, 17};


//: camera_icon
TestimonialData kStr_jurorName = (TestimonialData){134, (Byte []){229, 231, 235, 227, 244, 231, 217, 239, 229, 233, 232, 221}, 11, false, 205};


//: video_icon
TestimonialData kStr_additionPromValue = (TestimonialData){201, (Byte []){191, 160, 173, 172, 166, 150, 160, 170, 166, 167, 193}, 10, false, 18};


//: 确认选择(%ld)
TestimonialData kStr_untilTitle = (TestimonialData){86, (Byte []){177, 247, 248, 190, 248, 242, 191, 214, 223, 176, 221, 255, 126, 115, 58, 50, 127, 158}, 17, false, 60};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkerView.m
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CustomAlbumPickerView.h"
#import "WorkerView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: @interface CustomAlbumPickerView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PHPhotoLibraryChangeObserver, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@interface WorkerView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PHPhotoLibraryChangeObserver, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

//: @property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) UIButton *confirmButton;
//: @property (nonatomic, weak) UIViewController *presentingViewController;
@property (nonatomic, weak) UIViewController *presentingViewController;

//: @end
@end

//: @implementation CustomAlbumPickerView
@implementation WorkerView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setup];
        [self orientationSetup];
    }
    //: return self;
    return self;
}

//: - (void)setup {
- (void)orientationSetup {
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
    [self reason];
//    [self setupConfirmButton];
    //: [self fetchMediaAssets];
    [self duringViewAssets];
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
- (void)reason {
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
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:StringFromTestimonialData(&kStr_userValue)];
    //: [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"CameraCell"];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:StringFromTestimonialData(&kStr_maxVoiceData)];
    //: [self addSubview:_collectionView];
    [self addSubview:_collectionView];
}

//: - (void)setupConfirmButton {
- (void)max {
    //: _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
    //: _confirmButton.frame = CGRectMake(0, self.frame.size.height - 50, self.frame.size.width, 48);
    _confirmButton.frame = CGRectMake(0, self.frame.size.height - 50, self.frame.size.width, 48);
    //: _confirmButton.layer.cornerRadius = 24;
    _confirmButton.layer.cornerRadius = 24;
    //: [_confirmButton setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
    [_confirmButton setTitle:[ItemManager sessionInformation:StringFromTestimonialData(&kStr_universeValue)] forState:UIControlStateNormal];
    //: [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_confirmButton addTarget:self action:@selector(safetyMargin) forControlEvents:UIControlEventTouchUpInside];
    //: _confirmButton.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    _confirmButton.backgroundColor = [UIColor withMax:StringFromTestimonialData(&kStr_hourRecessionContent)];
    //: [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self addSubview:_confirmButton];
    [self addSubview:_confirmButton];
}

//: - (void)fetchMediaAssets {
- (void)duringViewAssets {
    //: [_assets removeAllObjects];
    [_assets removeAllObjects];

    //: PHFetchOptions *options = [[PHFetchOptions alloc] init];
    PHFetchOptions *options = [[PHFetchOptions alloc] init];
    //: options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:StringFromTestimonialData(&kStr_retreatContent) ascending:NO]];

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
- (void)safetyMargin {
    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(pastCenter:)]) {
        //: [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
        [self.delegate pastCenter:[_selectedAssets copy]];
    }
}

//: - (void)reloadMediaData {
- (void)parentBar {
    //: [self fetchMediaAssets];
    [self duringViewAssets];
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
        return [self unwelcome:collectionView view:indexPath];
    }

    //: return [self mediaCellForCollectionView:collectionView atIndexPath:indexPath];
    return [self result:collectionView year:indexPath];
}

//: - (UICollectionViewCell *)cameraCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)unwelcome:(UICollectionView *)collectionView view:(NSIndexPath *)indexPath {
    //: UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CameraCell" forIndexPath:indexPath];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:StringFromTestimonialData(&kStr_maxVoiceData) forIndexPath:indexPath];
    //: cell.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.6];
    cell.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.6];
    //: cell.layer.cornerRadius = 4;
    cell.layer.cornerRadius = 4;

    //: [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: UIImageView *cameraIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    UIImageView *cameraIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    //: cameraIcon.image = [UIImage imageNamed:@"camera_icon"];
    cameraIcon.image = [UIImage imageNamed:StringFromTestimonialData(&kStr_jurorName)];
    //: cameraIcon.center = CGPointMake(cell.bounds.size.width/2, cell.bounds.size.height/2);
    cameraIcon.center = CGPointMake(cell.bounds.size.width/2, cell.bounds.size.height/2);
    //: [cell.contentView addSubview:cameraIcon];
    [cell.contentView addSubview:cameraIcon];

    //: return cell;
    return cell;
}

//: - (UICollectionViewCell *)mediaCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)result:(UICollectionView *)collectionView year:(NSIndexPath *)indexPath {
    //: UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MediaCell" forIndexPath:indexPath];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:StringFromTestimonialData(&kStr_userValue) forIndexPath:indexPath];
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
        videoIcon.image = [UIImage imageNamed:StringFromTestimonialData(&kStr_additionPromValue)];
        //: [videoOverlay addSubview:videoIcon];
        [videoOverlay addSubview:videoIcon];

        // 视频时长
        //: UILabel *durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 36, 16)];
        UILabel *durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 36, 16)];
        //: durationLabel.text = [self formattedDuration:asset.duration];
        durationLabel.text = [self frameDuration:asset.duration];
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
        checkmark.image = [UIImage imageNamed:StringFromTestimonialData(&kStr_optionAyePrimName)];
        //: [cell.contentView addSubview:checkmark];
        [cell.contentView addSubview:checkmark];
    //: }else{
    }else{
        //: UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        //: checkmark.image = [UIImage imageNamed:@"photo_select"];
        checkmark.image = [UIImage imageNamed:StringFromTestimonialData(&kStr_whenGrocerData)];
        //: [cell.contentView addSubview:checkmark];
        [cell.contentView addSubview:checkmark];
    }

    //: return cell;
    return cell;
}

//: - (NSString *)formattedDuration:(NSTimeInterval)duration {
- (NSString *)frameDuration:(NSTimeInterval)duration {
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
        [self viewPin];
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
    if ([self.delegate respondsToSelector:@selector(pastCenter:)]) {
        //: [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
        [self.delegate pastCenter:[_selectedAssets copy]];
    }
}

//: - (void)showMaxSelectionAlert {
- (void)selectionUp {

}

//: #pragma mark - 拍照/拍视频功能
#pragma mark - 拍照/拍视频功能

//: - (void)showMediaPicker {
- (void)viewPin {

    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidTapCamera)]) {
    if ([self.delegate respondsToSelector:@selector(filmInCamera)]) {
        //: [self.delegate mediaPickerDidTapCamera];
        [self.delegate filmInCamera];
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
- (void)outsideSum {
    //: [_confirmButton setTitle:[NSString stringWithFormat:@"确认选择(%ld)", (long)_selectedAssets.count] forState:UIControlStateNormal];
    [_confirmButton setTitle:[NSString stringWithFormat:StringFromTestimonialData(&kStr_untilTitle), (long)_selectedAssets.count] forState:UIControlStateNormal];
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
            [self duringViewAssets];
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

Byte *TestimonialDataToByte(TestimonialData *data) {
    if (data->dayTitle) return data->changeFlue;
    for (int i = 0; i < data->dateHourMyth; i++) {
        data->changeFlue[i] ^= data->significanceInvolvement;
    }
    data->changeFlue[data->dateHourMyth] = 0;
    data->dayTitle = true;
	if (data->dateHourMyth >= 1) {
		data->micaLag = data->changeFlue[0];
	}
    return data->changeFlue;
}

NSString *StringFromTestimonialData(TestimonialData *data) {
    return [NSString stringWithUTF8String:(char *)TestimonialDataToByte(data)];
}
