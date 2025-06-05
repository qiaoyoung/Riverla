
#import <Foundation/Foundation.h>

NSString *StringFromRoutineData(Byte *data);


//: png
Byte kStr_labelName[] = {96, 3, 12, 123, 63, 192, 129, 73, 198, 203, 107, 198, 103, 110, 112, 113};


//: %@.png
Byte kStr_spectacularValue[] = {70, 6, 10, 209, 230, 7, 92, 64, 44, 240, 103, 110, 112, 46, 64, 37, 139};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LightView.m
//  FUCommonUIComponent
//
//  Created by 项林平 on 2022/6/24.
//

// __M_A_C_R_O__
//: #import "FUItemsView.h"
#import "LightView.h"
//: #import "FUItemCell.h"
#import "ChildViewCell.h"

//: static NSString * const kFUItemCellIdentifier = @"FUItemCell";
static NSString * const let_cardText = @"ChildViewCell";

//: @interface FUItemsView ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@interface LightView ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;

//: @property (nonatomic, assign) CGFloat collectionTopConstant;
@property (nonatomic, assign) CGFloat collectionTopConstant;

//: @end
@end

//: @implementation FUItemsView
@implementation LightView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame topSpacing:(CGFloat)topSpacing {
- (instancetype)initWithRecent:(CGRect)frame label:(CGFloat)topSpacing {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.collectionTopConstant = topSpacing;
        self.collectionTopConstant = topSpacing;
        //: [self configureUI];
        [self red];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self configureUI];
        [self red];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithCoder:(NSCoder *)coder {
- (instancetype)initWithCoder:(NSCoder *)coder {
    //: self = [super initWithCoder:coder];
    self = [super initWithCoder:coder];
    //: if (self) {
    if (self) {
        //: [self configureUI];
        [self red];
    }
    //: return self;
    return self;
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)red {
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    //: UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    //: effectView.translatesAutoresizingMaskIntoConstraints = NO;
    effectView.translatesAutoresizingMaskIntoConstraints = NO;
    //: [self addSubview:effectView];
    [self addSubview:effectView];
    //: NSLayoutConstraint *effectLeading = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    NSLayoutConstraint *effectLeading = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    //: NSLayoutConstraint *effectTrailing = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    NSLayoutConstraint *effectTrailing = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    //: NSLayoutConstraint *effectTop = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    NSLayoutConstraint *effectTop = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    //: NSLayoutConstraint *effectBottom = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    NSLayoutConstraint *effectBottom = [NSLayoutConstraint constraintWithItem:effectView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    //: [self addConstraints:@[effectLeading, effectTrailing, effectTop, effectBottom]];
    [self addConstraints:@[effectLeading, effectTrailing, effectTop, effectBottom]];

    //: [self addSubview:self.collectionView];
    [self addSubview:self.collectionView];
    //: NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    //: NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    //: NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:self.collectionTopConstant];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:self.collectionTopConstant];
    //: NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:84];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:84];
    //: [self addConstraints:@[leading, trailing, top]];
    [self addConstraints:@[leading, trailing, top]];
    //: [self.collectionView addConstraint:height];
    [self.collectionView addConstraint:height];

    //: _selectedIndex = -1;
    _selectedIndex = -1;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)startAnimation {
- (void)dateTool {
    //: if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
    if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
        //: return;
        return;
    }
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: FUItemCell *selectedCell = (FUItemCell *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
        ChildViewCell *selectedCell = (ChildViewCell *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
        //: if (selectedCell) {
        if (selectedCell) {
            //: [selectedCell.indicatorView startAnimating];
            [selectedCell.indicatorView startAnimating];
            //: self.collectionView.userInteractionEnabled = NO;
            self.collectionView.userInteractionEnabled = NO;
        }
    //: });
    });
}

//: - (void)stopAnimation {
- (void)totaleractAnimation {
    //: if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
    if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
        //: return;
        return;
    }
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: FUItemCell *selectedCell = (FUItemCell *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
        ChildViewCell *selectedCell = (ChildViewCell *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
        //: if (selectedCell) {
        if (selectedCell) {
            //: [selectedCell.indicatorView stopAnimating];
            [selectedCell.indicatorView stopAnimating];
            //: self.collectionView.userInteractionEnabled = YES;
            self.collectionView.userInteractionEnabled = YES;
        }
    //: });
    });
}

//: #pragma mark - Private methods
#pragma mark - Private methods

//: - (UIImage *)imageWithImageName:(NSString *)imageName {
- (UIImage *)asGreen:(NSString *)imageName {
    //: UIImage *resultImage = [UIImage imageNamed:imageName];
    UIImage *resultImage = [UIImage imageNamed:imageName];
    //: if (!resultImage) {
    if (!resultImage) {
        //: NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:@"png"];
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:StringFromRoutineData(kStr_labelName)];
        //: resultImage = [UIImage imageWithContentsOfFile:path];
        resultImage = [UIImage imageWithContentsOfFile:path];
    }
    //: if (!resultImage) {
    if (!resultImage) {
        //: NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", imageName]];
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:[NSString stringWithFormat:StringFromRoutineData(kStr_spectacularValue), imageName]];
        //: resultImage = [UIImage imageWithContentsOfFile:path];
        resultImage = [UIImage imageWithContentsOfFile:path];
    }
    //: return resultImage;
    return resultImage;
}

