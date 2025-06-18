
#import <Foundation/Foundation.h>

NSString *StringFromFleshData(Byte *data);


//: SelectContactCellID
Byte kStr_apologySateData[] = {88, 19, 90, 11, 246, 70, 97, 38, 205, 137, 84, 173, 191, 198, 191, 189, 206, 157, 201, 200, 206, 187, 189, 206, 157, 191, 198, 198, 163, 158, 170};


//: #B391FF
Byte kStr_storeData[] = {84, 7, 96, 8, 194, 41, 209, 27, 131, 162, 147, 153, 145, 166, 166, 190};


//: no_friend
Byte kStr_screenUntilValue[] = {26, 9, 39, 4, 149, 150, 134, 141, 153, 144, 140, 149, 139, 203};


//: main_activity_choose_least_one
Byte kStr_sizeCellTornData[] = {79, 30, 21, 7, 177, 137, 152, 130, 118, 126, 131, 116, 118, 120, 137, 126, 139, 126, 137, 142, 116, 120, 125, 132, 132, 136, 122, 116, 129, 122, 118, 136, 137, 116, 132, 131, 122, 53};


//: select_contact
Byte kStr_normalMareThoroughValue[] = {90, 14, 49, 7, 228, 87, 249, 164, 150, 157, 150, 148, 165, 144, 148, 160, 159, 165, 146, 148, 165, 159};


//: icon_checkbox_selected
Byte kStr_secretaryText[] = {81, 22, 70, 6, 22, 173, 175, 169, 181, 180, 165, 169, 174, 171, 169, 177, 168, 181, 190, 165, 185, 171, 178, 171, 169, 186, 171, 170, 188};


//: ic_close_b
Byte kStr_jurorTitle[] = {31, 10, 10, 14, 192, 172, 71, 39, 22, 45, 91, 167, 2, 179, 115, 109, 105, 109, 118, 121, 125, 111, 105, 108, 211};


//: #999999
Byte kStr_cellColorContent[] = {92, 7, 83, 13, 65, 223, 243, 19, 140, 228, 185, 93, 186, 118, 140, 140, 140, 140, 140, 140, 236};


//: ic_choose_w
Byte kStr_oxygenQuickContent[] = {27, 11, 43, 4, 148, 142, 138, 142, 147, 154, 154, 158, 144, 138, 162, 69};


//: No friends，please add friends
Byte kStr_viewAdditionData[] = {45, 31, 54, 12, 17, 145, 106, 50, 255, 32, 142, 29, 132, 165, 86, 156, 168, 159, 155, 164, 154, 169, 37, 242, 194, 166, 162, 155, 151, 169, 155, 86, 151, 154, 154, 86, 156, 168, 159, 155, 164, 154, 169, 9};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClearViewController.m
// Afterwards
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectViewController.h"
#import "ClearViewController.h"
//: #import "FFFContactSelectTabView.h"
#import "ImageTotaleractionView.h"
//: #import "FFFContactPickedView.h"
#import "RadiogramView.h"
//: #import "UserGroupedUsrInfo.h"
#import "UserGroupedUsrInfo.h"
//: #import "UserGroupedData.h"
#import "ElementData.h"
//: #import "FFFContactDataCell.h"
#import "BankViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UserKitDependency.h"
#import "UserKitDependency.h"
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"
//: #import "FFFSetGroupNameView.h"
#import "AfterClearView.h"
//: #import "FFFGroupAvatarViewController.h"
#import "FitCloseViewController.h"

//: @interface FFFContactSelectViewController ()<UITableViewDataSource, UITableViewDelegate, FFFContactPickedViewDelegate>{
@interface ClearViewController ()<UITableViewDataSource, UITableViewDelegate, WearerButton>{
    //: NSMutableArray *_selectecContacts;
    NSMutableArray *_selectecContacts;
}
//: @property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UITableView *tableView;
//: @property(nonatomic, strong) FFFSetGroupNameView *setGroupnameView;
@property(nonatomic, strong) AfterClearView *setGroupnameView;
//: @property(nonatomic, strong) UIView *headerview;
@property(nonatomic, strong) UIView *headerview;
//: @property(nonatomic, strong) UIButton *selectedBtn;
@property(nonatomic, strong) UIButton *selectedBtn;
//: @property(nonatomic, strong) UITextField *textfield;
@property(nonatomic, strong) UITextField *textfield;
//: @property(nonatomic, strong) UIImage *headPortrait;
@property(nonatomic, strong) UIImage *headPortrait;

