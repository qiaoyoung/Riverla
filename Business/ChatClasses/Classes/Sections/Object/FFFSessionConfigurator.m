//
//  FFFSessionConfigurator.m
// MyUserKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "FFFSessionConfigurator.h"
#import "FFFSessionMsgDatasource.h"
#import "FFFSessionInteractorImpl.h"
#import "UIViewNimKit.h"
#import "FFFMessageModel.h"
#import "FFFGlobalMacro.h"
#import "FFFSessionInteractorImpl.h"
#import "FFFSessionDataSourceImpl.h"
#import "FFFSessionLayoutImpl.h"
#import "FFFSessionTableAdapter.h"
/*
                                            FFFSessionViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [NIMSessionInteractor] -->  |
             .
             .                                                                                          | ---> [NIMSessionLayout]
             .
             ↓
  [FFFSessionViewController]-------> [FFFSessionConfigurator] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [FFFSessionTableAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

@interface FFFSessionConfigurator()

@property (nonatomic,strong) FFFSessionInteractorImpl   *interactor;

@property (nonatomic,strong) FFFSessionTableAdapter     *tableAdapter;

@end

@implementation FFFSessionConfigurator

- (void)setup:(FFFSessionViewController *)vc
{
    NIMSession *session    = vc.session;
    id<FFFSessionConfig> sessionConfig = vc.sessionConfig;
    UITableView *tableView  = vc.tableView;
    FFFInputView *inputView = vc.sessionInputView;
    
    FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    FFFSessionLayoutImpl *layout         = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    layout.tableView = tableView;
    layout.inputView = inputView;
    
    
    _interactor                          = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor.delegate                 = vc;
    _interactor.dataSource               = datasource;
    _interactor.layout                   = layout;
    
    [layout setDelegate:_interactor];
    
    _tableAdapter = [[FFFSessionTableAdapter alloc] init];
    _tableAdapter.interactor = _interactor;
    _tableAdapter.delegate   = vc;
    vc.tableView.delegate = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;
    
    
    [vc setInteractor:_interactor];
}


@end
