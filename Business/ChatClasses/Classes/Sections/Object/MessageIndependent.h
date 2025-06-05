// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// Notice
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"

//: @interface FFFSessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface MessageIndependent : NSObject<ShowBlock,LayoutCustom>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithDelay:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         arrowText:(id<BlueConfig>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<ListingInsert> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<WordTitleCell> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<InfoPicture> layout;

//: @end
@end