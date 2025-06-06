
#import <Foundation/Foundation.h>
typedef struct {
    Byte displace;
    Byte *infoTap;
    unsigned int push;
    bool swing;
	int ta;
	int station;
} PurchaseData;

NSString *StringFromPurchaseData(PurchaseData *data);


//: meibai
PurchaseData kStr_balloonData = (PurchaseData){34, (Byte []){79, 71, 75, 64, 67, 75, 66}, 6, false, 8, 223};


//: hongrun
PurchaseData kStr_direData = (PurchaseData){82, (Byte []){58, 61, 60, 53, 32, 39, 60, 21}, 7, false, 43, 21};


//: defaultValueInMiddle
PurchaseData kStr_weightPoSpaceContent = (PurchaseData){60, (Byte []){88, 89, 90, 93, 73, 80, 72, 106, 93, 80, 73, 89, 117, 82, 113, 85, 88, 88, 80, 89, 213}, 20, false, 182, 182};


//: performanceLevel
PurchaseData kStr_showForeverName = (PurchaseData){43, (Byte []){91, 78, 89, 77, 68, 89, 70, 74, 69, 72, 78, 103, 78, 93, 78, 71, 168}, 16, false, 145, 180};


//: imageName
PurchaseData kStr_onSurgeMoreoverData = (PurchaseData){38, (Byte []){79, 75, 71, 65, 67, 104, 71, 75, 67, 132}, 9, false, 198, 188};


//: ruihua
PurchaseData kStr_vacationPressTitle = (PurchaseData){59, (Byte []){73, 78, 82, 83, 78, 90, 148}, 6, false, 106, 185};


//: qudou
PurchaseData kStr_shoveMeteLeasedValue = (PurchaseData){4, (Byte []){117, 113, 96, 107, 113, 154}, 5, false, 125, 222};


//: mopi
PurchaseData kStr_chapTitle = (PurchaseData){5, (Byte []){104, 106, 117, 108, 108}, 4, false, 15, 88};


//: defaultValue
PurchaseData kStr_taleData = (PurchaseData){24, (Byte []){124, 125, 126, 121, 109, 116, 108, 78, 121, 116, 109, 125, 34}, 12, false, 245, 182};


//: type
PurchaseData kStr_stopTrailValue = (PurchaseData){201, (Byte []){189, 176, 185, 172, 245}, 4, false, 96, 162};


//: 祛斑痘
PurchaseData kStr_onSpendValue = (PurchaseData){52, (Byte []){211, 145, 175, 210, 162, 165, 211, 163, 172, 192}, 9, false, 139, 70};


//: ratio
PurchaseData kStr_dependenceContent = (PurchaseData){58, (Byte []){72, 91, 78, 83, 85, 151}, 5, false, 110, 75};


//: name
PurchaseData kStr_alleyData = (PurchaseData){94, (Byte []){48, 63, 51, 59, 137}, 4, false, 165, 101};


//: currentValue
PurchaseData kStr_refugeeData = (PurchaseData){118, (Byte []){21, 3, 4, 4, 19, 24, 2, 32, 23, 26, 3, 19, 60}, 12, false, 138, 182};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginPopRecent.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/27.
//

// __M_A_C_R_O__
//: #import "FUBeautySkinViewModel.h"
#import "MarginPopRecent.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"

//: @interface FUBeautySkinViewModel ()
@interface MarginPopRecent ()

//: @property (nonatomic, copy) NSArray<FUBeautySkinModel *> *beautySkins;
@property (nonatomic, copy) NSArray<PictureImage *> *beautySkins;

//: @end
@end

//: @implementation FUBeautySkinViewModel
@implementation MarginPopRecent

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.performanceLevel = [FURenderKit devicePerformanceLevel];
        self.performanceLevel = [FURenderKit devicePerformanceLevel];
