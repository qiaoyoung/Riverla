
#import <Foundation/Foundation.h>

NSString *StringFromCountegratedData(Byte *data);        


//: icon_remove_normal
Byte kStr_blondValue[] = {20, 18, 62, 7, 56, 137, 80, 43, 37, 49, 48, 33, 52, 39, 47, 49, 56, 39, 33, 48, 49, 52, 47, 35, 46, 91};


//: icon_add_pressed
Byte kStr_developmentalData[] = {34, 16, 18, 10, 157, 209, 42, 94, 248, 192, 87, 81, 93, 92, 77, 79, 82, 82, 77, 94, 96, 83, 97, 97, 83, 82, 162};


//: icon_remove_pressed
Byte kStr_ballEvolveText[] = {49, 19, 62, 9, 119, 148, 178, 20, 222, 43, 37, 49, 48, 33, 52, 39, 47, 49, 56, 39, 33, 50, 52, 39, 53, 53, 39, 38, 96};


//: icon_add_normal
Byte kStr_cottaGratefulTitle[] = {55, 15, 32, 12, 192, 113, 23, 14, 83, 58, 164, 107, 73, 67, 79, 78, 63, 65, 68, 68, 63, 78, 79, 82, 77, 65, 76, 19};

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
#import "ListingVideo.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "ViewGlobalMacro.h"
#import "ViewGlobalMacro.h"

//: @interface FFFCardOperationItem()
@interface ListingVideo()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation FFFCardOperationItem
@implementation ListingVideo

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithSure:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self success:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)success:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".positionMenu;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:StringFromCountegratedData(kStr_cottaGratefulTitle)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromCountegratedData(kStr_developmentalData)];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".positionMenu;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:StringFromCountegratedData(kStr_blondValue)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromCountegratedData(kStr_ballEvolveText)];
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

Byte * CountegratedDataToCache(Byte *data) {
    int controlAgain = data[0];
    int launch = data[1];
    Byte various = data[2];
    int lemmaFascinating = data[3];
    if (!controlAgain) return data + lemmaFascinating;
    for (int i = lemmaFascinating; i < lemmaFascinating + launch; i++) {
        int value = data[i] + various;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[lemmaFascinating + launch] = 0;
    return data + lemmaFascinating;
}

NSString *StringFromCountegratedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CountegratedDataToCache(data)];
}
