// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentMessage.m
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "CommentMessage.h"
//: #import "FFFSessionMsgDatasource.h"
#import "PointDatasource.h"
//: #import "FFFSessionInteractorImpl.h"
#import "SessionImageIndependent.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSessionInteractorImpl.h"
#import "SessionImageIndependent.h"
//: #import "FFFSessionDataSourceImpl.h"
#import "ViewKey.h"
//: #import "FFFSessionLayoutImpl.h"
#import "EmptyTable.h"
//: #import "FFFSessionTableAdapter.h"
#import "FixingSelected.h"

/*
                                            StopViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [ViewHighMagnitudeeractor] -->  |
             .
             .                                                                                          | ---> [UserTing]
             .
             ↓
  [StopViewController]-------> [CommentMessage] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [FixingSelected]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface FFFSessionConfigurator()
@interface CommentMessage()

//: @property (nonatomic,strong) FFFSessionInteractorImpl *interactor;
@property (nonatomic,strong) SessionImageIndependent *interactor;

//: @property (nonatomic,strong) FFFSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) FixingSelected *tableAdapter;

//: @end
@end

//: @implementation FFFSessionConfigurator
@implementation CommentMessage

//: - (void)setup:(FFFSessionViewController *)vc
- (void)info:(StopViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<FFFSessionConfig> sessionConfig = vc.sessionConfig;
    id<FrameConfig> sessionConfig = vc.actinicRayConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: FFFInputView *inputView = vc.sessionInputView;
    DefenceView *inputView = vc.sessionInputView;

    //: FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    ViewKey *datasource = [[ViewKey alloc] initWithShow:session dedication:sessionConfig];
    //: FFFSessionLayoutImpl *layout = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    EmptyTable *layout = [[EmptyTable alloc] initWithAmbages:session state:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[SessionImageIndependent alloc] initWithExceptText:session shouldTo:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDoing:_interactor];

    //: _tableAdapter = [[FFFSessionTableAdapter alloc] init];
    _tableAdapter = [[FixingSelected alloc] init];
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