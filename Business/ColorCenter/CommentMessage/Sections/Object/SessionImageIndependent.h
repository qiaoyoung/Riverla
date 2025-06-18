// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "UserSessionPrivateProtocol.h"
#import "UserSessionPrivateProtocol.h"
//: #import "UserSessionConfigurateProtocol.h"
#import "UserSessionConfigurateProtocol.h"

//: @interface FFFSessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface SessionImageIndependent : NSObject<ViewHighMagnitudeeractor,TitleDetail>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithExceptText:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         shouldTo:(id<FrameConfig>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<BubbleAction> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<EmptySource> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<UserTing> layout;

//: @end
@end
