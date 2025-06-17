// __DEBUG__
// __CLOSE_PRINT__
//
//  PasskeyView.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/10/19.
//

// __M_A_C_R_O__
//: #import "FUSegmentedControl.h"
#import "PasskeyView.h"

//: static NSString * const kFUSegmentedCellIdentifierKey = @"FUSegmentedCellIdentifier";
static NSString * const kLet_viewTitle = @"FUSegmentedCellIdentifier";

//: @interface FUSegmentedControl ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@interface PasskeyView ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

//: @property (nonatomic, strong) UICollectionView *segmentedCollection;
@property (nonatomic, strong) UICollectionView *segmentedCollection;

//: @end
@end

//: @implementation FUSegmentedControl
@implementation PasskeyView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: return [self initWithFrame:frame items:nil];
    return [self initWithColorDownItems:frame part:nil];
}

//: - (instancetype)initWithFrame:(CGRect)frame items:(NSArray<NSString *> *)items {
- (instancetype)initWithColorDownItems:(CGRect)frame part:(NSArray<NSString *> *)items {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _items = items;
        _items = items;
        //: _titleColor = [UIColor whiteColor];
        _titleColor = [UIColor whiteColor];
        //: _selectedTitleColor = [UIColor blackColor];
        _selectedTitleColor = [UIColor blackColor];
        //: _titleFont = [UIFont systemFontOfSize:11 weight:UIFontWeightMedium];
        _titleFont = [UIFont systemFontOfSize:11 weight:UIFontWeightMedium];

        //: [self addSubview:self.segmentedCollection];
        [self addSubview:self.segmentedCollection];
        //: NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
        NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
        //: NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
        NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
        //: NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
        NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
        //: NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
        NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self.segmentedCollection attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
        //: [self addConstraints:@[leading, trailing, top, bottom]];
        [self addConstraints:@[leading, trailing, top, bottom]];
    }
    //: return self;
    return self;
}

//: - (void)refreshUI {
- (void)view {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.segmentedCollection reloadData];
        [self.segmentedCollection reloadData];
        //: if (self.selectedIndex >= 0 && self.selectedIndex < self.items.count) {
        if (self.selectedIndex >= 0 && self.selectedIndex < self.items.count) {
            //: [self.segmentedCollection selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
            [self.segmentedCollection selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
        }
    //: });
    });
}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.items.count;
    return self.items.count;
}

//: - (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: FUSegmentedCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFUSegmentedCellIdentifierKey forIndexPath:indexPath];
    MessageReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kLet_viewTitle forIndexPath:indexPath];
    //: cell.textColor = self.titleColor;
    cell.textColor = self.titleColor;
    //: cell.selectedTextColor = self.selectedTitleColor;
    cell.selectedTextColor = self.selectedTitleColor;
    //: cell.textLabel.font = self.titleFont;
    cell.textLabel.font = self.titleFont;
    //: cell.textLabel.text = self.items[indexPath.item];
    cell.textLabel.text = self.items[indexPath.item];
    //: cell.selected = indexPath.item == self.selectedIndex;
    cell.selected = indexPath.item == self.selectedIndex;
    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegateFlowLayout
#pragma mark - UICollectionViewDelegateFlowLayout

//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: return CGSizeMake(CGRectGetWidth(self.frame) / self.items.count, CGRectGetHeight(self.frame));
    return CGSizeMake(CGRectGetWidth(self.frame) / self.items.count, CGRectGetHeight(self.frame));
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

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

//: - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(segmentedControlShouldSelectItemAtIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(impressionLabel:)]) {
        //: return [self.delegate segmentedControlShouldSelectItemAtIndex:indexPath.item];
        return [self.delegate impressionLabel:indexPath.item];
    }
    //: return YES;
    return YES;
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (indexPath.item == self.selectedIndex) {
    if (indexPath.item == self.selectedIndex) {
        //: return;
        return;
    }
    //: self.selectedIndex = indexPath.item;
    self.selectedIndex = indexPath.item;
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(segmentedControlDidSelectAtIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(messaged:)]) {
        //: [self.delegate segmentedControlDidSelectAtIndex:indexPath.item];
        [self.delegate messaged:indexPath.item];
    }
}

//: #pragma mark - Setters
#pragma mark - Setters

