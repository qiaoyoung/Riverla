
#import <Foundation/Foundation.h>

NSString *StringFromDancingData(Byte *data);


//: friend_circle_activity_camera
Byte kStr_emptyLuteData[] = {25, 29, 9, 97, 215, 114, 138, 22, 56, 97, 114, 101, 109, 97, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 101, 108, 99, 114, 105, 99, 95, 100, 110, 101, 105, 114, 102, 52};


//: please_choose
Byte kStr_untilConfirmValue[] = {34, 13, 8, 171, 197, 57, 130, 39, 101, 115, 111, 111, 104, 99, 95, 101, 115, 97, 101, 108, 112, 225};


//: friend_circle_activity_from_phone
Byte kStr_withinValue[] = {55, 33, 3, 101, 110, 111, 104, 112, 95, 109, 111, 114, 102, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 101, 108, 99, 114, 105, 99, 95, 100, 110, 101, 105, 114, 102, 236};


//: contact_tag_fragment_cancel
Byte kStr_fleshData[] = {8, 27, 12, 148, 155, 228, 105, 88, 169, 126, 45, 106, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 69};


//: UIImagePickerControllerOriginalImage
Byte kStr_cousinTitle[] = {58, 36, 9, 98, 114, 124, 38, 141, 12, 101, 103, 97, 109, 73, 108, 97, 110, 105, 103, 105, 114, 79, 114, 101, 108, 108, 111, 114, 116, 110, 111, 67, 114, 101, 107, 99, 105, 80, 101, 103, 97, 109, 73, 73, 85, 29};

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryedController.m
//  Kitalker
//
//  Created by chen on 13-3-19.
//  Copyright (c) 2013年 ibm. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImagePickerController.h"
#import "QueryedController.h"
//: #import <Photos/PHPhotoLibrary.h>
#import <Photos/PHPhotoLibrary.h>

//: @interface KIImagePickerController ()
@interface QueryedController ()
//: @property (nonatomic, weak) id<KIImagePickerControllerDelegate> delegate;
@property (nonatomic, weak) id<ThanDelegate> delegate;
//: @property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic, strong) UIViewController *viewController;
//: @property (nonatomic, assign) CGSize cropSize;
@property (nonatomic, assign) CGSize cropSize;
//: @property (nonatomic, strong) NSArray *otherItems;
@property (nonatomic, strong) NSArray *otherItems;
//: @property (nonatomic, assign) BOOL showDelete;
@property (nonatomic, assign) BOOL showDelete;
//: @end
@end

//: @implementation KIImagePickerController
@implementation QueryedController
//: @synthesize delegate = _delegate;
@synthesize delegate = _delegate;
//: @synthesize viewController = _viewController;
@synthesize viewController = _viewController;
//: @synthesize title = _title;
@synthesize title = _title;
//: @synthesize cropSize = _cropSize;
@synthesize cropSize = _cropSize;
//: @synthesize otherItems = _otherItems;
@synthesize otherItems = _otherItems;
//: @synthesize showDelete = _showDelete;
@synthesize showDelete = _showDelete;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate viewController:(UIViewController *)viewController {
- (id)initWithShared:(id<ThanDelegate>)delegate telephoneMessageProcessor:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = [FFFLanguageManager getTextWithKey:@"please_choose"];
        self.title = [ItemManager sessionInformation:StringFromDancingData(kStr_untilConfirmValue)];//@"请选择";
    }
    //: return self;
    return self;
}

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithCircle:(id<ThanDelegate>)delegate
                 //: title:(NSString *)title
                 with:(NSString *)title
        //: viewController:(UIViewController *)viewController {
        quick:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = title;
        self.title = title;
    }
    //: return self;
    return self;
}

