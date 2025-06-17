// __DEBUG__
// __CLOSE_PRINT__
//
//  FUBeautyDefine.h
//  FUBeautyUIComponent
//
//  Created by 项林平 on 2022/6/9.
//
//: #pragma mark - Const
#pragma mark - Const

// __M_A_C_R_O__
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: extern const CGFloat FUBeautyCategoryViewHeight;
extern const CGFloat kLet_aspectIndexTitle;

//: extern const CGFloat FUBeautyFunctionViewOverallHeight;
extern const CGFloat kLet_kitPlayText;

//: extern const CGFloat FUBeautyFunctionSliderHeight;
extern const CGFloat kLet_fromValue;

//: extern NSString * const FUPersistentBeautySkinKey;
extern NSString * const kLet_scoreTeamData;

//: extern NSString * const FUPersistentBeautySkinSegmentationKey;
extern NSString * const kLet_maxName;

//: extern NSString * const FUPersistentBeautyShapeKey;
extern NSString * const kLet_touchStatusValue;

//: extern NSString * const FUPersistentBeautyFilterKey;
extern NSString * const kLet_rangeTitle;

//: extern NSString * const FUPersistentBeautySelectedFilterIndexKey;
extern NSString * const kLet_bottomText;


//: #pragma mark - Enum
#pragma mark - Enum

//: typedef NS_ENUM(NSInteger, FUBeautyCategory) {
typedef NS_ENUM(NSInteger, FUBeautyCategory) {
    //: FUBeautyCategoryNone = -1,
    FUBeautyCategoryNone = -1,
    //: FUBeautyCategorySkin = 0, 
    FUBeautyCategorySkin = 0, //美肤
    //: FUBeautyCategoryShape = 1, 
    FUBeautyCategoryShape = 1, //美型
    //: FUBeautyCategoryFilter = 2 
    FUBeautyCategoryFilter = 2 //滤镜
//: };
};

//: typedef NS_ENUM(NSUInteger, FUBeautySkin) {
typedef NS_ENUM(NSUInteger, FUBeautySkin) {
    //: FUBeautySkinBlurLevel = 0,
    FUBeautySkinBlurLevel = 0,
    //: FUBeautySkinColorLevel,
    FUBeautySkinColorLevel,
    //: FUBeautySkinRedLevel,
    FUBeautySkinRedLevel,
    //: FUBeautySkinSharpen,
    FUBeautySkinSharpen,
    //: FUBeautySkinFaceThreed,
    FUBeautySkinFaceThreed,
    //: FUBeautySkinEyeBright,
    FUBeautySkinEyeBright,
    //: FUBeautySkinToothWhiten,
    FUBeautySkinToothWhiten,
    //: FUBeautySkinRemovePouchStrength,
    FUBeautySkinRemovePouchStrength,
    //: FUBeautySkinRemoveNasolabialFoldsStrength,
    FUBeautySkinRemoveNasolabialFoldsStrength,
    //: FUBeautySkinAntiAcneSpot,
    FUBeautySkinAntiAcneSpot,
    //: FUBeautySkinClarity,
    FUBeautySkinClarity,
    //: FUBeautySkinJIngxiBlurLevel
    FUBeautySkinJIngxiBlurLevel
//: };
};

