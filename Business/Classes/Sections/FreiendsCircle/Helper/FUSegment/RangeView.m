// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeView.m
//  FULiveDemo
//
//  Created by 项林平 on 2021/9/26.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FUSegmentBar.h"
#import "RangeView.h"

//: @interface FUSegmentBar ()
@interface RangeView ()

//: @property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) NSInteger selectedIndex;

//: @end
@end

//: @implementation FUSegmentBarConfigurations
@implementation HideConfigurations

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        // 默认选中/未选中颜色
        //: self.selectedTitleColor = [UIColor colorWithRed:94/255.0f green:199/255.0f blue:254/255.0f alpha:1.0];
        self.selectedTitleColor = [UIColor colorWithRed:94/255.0f green:199/255.0f blue:254/255.0f alpha:1.0];
        //: self.normalTitleColor = [UIColor whiteColor];
        self.normalTitleColor = [UIColor whiteColor];
        //: self.disabledTitleColor = [UIColor colorWithWhite:1 alpha:0.6];
        self.disabledTitleColor = [UIColor colorWithWhite:1 alpha:0.6];
        //: self.titleFont = [UIFont systemFontOfSize:13];
        self.titleFont = [UIFont systemFontOfSize:13];
    }
    //: return self;
    return self;
}

//: @end
@end

//: static NSString * const kFUSegmentCellIdentifierKey = @"FUSegmentCellIdentifier";
static NSString * const kLet_indexTingValue = @"FUSegmentCellIdentifier";

//: @interface FUSegmentBar ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@interface RangeView ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;

//: @property (nonatomic, strong) FUSegmentBarConfigurations *configuration;
@property (nonatomic, strong) HideConfigurations *configuration;
//: @property (nonatomic, copy) NSArray *titles;
@property (nonatomic, copy) NSArray *titles;

/// cell宽度数组
//: @property (nonatomic, copy) NSArray *itemWidths;
@property (nonatomic, copy) NSArray *itemWidths;

//: @end
@end

//: @implementation FUSegmentBar
@implementation RangeView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame titles:(NSArray<NSString *> *)titles configuration:(FUSegmentBarConfigurations *)configuration {
- (instancetype)initWithSegment:(CGRect)frame mediaShow:(NSArray<NSString *> *)titles name:(HideConfigurations *)configuration {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithRed:5/255.0 green:15/255.0 blue:20/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:5/255.0 green:15/255.0 blue:20/255.0 alpha:1.0];
        //: self.titles = [titles copy];
        self.titles = [titles copy];
        //: self.configuration = configuration;
        self.configuration = configuration;
        //: if (!self.configuration) {
        if (!self.configuration) {
            //: self.configuration = [[FUSegmentBarConfigurations alloc] init];
            self.configuration = [[HideConfigurations alloc] init];
        }

        // 计算宽度
        //: NSMutableArray *tempWidths = [NSMutableArray arrayWithCapacity:self.titles.count];
        NSMutableArray *tempWidths = [NSMutableArray arrayWithCapacity:self.titles.count];
        //: if (self.titles.count < 7) {
        if (self.titles.count < 7) {
            // 平均分配宽度
            //: CGFloat width = CGRectGetWidth(frame) / self.titles.count * 1.0;
            CGFloat width = CGRectGetWidth(frame) / self.titles.count * 1.0;
            //: for (NSInteger i = 0; i < self.titles.count; i++) {
            for (NSInteger i = 0; i < self.titles.count; i++) {
                //: [tempWidths addObject:@(width)];
                [tempWidths addObject:@(width)];
            }
        //: } else {
        } else {
            // 根据文字适配宽度
            //: for (NSString *title in self.titles) {
            for (NSString *title in self.titles) {
                //: CGSize nameSize = [title sizeWithAttributes:@{NSFontAttributeName : self.configuration.titleFont}];
                CGSize nameSize = [title sizeWithAttributes:@{NSFontAttributeName : self.configuration.titleFont}];
                //: [tempWidths addObject:@(nameSize.width + 20)];
                [tempWidths addObject:@(nameSize.width + 20)];
            }
        }
        //: self.itemWidths = [tempWidths copy];
        self.itemWidths = [tempWidths copy];

        //: _selectedIndex = -1;
        _selectedIndex = -1;

        //: [self addSubview:self.collectionView];
        [self addSubview:self.collectionView];
    }
    //: return self;
    return self;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)selectItemAtIndex:(NSInteger)index {
- (void)awayWithoutQuantitativeRelationFullCalorimetry:(NSInteger)index {
    //: NSInteger count = self.titles.count;
    NSInteger count = self.titles.count;
    //: if (index >= count) {
    if (index >= count) {
        //: return;
        return;
    }
    //: if (self.selectedIndex == index) {
    if (self.selectedIndex == index) {
        // 目标索引和当前选中索引相同时，不需要处理界面逻辑，只要触发回调即可
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(segmentBar:didSelectItemAtIndex:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(lineItem:distance:)]) {
            //: [self.delegate segmentBar:self didSelectItemAtIndex:index];
            [self.delegate lineItem:self distance:index];
        }
        //: return;
        return;
    }
    //: if (index == -1) {
    if (index == -1) {
        // 取消选中时只需要更新界面
        //: [self.collectionView deselectItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0] animated:NO];
        [self.collectionView deselectItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0] animated:NO];
        //: self.selectedIndex = -1;
        self.selectedIndex = -1;
    //: } else {
    } else {
        // 正常选中需要处理界面逻辑并触发回调
        //: [self.collectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
        [self.collectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(segmentBar:didSelectItemAtIndex:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(lineItem:distance:)]) {
            //: [self.delegate segmentBar:self didSelectItemAtIndex:index];
            [self.delegate lineItem:self distance:index];
        }
        //: self.selectedIndex = index;
        self.selectedIndex = index;
    }

}

