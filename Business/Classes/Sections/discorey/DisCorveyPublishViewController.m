//
//  DisCorveyPublishViewController.m
//  Riverla
//
//  Created by mac on 2025/4/1.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "DisCorveyPublishViewController.h"
#import "TZTestCell.h"
#import "TZImagePickerController.h"
#import "FUBeautyViewController.h"
#import "FUBeautyImageRenderViewController.h"
#import "FUImageRenderViewModel.h"
#import "NTESFileLocationHelper.h"
#import "UIImage+FU.h"

@interface DisCorveyPublishViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,TZImagePickerControllerDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *selectedPhotos;
@property (nonatomic, strong) NSMutableArray *selectedAssets;

@property (nonatomic, strong) NSMutableArray *urlList;

@property (nonatomic,strong) UIButton *btnAlbum;
@property (nonatomic,strong) UIButton *btnCamera;
@property (nonatomic,strong) UIButton *btnSubmit;

@property (nonatomic,strong) UIView *tipview;

@end

@implementation DisCorveyPublishViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"common_bg"];
    [self.view addSubview:bg];
    
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    closeBtn.frame = CGRectMake(15, 4+SCREEN_STATUS_HEIGHT, 32, 32);
    closeBtn.backgroundColor = [UIColor clearColor];
    [closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeBtn];
    
//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    infoBtn.frame = CGRectMake(SCREEN_WIDTH-15-32, 4+SCREEN_STATUS_HEIGHT, 32, 32);
//    infoBtn.backgroundColor = [UIColor clearColor];
//    [infoBtn setImage:[UIImage imageNamed:@"ic_info"] forState:(UIControlStateNormal)];
//    [infoBtn addTarget:self action:@selector(infoAction) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:infoBtn];
    
    _selectedPhotos = [NSMutableArray array];
    _selectedAssets = [NSMutableArray array];
    _urlList = [NSMutableArray array];
    [self configCollectionView];
    
     [self.view addSubview:self.tipview];
    self.tipview.frame = CGRectMake(0, SCREEN_TOP_HEIGHT+300, SCREEN_WIDTH, 150);
    
    [self.view addSubview:self.btnSubmit];
    [self.view addSubview:self.btnCamera];
    [self.view addSubview:self.btnAlbum];
}

- (void)configCollectionView {
    // 设置 UICollectionView 的布局
    CGFloat space = 15;
    CGFloat width = (SCREEN_WIDTH-4*space)/3;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(width, width); // 每个 item 的大小
    layout.minimumInteritemSpacing = space; // item 之间的水平间距
    layout.minimumLineSpacing = space; // item 之间的垂直间距
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); // section 内的边距
    
    // 初始化 UICollectionView 并设置布局
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+40, SCREEN_WIDTH-30, 200) collectionViewLayout:layout];
    self.collectionView.delegate = self; // 设置代理
    self.collectionView.dataSource = self; // 设置数据源
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.collectionView];
    [_collectionView registerClass:[TZTestCell class] forCellWithReuseIdentifier:@"TZTestCell"];
}

#pragma mark UICollectionView
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return _selectedPhotos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TZTestCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TZTestCell" forIndexPath:indexPath];
    cell.videoImageView.hidden = YES;
    cell.layer.cornerRadius = 8;
    cell.layer.masksToBounds = YES;
    
        cell.imageView.image = _selectedPhotos[indexPath.item];
        cell.deleteBtn.hidden = NO;
    

    cell.deleteBtn.tag = indexPath.item;
    [cell.deleteBtn addTarget:self action:@selector(deleteBtnClik:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//     // preview photos or video / 预览照片或者视频
//        PHAsset *asset = _selectedAssets[indexPath.item];
//        TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithSelectedAssets:_selectedAssets selectedPhotos:_selectedPhotos index:indexPath.item];
//        imagePickerVc.maxImagesCount = 5;
//        imagePickerVc.allowPickingGif = NO;
//        imagePickerVc.autoSelectCurrentWhenDone = NO;
//        imagePickerVc.allowPickingOriginalPhoto = NO;
//        imagePickerVc.allowPickingMultipleVideo = NO;
//        imagePickerVc.showSelectedIndex = YES;
//        imagePickerVc.isSelectOriginalPhoto = _isSelectOriginalPhoto;
//        imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
//        [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
//            self->_selectedPhotos = [NSMutableArray arrayWithArray:photos];
//            self->_selectedAssets = [NSMutableArray arrayWithArray:assets];
//            self->_isSelectOriginalPhoto = isSelectOriginalPhoto;
//            [self->_collectionView reloadData];
//            self->_collectionView.contentSize = CGSizeMake(0, ((self->_selectedPhotos.count + 2) / 3 ) * (self->_margin + self->_itemWH));
//        }];
//        [self presentViewController:imagePickerVc animated:YES completion:nil];
//    
}
#pragma mark - Click Event
- (void)deleteBtnClik:(UIButton *)sender {
    if ([self collectionView:self.collectionView numberOfItemsInSection:0] <= _selectedPhotos.count) {
        [self.selectedPhotos removeObjectAtIndex:sender.tag];
        [self.urlList removeObjectAtIndex:sender.tag];
        [self.collectionView reloadData];
        return;
    }
    
    [_selectedPhotos removeObjectAtIndex:sender.tag];
    [_urlList removeObjectAtIndex:sender.tag];
    [_collectionView performBatchUpdates:^{
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:sender.tag inSection:0];
        [self->_collectionView deleteItemsAtIndexPaths:@[indexPath]];
    } completion:^(BOOL finished) {
        [self->_collectionView reloadData];
    }];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

//- (void)infoAction{
//    self.tipview.hidden = !self.tipview.hidden;
//}

- (void)onTouchSubmitButton
{
//    if (self.urlList.count<0) {
//        //please_choose
//        return;
//    }
    NSString *pic = [self.urlList componentsJoinedByString:@","];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:pic forKey:@"picture"];
    [dict setObject:@"" forKey:@"content"];
    @weakify(self)
    [ZCHttpManager postWithUrl:Server_friend_addimage params:dict isShow:YES success:^(id responseObject) {
        @strongify(self)
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
            [self.navigationController popViewControllerAnimated:NO];
        }
    } failed:^(id responseObject, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
   
}

- (void)uploadThepush
{
    NSString *pic = [self.urlList componentsJoinedByString:@","];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:pic forKey:@"picture"];
    [dict setObject:@"" forKey:@"content"];
    @weakify(self)
    [ZCHttpManager postWithUrl:Server_friend_addimage params:dict isShow:YES success:^(id responseObject) {
        @strongify(self)
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
            [self.navigationController popViewControllerAnimated:NO];
        }
    } failed:^(id responseObject, NSError *error) {
        NSLog(@"error:%@",error);
    }];
}

