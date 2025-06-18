
#import <Foundation/Foundation.h>

NSString *StringFromSexWillData(Byte *data);        


//: collectionCell
Byte kStr_dayAtData[] = {44, 14, 30, 13, 59, 92, 240, 2, 247, 17, 52, 100, 27, 69, 81, 78, 78, 71, 69, 86, 75, 81, 80, 37, 71, 78, 78, 6};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PerspectiveView.m
// Afterwards
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//
//: #pragma mark - NIMMemebrGroupData
#pragma mark - ImageStopRecent

// __M_A_C_R_O__
//: #import "FFFMemberGroupView.h"
#import "PerspectiveView.h"
//: #import "FFFCardHeaderCell.h"
#import "ThanButtonViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFCardOperationItem.h"
#import "ThanAfter.h"
//: #import "FFFTeamCardMemberItem.h"
#import "FrameMemberItem.h"

//: @implementation NIMMemebrGroupData
@implementation ImageStopRecent

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _opera = CardHeaderOpeatorNone;
        _opera = CardHeaderOpeatorNone;
    }
    //: return self;
    return self;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: @end
@end

//: #pragma mark - FFFMemberGroupView
#pragma mark - PerspectiveView

//: @interface FFFMemberGroupView()<UICollectionViewDataSource,UICollectionViewDelegate,FFFCardHeaderCellDelegate>
@interface PerspectiveView()<UICollectionViewDataSource,UICollectionViewDelegate,ElectronicNameDelegate>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) NSMutableDictionary *operatorTitle;
@property (nonatomic,strong) NSMutableDictionary *operatorTitle;

//: @end
@end

//: @implementation FFFMemberGroupView
@implementation PerspectiveView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.collectionView.delegate = self;
        self.collectionView.delegate = self;
        //: self.collectionView.dataSource = self;
        self.collectionView.dataSource = self;
        //: [self addSubview:self.collectionView];
        [self addSubview:self.collectionView];
    }
    //: return self;
    return self;
}

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas
- (void)name:(NSArray <ImageStopRecent *> *)datas
           //: operators:(NIMKitCardHeaderOpeator)operators{
           display:(NIMKitCardHeaderOpeator)operators{
    //: _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    //: _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;
    _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;

    //normal item
    //: self.data = [[NSMutableArray alloc] initWithArray:datas];
    self.data = [[NSMutableArray alloc] initWithArray:datas];

    //add item
    //: if (self.showAddOperator) {
    if (self.showAddOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        ImageStopRecent *groupData = [[ImageStopRecent alloc] init];
        //: groupData.opera = CardHeaderOpeatorAdd;
        groupData.opera = CardHeaderOpeatorAdd;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }

    //remove item
    //: if (self.showRemoveOperator) {
    if (self.showRemoveOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        ImageStopRecent *groupData = [[ImageStopRecent alloc] init];
        //: groupData.opera = CardHeaderOpeatorRemove;
        groupData.opera = CardHeaderOpeatorRemove;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera{
- (void)searchButton:(NSString *)title language:(NIMKitCardHeaderOpeator)opera{
    //: if (!self.operatorTitle) {
    if (!self.operatorTitle) {
        //: self.operatorTitle = [[NSMutableDictionary alloc] init];
        self.operatorTitle = [[NSMutableDictionary alloc] init];
    }
    //: self.operatorTitle[@(opera)] = title;
    self.operatorTitle[@(opera)] = title;
}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat width = size.width;
    CGFloat width = size.width;
    //: NSInteger sectionNumber = [self numberOfSections:width];
    NSInteger sectionNumber = [self backState:width];
    //: CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.collectionView.contentInset = self.sectionInsets;
    self.collectionView.contentInset = self.communication;
}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //: NSInteger lastTotal = self.collectionItemNumber * section;
    NSInteger lastTotal = self.sound * section;
    //: NSInteger remain = self.data.count - lastTotal;
    NSInteger remain = self.data.count - lastTotal;
    //: return remain < self.collectionItemNumber ? remain:self.collectionItemNumber;
    return remain < self.sound ? remain:self.sound;
}

//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    //: NSInteger sections = self.data.count / self.collectionItemNumber;
    NSInteger sections = self.data.count / self.sound;
    //: return self.data.count % self.collectionItemNumber ? sections + 1 : sections;
    return self.data.count % self.sound ? sections + 1 : sections;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //: FFFCardHeaderCell *cell;
    ThanButtonViewCell *cell;
    //: NIMMemebrGroupData *data = [self dataAtIndexPath:indexPath];
    ImageStopRecent *data = [self underCover:indexPath];
    //: if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
    if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
        //: cell = [self buildOperatorCell:data.opera indexPath:indexPath];
        cell = [self pathGraduatedTableReconstructCompartmentMapping:data.opera click:indexPath];
    //: }else{
    }else{
        //: cell = [self buildUserCell:data indexPath:indexPath];
        cell = [self appIn:data provider_strong:indexPath];
    }
    //: cell.delegate = self;
    cell.delegate = self;
    //: return cell;
    return cell;
}

