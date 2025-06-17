
#import <Foundation/Foundation.h>

NSString *StringFromTableData(Byte *data);


//: teamList
Byte kStr_canRecordHighlightText[] = {51, 8, 12, 128, 45, 148, 246, 5, 53, 110, 91, 240, 116, 115, 105, 76, 109, 97, 101, 116, 220};


//: entrance
Byte kStr_titleDisableValue[] = {79, 8, 10, 24, 38, 185, 64, 187, 203, 97, 101, 99, 110, 97, 114, 116, 110, 101, 141};


//: userList
Byte kStr_colorOffValue[] = {26, 8, 8, 33, 49, 39, 220, 187, 116, 115, 105, 76, 114, 101, 115, 117, 226};


//: defaultCell
Byte kStr_videoValue[] = {45, 11, 13, 23, 12, 247, 22, 18, 202, 48, 57, 76, 250, 108, 108, 101, 67, 116, 108, 117, 97, 102, 101, 100, 163};


//: cell
Byte kStr_viewName[] = {56, 4, 11, 237, 123, 131, 220, 50, 239, 141, 235, 108, 108, 101, 99, 200};


//: 搜索联系人
Byte kStr_formatValue[] = {97, 15, 4, 243, 186, 186, 228, 187, 179, 231, 148, 129, 232, 162, 180, 231, 156, 144, 230, 243};


//: 搜索关键字:\"%@\"
Byte kStr_tingName[] = {70, 20, 8, 44, 17, 66, 183, 167, 34, 64, 37, 34, 58, 151, 173, 229, 174, 148, 233, 179, 133, 229, 162, 180, 231, 156, 144, 230, 242};


//: 联系人
Byte kStr_imageName[] = {92, 9, 12, 199, 164, 211, 155, 128, 142, 179, 63, 70, 186, 186, 228, 187, 179, 231, 148, 129, 232, 32};


//: head_default
Byte kStr_statusLayerValue[] = {34, 12, 7, 74, 242, 176, 69, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 12};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManhuntTableViewController.m
//  NIM
//
//  Created by Genning-Work on 2020/1/2.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactSearchViewController.h"
#import "ManhuntTableViewController.h"
//: #import "NTESGroupedContacts.h"
#import "CounternationalismDataCollection.h"
//: #import "NTESContactUtilItem.h"
#import "TemporaryWorkerItem.h"
//: #import "NTESPersonalCardViewController.h"
#import "ColorViewController.h"
//: #import "NTESContactDataCell.h"
#import "VoidView.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "NTESSessionViewController.h"
#import "RadiogramViewController.h"
//: #import <SVProgressHUD.h>
#import <SVProgressHUD.h>

//: @interface NTESContactSearchViewController ()<UISearchResultsUpdating, UISearchControllerDelegate>
@interface ManhuntTableViewController ()<UISearchResultsUpdating, UISearchControllerDelegate>

/*
 0 : 联系人
 1 : 群组
*/

//: @property (nonatomic, copy) NSString *searchText;
@property (nonatomic, copy) NSString *searchText;

//: @property (nonatomic, strong) NSMutableArray <NSArray *>*sections;
@property (nonatomic, strong) NSMutableArray <NSArray *>*sections;

//: @property (nonatomic, strong) UISearchController *searchVC;
@property (nonatomic, strong) UISearchController *searchVC;

//: @property (nonatomic, strong) UITableViewController *searchResultVC;
@property (nonatomic, strong) UITableViewController *searchResultVC;

//: @property (nonatomic, assign) BOOL endSearch;
@property (nonatomic, assign) BOOL endSearch;

//: @end
@end

//: @implementation NTESContactSearchViewController
@implementation ManhuntTableViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIEdgeInsets separatorInset = self.tableView.separatorInset;
    UIEdgeInsets separatorInset = self.tableView.separatorInset;
    //: separatorInset.right = 0;
    separatorInset.right = 0;
    //: self.tableView.separatorInset = separatorInset;
    self.tableView.separatorInset = separatorInset;
    //: self.tableView.sectionHeaderHeight = 0.0;
    self.tableView.sectionHeaderHeight = 0.0;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.tableFooterView = [UIView new];
    self.tableView.tableFooterView = [UIView new];
    //: if (([[[UIDevice currentDevice] systemVersion] doubleValue] < 10.0)) {
    if (([[[UIDevice currentDevice] systemVersion] doubleValue] < 10.0)) {
        //: CGFloat insetTop = self.searchVC.searchBar.height + [UIDevice vg_statusBarHeight];
        CGFloat insetTop = self.searchVC.searchBar.height + [UIDevice clear];
        //: UIEdgeInsets insets = {insetTop, 0, 0, 0};
        UIEdgeInsets insets = {insetTop, 0, 0, 0};
        //: self.tableView.contentInset = insets;
        self.tableView.contentInset = insets;
    }
    //: self.tableView.tableHeaderView = self.searchVC.searchBar;
    self.tableView.tableHeaderView = self.searchVC.searchBar;
    //: self.definesPresentationContext = YES;
    self.definesPresentationContext = YES;
    //: self.title = @"搜索联系人".ntes_localized;
    self.title = StringFromTableData(kStr_formatValue).aboveMagnitude;
}