//: - (void)refresh {
- (void)red {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.collectionView reloadData];
        [self.collectionView reloadData];
        //: if (self.selectedIndex >= 0) {
        if (self.selectedIndex >= 0) {
            //: [self.collectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
            [self.collectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
        }
    //: });
    });
}

//: #pragma mark - Collection view data source
#pragma mark - Collection view data source

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.titles.count;
    return self.titles.count;
}

//: - (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: FUSegmentsBarCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFUSegmentCellIdentifierKey forIndexPath:indexPath];
    CompartmentReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kLet_indexTingValue forIndexPath:indexPath];
    //: cell.segmentTitleLabel.text = self.titles[indexPath.item];
    cell.segmentTitleLabel.text = self.titles[indexPath.item];
    //: cell.segmentTitleLabel.font = self.configuration.titleFont;
    cell.segmentTitleLabel.font = self.configuration.titleFont;
    //: cell.segmentNormalTitleColor = self.configuration.normalTitleColor;
    cell.segmentNormalTitleColor = self.configuration.normalTitleColor;
    //: cell.segmentSelectedTitleColor = self.configuration.selectedTitleColor;
    cell.segmentSelectedTitleColor = self.configuration.selectedTitleColor;
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(segmentBar:shouldDisableItemAtIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(nameSource:withReload:)]) {
        //: if ([self.delegate segmentBar:self shouldDisableItemAtIndex:indexPath.item]) {
        if ([self.delegate nameSource:self withReload:indexPath.item]) {
            //: cell.segmentTitleLabel.textColor = self.configuration.disabledTitleColor;
            cell.segmentTitleLabel.textColor = self.configuration.disabledTitleColor;
        }
    }
    //: return cell;
    return cell;
}

//: #pragma mark - Collection view delegate
#pragma mark - Collection view delegate

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: _selectedIndex = indexPath.item;
    _selectedIndex = indexPath.item;
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(segmentBar:didSelectItemAtIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(lineItem:distance:)]) {
        //: [self.delegate segmentBar:self didSelectItemAtIndex:indexPath.item];
        [self.delegate lineItem:self distance:indexPath.item];
    }
}

//: - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(segmentBar:shouldSelectItemAtIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(colorSegmentBar:disable:)]) {
        //: return [self.delegate segmentBar:self shouldSelectItemAtIndex:indexPath.item];
        return [self.delegate colorSegmentBar:self disable:indexPath.item];
    }
    //: return YES;
    return YES;
}

//: #pragma mark - Collection view delegate flow layout
#pragma mark - Collection view delegate flow layout