//: - (NIMMemebrGroupData *)dataAtIndexPath:(NSIndexPath*)indexpath{
- (ImageStopRecent *)underCover:(NSIndexPath*)indexpath{
    //: NSInteger index = indexpath.section * self.collectionItemNumber;
    NSInteger index = indexpath.section * self.sound;
    //: index += indexpath.row;
    index += indexpath.row;
    //: return self.data[index];
    return self.data[index];
}

//: #pragma mark - FFFCardHeaderCellDelegate
#pragma mark - ElectronicNameDelegate
//: - (void)cellDidSelected:(FFFCardHeaderCell *)cell{
- (void)upSelected:(ThanButtonViewCell *)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    ImageStopRecent *groupData = [self underCover:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(closing:)]) {
        //: [self.delegate didSelectMemberId:groupData.userId];
        [self.delegate closing:groupData.userId];
    //: }else if ([self.delegate respondsToSelector:@selector(didSelectOperator:)]){
    }else if ([self.delegate respondsToSelector:@selector(distanced:)]){
        //: [self.delegate didSelectOperator:groupData.opera];
        [self.delegate distanced:groupData.opera];
    }
}

//: - (void)cellShouldBeRemoved:(FFFCardHeaderCell*)cell{
- (void)compartmenting:(ThanButtonViewCell*)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    ImageStopRecent *groupData = [self underCover:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectRemoveButtonWithMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(joinerred:)]) {
        //: [self.delegate didSelectRemoveButtonWithMemberId:groupData.userId];
        [self.delegate joinerred:groupData.userId];
    }
}