//: #pragma mark - Table view data source
#pragma mark - Table view data source
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: return _sections.count;
        return _sections.count;
    //: } else {
    } else {
        //: return 1;
        return 1;
    }
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: return [_sections objectAtIndex:section].count;
        return [_sections objectAtIndex:section].count;
    //: } else {
    } else {
        //: return 1;
        return 1;
    }
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: NSArray *datas = _sections[indexPath.section];
        NSArray *datas = _sections[indexPath.section];
        //: if (indexPath.section == 0) {
        if (indexPath.section == 0) {
            //: NIMUser *user = datas[indexPath.row];
            NIMUser *user = datas[indexPath.row];
            //: NTESContactDataCell * cell = [tableView dequeueReusableCellWithIdentifier:@"userList"];
            VoidView * cell = [tableView dequeueReusableCellWithIdentifier:StringFromTableData(kStr_colorOffValue)];
            //: if (!cell) {
            if (!cell) {
                //: cell = [[NTESContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"userList"];
                cell = [[VoidView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromTableData(kStr_colorOffValue)];
            }
            //: UIImage *placeholderImage = [UIImage imageNamed:@"head_default"];
            UIImage *placeholderImage = [UIImage imageNamed:StringFromTableData(kStr_statusLayerValue)];
            //: NSURL *avatarUrl = [NSURL URLWithString:user.userInfo.avatarUrl];
            NSURL *avatarUrl = [NSURL URLWithString:user.userInfo.avatarUrl];
            //: [cell.avatarImageView nim_setImageWithURL:avatarUrl placeholderImage:placeholderImage];
            [cell.avatarImageView date:avatarUrl enableImage:placeholderImage];
            //: cell.textLabel.attributedText = [self showNameWithUser:user];
            cell.textLabel.attributedText = [self grey:user];
            //: return cell;
            return cell;
        //: } else if (indexPath.section == 1) {
        } else if (indexPath.section == 1) {
            //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"teamList"];
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StringFromTableData(kStr_canRecordHighlightText)];
            //: if (!cell) {
            if (!cell) {
                //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"teamList"];
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromTableData(kStr_canRecordHighlightText)];
            }
            //: NIMTeam *team = datas[indexPath.row];
            NIMTeam *team = datas[indexPath.row];
            //: cell.textLabel.attributedText = [self showNameWithTeam:team];
            cell.textLabel.attributedText = [self juniorVarsity:team];
            //: return cell;
            return cell;
        //: } else {
        } else {
            //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"defaultCell"];
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StringFromTableData(kStr_videoValue)];
            //: if (!cell) {
            if (!cell) {
                //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCell"];
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromTableData(kStr_videoValue)];
            }
            //: return cell;
            return cell;
        }
    //: } else {
    } else {
        //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StringFromTableData(kStr_viewName)];
        //: if (!cell) {
        if (!cell) {
            //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromTableData(kStr_viewName)];
            //: cell.textLabel.textColor = [UIColor blueColor];
            cell.textLabel.textColor = [UIColor blueColor];
        }
        //: cell.textLabel.text = [NSString stringWithFormat:@"搜索关键字:\"%@\"".ntes_localized, _searchText];
        cell.textLabel.text = [NSString stringWithFormat:StringFromTableData(kStr_tingName).aboveMagnitude, _searchText];
        //: return cell;
        return cell;
    }
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: if (indexPath.section == 0) {
        if (indexPath.section == 0) {
            //: NIMUser *user = [_sections[indexPath.section] objectAtIndex:indexPath.row];
            NIMUser *user = [_sections[indexPath.section] objectAtIndex:indexPath.row];

            //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:user.userId];
            ColorViewController *vc = [[ColorViewController alloc] initWithCell:user.userId];
            //: [self showVC:vc];
            [self along:vc];

        //: } else if (indexPath.section == 1) {
        } else if (indexPath.section == 1) {
            //: NIMTeam *team = [_sections[indexPath.section] objectAtIndex:indexPath.row];
            NIMTeam *team = [_sections[indexPath.section] objectAtIndex:indexPath.row];
            //: NIMSession *session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            RadiogramViewController *vc = [[RadiogramViewController alloc] initWithFind:session];
            //: [self showVC:vc];
            [self along:vc];
        }
    //: } else {
    } else {
        //: [self doSearch];
        [self soapBubble];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 50;
    return 50;
}

