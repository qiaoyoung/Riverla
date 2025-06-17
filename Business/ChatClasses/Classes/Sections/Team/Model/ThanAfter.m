
#import <Foundation/Foundation.h>

NSString *StringFromDishData(Byte *data);


//: icon_add_pressed
Byte kStr_tallValue[] = {97, 16, 5, 246, 195, 100, 101, 115, 115, 101, 114, 112, 95, 100, 100, 97, 95, 110, 111, 99, 105, 244};


//: icon_remove_pressed
Byte kStr_storeTingName[] = {9, 19, 11, 146, 143, 9, 85, 42, 172, 34, 173, 100, 101, 115, 115, 101, 114, 112, 95, 101, 118, 111, 109, 101, 114, 95, 110, 111, 99, 105, 59};


//: icon_add_normal
Byte kStr_tornNoteData[] = {98, 15, 11, 35, 37, 166, 190, 83, 104, 16, 90, 108, 97, 109, 114, 111, 110, 95, 100, 100, 97, 95, 110, 111, 99, 105, 84};


//: icon_remove_normal
Byte kStr_improvedValue[] = {10, 18, 11, 248, 235, 30, 100, 12, 161, 73, 92, 108, 97, 109, 114, 111, 110, 95, 101, 118, 111, 109, 101, 114, 95, 110, 111, 99, 105, 196};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardOperationItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCardOperationItem.h"
#import "ThanAfter.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFCardOperationItem()
@interface ThanAfter()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation FFFCardOperationItem
@implementation ThanAfter

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithSmart:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self appear:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)appear:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".textKey;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:StringFromDishData(kStr_tornNoteData)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromDishData(kStr_tallValue)];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".textKey;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:StringFromDishData(kStr_improvedValue)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromDishData(kStr_storeTingName)];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NSString*)teamId {
- (NSString*)teamId {
    //: return @"";
    return @"";
}

//: - (NSString*)userId {
- (NSString*)userId {
    //: return @"";
    return @"";
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUserType:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}


//: - (NSString*)imageUrl {
- (NSString*)imageUrl {
    //: return nil;
    return nil;
}

//: - (NSString*)inviterAccid {
- (NSString*)inviterAccid {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return NO;
    return NO;
}

//: @end
@end

Byte * DishDataToCache(Byte *data) {
    int promBenefit = data[0];
    int tribute = data[1];
    int saveByMentalAct = data[2];
    if (!promBenefit) return data + saveByMentalAct;
    for (int i = 0; i < tribute / 2; i++) {
        int begin = saveByMentalAct + i;
        int end = saveByMentalAct + tribute - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[saveByMentalAct + tribute] = 0;
    return data + saveByMentalAct;
}

NSString *StringFromDishData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DishDataToCache(data)];
}  