//: - (void)showWithDeleteButton:(BOOL)showDelete {
- (void)cell:(BOOL)showDelete {
    //: UIApplication *applicaiton = [UIApplication sharedApplication];
    UIApplication *applicaiton = [UIApplication sharedApplication];

    //: [[self actionSheet:showDelete] showInView:[applicaiton keyWindow]];
    [[self record:showDelete] showInView:[applicaiton keyWindow]];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize {
- (void)mode:(BOOL)showDelete eigenvalueOfAMatrixSize:(CGSize)cropSize {
    //: [self setCropSize:cropSize];
    [self setCropSize:cropSize];
    //: [self showWithDeleteButton:showDelete];
    [self cell:showDelete];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize otherItems:(NSArray *)items {
- (void)inputCan:(BOOL)showDelete dataButton:(CGSize)cropSize subNotice:(NSArray *)items {
    //: [self setOtherItems:items];
    [self setOtherItems:items];
    //: [self showWithDeleteButton:showDelete cropSize:cropSize];
    [self mode:showDelete eigenvalueOfAMatrixSize:cropSize];
}

//: - (UIActionSheet *)actionSheet:(BOOL)needDelete {
- (UIActionSheet *)record:(BOOL)needDelete {
    //: self.showDelete = needDelete;
    self.showDelete = needDelete;

    //: if (_actionSheet == nil) {
    if (_actionSheet == nil) {

        //: NSString *from_phone = [FFFLanguageManager getTextWithKey:@"friend_circle_activity_from_phone"];
        NSString *from_phone = [ItemManager sessionInformation:StringFromDancingData(kStr_withinValue)];
        //: NSString *activity_camera = [FFFLanguageManager getTextWithKey:@"friend_circle_activity_camera"];
        NSString *activity_camera = [ItemManager sessionInformation:StringFromDancingData(kStr_emptyLuteData)];

        //: _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
        _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
                                                   //: delegate:self
                                                   delegate:self
                                          //: cancelButtonTitle:nil
                                          cancelButtonTitle:nil
                                     //: destructiveButtonTitle:nil
                                     destructiveButtonTitle:nil
                                          //: otherButtonTitles:from_phone, activity_camera, nil];
                                          otherButtonTitles:from_phone, activity_camera, nil];

        //: NSUInteger cancelIndex = 1;
        NSUInteger cancelIndex = 1;
        //: if (self.showDelete) {
        if (self.showDelete) {
            //: [_actionSheet addButtonWithTitle:@"删除".nim_localized];
            [_actionSheet addButtonWithTitle:@"删除".textKey];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: for (NSString *title in self.otherItems) {
        for (NSString *title in self.otherItems) {
            //: [_actionSheet addButtonWithTitle:title];
            [_actionSheet addButtonWithTitle:title];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: [_actionSheet addButtonWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]];
        [_actionSheet addButtonWithTitle:[ItemManager sessionInformation:StringFromDancingData(kStr_fleshData)]];
        //: cancelIndex++;
        cancelIndex++;

        //: _actionSheet.cancelButtonIndex = cancelIndex;
        _actionSheet.cancelButtonIndex = cancelIndex;
        //[self retain];
    }
    //: return _actionSheet;
    return _actionSheet;
}

//: - (UIImagePickerController *)imagePickerController {
- (UIImagePickerController *)value {
    //: if (_imagePickerController == nil) {
    if (_imagePickerController == nil) {
        //: _imagePickerController = [[UIImagePickerController alloc] init];
        _imagePickerController = [[UIImagePickerController alloc] init];
        //: [_imagePickerController setDelegate:self];
        [_imagePickerController setDelegate:self];
    }
    //: return _imagePickerController;
    return _imagePickerController;
}

//: - (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    //: if (buttonIndex == 0) {
    if (buttonIndex == 0) {

        //: [self requestAuthorizationForPhotoLibrary];
        [self imageSelect];

    //: } else if (buttonIndex == 1) {
    } else if (buttonIndex == 1) {

        //: [self requestAuthorizationForVideo];
        [self maxUser];

    //: } else if (buttonIndex == actionSheet.cancelButtonIndex) {
    } else if (buttonIndex == actionSheet.cancelButtonIndex) {
        //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
        if ([self.delegate respondsToSelector:@selector(clearred:)]) {
            //: [self.delegate KIImagePickerControllerDidCancel:self];
            [self.delegate clearred:self];
        }
        //: [self dismiss];
        [self success];
    //: } else if (self.showDelete && buttonIndex == 2) {
    } else if (self.showDelete && buttonIndex == 2) {
        //: [self pickImage:nil];
        [self handPick:nil];
    //: } else {
    } else {
        //: [self didSelectedOtherIndex:buttonIndex-(self.showDelete?3:2)];
        [self tapIndex:buttonIndex-(self.showDelete?3:2)];
    }
}


/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)maxUser {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        [[self value] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
                        [self value].modalPresentationStyle = UIModalPresentationFullScreen;

                        //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
                        [_viewController presentViewController:[self value] animated:YES completion:^{

                        //: }];
                        }];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
            [[self value] setSourceType:UIImagePickerControllerSourceTypeCamera];
            //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
            [self value].modalPresentationStyle = UIModalPresentationFullScreen;

            //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
            [_viewController presentViewController:[self value] animated:YES completion:^{

            //: }];
            }];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)imageSelect
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self callPhotoAction];
                    [self wisecrackAction];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self callPhotoAction];
        [self wisecrackAction];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

//: - (void)callPhotoAction {
- (void)wisecrackAction {

    //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [[self value] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
    [self value].modalPresentationStyle = UIModalPresentationFullScreen;

    //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
    [_viewController presentViewController:[self value] animated:YES completion:^{

    //: }];
    }];

}



//: - (void)pickImage:(UIImage *)image {
- (void)handPick:(UIImage *)image {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didFinishPickImage:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(cancelImage:saddle:)]) {
        //: [self.delegate KIImagePickerController:self didFinishPickImage:image];
        [self.delegate cancelImage:self saddle:image];
    }
    //: [self dismiss];
    [self success];
}