//: @property (strong, nonatomic) FFFContactSelectTabView *selectIndicatorView;
@property (strong, nonatomic) ImageTotaleractionView *selectIndicatorView;

//: @property (nonatomic, assign) NSInteger maxSelectCount;
@property (nonatomic, assign) NSInteger maxSelectCount;

//: @property(nonatomic, strong) NSDictionary *contentDic;
@property(nonatomic, strong) NSDictionary *contentDic;

//: @property(nonatomic, strong) NSArray *sectionTitles;
@property(nonatomic, strong) NSArray *sectionTitles;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation FFFContactSelectViewController
@implementation ClearViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if(self) {
    if(self) {
        //: _maxSelectCount = 9223372036854775807L;
        _maxSelectCount = 9223372036854775807L;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithConfig:(id<FFFContactSelectConfig>) config{
- (instancetype)initWithRecording:(id<UndersurfacePoint>) config{
    //: self = [self initWithNibName:nil bundle:nil];
    self = [self initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: self.config = config;
        self.config = config;
    }
    //: return self;
    return self;
}


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (void)viewDidLoad
- (void)viewDidLoad
{
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear])) style:UITableViewStylePlain];
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: [self.view addSubview:self.selectIndicatorView];
    [self.view addSubview:self.selectIndicatorView];
    //: [self isshowSelectindicator];
    [self add];

    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;

    //: [self setUpNav];
    [self anOrigin];

    //: self.selectIndicatorView.pickedView.delegate = self;
    self.selectIndicatorView.pickedView.delegate = self;
//    [self.selectIndicatorView.doneButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

//: - (void)setUpNav
- (void)anOrigin
{
    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice clear]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromFleshData(kStr_jurorTitle)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice clear]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"select_contact"];
    labtitle.text = [ItemManager sessionInformation:StringFromFleshData(kStr_normalMareThoroughValue)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, [UIDevice vg_statusBarHeight]+10, 48, 28);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, [UIDevice clear]+10, 48, 28);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    submitButton.backgroundColor = [UIColor withMax:StringFromFleshData(kStr_storeData)];
    //: submitButton.layer.cornerRadius = 14;
    submitButton.layer.cornerRadius = 14;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_choose_w"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:StringFromFleshData(kStr_oxygenQuickContent)] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(teaming:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

}

//: - (void)backAction{
- (void)messageLeft{
    //: if (self.presentingViewController) {
    if (self.presentingViewController) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: } else {
    } else {
        //: [self.navigationController popViewControllerAnimated:NO];
        [self.navigationController popViewControllerAnimated:NO];
    }
}

//: - (void)refreshDetailTitle
- (void)head
{
    //: UIButton *btn = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
    UIButton *btn = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
    //: if(_selectecContacts.count > 0){
    if(_selectecContacts.count > 0){
        //: [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setTitle:self.heading forState:UIControlStateNormal];
        //: [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:StringFromFleshData(kStr_secretaryText)] forState:UIControlStateNormal];
//        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        //: btn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -5);
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -5);
        //: btn.frame = CGRectMake(0, 0, 70, 40);
        btn.frame = CGRectMake(0, 0, 70, 40);

    //: }else{
    }else{
        //: [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setTitle:self.heading forState:UIControlStateNormal];
        //: [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:StringFromFleshData(kStr_secretaryText)] forState:UIControlStateNormal];
        //: btn.frame = CGRectMake(0, 0, 40, 40);
        btn.frame = CGRectMake(0, 0, 40, 40);
    }

//    UILabel *label = (UILabel *)self.navigationItem.rightBarButtonItem.customView;
//    [label setText:self.detailTitle];
//    [label sizeToFit];
}

//: - (NSString *)detailTitle
- (NSString *)heading
{
    //: NSString *detail = @"";
    NSString *detail = @"";
    //: if (_selectecContacts.count > 0)
    if (_selectecContacts.count > 0)
    {
        //: detail = [NSString stringWithFormat:@"（%zd）",_selectecContacts.count];
        detail = [NSString stringWithFormat:@"（%zd）",_selectecContacts.count];
    }

    //: return detail;
    return detail;
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    UIEdgeInsets safeAreaInsets = self.view.safeAreaInsets;

//    self.selectIndicatorView.nim_width = self.view.nim_width;
//    self.tableView.nim_height = self.view.nim_height - self.selectIndicatorView.nim_height - safeAreaInsets.bottom;
//    self.selectIndicatorView.nim_bottom = self.view.nim_height - safeAreaInsets.bottom;
}

