
#import <Foundation/Foundation.h>

NSString *StringFromHeritageData(Byte *data);


//: defaultValueInMiddle
Byte kStr_infoShouldBubbleValue[] = {24, 20, 13, 6, 209, 152, 113, 114, 115, 110, 130, 121, 129, 99, 110, 121, 130, 114, 86, 123, 90, 118, 113, 113, 121, 114, 235};


//: 祛斑痘
Byte kStr_shouldItemData[] = {77, 9, 58, 5, 143, 33, 223, 213, 32, 208, 203, 33, 209, 210, 213};


//: name
Byte kStr_statusTitleData[] = {68, 4, 91, 4, 201, 188, 200, 192, 222};


//: meibai
Byte kStr_disableContent[] = {98, 6, 74, 10, 58, 99, 126, 179, 230, 31, 183, 175, 179, 172, 171, 179, 122};


//: qudou
Byte kStr_indexWithViewData[] = {43, 5, 57, 4, 170, 174, 157, 168, 174, 54};


//: imageName
Byte kStr_atProviderValue[] = {99, 9, 19, 13, 197, 132, 244, 128, 178, 14, 238, 148, 103, 124, 128, 116, 122, 120, 97, 116, 128, 120, 1};


//: ratio
Byte kStr_cellKeyData[] = {10, 5, 69, 8, 233, 219, 24, 50, 183, 166, 185, 174, 180, 190};


//: currentValue
Byte kStr_keyValue[] = {89, 12, 38, 8, 205, 111, 243, 92, 137, 155, 152, 152, 139, 148, 154, 124, 135, 146, 155, 139, 127};


//: defaultValue
Byte kStr_collectionBubbleValue[] = {46, 12, 89, 10, 160, 84, 133, 17, 97, 4, 189, 190, 191, 186, 206, 197, 205, 175, 186, 197, 206, 190, 130};


//: hongrun
Byte kStr_canSessionData[] = {1, 7, 36, 12, 145, 55, 65, 20, 43, 112, 48, 90, 140, 147, 146, 139, 150, 153, 146, 165};


//: mopi
Byte kStr_bottomTableRecordName[] = {91, 4, 18, 11, 37, 126, 161, 240, 241, 133, 112, 127, 129, 130, 123, 229};


//: ruihua
Byte kStr_hideTextTitle[] = {49, 6, 25, 8, 109, 15, 150, 189, 139, 142, 130, 129, 142, 122, 43};


//: type
Byte kStr_messageBottomData[] = {16, 4, 64, 11, 253, 118, 227, 77, 120, 222, 95, 180, 185, 176, 165, 141};


//: performanceLevel
Byte kStr_addTitle[] = {85, 16, 48, 14, 52, 208, 48, 56, 239, 190, 86, 26, 14, 186, 160, 149, 162, 150, 159, 162, 157, 145, 158, 147, 149, 124, 149, 166, 149, 156, 184};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TingModel.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/27.
//

// __M_A_C_R_O__
//: #import "FUBeautySkinViewModel.h"
#import "TingModel.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"

//: @interface FUBeautySkinViewModel ()
@interface TingModel ()

//: @property (nonatomic, copy) NSArray<FUBeautySkinModel *> *beautySkins;
@property (nonatomic, copy) NSArray<RecentModel *> *beautySkins;

//: @end
@end