//: - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    //: if (tableView == self.tableView) {
    if (tableView == self.tableView) {
        //: if (section == 0) {
        if (section == 0) {
            //: return _sections[section].count != 0 ? @"联系人" : @"";
            return _sections[section].count != 0 ? StringFromTableData(kStr_imageName) : @"";
        //: } else if (section == 1) {
        } else if (section == 1) {
            //: return _sections[section].count != 0 ? @"群组" : @"";
            return _sections[section].count != 0 ? @"群组" : @"";
        //: } else {
        } else {
            //: return @"";
            return @"";
        }
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    //: return 24.0;
    return 24.0;
}

//: - (void)showVC:(UIViewController *)vc {
- (void)along:(UIViewController *)vc {
    //: self.sections = _sections;
    self.sections = _sections;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: });
    });
}

//: #pragma mark - UISearchResultsUpdating
#pragma mark - UISearchResultsUpdating
//: - (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    //: if (!_endSearch) {
    if (!_endSearch) {
        //: _searchText = searchController.searchBar.text;
        _searchText = searchController.searchBar.text;
        //: [self.searchResultVC.tableView reloadData];
        [self.searchResultVC.tableView reloadData];
    }
}

//: - (void)willPresentSearchController:(UISearchController *)searchController {
- (void)willPresentSearchController:(UISearchController *)searchController {
    //: _endSearch = NO;
    _endSearch = NO;
}

//: #pragma mark - Search
#pragma mark - Search
//: - (void)doSearch {
- (void)soapBubble {
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: NIMUserSearchOption *option = [[NIMUserSearchOption alloc] init];
    NIMUserSearchOption *option = [[NIMUserSearchOption alloc] init];
    //: option.searchContent = _searchText;
    option.searchContent = _searchText;
    //: option.ignoreingCase = [self ignoreCase];
    option.ignoreingCase = [self tingColor];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].userManager searchUserWithOption:option completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
    [[NIMSDK sharedSDK].userManager searchUserWithOption:option completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
        //: if (!error) {
        if (!error) {
            //: NSMutableArray *sections = [NSMutableArray array];
            NSMutableArray *sections = [NSMutableArray array];
            //: NSMutableArray *ret = [NSMutableArray arrayWithArray:users];
            NSMutableArray *ret = [NSMutableArray arrayWithArray:users];
            //: [sections addObject:ret];
            [sections addObject:ret];
            //: if (![weakSelf disableSearchTeam]) {
            if (![weakSelf wholeText]) {//查找team
                //: NIMTeamSearchOption *teamSeacheOption = [[NIMTeamSearchOption alloc] init];
                NIMTeamSearchOption *teamSeacheOption = [[NIMTeamSearchOption alloc] init];
                //: teamSeacheOption.searchContent = weakSelf.searchText;
                teamSeacheOption.searchContent = weakSelf.searchText;
                //: teamSeacheOption.ignoreingCase = [weakSelf ignoreCase];
                teamSeacheOption.ignoreingCase = [weakSelf tingColor];
                //: [[NIMSDK sharedSDK].teamManager searchTeamWithOption:teamSeacheOption completion:^(NSError * _Nullable error, NSArray<NIMTeam *> * _Nullable teams) {
                [[NIMSDK sharedSDK].teamManager searchTeamWithOption:teamSeacheOption completion:^(NSError * _Nullable error, NSArray<NIMTeam *> * _Nullable teams) {
                    //: if (!error) {
                    if (!error) {
                        //: [sections addObject:teams];
                        [sections addObject:teams];
                    }
                    //: [SVProgressHUD dismiss];
                    [SVProgressHUD dismiss];
                    //: weakSelf.sections = sections;
                    weakSelf.sections = sections;
                //: }];
                }];
            //: } else {
            } else {
                //: [SVProgressHUD dismiss];
                [SVProgressHUD dismiss];
                //: weakSelf.sections = sections;
                weakSelf.sections = sections;
            }
        //: } else {
        } else {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
        }
    //: }];
    }];
}