//: - (void)didSelectedOtherIndex:(NSUInteger)index {
- (void)tapIndex:(NSUInteger)index {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didSelectedOtherIndex:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(object:thoughtImageNameIndex:)]) {
        //: [self.delegate KIImagePickerController:self didSelectedOtherIndex:index];
        [self.delegate object:self thoughtImageNameIndex:index];
    }
}

//: - (void)dismiss {
- (void)success {
    //: [[self imagePickerController] dismissViewControllerAnimated:YES completion:^{
    [[self value] dismissViewControllerAnimated:YES completion:^{

    //: }];
    }];
}



//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UINavigationControllerDelegate
#pragma mark == UINavigationControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:willShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(name:controller:dateByAnimated:)]) {
        //: [self.delegate KINavigationController:navigationController willShowViewController:viewController animated:animated];
        [self.delegate name:navigationController controller:viewController dateByAnimated:animated];
    }
}

//: - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:didShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(alongActionAnimated:controller:ticket:)]) {
        //: [self.delegate KINavigationController:navigationController didShowViewController:viewController animated:animated];
        [self.delegate alongActionAnimated:navigationController controller:viewController ticket:animated];
    }
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UIImagePickerControllerDelegate
#pragma mark == UIImagePickerControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){

}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    //: UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    UIImage *image = [info objectForKey:StringFromDancingData(kStr_cousinTitle)];
    //    NSURL   *imageURL = [info objectForKey:@"UIImagePickerControllerReferenceURL"];
    //    NSString *imagePath = [imageURL absoluteString];
    //: [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    //: if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
    if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
        //: [self pickImage:image];
        [self handPick:image];
    //: } else {
    } else {

        //: KIImageCropperViewController *cropImageViewController = [[KIImageCropperViewController alloc] initWithImage:[image fixOrientation] cropSize:self.cropSize];
        CommentViewController *cropImageViewController = [[CommentViewController alloc] initWithContentUser:[image column] image:self.cropSize];
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        //: [[self imagePickerController] presentViewController:nav animated:YES completion:nil];
        [[self value] presentViewController:nav animated:YES completion:nil];
        //: [cropImageViewController setCroppedImage:^(UIImage *image) {
        [cropImageViewController setScaleColor:^(UIImage *image) {
            //: [self pickImage:image];
            [self handPick:image];
        //: }];
        }];

    }
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
    if ([self.delegate respondsToSelector:@selector(clearred:)]) {
        //: [self.delegate KIImagePickerControllerDidCancel:self];
        [self.delegate clearred:self];
    }
    //: [self dismiss];
    [self success];
}


//: @end
@end

Byte * DancingDataToCache(Byte *data) {
    int dancingBrig = data[0];
    int representEmpty = data[1];
    int lipGroup = data[2];
    if (!dancingBrig) return data + lipGroup;
    for (int i = 0; i < representEmpty / 2; i++) {
        int begin = lipGroup + i;
        int end = lipGroup + representEmpty - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[lipGroup + representEmpty] = 0;
    return data + lipGroup;
}

NSString *StringFromDancingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DancingDataToCache(data)];
}  