//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: return CGSizeMake([self.itemWidths[indexPath.item] floatValue], CGRectGetHeight(collectionView.frame));
    return CGSizeMake([self.itemWidths[indexPath.item] floatValue], CGRectGetHeight(collectionView.frame));
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    //: return 0;
    return 0;
}

//: - (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    //: return 0;
    return 0;
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (UICollectionView *)collectionView {
- (UICollectionView *)collectionView {
    //: if (!_collectionView) {
    if (!_collectionView) {
        //: UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        //: flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        //: _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), 49.f) collectionViewLayout:flowLayout];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), 49.f) collectionViewLayout:flowLayout];
        //: _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.backgroundColor = [UIColor clearColor];
        //: _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        //: _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.showsVerticalScrollIndicator = NO;
        //: _collectionView.dataSource = self;
        _collectionView.dataSource = self;
        //: _collectionView.delegate = self;
        _collectionView.delegate = self;

        //: [_collectionView registerClass:[FUSegmentsBarCell class] forCellWithReuseIdentifier:kFUSegmentCellIdentifierKey];
        [_collectionView registerClass:[CompartmentReusableView class] forCellWithReuseIdentifier:kLet_indexTingValue];
    }
    //: return _collectionView;
    return _collectionView;
}

//: @end
@end

//: @implementation FUSegmentsBarCell
@implementation CompartmentReusableView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: [self.contentView addSubview:self.segmentTitleLabel];
        [self.contentView addSubview:self.segmentTitleLabel];
        //: NSLayoutConstraint *titleLabelCenterX = [NSLayoutConstraint constraintWithItem:self.segmentTitleLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
        NSLayoutConstraint *titleLabelCenterX = [NSLayoutConstraint constraintWithItem:self.segmentTitleLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
        //: NSLayoutConstraint *titleLabelCenterY = [NSLayoutConstraint constraintWithItem:self.segmentTitleLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
        NSLayoutConstraint *titleLabelCenterY = [NSLayoutConstraint constraintWithItem:self.segmentTitleLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
        //: [self.contentView addConstraints:@[titleLabelCenterX, titleLabelCenterY]];
        [self.contentView addConstraints:@[titleLabelCenterX, titleLabelCenterY]];
    }
    //: return self;
    return self;
}

//: #pragma mark - Setters
#pragma mark - Setters

//: - (void)setSelected:(BOOL)selected {
- (void)setSelected:(BOOL)selected {
    //: [super setSelected:selected];
    [super setSelected:selected];
    //: if (selected) {
    if (selected) {
        //: self.segmentTitleLabel.textColor = self.segmentSelectedTitleColor ? self.segmentSelectedTitleColor : [UIColor colorWithRed:94/255.0f green:199/255.0f blue:254/255.0f alpha:1.0];
        self.segmentTitleLabel.textColor = self.segmentSelectedTitleColor ? self.segmentSelectedTitleColor : [UIColor colorWithRed:94/255.0f green:199/255.0f blue:254/255.0f alpha:1.0];
    //: } else {
    } else {
        //: self.segmentTitleLabel.textColor = self.segmentNormalTitleColor ? self.segmentNormalTitleColor : [UIColor whiteColor];
        self.segmentTitleLabel.textColor = self.segmentNormalTitleColor ? self.segmentNormalTitleColor : [UIColor whiteColor];
    }
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (UILabel *)segmentTitleLabel {
- (UILabel *)segmentTitleLabel {
    //: if (!_segmentTitleLabel) {
    if (!_segmentTitleLabel) {
        //: _segmentTitleLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        _segmentTitleLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        //: _segmentTitleLabel.textColor = [UIColor whiteColor];
        _segmentTitleLabel.textColor = [UIColor whiteColor];
        //: _segmentTitleLabel.font = [UIFont systemFontOfSize:13];
        _segmentTitleLabel.font = [UIFont systemFontOfSize:13];
        //: _segmentTitleLabel.textAlignment = NSTextAlignmentCenter;
        _segmentTitleLabel.textAlignment = NSTextAlignmentCenter;
        //: _segmentTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _segmentTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    //: return _segmentTitleLabel;
    return _segmentTitleLabel;
}

//: @end
@end