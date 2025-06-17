//
//  FFFContactSelectViewController.m
// MyUserKit
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "FFFContactSelectViewController.h"
#import "FFFContactSelectTabView.h"
#import "FFFContactPickedView.h"
#import "FFFGroupedUsrInfo.h"
#import "FFFNeeyoGroupedData.h"
#import "FFFContactDataCell.h"
#import "UIViewNimKit.h"
#import "MyUserKit.h"
#import "FFFKitDependency.h"
#import "FFFGlobalMacro.h"
#import "FFFSetGroupNameView.h"
#import "FFFGroupAvatarViewController.h"


@interface FFFContactSelectViewController ()<UITableViewDataSource, UITableViewDelegate, FFFContactPickedViewDelegate>{
    NSMutableArray *_selectecContacts;
}
@property (strong, nonatomic) UITableView *tableView;
@property(nonatomic, strong) FFFSetGroupNameView *setGroupnameView;
@property(nonatomic, strong) UIView *headerview;
@property(nonatomic, strong) UIButton *selectedBtn;
@property(nonatomic, strong) UITextField *textfield;
@property(nonatomic, strong) UIImage *headPortrait;

@property (strong, nonatomic) FFFContactSelectTabView *selectIndicatorView;

@property (nonatomic, assign) NSInteger maxSelectCount;

@property(nonatomic, strong) NSDictionary *contentDic;

@property(nonatomic, strong) NSArray *sectionTitles;
@property (nonatomic,strong) UIView *defView;

@end

@implementation FFFContactSelectViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        _maxSelectCount = NSIntegerMax;
    }
    return self;
}

- (instancetype)initWithConfig:(id<FFFContactSelectConfig>) config{
    self = [self initWithNibName:nil bundle:nil];
    if (self) {
        self.config = config;
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT) style:UITableViewStylePlain];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.separatorStyle =  UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.tableView];
    
    [self.view addSubview:self.defView];
    
    [self.view addSubview:self.selectIndicatorView];
    [self isshowSelectindicator];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self setUpNav];
    
    self.selectIndicatorView.pickedView.delegate = self;
//    [self.selectIndicatorView.doneButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setUpNav
{
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT)];
    [self.view addSubview:bgView];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(5, SCREEN_STATUS_HEIGHT+4, 40, 40);
    [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:backButton];
    
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-200)/2, SCREEN_STATUS_HEIGHT+4, 200, 40)];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.textColor = [UIColor blackColor];
    labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.text = LangKey(@"select_contact");
    [bgView addSubview:labtitle];
    
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-48, SCREEN_STATUS_HEIGHT+10, 48, 28);
    submitButton.backgroundColor = ThemeColor;
    submitButton.layer.cornerRadius = 14;
    [submitButton setImage:[UIImage imageNamed:@"ic_choose_w"] forState:(UIControlStateNormal)];
    [submitButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:submitButton];
    
}

- (void)backAction{
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:NO];
    }
}

- (void)refreshDetailTitle
{
    UIButton *btn = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
    if(_selectecContacts.count > 0){
        [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
//        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -5);
        btn.frame = CGRectMake(0, 0, 70, 40);

    }else{
        [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
        btn.frame = CGRectMake(0, 0, 40, 40);
    }
    
//    UILabel *label = (UILabel *)self.navigationItem.rightBarButtonItem.customView;
//    [label setText:self.detailTitle];
//    [label sizeToFit];
}

- (NSString *)detailTitle
{
    NSString *detail = @"";
    if (_selectecContacts.count > 0)
    {
        detail = [NSString stringWithFormat:@"（%zd）",_selectecContacts.count];
    }

    return detail;
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
//    UIEdgeInsets safeAreaInsets = self.view.safeAreaInsets;
    
//    self.selectIndicatorView.nim_width = self.view.nim_width;
//    self.tableView.nim_height = self.view.nim_height - self.selectIndicatorView.nim_height - safeAreaInsets.bottom;
//    self.selectIndicatorView.nim_bottom = self.view.nim_height - safeAreaInsets.bottom;
}

- (void)isshowSelectindicator
{
    if(_selectecContacts.count > 0){
        self.selectIndicatorView.hidden = NO;
        self.tableView.frame = CGRectMake(0, SCREEN_TOP_HEIGHT+64, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-64);
    }else{
        self.selectIndicatorView.hidden = YES;
        self.tableView.frame = CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT);
    }
}

- (void)show{
    UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [vc presentViewController:[[UINavigationController alloc] initWithRootViewController:self] animated:YES completion:nil];
}

- (void)setConfig:(id<FFFContactSelectConfig>)config{
    _config = config;
    if ([config respondsToSelector:@selector(maxSelectedNum)]) {
        _maxSelectCount = [config maxSelectedNum];
        _contentDic = @{}.mutableCopy;
        _sectionTitles = @[].mutableCopy;
    }
    [self makeData];
}

- (void)onCancelBtnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^() {
        if (self.cancelBlock) {
            self.cancelBlock();
            self.cancelBlock = nil;
        }
        if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
            [_delegate didCancelledSelect];
        }
    }];
}

