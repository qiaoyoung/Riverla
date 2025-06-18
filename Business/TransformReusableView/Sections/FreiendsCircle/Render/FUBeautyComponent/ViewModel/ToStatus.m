
#import <Foundation/Foundation.h>

NSString *StringFromCaptureData(Byte *data);


//: beauty_filter
Byte kStr_bubbleAddValue[] = {92, 13, 28, 4, 126, 129, 125, 145, 144, 149, 123, 130, 133, 136, 144, 129, 142, 61};


//: json
Byte kStr_recordTitle[] = {99, 4, 79, 9, 8, 179, 214, 93, 131, 185, 194, 190, 189, 229};


//: filterIndex
Byte kStr_imageTableText[] = {16, 11, 39, 14, 234, 38, 173, 101, 215, 134, 133, 39, 97, 181, 141, 144, 147, 155, 140, 153, 112, 149, 139, 140, 159, 89};


//: filterName
Byte kStr_areaOnData[] = {18, 10, 84, 14, 157, 116, 186, 82, 174, 11, 50, 195, 91, 117, 186, 189, 192, 200, 185, 198, 162, 181, 193, 185, 130};


//: filterLevel
Byte kStr_itemRemoteName[] = {54, 11, 10, 13, 132, 80, 36, 21, 197, 116, 100, 248, 22, 112, 115, 118, 126, 111, 124, 86, 111, 128, 111, 118, 30};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToStatus.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/7.
//

// __M_A_C_R_O__
//: #import "FUBeautyFilterViewModel.h"
#import "ToStatus.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"
//: #import <FURenderKit/FURenderKit.h>
#import <FURenderKit/FURenderKit.h>

//: @interface FUBeautyFilterViewModel ()
@interface ToStatus ()

//: @property (nonatomic, copy) NSArray<FUBeautyFilterModel *> *beautyFilters;
@property (nonatomic, copy) NSArray<EmptyTableButton *> *beautyFilters;
/// 需要根据高低端机适配
//: @property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;
@property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;

//: @end
@end

//: @implementation FUBeautyFilterViewModel
@implementation ToStatus

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
//        if ([[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautyFilterKey]) {
//            // 获取本地滤镜数据
//            self.beautyFilters = [self localFilters];
//        } else {
//            // 获取默认滤镜数据
//            self.beautyFilters = [self defaultFilters];
//        }
//        if ([[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautySelectedFilterIndexKey]) {
//            // 获取本地保存选中的索引
//            _selectedIndex = [[NSUserDefaults standardUserDefaults] integerForKey:FUPersistentBeautySelectedFilterIndexKey];
//        } else {
//            // 低端机默认关闭滤镜，高端机默认 1
//            _selectedIndex = self.performanceLevel == FUDevicePerformanceLevelLow_1 ? 0 : 1;
//        }

        //: self.beautyFilters = [self defaultFilters];
        self.beautyFilters = [self container];
        //: _selectedIndex = 1;
        _selectedIndex = 1;
    }
    //: return self;
    return self;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)saveFitersPersistently {
- (void)fiters {
    //: if (self.beautyFilters.count == 0) {
    if (self.beautyFilters.count == 0) {
        //: return;
        return;
    }
    //: NSMutableArray *filters = [[NSMutableArray alloc] init];
    NSMutableArray *filters = [[NSMutableArray alloc] init];
    //: for (FUBeautyFilterModel *model in self.beautyFilters) {
    for (EmptyTableButton *model in self.beautyFilters) {
        //: NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[@"filterIndex", @"filterName", @"filterLevel"]];
        NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[StringFromCaptureData(kStr_imageTableText), StringFromCaptureData(kStr_areaOnData), StringFromCaptureData(kStr_itemRemoteName)]];
        //: [filters addObject:dictionary];
        [filters addObject:dictionary];
    }
    //: [[NSUserDefaults standardUserDefaults] setObject:filters forKey:FUPersistentBeautyFilterKey];
    [[NSUserDefaults standardUserDefaults] setObject:filters forKey:kLet_rangeTitle];
    //: [[NSUserDefaults standardUserDefaults] setInteger:self.selectedIndex forKey:FUPersistentBeautySelectedFilterIndexKey];
    [[NSUserDefaults standardUserDefaults] setInteger:self.selectedIndex forKey:kLet_bottomText];
    //: [[NSUserDefaults standardUserDefaults] synchronize];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//: - (void)setSelectedIndex:(NSInteger)selectedIndex {
- (void)setSelectedIndex:(NSInteger)selectedIndex {
    //: if (selectedIndex < 0 || selectedIndex >= self.beautyFilters.count) {
    if (selectedIndex < 0 || selectedIndex >= self.beautyFilters.count) {
        //: return;
        return;
    }
    //: [self setFilter:self.beautyFilters[selectedIndex].filterName level:self.beautyFilters[selectedIndex].filterLevel];
    [self gray:self.beautyFilters[selectedIndex].filterName scale:self.beautyFilters[selectedIndex].filterLevel];
    //: _selectedIndex = selectedIndex;
    _selectedIndex = selectedIndex;
}

//: - (void)setCurrentFilter {
- (void)checkedNeed {
    //: if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
    if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
        //: return;
        return;
    }
    //: [self setFilter:self.beautyFilters[self.selectedIndex].filterName level:self.beautyFilters[self.selectedIndex].filterLevel];
    [self gray:self.beautyFilters[self.selectedIndex].filterName scale:self.beautyFilters[self.selectedIndex].filterLevel];
}

