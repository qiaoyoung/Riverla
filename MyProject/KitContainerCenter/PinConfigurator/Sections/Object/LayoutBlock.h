// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// Notice
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "PinConfigurator.h"
//: #import "ViewSessionPrivateProtocol.h"
#import "ViewSessionPrivateProtocol.h"

//: @interface FFFSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface LayoutBlock : NSObject<InfoPicture>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) FFFInputView *inputView;
@property (nonatomic,strong) CellTingView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithSessionConfig:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         sessionCell:(id<BlueConfig>)sessionConfig;

//: @end
@end
