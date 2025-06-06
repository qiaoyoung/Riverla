
#import <Foundation/Foundation.h>

NSString *StringFromTwentyFourHoursData(Byte *data);


//: landmarks
Byte kStr_frameCellData[] = {92, 9, 82, 5, 251, 190, 179, 192, 182, 191, 179, 196, 189, 197, 200};


//: bundle
Byte kStr_linkBirdValue[] = {69, 6, 9, 8, 240, 224, 67, 117, 107, 126, 119, 109, 117, 110, 3};

// __DEBUG__
// __CLOSE_PRINT__
//
//  Occurrence.m
//  FULiveDemo
//
//  Created by 项林平 on 2021/10/9.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FULandmarkManager.h"
#import "Occurrence.h"
//: #import <FURenderKit/FUFacialFeatures.h>
#import <FURenderKit/FUFacialFeatures.h>

//: @interface FULandmarkManager ()
@interface Occurrence ()

//: @property (nonatomic, strong) FUFacialFeatures *landmarksItem;
@property (nonatomic, strong) FUFacialFeatures *landmarksItem;

//: @end
@end

//: @implementation FULandmarkManager
@implementation Occurrence

//: + (FULandmarkManager *)shared {
+ (Occurrence *)smart {
    //: static FULandmarkManager *landmarkView;
    static Occurrence *landmarkView;
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
    [landmarkView addTarget:self action:@selector(blowwed:) forControlEvents:UIControlEventValueChanged];
    //: return landmarkView;
    return landmarkView;
}

//: + (void)show {
+ (void)progress {
    //: [FUKeyWindow() addSubview:[self shared]];
    [FUKeyWindow() addSubview:[self smart]];
}

//: + (void)dismiss {
+ (void)sharedEvent {
    //: if ([self shared].superview) {
    if ([self smart].superview) {
        //: [self shared].on = NO;
        [self smart].on = NO;
        //: [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self shared].landmarksItem completion:nil];
        [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self smart].landmarksItem completion:nil];
        //: [[self shared] removeFromSuperview];
        [[self smart] removeFromSuperview];
    }
}

//: + (void)landmarkSwitchAction:(UISwitch *)sender {
+ (void)blowwed:(UISwitch *)sender {
    //: if (sender.isOn) {
    if (sender.isOn) {
        //: [[FURenderKit shareRenderKit].stickerContainer addSticker:[self shared].landmarksItem completion:nil];
        [[FURenderKit shareRenderKit].stickerContainer addSticker:[self smart].landmarksItem completion:nil];
    //: } else {
    } else {
        //: [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self shared].landmarksItem completion:nil];
        [[FURenderKit shareRenderKit].stickerContainer removeSticker:[self smart].landmarksItem completion:nil];
    }
}

//: - (FUFacialFeatures *)landmarksItem {
- (FUFacialFeatures *)landmarksItem {
    //: if (!_landmarksItem) {
    if (!_landmarksItem) {
        //: NSString *path = [[NSBundle mainBundle] pathForResource:@"landmarks" ofType:@"bundle"];
        NSString *path = [[NSBundle mainBundle] pathForResource:StringFromTwentyFourHoursData(kStr_frameCellData) ofType:StringFromTwentyFourHoursData(kStr_linkBirdValue)];
        //: _landmarksItem = [[FUFacialFeatures alloc] initWithPath:path name:@"landmarks"];
        _landmarksItem = [[FUFacialFeatures alloc] initWithPath:path name:StringFromTwentyFourHoursData(kStr_frameCellData)];
        //: _landmarksItem.landmarksType = FUAITYPE_FACELANDMARKS239;
        _landmarksItem.landmarksType = FUAITYPE_FACELANDMARKS239;
    }
    //: return _landmarksItem;
    return _landmarksItem;
}

//: @end
@end

Byte * TwentyFourHoursDataToCache(Byte *data) {
    int immobilize = data[0];
    int messageWhyBalloon = data[1];
    Byte taPlanning = data[2];
    int textWhy = data[3];
    if (!immobilize) return data + textWhy;
    for (int i = textWhy; i < textWhy + messageWhyBalloon; i++) {
        int value = data[i] - taPlanning;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[textWhy + messageWhyBalloon] = 0;
    return data + textWhy;
}

NSString *StringFromTwentyFourHoursData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TwentyFourHoursDataToCache(data)];
}