//: - (void)isshowSelectindicator
- (void)add
{
    //: if(_selectecContacts.count > 0){
    if(_selectecContacts.count > 0){
        //: self.selectIndicatorView.hidden = NO;
        self.selectIndicatorView.hidden = NO;
        //: self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64);
        self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice clear])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear])-64);
    //: }else{
    }else{
        //: self.selectIndicatorView.hidden = YES;
        self.selectIndicatorView.hidden = YES;
        //: self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]));
        self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear]));
    }
}

//: - (void)show{
- (void)parent{
    //: UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: vc.modalPresentationStyle = UIModalPresentationFullScreen;
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [vc presentViewController:[[UINavigationController alloc] initWithRootViewController:self] animated:YES completion:nil];
    [vc presentViewController:[[UINavigationController alloc] initWithRootViewController:self] animated:YES completion:nil];
}

//: - (void)setConfig:(id<FFFContactSelectConfig>)config{
- (void)setConfig:(id<UndersurfacePoint>)config{
    //: _config = config;
    _config = config;
    //: if ([config respondsToSelector:@selector(maxSelectedNum)]) {
    if ([config respondsToSelector:@selector(maxEnable)]) {
        //: _maxSelectCount = [config maxSelectedNum];
        _maxSelectCount = [config maxEnable];
        //: _contentDic = @{}.mutableCopy;
        _contentDic = @{}.mutableCopy;
        //: _sectionTitles = @[].mutableCopy;
        _sectionTitles = @[].mutableCopy;
    }
    //: [self makeData];
    [self will];
}

//: - (void)onCancelBtnClick:(id)sender {
- (void)show:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:^() {
    [self dismissViewControllerAnimated:YES completion:^() {
        //: if (self.cancelBlock) {
        if (self.cancelBlock) {
            //: self.cancelBlock();
            self.cancelBlock();
            //: self.cancelBlock = nil;
            self.cancelBlock = nil;
        }
        //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
        if([_delegate respondsToSelector:@selector(colorFor)]) {
            //: [_delegate didCancelledSelect];
            [_delegate colorFor];
        }
    //: }];
    }];
}