- (IBAction)onDoneBtnClick:(id)sender {
    
    if (_selectecContacts.count == 0) {
        [SVProgressHUD showMessage:LangKey(@"main_activity_choose_least_one")];
        return;
    }
    
    
    if (self.config.showSelectHeaderview) {
        
        [self.view addSubview:self.setGroupnameView];
        [self.setGroupnameView animationShow];
        @weakify(self)
        self.setGroupnameView.speiceBackBlock = ^(NSString *groupName){
            @strongify(self)
                if (_selectecContacts.count) {
                    if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
                        [self.delegate didFinishedSelect:_selectecContacts];
                    }
                    
                    FFFGroupAvatarViewController *vc = [[FFFGroupAvatarViewController alloc]init];
                    vc.groupName = groupName;
    //                vc.teamListManager = self.teamListManager;
                    [self.navigationController pushViewController:vc animated:YES];
                    vc.speiceBackBlock = ^(UIImage *avater){
                        [self dismissViewControllerAnimated:YES completion:nil];
                                            if (self.finshBlock) {
                    
                                                self.finshBlock(_selectecContacts, groupName, avater);
                                                self.finshBlock = nil;
                                            }
                    };
                    

                }
                else {
                    if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
                        [_delegate didCancelledSelect];
                    }
                    if (self.cancelBlock) {
                        self.cancelBlock();
                        self.cancelBlock = nil;
                    }
                }
            
        };
        
    }else{

        [self dismissViewControllerAnimated:YES completion:nil];
        if (_selectecContacts.count) {
            if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
                [self.delegate didFinishedSelect:_selectecContacts];
            }
            if (self.finshBlock) {
                self.finshBlock(_selectecContacts, @"", nil);
                self.finshBlock = nil;
            }
        }
        else {
            if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
                [_delegate didCancelledSelect];
            }
            if (self.cancelBlock) {
                self.cancelBlock();
                self.cancelBlock = nil;
            }
        }
    }
}

- (void)makeData{
    NEEKIT_WEAK_SELF(weakSelf);
    [self.config getContactData:^(NSDictionary *contentDic, NSArray *titles) {
        self.contentDic = contentDic;
        self.sectionTitles = titles;
        dispatch_async(dispatch_get_main_queue(), ^{
            if(self.sectionTitles.count>0){
                self.tableView.hidden = NO;
                self.defView.hidden = YES;
                [weakSelf.tableView reloadData];
            }else{
                self.tableView.hidden = YES;
                self.defView.hidden = NO;
            }
            
        });
    }];
    if ([self.config respondsToSelector:@selector(alreadySelectedMemberId)])
    {
        _selectecContacts = [[self.config alreadySelectedMemberId] mutableCopy];
    }
    
    _selectecContacts = _selectecContacts.count ? _selectecContacts : [NSMutableArray array];
    for (NSString *selectId in _selectecContacts) {
        FFFKitInfo *info;
        info = [self.config getInfoById:selectId];
        [self.selectIndicatorView.pickedView addMemberInfo:info];
    }
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionTitles.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *arr = [self.contentDic valueForKey:self.sectionTitles[section]];
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *title = self.sectionTitles[indexPath.section];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    id<NIMGroupMemberProtocol> contactItem = arr[indexPath.row];
    
    FFFContactDataCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelectContactCellID"];
    if (cell == nil) {
        cell = [[FFFContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SelectContactCellID"];
    }
    cell.accessoryBtn.hidden = NO;
    cell.accessoryBtn.selected = [_selectecContacts containsObject:[contactItem memberId]];
    [cell refreshItem:contactItem];
    return cell;
}

//- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
//    return [self.sectionTitles mutableCopy];
//}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    NSString *title = self.sectionTitles[indexPath.section];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    id<NIMGroupMemberProtocol> member = arr[indexPath.row];

    NSString *memberId = [(id<NIMGroupMemberProtocol>)member memberId];
    FFFContactDataCell *cell = (FFFContactDataCell *)[tableView cellForRowAtIndexPath:indexPath];
    FFFKitInfo *info;
    info = [self.config getInfoById:memberId];
    if([_selectecContacts containsObject:memberId]) {
        [_selectecContacts removeObject:memberId];
        cell.accessoryBtn.selected = NO;
        [self.selectIndicatorView.pickedView removeMemberInfo:info];
    } else if(_selectecContacts.count >= _maxSelectCount) {
        if ([self.config respondsToSelector:@selector(selectedOverFlowTip)]) {
            NSString *tip = [self.config selectedOverFlowTip];
            [self.view makeToast:tip duration:2.0 position:CSToastPositionCenter];
        }
        cell.accessoryBtn.selected = NO;
    } else {
        [_selectecContacts addObject:memberId];
        cell.accessoryBtn.selected = YES;
        [self.selectIndicatorView.pickedView addMemberInfo:info];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
//    [self refreshDetailTitle];
    [self isshowSelectindicator];
}

#pragma mark - ContactPickedViewDelegate

- (void)removeUser:(NSString *)userId {
    [_selectecContacts removeObject:userId];
    [_tableView reloadData];
//    [self refreshDetailTitle];
}

#pragma mark - Private

- (FFFContactSelectTabView *)selectIndicatorView{
    if (_selectIndicatorView) {
        return _selectIndicatorView;
    }

    _selectIndicatorView = [[FFFContactSelectTabView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, 64)];
    _selectIndicatorView.doneButton.hidden = YES;
    return _selectIndicatorView;
}

- (FFFSetGroupNameView *)setGroupnameView{
    if(!_setGroupnameView){
        _setGroupnameView = [[FFFSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    }
    return _setGroupnameView;
}

- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, 400)];
        _defView.hidden = YES;
        
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-276)/2, 150, 276, 160)];
        defImg.image = [UIImage imageNamed:@"no_friend"];
        [_defView addSubview:defImg];
        
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, SCREEN_WIDTH, 20)];
        emptyTipLabel.textColor = TextColor_3;
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        [_defView addSubview:emptyTipLabel];
        emptyTipLabel.text = @"No friends，please add friends";
        
        
    }
    return _defView;
}

@end

