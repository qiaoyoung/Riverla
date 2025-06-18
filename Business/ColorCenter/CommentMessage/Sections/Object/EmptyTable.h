// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// Afterwards
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "CommentMessage.h"
//: #import "UserSessionPrivateProtocol.h"
#import "UserSessionPrivateProtocol.h"

//: @interface FFFSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface EmptyTable : NSObject<UserTing>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) FFFInputView *inputView;
@property (nonatomic,strong) DefenceView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithAmbages:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         state:(id<FrameConfig>)sessionConfig;

//: @end
@end