//: - (IBAction)onDoneBtnClick:(id)sender {
- (IBAction)teaming:(id)sender {

    //: if (_selectecContacts.count == 0) {
    if (_selectecContacts.count == 0) {
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"main_activity_choose_least_one"]];
        [SVProgressHUD format:[ItemManager sessionInformation:StringFromFleshData(kStr_sizeCellTornData)]];
        //: return;
        return;
    }


    //: if (self.config.showSelectHeaderview) {
    if (self.config.showSelectHeaderview) {

        //: [self.view addSubview:self.setGroupnameView];
        [self.view addSubview:self.setGroupnameView];
        //: [self.setGroupnameView animationShow];
        [self.setGroupnameView first];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.setGroupnameView.speiceBackBlock = ^(NSString *groupName){
        self.setGroupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                //: if (_selectecContacts.count) {
                if (_selectecContacts.count) {
                    //: if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
                    if ([self.delegate respondsToSelector:@selector(frameEffectCheck:)]) {
                        //: [self.delegate didFinishedSelect:_selectecContacts];
                        [self.delegate frameEffectCheck:_selectecContacts];
                    }

                    //: FFFGroupAvatarViewController *vc = [[FFFGroupAvatarViewController alloc]init];
                    FitCloseViewController *vc = [[FitCloseViewController alloc]init];
                    //: vc.groupName = groupName;
                    vc.groupName = groupName;
    //                vc.teamListManager = self.teamListManager;
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: vc.speiceBackBlock = ^(UIImage *avater){
                    vc.speiceBackBlock = ^(UIImage *avater){
                        //: [self dismissViewControllerAnimated:YES completion:nil];
                        [self dismissViewControllerAnimated:YES completion:nil];
                                            //: if (self.finshBlock) {
                                            if (self.finshBlock) {

                                                //: self.finshBlock(_selectecContacts, groupName, avater);
                                                self.finshBlock(_selectecContacts, groupName, avater);
                                                //: self.finshBlock = nil;
                                                self.finshBlock = nil;
                                            }
                    //: };
                    };


                }
                //: else {
                else {
                    //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
                    if([_delegate respondsToSelector:@selector(colorFor)]) {
                        //: [_delegate didCancelledSelect];
                        [_delegate colorFor];
                    }
                    //: if (self.cancelBlock) {
                    if (self.cancelBlock) {
                        //: self.cancelBlock();
                        self.cancelBlock();
                        //: self.cancelBlock = nil;
                        self.cancelBlock = nil;
                    }
                }

        //: };
        };

    //: }else{
    }else{

        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: if (_selectecContacts.count) {
        if (_selectecContacts.count) {
            //: if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
            if ([self.delegate respondsToSelector:@selector(frameEffectCheck:)]) {
                //: [self.delegate didFinishedSelect:_selectecContacts];
                [self.delegate frameEffectCheck:_selectecContacts];
            }
            //: if (self.finshBlock) {
            if (self.finshBlock) {
                //: self.finshBlock(_selectecContacts, @"", nil);
                self.finshBlock(_selectecContacts, @"", nil);
                //: self.finshBlock = nil;
                self.finshBlock = nil;
            }
        }
        //: else {
        else {
            //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
            if([_delegate respondsToSelector:@selector(colorFor)]) {
                //: [_delegate didCancelledSelect];
                [_delegate colorFor];
            }
            //: if (self.cancelBlock) {
            if (self.cancelBlock) {
                //: self.cancelBlock();
                self.cancelBlock();
                //: self.cancelBlock = nil;
                self.cancelBlock = nil;
            }
        }
    }
}

//: - (void)makeData{
- (void)will{
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: [self.config getContactData:^(NSDictionary *contentDic, NSArray *titles) {
    [self.config eyeContactTeam:^(NSDictionary *contentDic, NSArray *titles) {
        //: self.contentDic = contentDic;
        self.contentDic = contentDic;
        //: self.sectionTitles = titles;
        self.sectionTitles = titles;
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if(self.sectionTitles.count>0){
            if(self.sectionTitles.count>0){
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: [weakSelf.tableView reloadData];
                [weakSelf.tableView reloadData];
            //: }else{
            }else{
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
            }

        //: });
        });
    //: }];
    }];
    //: if ([self.config respondsToSelector:@selector(alreadySelectedMemberId)])
    if ([self.config respondsToSelector:@selector(toRemove)])
    {
        //: _selectecContacts = [[self.config alreadySelectedMemberId] mutableCopy];
        _selectecContacts = [[self.config toRemove] mutableCopy];
    }

    //: _selectecContacts = _selectecContacts.count ? _selectecContacts : [NSMutableArray array];
    _selectecContacts = _selectecContacts.count ? _selectecContacts : [NSMutableArray array];
    //: for (NSString *selectId in _selectecContacts) {
    for (NSString *selectId in _selectecContacts) {
        //: FFFKitInfo *info;
        MarginThanInfo *info;
        //: info = [self.config getInfoById:selectId];
        info = [self.config view:selectId];
        //: [self.selectIndicatorView.pickedView addMemberInfo:info];
        [self.selectIndicatorView.pickedView bubble:info];
    }
}


//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.sectionTitles.count;
    return self.sectionTitles.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: NSArray *arr = [self.contentDic valueForKey:self.sectionTitles[section]];
    NSArray *arr = [self.contentDic valueForKey:self.sectionTitles[section]];
    //: return arr.count;
    return arr.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: NSString *title = self.sectionTitles[indexPath.section];
    NSString *title = self.sectionTitles[indexPath.section];
    //: NSMutableArray *arr = [self.contentDic valueForKey:title];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    //: id<NIMGroupMemberProtocol> contactItem = arr[indexPath.row];
    id<TingProtocol> contactItem = arr[indexPath.row];

    //: FFFContactDataCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelectContactCellID"];
    BankViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StringFromFleshData(kStr_apologySateData)];
    //: if (cell == nil) {
    if (cell == nil) {
        //: cell = [[FFFContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SelectContactCellID"];
        cell = [[BankViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromFleshData(kStr_apologySateData)];
    }
    //: cell.accessoryBtn.hidden = NO;
    cell.accessoryBtn.hidden = NO;
    //: cell.accessoryBtn.selected = [_selectecContacts containsObject:[contactItem memberId]];
    cell.accessoryBtn.selected = [_selectecContacts containsObject:[contactItem memberId]];
    //: [cell refreshItem:contactItem];
    [cell nowadays:contactItem];
    //: return cell;
    return cell;
}

//- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
//    return [self.sectionTitles mutableCopy];
//}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: return 80;
    return 80;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    //: NSString *title = self.sectionTitles[indexPath.section];
    NSString *title = self.sectionTitles[indexPath.section];
    //: NSMutableArray *arr = [self.contentDic valueForKey:title];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    //: id<NIMGroupMemberProtocol> member = arr[indexPath.row];
    id<TingProtocol> member = arr[indexPath.row];

    //: NSString *memberId = [(id<NIMGroupMemberProtocol>)member memberId];
    NSString *memberId = [(id<TingProtocol>)member memberId];
    //: FFFContactDataCell *cell = (FFFContactDataCell *)[tableView cellForRowAtIndexPath:indexPath];
    BankViewCell *cell = (BankViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    //: FFFKitInfo *info;
    MarginThanInfo *info;
    //: info = [self.config getInfoById:memberId];
    info = [self.config view:memberId];
    //: if([_selectecContacts containsObject:memberId]) {
    if([_selectecContacts containsObject:memberId]) {
        //: [_selectecContacts removeObject:memberId];
        [_selectecContacts removeObject:memberId];
        //: cell.accessoryBtn.selected = NO;
        cell.accessoryBtn.selected = NO;
        //: [self.selectIndicatorView.pickedView removeMemberInfo:info];
        [self.selectIndicatorView.pickedView customInfo:info];
    //: } else if(_selectecContacts.count >= _maxSelectCount) {
    } else if(_selectecContacts.count >= _maxSelectCount) {
        //: if ([self.config respondsToSelector:@selector(selectedOverFlowTip)]) {
        if ([self.config respondsToSelector:@selector(dripModel)]) {
            //: NSString *tip = [self.config selectedOverFlowTip];
            NSString *tip = [self.config dripModel];
            //: [self.view makeToast:tip duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:tip duration:2.0 position:CSToastPositionCenter];
        }
        //: cell.accessoryBtn.selected = NO;
        cell.accessoryBtn.selected = NO;
    //: } else {
    } else {
        //: [_selectecContacts addObject:memberId];
        [_selectecContacts addObject:memberId];
        //: cell.accessoryBtn.selected = YES;
        cell.accessoryBtn.selected = YES;
        //: [self.selectIndicatorView.pickedView addMemberInfo:info];
        [self.selectIndicatorView.pickedView bubble:info];
    }
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
//    [self refreshDetailTitle];
    //: [self isshowSelectindicator];
    [self add];
}

//: #pragma mark - ContactPickedViewDelegate
#pragma mark - ContactPickedViewDelegate

//: - (void)removeUser:(NSString *)userId {
- (void)signaling:(NSString *)userId {
    //: [_selectecContacts removeObject:userId];
    [_selectecContacts removeObject:userId];
    //: [_tableView reloadData];
    [_tableView reloadData];
//    [self refreshDetailTitle];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (FFFContactSelectTabView *)selectIndicatorView{
- (ImageTotaleractionView *)selectIndicatorView{
    //: if (_selectIndicatorView) {
    if (_selectIndicatorView) {
        //: return _selectIndicatorView;
        return _selectIndicatorView;
    }

    //: _selectIndicatorView = [[FFFContactSelectTabView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 64)];
    _selectIndicatorView = [[ImageTotaleractionView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, 64)];
    //: _selectIndicatorView.doneButton.hidden = YES;
    _selectIndicatorView.doneButton.hidden = YES;
    //: return _selectIndicatorView;
    return _selectIndicatorView;
}

//: - (FFFSetGroupNameView *)setGroupnameView{
- (AfterClearView *)setGroupnameView{
    //: if(!_setGroupnameView){
    if(!_setGroupnameView){
        //: _setGroupnameView = [[FFFSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _setGroupnameView = [[AfterClearView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _setGroupnameView;
    return _setGroupnameView;
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 400)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, 400)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-276)/2, 150, 276, 160)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-276)/2, 150, 276, 160)];
        //: defImg.image = [UIImage imageNamed:@"no_friend"];
        defImg.image = [UIImage imageNamed:StringFromFleshData(kStr_screenUntilValue)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor withMax:StringFromFleshData(kStr_cellColorContent)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = @"No friends，please add friends";
        emptyTipLabel.text = StringFromFleshData(kStr_viewAdditionData);


    }
    //: return _defView;
    return _defView;
}

//: @end
@end

Byte * FleshDataToCache(Byte *data) {
    int submitStack = data[0];
    int additionFlesh = data[1];
    Byte cruise = data[2];
    int involvementFlushTorn = data[3];
    if (!submitStack) return data + involvementFlushTorn;
    for (int i = involvementFlushTorn; i < involvementFlushTorn + additionFlesh; i++) {
        int value = data[i] - cruise;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[involvementFlushTorn + additionFlesh] = 0;
    return data + involvementFlushTorn;
}

NSString *StringFromFleshData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FleshDataToCache(data)];
}