//: @implementation FUBeautySkinViewModel
@implementation TingModel

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
        self.beautySkins = [self textSkins];
        //: self.selectedIndex = -1;
        self.selectedIndex = -1;
    }
    //: return self;
    return self;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)saveSkinsPersistently {
- (void)humanPull {
    //: if (self.beautySkins.count == 0) {
    if (self.beautySkins.count == 0) {
        //: return;
        return;
    }
    //: NSMutableArray *skins = [[NSMutableArray alloc] init];
    NSMutableArray *skins = [[NSMutableArray alloc] init];
    //: for (FUBeautySkinModel *model in self.beautySkins) {
    for (RecentModel *model in self.beautySkins) {
        //: NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[@"name", @"type", @"currentValue", @"defaultValue", @"defaultValueInMiddle", @"ratio", @"performanceLevel"]];
        NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[StringFromHeritageData(kStr_statusTitleData), StringFromHeritageData(kStr_messageBottomData), StringFromHeritageData(kStr_keyValue), StringFromHeritageData(kStr_collectionBubbleValue), StringFromHeritageData(kStr_infoShouldBubbleValue), StringFromHeritageData(kStr_cellKeyData), StringFromHeritageData(kStr_addTitle)]];
        //: [skins addObject:dictionary];
        [skins addObject:dictionary];
    }
    //: [[NSUserDefaults standardUserDefaults] setObject:skins forKey:FUPersistentBeautySkinKey];
    [[NSUserDefaults standardUserDefaults] setObject:skins forKey:kLet_scoreTeamData];
    //: [[NSUserDefaults standardUserDefaults] setBool:self.skinSegmentationEnabled forKey:FUPersistentBeautySkinSegmentationKey];
    [[NSUserDefaults standardUserDefaults] setBool:self.skinSegmentationEnabled forKey:kLet_maxName];
    //: [[NSUserDefaults standardUserDefaults] synchronize];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//: - (void)setSkinValue:(double)value {
- (void)setText:(double)value {
    //: if (self.selectedIndex < 0 || self.selectedIndex >= self.beautySkins.count) {
    if (self.selectedIndex < 0 || self.selectedIndex >= self.beautySkins.count) {
        //: return;
        return;
    }
    //: FUBeautySkinModel *model = self.beautySkins[self.selectedIndex];
    RecentModel *model = self.beautySkins[self.selectedIndex];
    //: model.currentValue = value * model.ratio;
    model.currentValue = value * model.ratio;
    //: [self setValue:model.currentValue forType:model.type];
    [self cell:model.currentValue message:model.type];
}

//: - (void)setAllSkinValues {
- (void)towardName {
    //: for (FUBeautySkinModel *skin in self.beautySkins) {
    for (RecentModel *skin in self.beautySkins) {
        //: [self setValue:skin.currentValue forType:skin.type];
        [self cell:skin.currentValue message:skin.type];
    }
    //: self.skinSegmentationEnabled = _skinSegmentationEnabled;
    self.skinSegmentationEnabled = _skinSegmentationEnabled;
}

//: - (void)recoverAllSkinValuesToDefault {
- (void)clearDefault {
    //: for (FUBeautySkinModel *skin in self.beautySkins) {
    for (RecentModel *skin in self.beautySkins) {
        //: skin.currentValue = skin.defaultValue;
        skin.currentValue = skin.defaultValue;
        //: [self setValue:skin.currentValue forType:skin.type];
        [self cell:skin.currentValue message:skin.type];
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
- (void)cell:(double)value message:(FUBeautySkin)type {
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
- (NSArray<RecentModel *> *)compound {
    //: NSArray *skins = [[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautySkinKey];
    NSArray *skins = [[NSUserDefaults standardUserDefaults] objectForKey:kLet_scoreTeamData];
    //: NSMutableArray *mutableSkins = [[NSMutableArray alloc] init];
    NSMutableArray *mutableSkins = [[NSMutableArray alloc] init];
    //: for (NSDictionary *skin in skins) {
    for (NSDictionary *skin in skins) {
        //: FUBeautySkinModel *model = [[FUBeautySkinModel alloc] init];
        RecentModel *model = [[RecentModel alloc] init];
        //: [model setValuesForKeysWithDictionary:skin];
        [model setValuesForKeysWithDictionary:skin];
        //: [mutableSkins addObject:model];
        [mutableSkins addObject:model];
    }
    //: return [mutableSkins copy];
    return [mutableSkins copy];
}

//: - (NSArray<FUBeautySkinModel *> *)defaultSkins {
- (NSArray<RecentModel *> *)textSkins {
//    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
//    NSString *skinPath = self.performanceLevel == FUDevicePerformanceLevelLow_1 ? [bundle pathForResource:@"beauty_skin_low" ofType:@"json"] : self.performanceLevel < FUDevicePerformanceLevelHigh ? [bundle pathForResource:@"beauty_skin_lessThan2" ofType:@"json"] : [bundle pathForResource:@"beauty_skin" ofType:@"json"];
//    NSArray<NSDictionary *> *skinData = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:skinPath] options:NSJSONReadingMutableContainers error:nil];

    //: NSArray<NSDictionary *> *skinData = @[
    NSArray<NSDictionary *> *skinData = @[
        //: @{
        @{
            //: @"imageName":@"磨皮",
            StringFromHeritageData(kStr_atProviderValue):@"磨皮",
            //: @"name": [FFFLanguageManager getTextWithKey:@"mopi"],
            StringFromHeritageData(kStr_statusTitleData): [ItemManager sessionInformation:StringFromHeritageData(kStr_bottomTableRecordName)],
            //: @"type": @0,
            StringFromHeritageData(kStr_messageBottomData): @0,
            //: @"currentValue": @3.3,
            StringFromHeritageData(kStr_keyValue): @3.3,
            //: @"defaultValue": @3.3,
            StringFromHeritageData(kStr_collectionBubbleValue): @3.3,
            //: @"defaultValueInMiddle": @false,
            StringFromHeritageData(kStr_infoShouldBubbleValue): @false,
            //: @"ratio":@6,
            StringFromHeritageData(kStr_cellKeyData):@6,
            //: @"performanceLevel": @-1,
            StringFromHeritageData(kStr_addTitle): @-1,
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"祛斑痘",
            StringFromHeritageData(kStr_atProviderValue):StringFromHeritageData(kStr_shouldItemData),
            //: @"name":[FFFLanguageManager getTextWithKey:@"qudou"],
            StringFromHeritageData(kStr_statusTitleData):[ItemManager sessionInformation:StringFromHeritageData(kStr_indexWithViewData)],
            //: @"type":@11,
            StringFromHeritageData(kStr_messageBottomData):@11,
            //: @"currentValue":@0.0,
            StringFromHeritageData(kStr_keyValue):@0.0,
            //: @"defaultValue":@0.0,
            StringFromHeritageData(kStr_collectionBubbleValue):@0.0,
            //: @"defaultValueInMiddle":@false,
            StringFromHeritageData(kStr_infoShouldBubbleValue):@false,
            //: @"ratio":@6,
            StringFromHeritageData(kStr_cellKeyData):@6,
            //: @"performanceLevel": @-1
            StringFromHeritageData(kStr_addTitle): @-1
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"美白",
            StringFromHeritageData(kStr_atProviderValue):@"美白",
            //: @"name":[FFFLanguageManager getTextWithKey:@"meibai"],
            StringFromHeritageData(kStr_statusTitleData):[ItemManager sessionInformation:StringFromHeritageData(kStr_disableContent)],
            //: @"type":@1,
            StringFromHeritageData(kStr_messageBottomData):@1,
            //: @"currentValue":@0.4,
            StringFromHeritageData(kStr_keyValue):@0.4,
            //: @"defaultValue":@0.4,
            StringFromHeritageData(kStr_collectionBubbleValue):@0.4,
            //: @"defaultValueInMiddle":@false,
            StringFromHeritageData(kStr_infoShouldBubbleValue):@false,
            //: @"ratio":@1,
            StringFromHeritageData(kStr_cellKeyData):@1,
            //: @"performanceLevel": @1
            StringFromHeritageData(kStr_addTitle): @1
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"红润",
            StringFromHeritageData(kStr_atProviderValue):@"红润",
            //: @"name":[FFFLanguageManager getTextWithKey:@"hongrun"],
            StringFromHeritageData(kStr_statusTitleData):[ItemManager sessionInformation:StringFromHeritageData(kStr_canSessionData)],
            //: @"type":@2,
            StringFromHeritageData(kStr_messageBottomData):@2,
            //: @"currentValue":@0.3,
            StringFromHeritageData(kStr_keyValue):@0.3,
            //: @"defaultValue":@0.3,
            StringFromHeritageData(kStr_collectionBubbleValue):@0.3,
            //: @"defaultValueInMiddle":@false,
            StringFromHeritageData(kStr_infoShouldBubbleValue):@false,
            //: @"ratio":@1,
            StringFromHeritageData(kStr_cellKeyData):@1,
            //: @"performanceLevel": @1
            StringFromHeritageData(kStr_addTitle): @1
        //: },
        },
        //: @{
        @{
            //: @"imageName":@"锐化",
            StringFromHeritageData(kStr_atProviderValue):@"锐化",
            //: @"name":[FFFLanguageManager getTextWithKey:@"ruihua"],
            StringFromHeritageData(kStr_statusTitleData):[ItemManager sessionInformation:StringFromHeritageData(kStr_hideTextTitle)],
            //: @"type":@3,
            StringFromHeritageData(kStr_messageBottomData):@3,
            //: @"currentValue":@0.6,
            StringFromHeritageData(kStr_keyValue):@0.6,
            //: @"defaultValue":@0.6,
            StringFromHeritageData(kStr_collectionBubbleValue):@0.6,
            //: @"defaultValueInMiddle":@false,
            StringFromHeritageData(kStr_infoShouldBubbleValue):@false,
            //: @"ratio":@1,
            StringFromHeritageData(kStr_cellKeyData):@1,
            //: @"performanceLevel": @1
            StringFromHeritageData(kStr_addTitle): @1
        }
    //: ];
    ];
    //: NSMutableArray *skins = [[NSMutableArray alloc] init];
    NSMutableArray *skins = [[NSMutableArray alloc] init];
    //: for (NSDictionary *dictionary in skinData) {
    for (NSDictionary *dictionary in skinData) {
        //: FUBeautySkinModel *model = [[FUBeautySkinModel alloc] init];
        RecentModel *model = [[RecentModel alloc] init];
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
    for (RecentModel *skin in self.beautySkins) {
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

Byte * HeritageDataToCache(Byte *data) {
    int portion = data[0];
    int noblesse = data[1];
    Byte mobileIndex = data[2];
    int styleMedia = data[3];
    if (!portion) return data + styleMedia;
    for (int i = styleMedia; i < styleMedia + noblesse; i++) {
        int value = data[i] - mobileIndex;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[styleMedia + noblesse] = 0;
    return data + styleMedia;
}

NSString *StringFromHeritageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HeritageDataToCache(data)];
}