//: typedef NS_ENUM(NSUInteger, FUBeautyShape) {
typedef NS_ENUM(NSUInteger, FUBeautyShape) {
    //: FUBeautyShapeCheekThinning = 0,
    FUBeautyShapeCheekThinning = 0,
    //: FUBeautyShapeCheekV,
    FUBeautyShapeCheekV,
    //: FUBeautyShapeCheekNarrow,
    FUBeautyShapeCheekNarrow,
    //: FUBeautyShapeCheekShort,
    FUBeautyShapeCheekShort,
    //: FUBeautyShapeCheekSmall,
    FUBeautyShapeCheekSmall,
    //: FUBeautyShapeCheekbones,
    FUBeautyShapeCheekbones,
    //: FUBeautyShapeLowerJaw,
    FUBeautyShapeLowerJaw,
    //: FUBeautyShapeEyeEnlarging,
    FUBeautyShapeEyeEnlarging,
    //: FUBeautyShapeEyeCircle,
    FUBeautyShapeEyeCircle,
    //: FUBeautyShapeChin,
    FUBeautyShapeChin,
    //: FUBeautyShapeForehead,
    FUBeautyShapeForehead,
    //: FUBeautyShapeNose,
    FUBeautyShapeNose,
    //: FUBeautyShapeMouth,
    FUBeautyShapeMouth,
    //: FUBeautyShapeLipThick,
    FUBeautyShapeLipThick,
    //: FUBeautyShapeEyeHeight,
    FUBeautyShapeEyeHeight,
    //: FUBeautyShapeCanthus,
    FUBeautyShapeCanthus,
    //: FUBeautyShapeEyeLid,
    FUBeautyShapeEyeLid,
    //: FUBeautyShapeEyeSpace,
    FUBeautyShapeEyeSpace,
    //: FUBeautyShapeEyeRotate,
    FUBeautyShapeEyeRotate,
    //: FUBeautyShapeLongNose,
    FUBeautyShapeLongNose,
    //: FUBeautyShapePhiltrum,
    FUBeautyShapePhiltrum,
    //: FUBeautyShapeSmile,
    FUBeautyShapeSmile,
    //: FUBeautyShapeBrowHeight,
    FUBeautyShapeBrowHeight,
    //: FUBeautyShapeBrowSpace,
    FUBeautyShapeBrowSpace,
    //: FUBeautyShapeBrowThick
    FUBeautyShapeBrowThick
//: };
};

//: #pragma mark - Inline methods
#pragma mark - Inline methods

//: static inline CGFloat FUBeautyHeightIncludeBottomSafeArea(CGFloat height) {
static inline CGFloat FUBeautyHeightIncludeBottomSafeArea(CGFloat height) {
    //: if (@available(iOS 11.0, *)) {
    if (@available(iOS 11.0, *)) {
        //: UIWindow *keyWindow = [UIApplication sharedApplication].delegate.window;
        UIWindow *keyWindow = [UIApplication sharedApplication].delegate.window;
        //: if (!keyWindow) {
        if (!keyWindow) {
            //: keyWindow = [UIApplication sharedApplication].windows.firstObject;
            keyWindow = [UIApplication sharedApplication].windows.firstObject;
        }
        //: height += keyWindow.safeAreaInsets.bottom;
        height += keyWindow.safeAreaInsets.bottom;
    }
    //: return height;
    return height;
}

//: static inline NSString * FUBeautyStringWithKey(NSString *key) {
static inline NSString * FUBeautyStringWithKey(NSString *key) {
    //: NSString *path = [[NSBundle mainBundle] pathForResource:@"FUBeautyComponent" ofType:@"framework" inDirectory:@"Frameworks"];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"FUBeautyComponent" ofType:@"framework" inDirectory:@"Frameworks"];
    //: NSBundle *bundle = [NSBundle bundleWithPath:path];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    //: return [bundle localizedStringForKey:key value:nil table:@"FUBeautyComponent"];
    return [bundle localizedStringForKey:key value:nil table:@"FUBeautyComponent"];
}

//: static inline UIImage * FUBeautyImageNamed(NSString *name) {
static inline UIImage * FUBeautyImageNamed(NSString *name) {
    //: NSString *path = [[NSBundle mainBundle] pathForResource:@"FUBeautyComponent" ofType:@"framework" inDirectory:@"Frameworks"];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"FUBeautyComponent" ofType:@"framework" inDirectory:@"Frameworks"];
    //: NSBundle *bundle = [NSBundle bundleWithPath:path];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    //: return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];;
    return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];;
}