//        if ([[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautySkinKey]) {
//            // 获取本地美肤数据
//            self.beautySkins = [self localSkins];
//        } else {
//            // 获取默认美肤数据
//            self.beautySkins = [self defaultSkins];
//        }
//        if ([[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautySkinSegmentationKey]) {
//            _skinSegmentationEnabled = [[NSUserDefaults standardUserDefaults] boolForKey:FUPersistentBeautySkinSegmentationKey];
//        } else {
//            // 默认不开启皮肤分割
//            _skinSegmentationEnabled = NO;
//        }
        //: self.beautySkins = [self defaultSkins];
        self.beautySkins = [self with];
        //: self.selectedIndex = -1;
        self.selectedIndex = -1;
    }
    //: return self;
    return self;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)saveSkinsPersistently {
- (void)anSkins {
    //: if (self.beautySkins.count == 0) {
    if (self.beautySkins.count == 0) {
        //: return;
        return;
    }
    //: NSMutableArray *skins = [[NSMutableArray alloc] init];
    NSMutableArray *skins = [[NSMutableArray alloc] init];
    //: for (FUBeautySkinModel *model in self.beautySkins) {
    for (PictureImage *model in self.beautySkins) {
        //: NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[@"name", @"type", @"currentValue", @"defaultValue", @"defaultValueInMiddle", @"ratio", @"performanceLevel"]];
        NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[StringFromPurchaseData(&kStr_alleyData), StringFromPurchaseData(&kStr_stopTrailValue), StringFromPurchaseData(&kStr_refugeeData), StringFromPurchaseData(&kStr_taleData), StringFromPurchaseData(&kStr_weightPoSpaceContent), StringFromPurchaseData(&kStr_dependenceContent), StringFromPurchaseData(&kStr_showForeverName)]];
        //: [skins addObject:dictionary];
        [skins addObject:dictionary];
    }
    //: [[NSUserDefaults standardUserDefaults] setObject:skins forKey:FUPersistentBeautySkinKey];
    [[NSUserDefaults standardUserDefaults] setObject:skins forKey:let_framePositionText];
    //: [[NSUserDefaults standardUserDefaults] setBool:self.skinSegmentationEnabled forKey:FUPersistentBeautySkinSegmentationKey];
    [[NSUserDefaults standardUserDefaults] setBool:self.skinSegmentationEnabled forKey:let_kitValue];
    //: [[NSUserDefaults standardUserDefaults] synchronize];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//: - (void)setSkinValue:(double)value {
- (void)setMisplaceKeyValue:(double)value {
    //: if (self.selectedIndex < 0 || self.selectedIndex >= self.beautySkins.count) {
    if (self.selectedIndex < 0 || self.selectedIndex >= self.beautySkins.count) {
        //: return;
        return;
    }
    //: FUBeautySkinModel *model = self.beautySkins[self.selectedIndex];
    PictureImage *model = self.beautySkins[self.selectedIndex];
    //: model.currentValue = value * model.ratio;
    model.currentValue = value * model.ratio;
    //: [self setValue:model.currentValue forType:model.type];
    [self argument:model.currentValue view:model.type];
}

//: - (void)setAllSkinValues {
- (void)text {
    //: for (FUBeautySkinModel *skin in self.beautySkins) {
    for (PictureImage *skin in self.beautySkins) {
        //: [self setValue:skin.currentValue forType:skin.type];
        [self argument:skin.currentValue view:skin.type];
    }
    //: self.skinSegmentationEnabled = _skinSegmentationEnabled;
    self.skinSegmentationEnabled = _skinSegmentationEnabled;
}

//: - (void)recoverAllSkinValuesToDefault {
- (void)reload {
    //: for (FUBeautySkinModel *skin in self.beautySkins) {
    for (PictureImage *skin in self.beautySkins) {
        //: skin.currentValue = skin.defaultValue;
        skin.currentValue = skin.defaultValue;
        //: [self setValue:skin.currentValue forType:skin.type];
        [self argument:skin.currentValue view:skin.type];
    }
    //: self.skinSegmentationEnabled = NO;
    self.skinSegmentationEnabled = NO;
}

//: - (void)setSkinSegmentationEnabled:(BOOL)skinSegmentationEnabled {
- (void)setSkinSegmentationEnabled:(BOOL)skinSegmentationEnabled {
    //: _skinSegmentationEnabled = skinSegmentationEnabled;
    _skinSegmentationEnabled = skinSegmentationEnabled;
    //: [FURenderKit shareRenderKit].beauty.enableSkinSegmentation = skinSegmentationEnabled;
    [FURenderKit shareRenderKit].beauty.enableSkinSegmentation = skinSegmentationEnabled;
}

//: #pragma mark - Private methods
#pragma mark - Private methods

//: - (void)setValue:(double)value forType:(FUBeautySkin)type {
- (void)argument:(double)value view:(FUBeautySkin)type {
    //: switch (type) {
    switch (type) {
        //: case FUBeautySkinBlurLevel:
        case FUBeautySkinBlurLevel:
            //: [FURenderKit shareRenderKit].beauty.heavyBlur = 0;
            [FURenderKit shareRenderKit].beauty.heavyBlur = 0;
            //: [FURenderKit shareRenderKit].beauty.blurType = 0;
            [FURenderKit shareRenderKit].beauty.blurType = 0;
            //: [FURenderKit shareRenderKit].beauty.blurLevel = value;
            [FURenderKit shareRenderKit].beauty.blurLevel = value;
            //: break;
            break;
        //: case FUBeautySkinColorLevel:
        case FUBeautySkinColorLevel:
            //: [FURenderKit shareRenderKit].beauty.colorLevel = value;
            [FURenderKit shareRenderKit].beauty.colorLevel = value;
            //: break;
            break;
        //: case FUBeautySkinRedLevel:
        case FUBeautySkinRedLevel:
            //: [FURenderKit shareRenderKit].beauty.redLevel = value;
            [FURenderKit shareRenderKit].beauty.redLevel = value;
            //: break;
            break;
        //: case FUBeautySkinSharpen:
        case FUBeautySkinSharpen:
            //: [FURenderKit shareRenderKit].beauty.sharpen = value;
            [FURenderKit shareRenderKit].beauty.sharpen = value;
            //: break;
            break;
        //: case FUBeautySkinFaceThreed:
        case FUBeautySkinFaceThreed:
            //: [FURenderKit shareRenderKit].beauty.faceThreed = value;
            [FURenderKit shareRenderKit].beauty.faceThreed = value;
            //: break;
            break;
        //: case FUBeautySkinEyeBright:
        case FUBeautySkinEyeBright:
            //: [FURenderKit shareRenderKit].beauty.eyeBright = value;
            [FURenderKit shareRenderKit].beauty.eyeBright = value;
            //: break;
            break;
        //: case FUBeautySkinToothWhiten:
        case FUBeautySkinToothWhiten:
            //: [FURenderKit shareRenderKit].beauty.toothWhiten = value;
            [FURenderKit shareRenderKit].beauty.toothWhiten = value;
            //: break;
            break;
        //: case FUBeautySkinRemovePouchStrength:
        case FUBeautySkinRemovePouchStrength:
            //: [FURenderKit shareRenderKit].beauty.removePouchStrength = value;
            [FURenderKit shareRenderKit].beauty.removePouchStrength = value;
            //: break;
            break;
        //: case FUBeautySkinRemoveNasolabialFoldsStrength:
        case FUBeautySkinRemoveNasolabialFoldsStrength:
            //: [FURenderKit shareRenderKit].beauty.removeNasolabialFoldsStrength = value;
            [FURenderKit shareRenderKit].beauty.removeNasolabialFoldsStrength = value;
            //: break;
            break;
        //: case FUBeautySkinAntiAcneSpot:
        case FUBeautySkinAntiAcneSpot:
            //: [FURenderKit shareRenderKit].beauty.antiAcneSpot = value;
            [FURenderKit shareRenderKit].beauty.antiAcneSpot = value;
            //: break;
            break;
        //: case FUBeautySkinClarity:
        case FUBeautySkinClarity:
            //: [FURenderKit shareRenderKit].beauty.clarity = value;
            [FURenderKit shareRenderKit].beauty.clarity = value;
            //: break;
            break;
        //: case FUBeautySkinJIngxiBlurLevel:
        case FUBeautySkinJIngxiBlurLevel:
            //: [FURenderKit shareRenderKit].beauty.heavyBlur = 0;
            [FURenderKit shareRenderKit].beauty.heavyBlur = 0;
            //: [FURenderKit shareRenderKit].beauty.blurType = 2;
            [FURenderKit shareRenderKit].beauty.blurType = 2;
            //: [FURenderKit shareRenderKit].beauty.blurLevel = value;
            [FURenderKit shareRenderKit].beauty.blurLevel = value;
            //: break;
            break;
    }
}

//: - (NSArray<FUBeautySkinModel *> *)localSkins {
- (NSArray<PictureImage *> *)color {
    //: NSArray *skins = [[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautySkinKey];
    NSArray *skins = [[NSUserDefaults standardUserDefaults] objectForKey:let_framePositionText];
    //: NSMutableArray *mutableSkins = [[NSMutableArray alloc] init];
    NSMutableArray *mutableSkins = [[NSMutableArray alloc] init];
    //: for (NSDictionary *skin in skins) {
    for (NSDictionary *skin in skins) {
        //: FUBeautySkinModel *model = [[FUBeautySkinModel alloc] init];
        PictureImage *model = [[PictureImage alloc] init];
        //: [model setValuesForKeysWithDictionary:skin];
        [model setValuesForKeysWithDictionary:skin];
        //: [mutableSkins addObject:model];
        [mutableSkins addObject:model];
    }
    //: return [mutableSkins copy];
    return [mutableSkins copy];
}

//: - (NSArray<FUBeautySkinModel *> *)defaultSkins {
- (NSArray<PictureImage *> *)with {
//    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
//    NSString *skinPath = self.performanceLevel == FUDevicePerformanceLevelLow_1 ? [bundle pathForResource:@"beauty_skin_low" ofType:@"json"] : self.performanceLevel < FUDevicePerformanceLevelHigh ? [bundle pathForResource:@"beauty_skin_lessThan2" ofType:@"json"] : [bundle pathForResource:@"beauty_skin" ofType:@"json"];
//    NSArray<NSDictionary *> *skinData = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:skinPath] options:NSJSONReadingMutableContainers error:nil];

    //: NSArray<NSDictionary *> *skinData = @[
    NSArray<NSDictionary *> *skinData = @[
        //: @{
        @{
            //: @"imageName":@"磨皮",
            StringFromPurchaseData(&kStr_onSurgeMoreoverData):@"磨皮",
            //: @"name": [FFFLanguageManager getTextWithKey:@"mopi"],
            StringFromPurchaseData(&kStr_alleyData): [TeamManager sizeKey:StringFromPurchaseData(&kStr_chapTitle)],
            //: @"type": @0,
            StringFromPurchaseData(&kStr_stopTrailValue): @0,
            //: @"currentValue": @3.3,
            StringFromPurchaseData(&kStr_refugeeData): @3.3,
            //: @"defaultValue": @3.3,
            StringFromPurchaseData(&kStr_taleData): @3.3,
            //: @"defaultValueInMiddle": @false,
            StringFromPurchaseData(&kStr_weightPoSpaceContent): @false,
            //: @"ratio":@6,
            StringFromPurchaseData(&kStr_dependenceContent):@6,
            //: @"performanceLevel": @-1,
            StringFromPurchaseData(&kStr_showForeverName): @-1,
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"祛斑痘",
            StringFromPurchaseData(&kStr_onSurgeMoreoverData):StringFromPurchaseData(&kStr_onSpendValue),
            //: @"name":[FFFLanguageManager getTextWithKey:@"qudou"],
            StringFromPurchaseData(&kStr_alleyData):[TeamManager sizeKey:StringFromPurchaseData(&kStr_shoveMeteLeasedValue)],
            //: @"type":@11,
            StringFromPurchaseData(&kStr_stopTrailValue):@11,
            //: @"currentValue":@0.0,
            StringFromPurchaseData(&kStr_refugeeData):@0.0,
            //: @"defaultValue":@0.0,
            StringFromPurchaseData(&kStr_taleData):@0.0,
            //: @"defaultValueInMiddle":@false,
            StringFromPurchaseData(&kStr_weightPoSpaceContent):@false,
            //: @"ratio":@6,
            StringFromPurchaseData(&kStr_dependenceContent):@6,
            //: @"performanceLevel": @-1
            StringFromPurchaseData(&kStr_showForeverName): @-1
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"美白",
            StringFromPurchaseData(&kStr_onSurgeMoreoverData):@"美白",
            //: @"name":[FFFLanguageManager getTextWithKey:@"meibai"],
            StringFromPurchaseData(&kStr_alleyData):[TeamManager sizeKey:StringFromPurchaseData(&kStr_balloonData)],
            //: @"type":@1,
            StringFromPurchaseData(&kStr_stopTrailValue):@1,
            //: @"currentValue":@0.4,
            StringFromPurchaseData(&kStr_refugeeData):@0.4,
            //: @"defaultValue":@0.4,
            StringFromPurchaseData(&kStr_taleData):@0.4,
            //: @"defaultValueInMiddle":@false,
            StringFromPurchaseData(&kStr_weightPoSpaceContent):@false,
            //: @"ratio":@1,
            StringFromPurchaseData(&kStr_dependenceContent):@1,
            //: @"performanceLevel": @1
            StringFromPurchaseData(&kStr_showForeverName): @1
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"红润",
            StringFromPurchaseData(&kStr_onSurgeMoreoverData):@"红润",
            //: @"name":[FFFLanguageManager getTextWithKey:@"hongrun"],
            StringFromPurchaseData(&kStr_alleyData):[TeamManager sizeKey:StringFromPurchaseData(&kStr_direData)],
            //: @"type":@2,
            StringFromPurchaseData(&kStr_stopTrailValue):@2,
            //: @"currentValue":@0.3,
            StringFromPurchaseData(&kStr_refugeeData):@0.3,
            //: @"defaultValue":@0.3,
            StringFromPurchaseData(&kStr_taleData):@0.3,
            //: @"defaultValueInMiddle":@false,
            StringFromPurchaseData(&kStr_weightPoSpaceContent):@false,
            //: @"ratio":@1,
            StringFromPurchaseData(&kStr_dependenceContent):@1,
            //: @"performanceLevel": @1
            StringFromPurchaseData(&kStr_showForeverName): @1
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"锐化",
            StringFromPurchaseData(&kStr_onSurgeMoreoverData):@"锐化",
            //: @"name":[FFFLanguageManager getTextWithKey:@"ruihua"],
            StringFromPurchaseData(&kStr_alleyData):[TeamManager sizeKey:StringFromPurchaseData(&kStr_vacationPressTitle)],
            //: @"type":@3,
            StringFromPurchaseData(&kStr_stopTrailValue):@3,
            //: @"currentValue":@0.6,
            StringFromPurchaseData(&kStr_refugeeData):@0.6,
            //: @"defaultValue":@0.6,
            StringFromPurchaseData(&kStr_taleData):@0.6,
            //: @"defaultValueInMiddle":@false,
            StringFromPurchaseData(&kStr_weightPoSpaceContent):@false,
            //: @"ratio":@1,
            StringFromPurchaseData(&kStr_dependenceContent):@1,
            //: @"performanceLevel": @1
            StringFromPurchaseData(&kStr_showForeverName): @1
        }
    //: ];
    ];
    //: NSMutableArray *skins = [[NSMutableArray alloc] init];
    NSMutableArray *skins = [[NSMutableArray alloc] init];
    //: for (NSDictionary *dictionary in skinData) {
    for (NSDictionary *dictionary in skinData) {
        //: FUBeautySkinModel *model = [[FUBeautySkinModel alloc] init];
        PictureImage *model = [[PictureImage alloc] init];
        //: [model setValuesForKeysWithDictionary:dictionary];
        [model setValuesForKeysWithDictionary:dictionary];
        //: [skins addObject:model];
        [skins addObject:model];
    }
    //: return [skins copy];
    return [skins copy];
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (BOOL)isDefaultValue {
- (BOOL)isDefaultValue {
    //: if (self.skinSegmentationEnabled) {
    if (self.skinSegmentationEnabled) {
        // 开启了皮肤美白
        //: return NO;
        return NO;
    }
    //: for (FUBeautySkinModel *skin in self.beautySkins) {
    for (PictureImage *skin in self.beautySkins) {
        //: int currentIntValue = skin.defaultValueInMiddle ? (int)(skin.currentValue / skin.ratio * 100 - 50) : (int)(skin.currentValue / skin.ratio * 100);
        int currentIntValue = skin.defaultValueInMiddle ? (int)(skin.currentValue / skin.ratio * 100 - 50) : (int)(skin.currentValue / skin.ratio * 100);
        //: int defaultIntValue = skin.defaultValueInMiddle ? (int)(skin.defaultValue / skin.ratio * 100 - 50) : (int)(skin.defaultValue / skin.ratio * 100);
        int defaultIntValue = skin.defaultValueInMiddle ? (int)(skin.defaultValue / skin.ratio * 100 - 50) : (int)(skin.defaultValue / skin.ratio * 100);
        //: if (currentIntValue != defaultIntValue) {
        if (currentIntValue != defaultIntValue) {
            //: return NO;
            return NO;
        }
    }
    //: return YES;
    return YES;
}

//: @end
@end

Byte *PurchaseDataToByte(PurchaseData *data) {
    if (data->swing) return data->infoTap;
    for (int i = 0; i < data->push; i++) {
        data->infoTap[i] ^= data->displace;
    }
    data->infoTap[data->push] = 0;
    data->swing = true;
	if (data->push >= 2) {
		data->ta = data->infoTap[0];
		data->station = data->infoTap[1];
	}
    return data->infoTap;
}

NSString *StringFromPurchaseData(PurchaseData *data) {
    return [NSString stringWithUTF8String:(char *)PurchaseDataToByte(data)];
}