//: #pragma mark - UICollectionViewDelegateFlowLayout
#pragma mark - UICollectionViewDelegateFlowLayout
//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
- (CGSize)menuBy:(UICollectionView *)collectionView circumference:(UICollectionViewLayout*)collectionViewLayout untilTable:(NSIndexPath *)indexPath{
    //: return CGSizeMake(58, 80);
    return CGSizeMake(58, 80);
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
- (UIEdgeInsets)messageIndex:(UICollectionView *)collectionView recent:(UICollectionViewLayout*)collectionViewLayout view:(NSInteger)section{
    //: if (section == 0) {
    if (section == 0) {
        //: return UIEdgeInsetsMake(25, 0, 0, 0);
        return UIEdgeInsetsMake(25, 0, 0, 0);
    }
    //: return UIEdgeInsetsMake(15, 0, 0, 0);
    return UIEdgeInsetsMake(15, 0, 0, 0);
}

//: #pragma mark - Getter & Setter
#pragma mark - Getter & Setter
//: - (UICollectionView *)collectionView{
- (UICollectionView *)collectionView{
    //: if (!_collectionView) {
    if (!_collectionView) {
        //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //: layout.minimumInteritemSpacing = self.collectionEdgeInsetLeftRight;
        layout.minimumInteritemSpacing = self.parameter;
        //: _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        //: _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        //: _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: _collectionView.delegate = self;
        _collectionView.delegate = self;
        //: _collectionView.dataSource = self;
        _collectionView.dataSource = self;
        //: [_collectionView registerClass:[FFFCardHeaderCell class] forCellWithReuseIdentifier:@"collectionCell"];
        [_collectionView registerClass:[ThanButtonViewCell class] forCellWithReuseIdentifier:StringFromSexWillData(kStr_dayAtData)];
    }
    //: return _collectionView;
    return _collectionView;
}

//: - (CGFloat)collectionEdgeInsetLeftRight{
- (CGFloat)parameter{
    //: return 20;
    return 20;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (FFFCardHeaderCell *)buildUserCell:(NIMMemebrGroupData *)data indexPath:(NSIndexPath *)indexPath{
- (ThanButtonViewCell *)appIn:(ImageStopRecent *)data provider_strong:(NSIndexPath *)indexPath{
    //: FFFCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    ThanButtonViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:StringFromSexWillData(kStr_dayAtData) forIndexPath:indexPath];
    //: NIMCardMemberItem *item = [[NIMCardMemberItem alloc] init];
    ItemMessage *item = [[ItemMessage alloc] init];
    //: item.userId = data.userId;
    item.userId = data.userId;

    //: [cell refreshData:item];
    [cell aggregation:item];
    //: cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    //: return cell;
    return cell;
}

//: - (FFFCardHeaderCell *)buildOperatorCell:(NIMKitCardHeaderOpeator)operator indexPath:(NSIndexPath *)indexPath{
- (ThanButtonViewCell *)pathGraduatedTableReconstructCompartmentMapping:(NIMKitCardHeaderOpeator)operator click:(NSIndexPath *)indexPath{
    //: FFFCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    ThanButtonViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:StringFromSexWillData(kStr_dayAtData) forIndexPath:indexPath];
    //: FFFCardOperationItem *item = [[FFFCardOperationItem alloc] initWithOperation:operator];
    ThanAfter *item = [[ThanAfter alloc] initWithSmart:operator];
    //: if (self.operatorTitle[@(operator)]) {
    if (self.operatorTitle[@(operator)]) {
        //: item.title = self.operatorTitle[@(operator)];
        item.title = self.operatorTitle[@(operator)];
    }
    //: [cell refreshData:item];
    [cell aggregation:item];
    //: cell.removeBtn.hidden = YES;
    cell.removeBtn.hidden = YES;
    //: return cell;
    return cell;
}

//: - (UIEdgeInsets)sectionInsets {
- (UIEdgeInsets)communication {
    //: CGFloat left = (self.collectionView.nim_width - ((58 + self.collectionEdgeInsetLeftRight)) * self.collectionItemNumber - self.collectionEdgeInsetLeftRight) * 0.5;
    CGFloat left = (self.collectionView.nim_width - ((58 + self.parameter)) * self.sound - self.parameter) * 0.5;
    //: left = left > 20 ? left : 20;
    left = left > 20 ? left : 20;
    //: return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
    return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
}

//: - (NSInteger)collectionItemNumber{
- (NSInteger)sound{
    //: return [self collectionItemNumber:self.collectionView.nim_width];
    return [self create:self.collectionView.nim_width];
}

//: - (NSInteger)collectionItemNumber:(CGFloat)width{
- (NSInteger)create:(CGFloat)width{
    //: CGFloat minSpace = 20; 
    CGFloat minSpace = 20; //防止计算到最后出现左右贴边的情况
    //: return (int)((width - minSpace)/ (58 + self.collectionEdgeInsetLeftRight));
    return (int)((width - minSpace)/ (58 + self.parameter));
}

//: - (NSInteger)numberOfSections:(CGFloat)width{
- (NSInteger)backState:(CGFloat)width{
    //: NSInteger collectionNumber = [self collectionItemNumber:width];
    NSInteger collectionNumber = [self create:width];
    //: NSInteger sections = self.data.count / collectionNumber;
    NSInteger sections = self.data.count / collectionNumber;
    //: return self.data.count % collectionNumber ? sections + 1 : sections;
    return self.data.count % collectionNumber ? sections + 1 : sections;
}

//: @end
@end

Byte * SexWillDataToCache(Byte *data) {
    int dawdle = data[0];
    int submitStatus = data[1];
    Byte imageViewRefer = data[2];
    int necessityPaint = data[3];
    if (!dawdle) return data + necessityPaint;
    for (int i = necessityPaint; i < necessityPaint + submitStatus; i++) {
        int value = data[i] + imageViewRefer;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[necessityPaint + submitStatus] = 0;
    return data + necessityPaint;
}

NSString *StringFromSexWillData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SexWillDataToCache(data)];
}
