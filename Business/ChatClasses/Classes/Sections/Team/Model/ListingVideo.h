// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardOperationItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: @interface FFFCardOperationItem : NSObject<FFFKitCardHeaderData>
@interface ListingVideo : NSObject<FFFKitCardHeaderData>

//: @property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *title;

//: @property(nonatomic,strong) UIImage *imageNormal;
@property(nonatomic,strong) UIImage *imageNormal;

//: @property(nonatomic,strong) UIImage *imageHighLight;
@property(nonatomic,strong) UIImage *imageHighLight;

//: @property(nonatomic,readonly) NIMKitCardHeaderOpeator opera;
@property(nonatomic,readonly) NIMKitCardHeaderOpeator opera;

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera;
- (instancetype)initWithSure:(NIMKitCardHeaderOpeator)opera;

//: @end
@end