- (void)onTouchAlbumButton
{
    if (self.selectedPhotos.count>=3) {
        [self.view makeToast:[NSString stringWithFormat:@"%@ %@ 3",LangKey(@"upload_picture"),LangKey(@"contact_list_activity_most")]
                    duration:2
                    position:CSToastPositionCenter];
        return;
    }
    [self pushTZImagePickerController];
   
}

- (void)onTouchCameraButton
{
    if (self.selectedPhotos.count>=3) {
        [self.view makeToast:[NSString stringWithFormat:@"%@ %@ 3",LangKey(@"upload_picture"),LangKey(@"contact_list_activity_most")]
                    duration:2
                    position:CSToastPositionCenter];
        return;
    }
    
    FURenderViewController *vc = [[FURenderViewController alloc] initWithViewModel:[[FUBeautyViewModel alloc] init]];
    vc.photoNum = self.selectedPhotos.count;
    [self.navigationController pushViewController:vc animated:YES];
    vc.speiceBackBlock = ^(NSArray * _Nonnull imgArray) {
        [self uploadImage:imgArray];

        dispatch_async(dispatch_get_main_queue(), ^{
//            [self loadPicNum];
            [self.selectedPhotos addObjectsFromArray:imgArray];
            [self.collectionView reloadData];
        });
        
    };
}

#pragma mark - TZImagePickerController
- (void)pushTZImagePickerController {

    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:3 delegate:self pushPhotoPickerVc:YES];
    
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    imagePickerVc.selectedAssets = _selectedAssets; // 目前已经选中的图片数组
    imagePickerVc.allowTakePicture = NO; // 在内部显示拍照按钮
    imagePickerVc.allowTakeVideo = NO;   // 在内部显示拍视频按
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    }];

    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingOriginalPhoto = NO;
    imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;
    
    // 4. 照片排列按修改时间升序
    imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.showSelectBtn = NO;
    imagePickerVc.allowCrop = NO;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    NSInteger left = 30;
    NSInteger widthHeight = SCREEN_WIDTH - 2 * left;
    NSInteger top = (SCREEN_HEIGHT - widthHeight) / 2;
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    // 设置是否显示图片序号
    imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];
#pragma mark - 到这里为止
    
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {

        UIImage *image = [photos.firstObject fu_processedImage];
        FUImageRenderViewController *vc = [[FUImageRenderViewController alloc] initWithViewModel:[[FUImageRenderViewModel alloc] initWithImage:image]];
        [self.navigationController pushViewController:vc animated:YES];
        @weakify(self)
        vc.speiceimgBackBlock = ^(NSArray *imgArray) {
            @strongify(self)
            [self uploadImage:imgArray];
            
            dispatch_async(dispatch_get_main_queue(), ^{
//                [self loadPicNum];
                [self.selectedPhotos addObjectsFromArray:imgArray];
                [self.collectionView reloadData];
            });
        };
            
    
        
    }];
    
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

