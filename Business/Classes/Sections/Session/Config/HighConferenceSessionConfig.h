// __DEBUG__
// __CLOSE_PRINT__
//
//  HighConferenceSessionConfig.h
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "PointConfig.h"

//: @class NIMMessage;
@class NIMMessage;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESThreadSessionConfig : NTESSessionConfig
@interface HighConferenceSessionConfig : PointConfig

//: - (instancetype)initWithMessage:(NIMMessage *)message;
- (instancetype)initWith:(NIMMessage *)message;

//: @end
@end

//: @interface NTESThreadDataSourceProvider : NSObject <FFFKitMessageProvider>
@interface WorstedYarnProvider : NSObject <TitleWireProvider>

//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END