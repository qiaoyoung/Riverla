
#import <Foundation/Foundation.h>

NSString *StringFromKeyLayerViewData(Byte *data);


//: bundle
Byte kStr_insertText[] = {83, 6, 57, 10, 197, 180, 209, 210, 138, 19, 155, 174, 167, 157, 165, 158, 105};


//: landmarks
Byte kStr_shouldAddValue[] = {7, 9, 90, 13, 204, 4, 79, 102, 48, 151, 253, 95, 214, 198, 187, 200, 190, 199, 187, 204, 197, 205, 34};

// __DEBUG__
// __CLOSE_PRINT__
//
//  Bottom.m
//  FULiveDemo
//
//  Created by 项林平 on 2021/10/9.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FULandmarkManager.h"
#import "Bottom.h"
//: #import <FURenderKit/FUFacialFeatures.h>
#import <FURenderKit/FUFacialFeatures.h>

//: @interface FULandmarkManager ()
@interface Bottom ()

//: @property (nonatomic, strong) FUFacialFeatures *landmarksItem;
@property (nonatomic, strong) FUFacialFeatures *landmarksItem;

//: @end
@end

//: @implementation FULandmarkManager
@implementation Bottom

//: + (FULandmarkManager *)shared {
+ (Bottom *)playing {
    //: static FULandmarkManager *landmarkView;
    static Bottom *landmarkView;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: CGFloat top = FUHeightIncludeTopSafeArea(0);
        CGFloat top = FUHeightIncludeTopSafeArea(0);
        //: landmarkView = [[self alloc] initWithFrame:CGRectMake(10, top + 60, 50, 30)];
        landmarkView = [[self alloc] initWithFrame:CGRectMake(10, top + 60, 50, 30)];
    //: });
    });
    //: [landmarkView addTarget:self action:@selector(landmarkSwitchAction:) forControlEvents:UIControlEventValueChanged];
    [landmarkView addTarget:self action:@selector(cellOpen:) forControlEvents:UIControlEventValueChanged];
    //: return landmarkView;
    return landmarkView;
}

//: + (void)show {
+ (void)to {
    //: [FUKeyWindow() addSubview:[self shared]];
    [FUKeyWindow() addSubview:[self playing]];
}

//: + (void)dismiss {
+ (void)scaleTable {
    //: if ([self shared].superview) {
    if ([self playing].superview) {
        //: [self shared].on = NO;
        [self playing].on = NO;
        //: [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self shared].landmarksItem completion:nil];
        [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self playing].landmarksItem completion:nil];
        //: [[self shared] removeFromSuperview];
        [[self playing] removeFromSuperview];
    }
}

//: + (void)landmarkSwitchAction:(UISwitch *)sender {
+ (void)cellOpen:(UISwitch *)sender {
    //: if (sender.isOn) {
    if (sender.isOn) {
        //: [[FURenderKit shareRenderKit].stickerContainer addSticker:[self shared].landmarksItem completion:nil];
        [[FURenderKit shareRenderKit].stickerContainer addSticker:[self playing].landmarksItem completion:nil];
    //: } else {
    } else {
        //: [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self shared].landmarksItem completion:nil];
        [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self playing].landmarksItem completion:nil];
    }
}

//: - (FUFacialFeatures *)landmarksItem {
- (FUFacialFeatures *)landmarksItem {
    //: if (!_landmarksItem) {
    if (!_landmarksItem) {
        //: NSString *path = [[NSBundle mainBundle] pathForResource:@"landmarks" ofType:@"bundle"];
        NSString *path = [[NSBundle mainBundle] pathForResource:StringFromKeyLayerViewData(kStr_shouldAddValue) ofType:StringFromKeyLayerViewData(kStr_insertText)];
        //: _landmarksItem = [[FUFacialFeatures alloc] initWithPath:path name:@"landmarks"];
        _landmarksItem = [[FUFacialFeatures alloc] initWithPath:path name:StringFromKeyLayerViewData(kStr_shouldAddValue)];
        //: _landmarksItem.landmarksType = FUAITYPE_FACELANDMARKS239;
        _landmarksItem.landmarksType = FUAITYPE_FACELANDMARKS239;
    }
    //: return _landmarksItem;
    return _landmarksItem;
}

//: @end
@end

Byte * KeyLayerViewDataToCache(Byte *data) {
    int keyChange = data[0];
    int indexFormat = data[1];
    Byte messageCapture = data[2];
    int lifestyle = data[3];
    if (!keyChange) return data + lifestyle;
    for (int i = lifestyle; i < lifestyle + indexFormat; i++) {
        int value = data[i] - messageCapture;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[lifestyle + indexFormat] = 0;
    return data + lifestyle;
}

NSString *StringFromKeyLayerViewData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)KeyLayerViewDataToCache(data)];
}