//: #pragma mark - Helper
#pragma mark - Helper
//: - (NSMutableAttributedString *)showNameWithTeam:(NIMTeam *)team {
- (NSMutableAttributedString *)juniorVarsity:(NIMTeam *)team {
    //: NSString *src = team.teamName;
    NSString *src = team.teamName;
    //: NSString *searchText = _searchText;
    NSString *searchText = _searchText;
    //: if ([self ignoreCase]) {
    if ([self tingColor]) {
        //: src = [src lowercaseString];
        src = [src lowercaseString];
        //: searchText = [searchText lowercaseString];
        searchText = [searchText lowercaseString];
    }
    //: NSRange local = [src rangeOfString:searchText];
    NSRange local = [src rangeOfString:searchText];
    //: NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:team.teamName];
    NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:team.teamName];
    //: [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    //: return show;
    return show;
}

//: - (NSMutableAttributedString *)showNameWithUser:(NIMUser *)user {
- (NSMutableAttributedString *)grey:(NIMUser *)user {
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:user.userId button:nil];
    //: NSMutableAttributedString *ret = [[NSMutableAttributedString alloc] init];
    NSMutableAttributedString *ret = [[NSMutableAttributedString alloc] init];

    //: NSString *src = info.showName;
    NSString *src = info.showName;
    //: NSString *searchText = _searchText;
    NSString *searchText = _searchText;
    //: if ([self ignoreCase]) {
    if ([self tingColor]) {
        //: src = [src lowercaseString];
        src = [src lowercaseString];
        //: searchText = [searchText lowercaseString];
        searchText = [searchText lowercaseString];
    }
    //: NSRange local = [src rangeOfString:searchText];
    NSRange local = [src rangeOfString:searchText];
    //: if (local.location != NSNotFound) {
    if (local.location != NSNotFound) {
        //: NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:info.showName];
        NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:info.showName];
        //: [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
        [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
        //: [ret appendAttributedString:show];
        [ret appendAttributedString:show];
    //: } else {
    } else {
        //: src = user.userId;
        src = user.userId;
        //: if ([self ignoreCase]) {
        if ([self tingColor]) {
            //: src = [src lowercaseString];
            src = [src lowercaseString];
        }
        //: local = [src rangeOfString:searchText]; 
        local = [src rangeOfString:searchText]; //userId
        //: if (local.location != NSNotFound) {
        if (local.location != NSNotFound) {
            //: NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
            NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
            //: [ret appendAttributedString:mainShow];
            [ret appendAttributedString:mainShow];
            //: NSMutableAttributedString *show = [self otherShowName:user.userId];
            NSMutableAttributedString *show = [self head:user.userId];
            //: [ret appendAttributedString:show];
            [ret appendAttributedString:show];
        //: } else {
        } else {
            //: src = user.alias;
            src = user.alias;
            //: if ([self ignoreCase]) {
            if ([self tingColor]) {
                //: src = [src lowercaseString];
                src = [src lowercaseString];
            }
            //: local = [src rangeOfString:searchText]; 
            local = [src rangeOfString:searchText]; //nickName
            //: if (local.location != NSNotFound) {
            if (local.location != NSNotFound) {
                //: NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                //: [ret appendAttributedString:mainShow];
                [ret appendAttributedString:mainShow];
                //: NSMutableAttributedString *show = [self otherShowName:user.alias];
                NSMutableAttributedString *show = [self head:user.alias];
                //: [ret appendAttributedString:show];
                [ret appendAttributedString:show];
            //: } else {
            } else {
                //: src = user.userInfo.nickName;
                src = user.userInfo.nickName;
                //: if ([self ignoreCase]) {
                if ([self tingColor]) {
                    //: src = [src lowercaseString];
                    src = [src lowercaseString];
                }
                //: local = [src rangeOfString:searchText]; 
                local = [src rangeOfString:searchText]; //nickName
                //: if (local.location != NSNotFound) {
                if (local.location != NSNotFound) {
                    //: NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                    NSMutableAttributedString *mainShow = [[NSMutableAttributedString alloc] initWithString:info.showName];
                    //: [ret appendAttributedString:mainShow];
                    [ret appendAttributedString:mainShow];
                    //: NSMutableAttributedString *show = [self otherShowName:user.userInfo.nickName];
                    NSMutableAttributedString *show = [self head:user.userInfo.nickName];
                    //: [ret appendAttributedString:show];
                    [ret appendAttributedString:show];
                }
            }
        }
    }
    //: return ret;
    return ret;
}

