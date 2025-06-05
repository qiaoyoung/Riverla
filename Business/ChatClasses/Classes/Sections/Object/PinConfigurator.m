// __DEBUG__
// __CLOSE_PRINT__
//
//  PinConfigurator.m
// Notice
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "PinConfigurator.h"
//: #import "FFFSessionMsgDatasource.h"
#import "CornerDatasource.h"
//: #import "FFFSessionInteractorImpl.h"
#import "MessageIndependent.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSessionInteractorImpl.h"
#import "MessageIndependent.h"
//: #import "FFFSessionDataSourceImpl.h"
#import "SmartImpl.h"
//: #import "FFFSessionLayoutImpl.h"
#import "LayoutBlock.h"
//: #import "FFFSessionTableAdapter.h"
#import "ContentAdapter.h"

/*
                                            BarOriginViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [ShowBlock] -->  |
             .
             .                                                                                          | ---> [InfoPicture]
             .
             ↓
  [BarOriginViewController]-------> [PinConfigurator] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [ContentAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface FFFSessionConfigurator()
@interface PinConfigurator()

//: @property (nonatomic,strong) FFFSessionInteractorImpl *interactor;
@property (nonatomic,strong) MessageIndependent *interactor;

//: @property (nonatomic,strong) FFFSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) ContentAdapter *tableAdapter;

//: @end
@end

//: @implementation FFFSessionConfigurator
@implementation PinConfigurator

//: - (void)setup:(FFFSessionViewController *)vc
- (void)pastVerticalKit:(BarOriginViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<FFFSessionConfig> sessionConfig = vc.sessionConfig;
    id<BlueConfig> sessionConfig = vc.viewDay;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: FFFInputView *inputView = vc.sessionInputView;
    CellTingView *inputView = vc.sessionInputView;

    //: FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    SmartImpl *datasource = [[SmartImpl alloc] initWithTitle:session sole:sessionConfig];
    //: FFFSessionLayoutImpl *layout = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    LayoutBlock *layout = [[LayoutBlock alloc] initWithSessionConfig:session sessionCell:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[MessageIndependent alloc] initWithDelay:session arrowText:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setAgnomenDelegate:_interactor];

    //: _tableAdapter = [[FFFSessionTableAdapter alloc] init];
    _tableAdapter = [[ContentAdapter alloc] init];
    //: _tableAdapter.interactor = _interactor;
    _tableAdapter.interactor = _interactor;
    //: _tableAdapter.delegate = vc;
    _tableAdapter.delegate = vc;
    //: vc.tableView.delegate = _tableAdapter;
    vc.tableView.delegate = _tableAdapter;
    //: vc.tableView.dataSource = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;


    //: [vc setInteractor:_interactor];
    [vc setInteractor:_interactor];
}


//: @end
@end