//: #pragma mark - Collection view data source
#pragma mark - Collection view data source

//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    //: return 1;
    return 1;
}

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.items.count;
    return self.items.count;
}

//: - (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: FUItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFUItemCellIdentifier forIndexPath:indexPath];
    ChildViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:let_cardText forIndexPath:indexPath];
    //: NSString *item = self.items[indexPath.item];
    NSString *item = self.items[indexPath.item];
    //: cell.imageView.image = [self imageWithImageName:item];
    cell.imageView.image = [self asGreen:item];
    //: return cell;
    return cell;
}

//: #pragma mark - Collection view delegate
#pragma mark - Collection view delegate

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (indexPath.item == _selectedIndex) {
    if (indexPath.item == _selectedIndex) {
        //: return;
        return;
    }
    //: _selectedIndex = indexPath.item;
    _selectedIndex = indexPath.item;
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(itemsView:didSelectItemAtIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(colorOn:progressIndex:)]) {
        //: [self.delegate itemsView:self didSelectItemAtIndex:indexPath.item];
        [self.delegate colorOn:self progressIndex:indexPath.item];
    }
}

//: #pragma mark - Collection view delegate flow layout
#pragma mark - Collection view delegate flow layout

//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: return CGSizeMake(60, 60);
    return CGSizeMake(60, 60);
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    //: return UIEdgeInsetsMake(12, 16, 12, 16);
    return UIEdgeInsetsMake(12, 16, 12, 16);
}

//: #pragma mark - Setters
#pragma mark - Setters

//: - (void)setItems:(NSArray<NSString *> *)items {
- (void)setItems:(NSArray<NSString *> *)items {
    //: _items = items;
    _items = items;
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.collectionView reloadData];
        [self.collectionView reloadData];
    //: });
    });
}

//: - (void)setSelectedIndex:(NSInteger)selectedIndex {
- (void)setSelectedIndex:(NSInteger)selectedIndex {
    //: if (selectedIndex < 0 || selectedIndex >= self.items.count) {
    if (selectedIndex < 0 || selectedIndex >= self.items.count) {
        //: return;
        return;
    }
    //: _selectedIndex = selectedIndex;
    _selectedIndex = selectedIndex;
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self.collectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
        [self.collectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(itemsView:didSelectItemAtIndex:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(colorOn:progressIndex:)]) {
            //: [self.delegate itemsView:self didSelectItemAtIndex:selectedIndex];
            [self.delegate colorOn:self progressIndex:selectedIndex];
        }
    //: });
    });
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
        //: _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        //: _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.backgroundColor = [UIColor clearColor];
        //: _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        //: _collectionView.translatesAutoresizingMaskIntoConstraints = NO;
        _collectionView.translatesAutoresizingMaskIntoConstraints = NO;
        //: _collectionView.dataSource = self;
        _collectionView.dataSource = self;
        //: _collectionView.delegate = self;
        _collectionView.delegate = self;
        //: [_collectionView registerClass:[FUItemCell class] forCellWithReuseIdentifier:kFUItemCellIdentifier];
        [_collectionView registerClass:[ChildViewCell class] forCellWithReuseIdentifier:let_cardText];
    }
    //: return _collectionView;
    return _collectionView;
}

//: @end
@end

Byte * RoutineDataToCache(Byte *data) {
    int healthHazard = data[0];
    int displayShow = data[1];
    int soldier = data[2];
    if (!healthHazard) return data + soldier;
    for (int i = 0; i < displayShow / 2; i++) {
        int begin = soldier + i;
        int end = soldier + displayShow - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[soldier + displayShow] = 0;
    return data + soldier;
}

NSString *StringFromRoutineData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RoutineDataToCache(data)];
}  