//: - (NSMutableAttributedString *)otherShowName:(NSString *)string {
- (NSMutableAttributedString *)head:(NSString *)string {
    //: NSString *otherShow = [NSString stringWithFormat:@" [%@]", string];
    NSString *otherShow = [NSString stringWithFormat:@" [%@]", string];
    //: NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:otherShow];
    NSMutableAttributedString *show = [[NSMutableAttributedString alloc] initWithString:otherShow];
    //: NSString *searchText = _searchText;
    NSString *searchText = _searchText;
    //: if ([self ignoreCase]) {
    if ([self tingColor]) {
        //: searchText = [searchText lowercaseString];
        searchText = [searchText lowercaseString];
    }
    //: NSRange local = [[otherShow lowercaseString] rangeOfString:searchText];
    NSRange local = [[otherShow lowercaseString] rangeOfString:searchText];
    //: [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    [show setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:local];
    //: return show;
    return show;
}

//: - (BOOL)disableSearchTeam {
- (BOOL)wholeText {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: if (_delegate && [_delegate respondsToSelector:@selector(disableSearchTeam)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(wholeText)]) {
        //: ret = [_delegate disableSearchTeam];
        ret = [_delegate wholeText];
    }
    //: return ret;
    return ret;
}

//: - (BOOL)ignoreCase {
- (BOOL)tingColor {
    //: BOOL ret = YES;
    BOOL ret = YES;
    //: if (_delegate && [_delegate respondsToSelector:@selector(ignoreCase)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(tingColor)]) {
        //: ret = [_delegate ignoreCase];
        ret = [_delegate tingColor];
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (void)setSections:(NSMutableArray<NSArray *> *)sections {
- (void)setSections:(NSMutableArray<NSArray *> *)sections {
    //: _sections = sections;
    _sections = sections;
    //: _endSearch = YES;
    _endSearch = YES;
    //: [self.searchVC setActive:NO];
    [self.searchVC setActive:NO];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (UITableViewController *)searchResultVC {
- (UITableViewController *)searchResultVC {
    //: if (!_searchResultVC) {
    if (!_searchResultVC) {
        //: _searchResultVC = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
        _searchResultVC = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
        //: CGFloat resultInsetTop = self.searchVC.searchBar.height + [UIDevice vg_statusBarHeight];
        CGFloat resultInsetTop = self.searchVC.searchBar.height + [UIDevice clear];
        //: UIEdgeInsets resultInsets = {resultInsetTop, 0, 0, 0};
        UIEdgeInsets resultInsets = {resultInsetTop, 0, 0, 0};
        //: _searchResultVC.tableView.contentInset = resultInsets;
        _searchResultVC.tableView.contentInset = resultInsets;
        //: [_searchResultVC.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier: @"entrance"];
        [_searchResultVC.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier: StringFromTableData(kStr_titleDisableValue)];
        //: _searchResultVC.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _searchResultVC.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: _searchResultVC.tableView.delegate = self;
        _searchResultVC.tableView.delegate = self;
        //: _searchResultVC.tableView.dataSource = self;
        _searchResultVC.tableView.dataSource = self;
        //: _searchResultVC.tableView.separatorInset = UIEdgeInsetsZero;
        _searchResultVC.tableView.separatorInset = UIEdgeInsetsZero;
        //: _searchResultVC.tableView.tableFooterView = [UIView new];
        _searchResultVC.tableView.tableFooterView = [UIView new];
    }
    //: return _searchResultVC;
    return _searchResultVC;
}

//: - (UISearchController *)searchVC {
- (UISearchController *)searchVC {
    //: if (!_searchVC) {
    if (!_searchVC) {
        //: _searchVC = [[UISearchController alloc] initWithSearchResultsController:self.searchResultVC];
        _searchVC = [[UISearchController alloc] initWithSearchResultsController:self.searchResultVC];
        //: _searchVC.searchResultsUpdater = self;
        _searchVC.searchResultsUpdater = self;
        //: _searchVC.delegate = self;
        _searchVC.delegate = self;
        //: _searchVC.obscuresBackgroundDuringPresentation = YES;
        _searchVC.obscuresBackgroundDuringPresentation = YES;
        //: _searchVC.hidesNavigationBarDuringPresentation = YES;
        _searchVC.hidesNavigationBarDuringPresentation = YES;
        //: _searchVC.searchBar.height = 44.f;
        _searchVC.searchBar.height = 44.f;
    }
    //: return _searchVC;
    return _searchVC;
}

//: @end
@end

Byte * TableDataToCache(Byte *data) {
    int on = data[0];
    int cuttingEdge = data[1];
    int highlightName = data[2];
    if (!on) return data + highlightName;
    for (int i = 0; i < cuttingEdge / 2; i++) {
        int begin = highlightName + i;
        int end = highlightName + cuttingEdge - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[highlightName + cuttingEdge] = 0;
    return data + highlightName;
}

NSString *StringFromTableData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TableDataToCache(data)];
}  
