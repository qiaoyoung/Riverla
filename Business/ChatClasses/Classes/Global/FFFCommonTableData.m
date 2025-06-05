
#import <Foundation/Foundation.h>

NSString *StringFromPitData(Byte *data);


//: disable
Byte kStr_surprisinglyContent[] = {81, 7, 62, 8, 56, 80, 110, 222, 162, 167, 177, 159, 160, 170, 163, 39};


//: action
Byte kStr_operativeData[] = {18, 6, 32, 5, 213, 129, 131, 148, 137, 143, 142, 160};


//: leftEdge
Byte kStr_availValue[] = {42, 8, 11, 9, 61, 200, 205, 5, 148, 119, 112, 113, 127, 80, 111, 114, 112, 140};


//: language
Byte kStr_tressTradeName[] = {19, 8, 25, 9, 88, 144, 160, 2, 3, 133, 122, 135, 128, 142, 122, 128, 126, 172};


//: rowHeight
Byte kStr_afraidData[] = {47, 9, 28, 12, 206, 10, 112, 82, 167, 215, 151, 173, 142, 139, 147, 100, 129, 133, 131, 132, 144, 102};


//: title
Byte kStr_ventureValue[] = {12, 5, 35, 12, 244, 136, 183, 118, 28, 211, 142, 141, 151, 140, 151, 143, 136, 67};


//: footerHeight
Byte kStr_roofBrownValue[] = {88, 12, 17, 12, 137, 78, 35, 2, 103, 177, 226, 92, 119, 128, 128, 133, 118, 131, 89, 118, 122, 120, 121, 133, 50};


//: row
Byte kStr_difficultyEnableTitle[] = {14, 3, 5, 9, 180, 134, 88, 76, 237, 119, 116, 124, 7};


//: cellClass
Byte kStr_suicideTitle[] = {10, 9, 73, 10, 75, 194, 226, 138, 70, 224, 172, 174, 181, 181, 140, 181, 170, 188, 188, 8};


//: extraInfo
Byte kStr_earnTitle[] = {46, 9, 46, 4, 147, 166, 162, 160, 143, 119, 156, 148, 157, 196};


//: accessory
Byte kStr_oldenSearchName[] = {39, 9, 36, 12, 109, 160, 228, 29, 76, 251, 11, 206, 133, 135, 135, 137, 151, 151, 147, 150, 157, 119};


//: detailTitle
Byte kStr_exceedText[] = {69, 11, 18, 13, 151, 15, 168, 25, 247, 38, 240, 14, 197, 118, 119, 134, 115, 123, 126, 102, 123, 134, 126, 119, 80};


//: disableUserInteraction
Byte kStr_wayComposeExceedTitle[] = {35, 22, 22, 4, 122, 127, 137, 119, 120, 130, 123, 107, 137, 123, 136, 95, 132, 138, 123, 136, 119, 121, 138, 127, 133, 132, 195};


//: headerTitle
Byte kStr_clothWorriedTitle[] = {69, 11, 42, 13, 122, 226, 66, 235, 11, 26, 121, 47, 134, 146, 143, 139, 142, 143, 156, 126, 147, 158, 150, 143, 215};


//: footerTitle
Byte kStr_speakerTitle[] = {27, 11, 82, 13, 182, 209, 85, 211, 105, 92, 15, 225, 82, 184, 193, 193, 198, 183, 196, 166, 187, 198, 190, 183, 129};


//: headerHeight
Byte kStr_tactTitle[] = {51, 12, 26, 4, 130, 127, 123, 126, 127, 140, 98, 127, 131, 129, 130, 142, 136};


//: forbidSelect
Byte kStr_hairHighwayData[] = {73, 12, 17, 14, 112, 106, 112, 249, 237, 157, 189, 73, 8, 58, 119, 128, 131, 115, 122, 117, 100, 118, 125, 118, 116, 133, 44};

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
@implementation UserSection

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithColorDict:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[StringFromPitData(kStr_surprisinglyContent)] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[StringFromPitData(kStr_clothWorriedTitle)];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[StringFromPitData(kStr_speakerTitle)];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[StringFromPitData(kStr_roofBrownValue)] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[StringFromPitData(kStr_tactTitle)] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [BuildRow prolusion:dict[StringFromPitData(kStr_difficultyEnableTitle)]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)pinDown:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            UserSection * section = [[UserSection alloc] initWithColorDict:dict];
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
@implementation BuildRow

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithCurrent:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[StringFromPitData(kStr_surprisinglyContent)] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[StringFromPitData(kStr_ventureValue)];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[StringFromPitData(kStr_exceedText)];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[StringFromPitData(kStr_suicideTitle)];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[StringFromPitData(kStr_operativeData)];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[StringFromPitData(kStr_afraidData)] ? [dict[StringFromPitData(kStr_afraidData)] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[StringFromPitData(kStr_earnTitle)];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[StringFromPitData(kStr_availValue)] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[StringFromPitData(kStr_oldenSearchName)] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[StringFromPitData(kStr_hairHighwayData)] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[StringFromPitData(kStr_wayComposeExceedTitle)] boolValue];
        //: _language = dict[@"language"];
        _language = dict[StringFromPitData(kStr_tressTradeName)];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)prolusion:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            BuildRow * row = [[BuildRow alloc] initWithCurrent:dict];
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

Byte * PitDataToCache(Byte *data) {
    int buildUnderVeal = data[0];
    int memberBalance = data[1];
    Byte deploy = data[2];
    int oakSwing = data[3];
    if (!buildUnderVeal) return data + oakSwing;
    for (int i = oakSwing; i < oakSwing + memberBalance; i++) {
        int value = data[i] - deploy;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[oakSwing + memberBalance] = 0;
    return data + oakSwing;
}

NSString *StringFromPitData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PitDataToCache(data)];
}