//: - (void)setFilterValue:(double)value {
- (void)setChild:(double)value {
    //: if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
    if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
        //: return;
        return;
    }
    //: FUBeautyFilterModel *model = self.beautyFilters[self.selectedIndex];
    EmptyTableButton *model = self.beautyFilters[self.selectedIndex];
    //: model.filterLevel = value;
    model.filterLevel = value;
    //: [FURenderKit shareRenderKit].beauty.filterLevel = model.filterLevel;
    [FURenderKit shareRenderKit].beauty.filterLevel = model.filterLevel;
}

//: #pragma mark - Private methods
#pragma mark - Private methods

//: - (void)setFilter:(NSString *)filterName level:(double)filterLevel {
- (void)gray:(NSString *)filterName scale:(double)filterLevel {
    //: [FURenderKit shareRenderKit].beauty.filterName = filterName;
    [FURenderKit shareRenderKit].beauty.filterName = filterName;
    //: [FURenderKit shareRenderKit].beauty.filterLevel = filterLevel;
    [FURenderKit shareRenderKit].beauty.filterLevel = filterLevel;
}

//: - (NSArray<FUBeautyFilterModel *> *)localFilters {
- (NSArray<EmptyTableButton *> *)domainTap {
    //: NSArray *filters = [[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautyFilterKey];
    NSArray *filters = [[NSUserDefaults standardUserDefaults] objectForKey:kLet_rangeTitle];
    //: NSMutableArray *mutableFilters = [[NSMutableArray alloc] init];
    NSMutableArray *mutableFilters = [[NSMutableArray alloc] init];
    //: for (NSDictionary *filter in filters) {
    for (NSDictionary *filter in filters) {
        //: FUBeautyFilterModel *model = [[FUBeautyFilterModel alloc] init];
        EmptyTableButton *model = [[EmptyTableButton alloc] init];
        //: [model setValuesForKeysWithDictionary:filter];
        [model setValuesForKeysWithDictionary:filter];
        //: [mutableFilters addObject:model];
        [mutableFilters addObject:model];
    }
    //: return [mutableFilters copy];
    return [mutableFilters copy];
}

//: - (NSArray<FUBeautyFilterModel *> *)defaultFilters {
- (NSArray<EmptyTableButton *> *)container {
    //: NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    //: NSString *filterPath = [bundle pathForResource:@"beauty_filter" ofType:@"json"];
    NSString *filterPath = [bundle pathForResource:StringFromCaptureData(kStr_bubbleAddValue) ofType:StringFromCaptureData(kStr_recordTitle)];
    //: NSArray<NSDictionary *> *filterData = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filterPath] options:NSJSONReadingMutableContainers error:nil];
    NSArray<NSDictionary *> *filterData = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filterPath] options:NSJSONReadingMutableContainers error:nil];
//    NSArray<NSDictionary *> *filterData = @[
//        @{
//            @"filterIndex":@1,
//            @"filterName":@"ziran1",
//            @"filterNames":[NSString stringWithFormat:@"%@1",LangKey(@"ziran")],
//            @"filterLevel":@0
//        },
//        @{
//            @"filterIndex":@2,
//            @"filterName":@"ziran2",
//            @"filterNames":[NSString stringWithFormat:@"%@2",LangKey(@"ziran")],
//            @"filterLevel":@0.4
//        },
//        @{
//            @"filterIndex":@56,
//            @"filterName":@"xiaoqingxin1",
//            @"filterNames":[NSString stringWithFormat:@"%@1",LangKey(@"qingxin")],
//            @"filterLevel":@0.4
//        },
//        @{
//            @"filterIndex":@57,
//            @"filterName":@"xiaoqingxin3",
//            @"filterNames":[NSString stringWithFormat:@"%@2",LangKey(@"qingxin")],
//            @"filterLevel":@0.4
//        },
//        @{
//            @"filterIndex":@58,
//            @"filterName":@"xiaoqingxin4",
//            @"filterNames":[NSString stringWithFormat:@"%@3",LangKey(@"qingxin")],
//            @"filterLevel":@0.4
//        }
//    ];

    //: NSMutableArray *filters = [[NSMutableArray alloc] init];
    NSMutableArray *filters = [[NSMutableArray alloc] init];
    //: for (NSDictionary *dictionary in filterData) {
    for (NSDictionary *dictionary in filterData) {
        //: FUBeautyFilterModel *model = [[FUBeautyFilterModel alloc] init];
        EmptyTableButton *model = [[EmptyTableButton alloc] init];
        //: [model setValuesForKeysWithDictionary:dictionary];
        [model setValuesForKeysWithDictionary:dictionary];
        //: [filters addObject:model];
        [filters addObject:model];
    }
    //: return [filters copy];
    return [filters copy];
}

//: @end
@end

Byte * CaptureDataToCache(Byte *data) {
    int cellMessage = data[0];
    int disableInfo = data[1];
    Byte canKey = data[2];
    int messageVideo = data[3];
    if (!cellMessage) return data + messageVideo;
    for (int i = messageVideo; i < messageVideo + disableInfo; i++) {
        int value = data[i] - canKey;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[messageVideo + disableInfo] = 0;
    return data + messageVideo;
}

NSString *StringFromCaptureData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CaptureDataToCache(data)];
}