#pragma mark - Private
- (void)loadPicNum
{
    if (self.selectedPhotos.count>0) {
        self.btnSubmit.alpha = 1;
        self.btnSubmit.userInteractionEnabled = YES;
    }else{
        self.btnSubmit.alpha = 0.4;
        self.btnSubmit.userInteractionEnabled = NO;
    }
}


- (void)uploadImage:(NSArray *)imageArray
{

    for (UIImage *image in imageArray) {
        NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
        NSString *filePath = [[NTESFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
        NSData *data = UIImageJPEGRepresentation(image, 0.7);
        BOOL success = data && [data writeToFile:filePath atomically:YES];
        __weak typeof(self) wself = self;
        if (success) {
            [SVProgressHUD show];
            [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
                [SVProgressHUD dismiss];
                if (!error && wself) {
                    NSLog(@"urlString：%@",urlString);
                    [_urlList addObject:urlString];
                    if (self.urlList.count>0) {
                        self.btnSubmit.alpha = 1;
                        self.btnSubmit.userInteractionEnabled = YES;
                    }else{
                        self.btnSubmit.alpha = 0.4;
                        self.btnSubmit.userInteractionEnabled = NO;
                    }
                }
            }];
        }else{
            [self.view makeToast:LangKey(@"group_info_activity_update_failed")
                        duration:2
                        position:CSToastPositionCenter];
        }
    }
    
//    [self uploadThepush];
   
    
    
    
}

#pragma mark - getset
- (UIButton *)btnAlbum
{
    CGFloat width = (SCREEN_WIDTH-45)/2;
    if(!_btnAlbum){
        _btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAlbum.frame = CGRectMake(15, SCREEN_HEIGHT-270, width, 110);
        _btnAlbum.backgroundColor = RGB_COLOR_String(@"#CCECFC");
        _btnAlbum.layer.cornerRadius = 12;
        [_btnAlbum addTarget:self action:@selector(onTouchAlbumButton) forControlEvents:UIControlEventTouchUpInside];
        _btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        [_btnAlbum setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
        [_btnAlbum setTitle:LangKey(@"message_send_album") forState:UIControlStateNormal];
        [_btnAlbum setImage:[UIImage imageNamed:@"ic_album"] forState:UIControlStateNormal];
        [_btnAlbum layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [self.view addSubview:_btnAlbum];
        
    }
    return _btnAlbum;
}

- (UIButton *)btnCamera
{
    CGFloat width = (SCREEN_WIDTH-45)/2;
    if(!_btnCamera){
        _btnCamera = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnCamera.frame = CGRectMake(width+30, SCREEN_HEIGHT-270, width, 110);
        _btnCamera.backgroundColor = RGB_COLOR_String(@"#F7D2F3");
        _btnCamera.layer.cornerRadius = 12;
        [_btnCamera addTarget:self action:@selector(onTouchCameraButton) forControlEvents:UIControlEventTouchUpInside];
        _btnCamera.titleLabel.font = [UIFont systemFontOfSize:14];
        [_btnCamera setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
        [_btnCamera setTitle:LangKey(@"message_send_camera") forState:UIControlStateNormal];
        [_btnCamera setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
        [_btnCamera layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [self.view addSubview:_btnCamera];
        
    }
    return _btnCamera;
}
- (UIButton *)btnSubmit
{
    if(!_btnSubmit){
        _btnSubmit = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnSubmit.frame = CGRectMake(15, SCREEN_HEIGHT-48-30, SCREEN_WIDTH-30, 48);
        _btnSubmit.backgroundColor = RGB_COLOR_String(@"B391FF");
        _btnSubmit.layer.cornerRadius = 12;
        [_btnSubmit addTarget:self action:@selector(onTouchSubmitButton) forControlEvents:UIControlEventTouchUpInside];
        _btnSubmit.titleLabel.font = [UIFont systemFontOfSize:16];
        [_btnSubmit setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
        [_btnSubmit setTitle:LangKey(@"feedback_activity_submit") forState:UIControlStateNormal];
        _btnSubmit.alpha = 0.4;
        _btnSubmit.userInteractionEnabled = NO;
        [self.view addSubview:_btnSubmit];
        
    }
    return _btnSubmit;
}

- (UIView *)tipview
{
    if (!_tipview) {
        _tipview = [[UIView alloc]init];
       
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-30, 20)];
        lab.text = LangKey(@"tips_push");
        lab.textColor = RGB_COLOR_String(@"#2B2F36");
        lab.font = [UIFont boldSystemFontOfSize:16];
        [_tipview addSubview:lab];
       
        UITextView *contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, lab.bottom+5, SCREEN_WIDTH-30, 130)];
        contentTextView.textColor = RGB_COLOR_String(@"#8A8E98");
        contentTextView.font = [UIFont systemFontOfSize:14.f];
        contentTextView.text = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",LangKey(@"tips_push_content"),LangKey(@"tips_push_content_1"),LangKey(@"tips_push_content_2"),LangKey(@"tips_push_content_3")];
        [_tipview addSubview:contentTextView];
       
    }
    return _tipview;
}

@end
