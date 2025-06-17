
#import <Foundation/Foundation.h>

NSString *StringFromDecreaseData(Byte *data);        


//: leftEdge
Byte kStr_grocerValue[] = {72, 8, 42, 14, 6, 228, 19, 5, 216, 9, 186, 46, 93, 243, 66, 59, 60, 74, 27, 58, 61, 59, 71};


//: title
Byte kStr_cruName[] = {35, 5, 40, 10, 11, 191, 122, 102, 8, 95, 76, 65, 76, 68, 61, 158};


//: footerTitle
Byte kStr_mumTodayTitle[] = {61, 11, 75, 10, 198, 107, 90, 198, 152, 245, 27, 36, 36, 41, 26, 39, 9, 30, 41, 33, 26, 208};


//: footerHeight
Byte kStr_thoroughText[] = {27, 12, 18, 9, 167, 204, 70, 251, 47, 84, 93, 93, 98, 83, 96, 54, 83, 87, 85, 86, 98, 166};


//: row
Byte kStr_sexFleshTitle[] = {52, 3, 46, 5, 77, 68, 65, 73, 213};


//: accessory
Byte kStr_recentMythPaintData[] = {14, 9, 87, 5, 124, 10, 12, 12, 14, 28, 28, 24, 27, 34, 167};


//: language
Byte kStr_broadcastHeText[] = {36, 8, 20, 13, 95, 182, 13, 181, 214, 160, 37, 70, 187, 88, 77, 90, 83, 97, 77, 83, 81, 182};


//: rowHeight
Byte kStr_hungerBarValue[] = {12, 9, 27, 14, 37, 199, 60, 5, 171, 183, 159, 42, 29, 167, 87, 84, 92, 45, 74, 78, 76, 77, 89, 89};


//: disableUserInteraction
Byte kStr_sharedToxicData[] = {96, 22, 61, 5, 166, 39, 44, 54, 36, 37, 47, 40, 24, 54, 40, 53, 12, 49, 55, 40, 53, 36, 38, 55, 44, 50, 49, 155};


//: detailTitle
Byte kStr_maxSecretaryTitle[] = {46, 11, 70, 4, 30, 31, 46, 27, 35, 38, 14, 35, 46, 38, 31, 218};


//: headerHeight
Byte kStr_hungerCocaineName[] = {67, 12, 76, 10, 40, 103, 83, 138, 118, 202, 28, 25, 21, 24, 25, 38, 252, 25, 29, 27, 28, 40, 143};


//: forbidSelect
Byte kStr_blueWhenData[] = {75, 12, 2, 10, 238, 204, 92, 104, 120, 240, 100, 109, 112, 96, 103, 98, 81, 99, 106, 99, 97, 114, 45};


//: extraInfo
Byte kStr_sexMiddleValue[] = {1, 9, 43, 12, 150, 151, 114, 72, 56, 245, 61, 25, 58, 77, 73, 71, 54, 30, 67, 59, 68, 126};


//: action
Byte kStr_indexMessageUpgradeValue[] = {26, 6, 8, 5, 238, 89, 91, 108, 97, 103, 102, 75};


//: cellClass
Byte kStr_moleText[] = {6, 9, 81, 12, 165, 210, 158, 251, 151, 113, 236, 53, 18, 20, 27, 27, 242, 27, 16, 34, 34, 249};


//: headerTitle
Byte kStr_careProperValue[] = {40, 11, 77, 5, 79, 27, 24, 20, 23, 24, 37, 7, 28, 39, 31, 24, 178};


//: disable
Byte kStr_revelationWindowValue[] = {25, 7, 68, 9, 11, 17, 35, 165, 36, 32, 37, 47, 29, 30, 40, 33, 224};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFCommonTableData.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @implementation NIMCommonTableSection
@implementation ClearUser

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithEyeglasses:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[StringFromDecreaseData(kStr_revelationWindowValue)] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[StringFromDecreaseData(kStr_careProperValue)];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[StringFromDecreaseData(kStr_mumTodayTitle)];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[StringFromDecreaseData(kStr_thoroughText)] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[StringFromDecreaseData(kStr_hungerCocaineName)] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [ColorContentRow blueDetect:dict[StringFromDecreaseData(kStr_sexFleshTitle)]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)independent:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            ClearUser * section = [[ClearUser alloc] initWithEyeglasses:dict];
            //: if (section) {
            if (section) {
                //: [array addObject:section];
                [array addObject:section];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end



//: @implementation NIMCommonTableRow
@implementation ColorContentRow

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithElect:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[StringFromDecreaseData(kStr_revelationWindowValue)] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[StringFromDecreaseData(kStr_cruName)];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[StringFromDecreaseData(kStr_maxSecretaryTitle)];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[StringFromDecreaseData(kStr_moleText)];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[StringFromDecreaseData(kStr_indexMessageUpgradeValue)];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[StringFromDecreaseData(kStr_hungerBarValue)] ? [dict[StringFromDecreaseData(kStr_hungerBarValue)] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[StringFromDecreaseData(kStr_sexMiddleValue)];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[StringFromDecreaseData(kStr_grocerValue)] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[StringFromDecreaseData(kStr_recentMythPaintData)] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[StringFromDecreaseData(kStr_blueWhenData)] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[StringFromDecreaseData(kStr_sharedToxicData)] boolValue];
        //: _language = dict[@"language"];
        _language = dict[StringFromDecreaseData(kStr_broadcastHeText)];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)blueDetect:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            ColorContentRow * row = [[ColorContentRow alloc] initWithElect:dict];
            //: if (row) {
            if (row) {
                //: [array addObject:row];
                [array addObject:row];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end

Byte * DecreaseDataToCache(Byte *data) {
    int currentTing = data[0];
    int tingDeviceThorough = data[1];
    Byte dredgeUpName = data[2];
    int evolutionaryToday = data[3];
    if (!currentTing) return data + evolutionaryToday;
    for (int i = evolutionaryToday; i < evolutionaryToday + tingDeviceThorough; i++) {
        int value = data[i] + dredgeUpName;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[evolutionaryToday + tingDeviceThorough] = 0;
    return data + evolutionaryToday;
}

NSString *StringFromDecreaseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DecreaseDataToCache(data)];
}
