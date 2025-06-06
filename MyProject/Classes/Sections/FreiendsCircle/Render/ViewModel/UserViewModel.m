// __DEBUG__
// __CLOSE_PRINT__
//
//  UserViewModel.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/26.
//

// __M_A_C_R_O__
//: #import "FUBeautyViewModel.h"
#import "UserViewModel.h"

//: @implementation FUBeautyViewModel
@implementation UserViewModel

//: #pragma mark - Overriding
#pragma mark - Overriding

//: - (FUModule)module {
- (FUModule)module {
    //: return FUModuleBeauty;
    return FUModuleBeauty;
}

//: - (BOOL)supportMediaRendering {
- (BOOL)supportMediaRendering {
    //: return YES;
    return YES;
}

//: - (BOOL)supportPresetSelection {
- (BOOL)supportPresetSelection {
    //: return YES;
    return YES;
}

//: @end
@end