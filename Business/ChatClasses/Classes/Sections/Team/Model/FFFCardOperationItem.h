//
//  TeamCardOperationItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFCardDataSourceProtocol.h"

@interface FFFCardOperationItem : NSObject<FFFKitCardHeaderData>

@property(nonatomic,copy)   NSString *title;

@property(nonatomic,strong) UIImage  *imageNormal;

@property(nonatomic,strong) UIImage  *imageHighLight;

@property(nonatomic,readonly) NIMKitCardHeaderOpeator opera;

- (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera;

@end