//: - (void)setSelectedIndex:(NSUInteger)selectedIndex {
- (void)setSelectedIndex:(NSUInteger)selectedIndex {
    //: if (selectedIndex < 0 || selectedIndex >= self.items.count) {
    if (selectedIndex < 0 || selectedIndex >= self.items.count) {
        //: return;
        return;
    }
    //: _selectedIndex = selectedIndex;
    _selectedIndex = selectedIndex;
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.segmentedCollection reloadData];
        [self.segmentedCollection reloadData];
        //: [self.segmentedCollection selectItemAtIndexPath:[NSIndexPath indexPathForItem:selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
        [self.segmentedCollection selectItemAtIndexPath:[NSIndexPath indexPathForItem:selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
    //: });
    });
}

//: - (void)setItems:(NSArray<NSString *> *)items {
- (void)setItems:(NSArray<NSString *> *)items {
    //: if (items.count == 0) {
    if (items.count == 0) {
        //: return;
        return;
    }
    //: _items = items;
    _items = items;
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.segmentedCollection reloadData];
        [self.segmentedCollection reloadData];
    //: });
    });
}

//: - (void)setTitleColor:(UIColor *)titleColor {
- (void)setTitleColor:(UIColor *)titleColor {
    //: _titleColor = titleColor;
    _titleColor = titleColor;
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.segmentedCollection reloadData];
        [self.segmentedCollection reloadData];
    //: });
    });
}

//: - (void)setSelectedTitleColor:(UIColor *)selectedTitleColor {
- (void)setSelectedTitleColor:(UIColor *)selectedTitleColor {
    //: _selectedTitleColor = selectedTitleColor;
    _selectedTitleColor = selectedTitleColor;
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.segmentedCollection reloadData];
        [self.segmentedCollection reloadData];
    //: });
    });
}

//: - (void)setTitleFont:(UIFont *)titleFont {
- (void)setTitleFont:(UIFont *)titleFont {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.segmentedCollection reloadData];
        [self.segmentedCollection reloadData];
    //: });
    });
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (UICollectionView *)segmentedCollection {
- (UICollectionView *)segmentedCollection {
    //: if (!_segmentedCollection) {
    if (!_segmentedCollection) {
        //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //: layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        //: _segmentedCollection = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _segmentedCollection = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        //: _segmentedCollection.showsVerticalScrollIndicator = NO;
        _segmentedCollection.showsVerticalScrollIndicator = NO;
        //: _segmentedCollection.showsHorizontalScrollIndicator = NO;
        _segmentedCollection.showsHorizontalScrollIndicator = NO;
        //: _segmentedCollection.backgroundColor = [UIColor clearColor];
        _segmentedCollection.backgroundColor = [UIColor clearColor];
        //: _segmentedCollection.translatesAutoresizingMaskIntoConstraints = NO;
        _segmentedCollection.translatesAutoresizingMaskIntoConstraints = NO;
        //: _segmentedCollection.dataSource = self;
        _segmentedCollection.dataSource = self;
        //: _segmentedCollection.delegate = self;
        _segmentedCollection.delegate = self;
        //: [_segmentedCollection registerClass:[FUSegmentedCell class] forCellWithReuseIdentifier:kFUSegmentedCellIdentifierKey];
        [_segmentedCollection registerClass:[MessageReusableView class] forCellWithReuseIdentifier:kLet_viewTitle];
    }
    //: return _segmentedCollection;
    return _segmentedCollection;
}

//: @end
@end


//: @interface FUSegmentedCell ()
@interface MessageReusableView ()

//: @property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UILabel *textLabel;

//: @end
@end

//: @implementation FUSegmentedCell
@implementation MessageReusableView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.textLabel];
        [self.contentView addSubview:self.textLabel];

        //: NSLayoutConstraint *centerX = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
        NSLayoutConstraint *centerX = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
        //: NSLayoutConstraint *centerY = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
        NSLayoutConstraint *centerY = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
        //: [self addConstraints:@[centerX, centerY]];
        [self addConstraints:@[centerX, centerY]];
    }
    //: return self;
    return self;
}

//: - (void)setSelected:(BOOL)selected {
- (void)setSelected:(BOOL)selected {
    //: [super setSelected:selected];
    [super setSelected:selected];
    //: if (selected) {
    if (selected) {
        //: self.textLabel.textColor = self.selectedTextColor ?: [UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1];
        self.textLabel.textColor = self.selectedTextColor ?: [UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1];
        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
    //: } else {
    } else {
        //: self.textLabel.textColor = self.textColor ?: [UIColor whiteColor];
        self.textLabel.textColor = self.textColor ?: [UIColor whiteColor];
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
    }
}

//: - (UILabel *)textLabel {
- (UILabel *)textLabel {
    //: if (!_textLabel) {
    if (!_textLabel) {
        //: _textLabel = [[UILabel alloc] init];
        _textLabel = [[UILabel alloc] init];
        //: _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    //: return _textLabel;
    return _textLabel;
}

//: @end
@end