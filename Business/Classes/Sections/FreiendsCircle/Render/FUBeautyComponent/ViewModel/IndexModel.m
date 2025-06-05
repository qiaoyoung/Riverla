
#import <Foundation/Foundation.h>
typedef struct {
    Byte tuna;
    Byte *oak;
    unsigned int exhibit;
    bool fallBehind;
	int replyMy;
} AngleData;

NSString *StringFromAngleData(AngleData *data);


//: filterIndex
AngleData kStr_normalTitleContent = (AngleData){216, (Byte []){190, 177, 180, 172, 189, 170, 145, 182, 188, 189, 160, 127}, 11, false, 119};


//: filterName
AngleData kStr_partStopValue = (AngleData){188, (Byte []){218, 213, 208, 200, 217, 206, 242, 221, 209, 217, 221}, 10, false, 204};


//: json
AngleData kStr_normValue = (AngleData){66, (Byte []){40, 49, 45, 44, 49}, 4, false, 231};


//: beauty_filter
AngleData kStr_opponentValue = (AngleData){111, (Byte []){13, 10, 14, 26, 27, 22, 48, 9, 6, 3, 27, 10, 29, 13}, 13, false, 95};


//: filterLevel
AngleData kStr_hazardReplyValue = (AngleData){215, (Byte []){177, 190, 187, 163, 178, 165, 155, 178, 161, 178, 187, 115}, 11, false, 88};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexModel.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/7.
//

// __M_A_C_R_O__
//: #import "FUBeautyFilterViewModel.h"
#import "IndexModel.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"
//: #import <FURenderKit/FURenderKit.h>
#import <FURenderKit/FURenderKit.h>

//: @interface FUBeautyFilterViewModel ()
@interface IndexModel ()

//: @property (nonatomic, copy) NSArray<FUBeautyFilterModel *> *beautyFilters;
@property (nonatomic, copy) NSArray<GoodLooksShow *> *beautyFilters;
/// 需要根据高低端机适配
//: @property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;
@property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;

//: @end
@end

//: @implementation FUBeautyFilterViewModel
@implementation IndexModel

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
        self.beautyFilters = [self supplement];
        //: _selectedIndex = 1;
        _selectedIndex = 1;
    }
    //: return self;
    return self;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)saveFitersPersistently {
- (void)userPersistently {
    //: if (self.beautyFilters.count == 0) {
    if (self.beautyFilters.count == 0) {
        //: return;
        return;
    }
    //: NSMutableArray *filters = [[NSMutableArray alloc] init];
    NSMutableArray *filters = [[NSMutableArray alloc] init];
    //: for (FUBeautyFilterModel *model in self.beautyFilters) {
    for (GoodLooksShow *model in self.beautyFilters) {
        //: NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[@"filterIndex", @"filterName", @"filterLevel"]];
        NSDictionary *dictionary = [model dictionaryWithValuesForKeys:@[StringFromAngleData(&kStr_normalTitleContent), StringFromAngleData(&kStr_partStopValue), StringFromAngleData(&kStr_hazardReplyValue)]];
        //: [filters addObject:dictionary];
        [filters addObject:dictionary];
    }
    //: [[NSUserDefaults standardUserDefaults] setObject:filters forKey:FUPersistentBeautyFilterKey];
    [[NSUserDefaults standardUserDefaults] setObject:filters forKey:let_eventData];
    //: [[NSUserDefaults standardUserDefaults] setInteger:self.selectedIndex forKey:FUPersistentBeautySelectedFilterIndexKey];
    [[NSUserDefaults standardUserDefaults] setInteger:self.selectedIndex forKey:let_cellTitle];
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
    [self text:self.beautyFilters[selectedIndex].filterName name:self.beautyFilters[selectedIndex].filterLevel];
    //: _selectedIndex = selectedIndex;
    _selectedIndex = selectedIndex;
}

//: - (void)setCurrentFilter {
- (void)subFilter {
    //: if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
    if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
        //: return;
        return;
    }
    //: [self setFilter:self.beautyFilters[self.selectedIndex].filterName level:self.beautyFilters[self.selectedIndex].filterLevel];
    [self text:self.beautyFilters[self.selectedIndex].filterName name:self.beautyFilters[self.selectedIndex].filterLevel];
}

//: - (void)setFilterValue:(double)value {
- (void)setSizeValue:(double)value {
    //: if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
    if (self.selectedIndex < 0 || self.selectedIndex >= self.beautyFilters.count) {
        //: return;
        return;
    }
    //: FUBeautyFilterModel *model = self.beautyFilters[self.selectedIndex];
    GoodLooksShow *model = self.beautyFilters[self.selectedIndex];
    //: model.filterLevel = value;
    model.filterLevel = value;
    //: [FURenderKit shareRenderKit].beauty.filterLevel = model.filterLevel;
    [FURenderKit shareRenderKit].beauty.filterLevel = model.filterLevel;
}

//: #pragma mark - Private methods
#pragma mark - Private methods

//: - (void)setFilter:(NSString *)filterName level:(double)filterLevel {
- (void)text:(NSString *)filterName name:(double)filterLevel {
    //: [FURenderKit shareRenderKit].beauty.filterName = filterName;
    [FURenderKit shareRenderKit].beauty.filterName = filterName;
    //: [FURenderKit shareRenderKit].beauty.filterLevel = filterLevel;
    [FURenderKit shareRenderKit].beauty.filterLevel = filterLevel;
}

//: - (NSArray<FUBeautyFilterModel *> *)localFilters {
- (NSArray<GoodLooksShow *> *)view {
    //: NSArray *filters = [[NSUserDefaults standardUserDefaults] objectForKey:FUPersistentBeautyFilterKey];
    NSArray *filters = [[NSUserDefaults standardUserDefaults] objectForKey:let_eventData];
    //: NSMutableArray *mutableFilters = [[NSMutableArray alloc] init];
    NSMutableArray *mutableFilters = [[NSMutableArray alloc] init];
    //: for (NSDictionary *filter in filters) {
    for (NSDictionary *filter in filters) {
        //: FUBeautyFilterModel *model = [[FUBeautyFilterModel alloc] init];
        GoodLooksShow *model = [[GoodLooksShow alloc] init];
        //: [model setValuesForKeysWithDictionary:filter];
        [model setValuesForKeysWithDictionary:filter];
        //: [mutableFilters addObject:model];
        [mutableFilters addObject:model];
    }
    //: return [mutableFilters copy];
    return [mutableFilters copy];
}

//: - (NSArray<FUBeautyFilterModel *> *)defaultFilters {
- (NSArray<GoodLooksShow *> *)supplement {
    //: NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    //: NSString *filterPath = [bundle pathForResource:@"beauty_filter" ofType:@"json"];
    NSString *filterPath = [bundle pathForResource:StringFromAngleData(&kStr_opponentValue) ofType:StringFromAngleData(&kStr_normValue)];
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
        GoodLooksShow *model = [[GoodLooksShow alloc] init];
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

Byte *AngleDataToByte(AngleData *data) {
    if (data->fallBehind) return data->oak;
    for (int i = 0; i < data->exhibit; i++) {
        data->oak[i] ^= data->tuna;
    }
    data->oak[data->exhibit] = 0;
    data->fallBehind = true;
	if (data->exhibit >= 1) {
		data->replyMy = data->oak[0];
	}
    return data->oak;
}

NSString *StringFromAngleData(AngleData *data) {
    return [NSString stringWithUTF8String:(char *)AngleDataToByte(data)];
}
