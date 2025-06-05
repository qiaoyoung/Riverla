// __DEBUG__
// __CLOSE_PRINT__
//
//  LoginCustomManager.h
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"

//: @interface NTESLoginData : NSObject <YYModel>
@interface LoginData : NSObject <YYModel>

//: @property (nonatomic,copy) NSString *account;
@property (nonatomic,copy) NSString *account;
//: @property (nonatomic,copy) NSString *token;
@property (nonatomic,copy) NSString *token;
//: @property (nonatomic) int authType;
@property (nonatomic) int authType;
//: @property (nonatomic,copy) NSString *loginExtension;
@property (nonatomic,copy) NSString *loginExtension;

//: - (BOOL)isValid;
- (BOOL)content;

//: @end
@end

//: @interface CCCLoginManager : NSObject
@interface LoginCustomManager : NSObject
//: + (instancetype)sharedManager;
+ (instancetype)correlate;

//: @property (nonatomic,strong) NTESLoginData *currentLoginData;
@property (nonatomic,strong) LoginData *currentLoginData;
//: @end
@end