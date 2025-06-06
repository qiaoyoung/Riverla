
#import <Foundation/Foundation.h>

NSString *StringFromTreasureData(Byte *data);        


//: back_white
Byte kStr_inheritLeapData[] = {38, 10, 15, 11, 239, 68, 139, 114, 128, 60, 143, 83, 82, 84, 92, 80, 104, 89, 90, 101, 86, 228};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SwageBlockViewController.m
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImageCropperViewController.h"
#import "SwageBlockViewController.h"

//: @interface KIImageCropperViewController ()
@interface SwageBlockViewController ()

//: @end
@end

//: @implementation KIImageCropperViewController
@implementation SwageBlockViewController

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize {
- (id)initWithBookView:(UIImage *)image build:(CGSize)cropSize {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _image = [image retain];
        _image = [image retain];
        //: _cropSize = cropSize;
        _cropSize = cropSize;
    }
    //: return self;
    return self;
}

//: - (void)loadView {
- (void)loadView {
    //: [super loadView];
    [super loadView];
    //: _imageCropperView = [[KIImageCropperView alloc] initWithFrame:CGRectMake(0,
    _imageCropperView = [[BlueView alloc] initWithFrame:CGRectMake(0,
                                                                             //: 0,
                                                                             0,
                                                                             //: CGRectGetWidth(self.view.bounds),
                                                                             CGRectGetWidth(self.view.bounds),
                                                                             //: CGRectGetHeight(self.view.bounds))];
                                                                             CGRectGetHeight(self.view.bounds))];
    //: [_imageCropperView setCropSize:_cropSize];
    [_imageCropperView setCropSize:_cropSize];
    //: [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    //: [self.view addSubview:_imageCropperView];
    [self.view addSubview:_imageCropperView];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationController setNavigationBarHidden:NO animated:YES];

    //: UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".nim_localized
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".positionMenu
                                                                           //: style:UIBarButtonItemStylePlain
                                                                           style:UIBarButtonItemStylePlain
                                                                          //: target:self
                                                                          target:self
                                                                          //: action:@selector(croppedImage)];
                                                                          action:@selector(downLength)];
    //: self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    //: rightBarButtonItem.tintColor = [UIColor whiteColor];
    rightBarButtonItem.tintColor = [UIColor whiteColor];

    //: [self setNavLeftItem:@selector(left) image:[UIImage imageNamed:@"back_white"] imageH:nil];
    [self place:@selector(sizeIn) sound:[UIImage imageNamed:StringFromTreasureData(kStr_inheritLeapData)] bottomSelect_strong:nil];
}

//: - (void)left {
- (void)sizeIn {
    //: [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [_imageCropperView setImage:_image];
    [_imageCropperView setImage:_image];
    //: [_imageCropperView setFrame:CGRectMake(0,
    [_imageCropperView setFrame:CGRectMake(0,
                                           //: 0,
                                           0,
                                           //: CGRectGetWidth(self.view.bounds),
                                           CGRectGetWidth(self.view.bounds),
                                           //: CGRectGetHeight(self.view.bounds))];
                                           CGRectGetHeight(self.view.bounds))];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];




}

//: - (void)setCroppedImage:(void(^)(UIImage *image))block {
- (void)setDownLength:(void(^)(UIImage *image))block {
    //: if (_croppedImage != block) {
    if (_croppedImage != block) {
        //: _croppedImage = [block copy];
        _croppedImage = [block copy];
    }
}

//: - (void)croppedImage {
- (void)downLength {
    //: [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    //: if (_croppedImage != nil) {
    if (_croppedImage != nil) {
        //: _croppedImage(_imageCropperView.croppedImage);
        _croppedImage(_imageCropperView.downLength);
    }
}

//: - (void)didReceiveMemoryWarning {
- (void)didReceiveMemoryWarning {
    //: [super didReceiveMemoryWarning];
    [super didReceiveMemoryWarning];
}

//: @end
@end

Byte * TreasureDataToCache(Byte *data) {
    int stationImage = data[0];
    int contributorSelect = data[1];
    Byte van = data[2];
    int secondSham = data[3];
    if (!stationImage) return data + secondSham;
    for (int i = secondSham; i < secondSham + contributorSelect; i++) {
        int value = data[i] + van;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[secondSham + contributorSelect] = 0;
    return data + secondSham;
}

NSString *StringFromTreasureData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TreasureDataToCache(data)];
}
