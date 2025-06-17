
#import <Foundation/Foundation.h>

NSString *StringFromTextData(Byte *data);        


//: %@.png
Byte kStr_selectedItemContent[] = {12, 6, 76, 11, 72, 177, 121, 231, 161, 232, 91, 217, 244, 226, 36, 34, 27, 148};


//: png
Byte kStr_changeRemoteData[] = {40, 3, 79, 6, 157, 59, 33, 31, 24, 75};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemsView.m
//  FUCommonUIComponent
//
//  Created by 项林平 on 2022/6/24.
//

// __M_A_C_R_O__
//: #import "FUItemsView.h"
#import "ItemsView.h"
//: #import "FUItemCell.h"
#import "CompartmentAgendaItemReusableView.h"

//: static NSString * const kFUItemCellIdentifier = @"FUItemCell";
static NSString * const kLet_topValue = @"CompartmentAgendaItemReusableView";

//: @interface FUItemsView ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@interface ItemsView ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;

//: @property (nonatomic, assign) CGFloat collectionTopConstant;
@property (nonatomic, assign) CGFloat collectionTopConstant;

//: @end
@end

//: @implementation FUItemsView
@implementation ItemsView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame topSpacing:(CGFloat)topSpacing {
- (instancetype)initWithDelve:(CGRect)frame loadFloat:(CGFloat)topSpacing {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.collectionTopConstant = topSpacing;
        self.collectionTopConstant = topSpacing;
        //: [self configureUI];
        [self replyMember];
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
        [self replyMember];
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
        [self replyMember];
    }
    //: return self;
    return self;
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)replyMember {
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
- (void)untilLanguage {
    //: if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
    if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
        //: return;
        return;
    }
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: FUItemCell *selectedCell = (FUItemCell *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
        CompartmentAgendaItemReusableView *selectedCell = (CompartmentAgendaItemReusableView *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
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
- (void)length {
    //: if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
    if (_selectedIndex < 0 && _selectedIndex >= self.items.count) {
        //: return;
        return;
    }
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: FUItemCell *selectedCell = (FUItemCell *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
        CompartmentAgendaItemReusableView *selectedCell = (CompartmentAgendaItemReusableView *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectedIndex inSection:0]];
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
- (UIImage *)arc:(NSString *)imageName {
    //: UIImage *resultImage = [UIImage imageNamed:imageName];
    UIImage *resultImage = [UIImage imageNamed:imageName];
    //: if (!resultImage) {
    if (!resultImage) {
        //: NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:@"png"];
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:StringFromTextData(kStr_changeRemoteData)];
        //: resultImage = [UIImage imageWithContentsOfFile:path];
        resultImage = [UIImage imageWithContentsOfFile:path];
    }
    //: if (!resultImage) {
    if (!resultImage) {
        //: NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", imageName]];
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:[NSString stringWithFormat:StringFromTextData(kStr_selectedItemContent), imageName]];
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
    CompartmentAgendaItemReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kLet_topValue forIndexPath:indexPath];
    //: NSString *item = self.items[indexPath.item];
    NSString *item = self.items[indexPath.item];
    //: cell.imageView.image = [self imageWithImageName:item];
    cell.imageView.image = [self arc:item];
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
    if (self.delegate && [self.delegate respondsToSelector:@selector(message:mentalPicture:)]) {
        //: [self.delegate itemsView:self didSelectItemAtIndex:indexPath.item];
        [self.delegate message:self mentalPicture:indexPath.item];
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
        if (self.delegate && [self.delegate respondsToSelector:@selector(message:mentalPicture:)]) {
            //: [self.delegate itemsView:self didSelectItemAtIndex:selectedIndex];
            [self.delegate message:self mentalPicture:selectedIndex];
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
        [_collectionView registerClass:[CompartmentAgendaItemReusableView class] forCellWithReuseIdentifier:kLet_topValue];
    }
    //: return _collectionView;
    return _collectionView;
}

//: @end
@end

Byte * TextDataToCache(Byte *data) {
    int magnitudeervalChangeTable = data[0];
    int modusVivendi = data[1];
    Byte viewTimeCapture = data[2];
    int itemRow = data[3];
    if (!magnitudeervalChangeTable) return data + itemRow;
    for (int i = itemRow; i < itemRow + modusVivendi; i++) {
        int value = data[i] + viewTimeCapture;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[itemRow + modusVivendi] = 0;
    return data + itemRow;
}

NSString *StringFromTextData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TextDataToCache(data)];
}
