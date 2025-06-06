
#import <Foundation/Foundation.h>

NSString *StringFromUnderdevelopedData(Byte *data);


//: #2C3042
Byte kStr_electricName[] = {3, 7, 12, 98, 37, 215, 3, 229, 189, 28, 252, 251, 50, 52, 48, 51, 67, 50, 35, 76};


//: #B391FF
Byte kStr_climbName[] = {66, 7, 4, 1, 70, 70, 49, 57, 51, 66, 35, 59};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FuturismView.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/6/21.
//

// __M_A_C_R_O__
//: #import "FUBeautyFilterView.h"
#import "FuturismView.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"

//: static NSString * const kFUBeautyFilterCellIdentifier = @"FUBeautyFilterCell";
static NSString * const let_resultTitleData = @"BlockViewCell";

//: @interface FUBeautyFilterView ()<UICollectionViewDataSource, UICollectionViewDelegate>
@interface FuturismView ()<UICollectionViewDataSource, UICollectionViewDelegate>



//: @end
@end

//: @implementation FUBeautyFilterView
@implementation FuturismView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: return [self initWithFrame:frame viewModel:[[FUBeautyFilterViewModel alloc] init]];
    return [self initWithColor:frame dismissGreen:[[IndexModel alloc] init]];
}

//: - (instancetype)initWithFrame:(CGRect)frame viewModel:(FUBeautyFilterViewModel *)viewModel {
- (instancetype)initWithColor:(CGRect)frame dismissGreen:(IndexModel *)viewModel {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.viewModel = viewModel;
        self.viewModel = viewModel;
        //: [self configureUI];
        [self nameShowTarget];
    }
    //: return self;
    return self;
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)nameShowTarget {
//    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
//    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
//    effectView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
//    [self addSubview:effectView];
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

    //: [self addSubview:self.filterSlider];
    [self addSubview:self.filterSlider];
    //: [self addSubview:self.filterCollectionView];
    [self addSubview:self.filterCollectionView];
    //: NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    //: NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    //: NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
    //: NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:98];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self.filterCollectionView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:98];
    //: [self addConstraints:@[bottom, leading, trailing]];
    [self addConstraints:@[bottom, leading, trailing]];
    //: [self.filterCollectionView addConstraint:height];
    [self.filterCollectionView addConstraint:height];
    // 默认选中
    //: [self.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    [self.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    //: self.filterSlider.hidden = self.viewModel.selectedIndex < 1;
    self.filterSlider.hidden = self.viewModel.selectedIndex < 1;
    //: if (!self.filterSlider.hidden) {
    if (!self.filterSlider.hidden) {
        //: self.filterSlider.value = self.viewModel.beautyFilters[self.viewModel.selectedIndex].filterLevel;
        self.filterSlider.value = self.viewModel.beautyFilters[self.viewModel.selectedIndex].filterLevel;
    }
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)sliderValueChanged {
- (void)timeValue {
    //: [self.viewModel setFilterValue:self.filterSlider.value];
    [self.viewModel setSizeValue:self.filterSlider.value];
}

//: #pragma mark - Collection view data source
#pragma mark - Collection view data source

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.viewModel.beautyFilters.count;
    return self.viewModel.beautyFilters.count;
}

//: - (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: FUBeautyFilterCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFUBeautyFilterCellIdentifier forIndexPath:indexPath];
    BlockViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:let_resultTitleData forIndexPath:indexPath];
    //: FUBeautyFilterModel *filter = self.viewModel.beautyFilters[indexPath.item];
    GoodLooksShow *filter = self.viewModel.beautyFilters[indexPath.item];
    //: cell.imageView.image = [UIImage imageNamed:filter.filterName];
    cell.imageView.image = [UIImage imageNamed:filter.filterName];
//    cell.textLabel.text = filter.filterNames;
    //: return cell;
    return cell;
}

//: #pragma mark - Collection view delegate
#pragma mark - Collection view delegate

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (self.viewModel.selectedIndex == indexPath.item) {
    if (self.viewModel.selectedIndex == indexPath.item) {
        //: return;
        return;
    }
    //: self.filterSlider.hidden = indexPath.item < 1;
    self.filterSlider.hidden = indexPath.item < 1;
    //: if (!self.filterSlider.hidden) {
    if (!self.filterSlider.hidden) {
        //: self.filterSlider.value = self.viewModel.beautyFilters[indexPath.item].filterLevel;
        self.filterSlider.value = self.viewModel.beautyFilters[indexPath.item].filterLevel;
    }
    //: self.viewModel.selectedIndex = indexPath.item;
    self.viewModel.selectedIndex = indexPath.item;
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyFilterViewDidChangeFilter:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(deleteVideo:)]) {
        //: [self.delegate beautyFilterViewDidChangeFilter:self.viewModel.beautyFilters[indexPath.item].filterName];
        [self.delegate deleteVideo:self.viewModel.beautyFilters[indexPath.item].filterName];
    }
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (FUSlider *)filterSlider {
- (ChildSlider *)filterSlider {
    //: if (!_filterSlider) {
    if (!_filterSlider) {
        //: _filterSlider = [[FUSlider alloc] initWithFrame:CGRectMake(20, 16, [[UIScreen mainScreen] bounds].size.width-40, 30)];
        _filterSlider = [[ChildSlider alloc] initWithFrame:CGRectMake(20, 16, [[UIScreen mainScreen] bounds].size.width-40, 30)];
        //: _filterSlider.bidirection = NO;
        _filterSlider.bidirection = NO;
        //: _filterSlider.hidden = YES;
        _filterSlider.hidden = YES;
        //: [_filterSlider addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
        [_filterSlider addTarget:self action:@selector(timeValue) forControlEvents:UIControlEventValueChanged];
    }
    //: return _filterSlider;
    return _filterSlider;
}

//: - (UICollectionView *)filterCollectionView {
- (UICollectionView *)filterCollectionView {
    //: if (!_filterCollectionView) {
    if (!_filterCollectionView) {
        //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //: layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        //: layout.itemSize = CGSizeMake(54, 70);
        layout.itemSize = CGSizeMake(54, 70);
        //: layout.minimumLineSpacing = 16;
        layout.minimumLineSpacing = 16;
        //: layout.minimumInteritemSpacing = 50;
        layout.minimumInteritemSpacing = 50;
        //: layout.sectionInset = UIEdgeInsetsMake(16, 18, 10, 18);
        layout.sectionInset = UIEdgeInsetsMake(16, 18, 10, 18);
        //: _filterCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _filterCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        //: _filterCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
        _filterCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
        //: _filterCollectionView.backgroundColor = [UIColor clearColor];
        _filterCollectionView.backgroundColor = [UIColor clearColor];
        //: _filterCollectionView.showsHorizontalScrollIndicator = NO;
        _filterCollectionView.showsHorizontalScrollIndicator = NO;
        //: _filterCollectionView.dataSource = self;
        _filterCollectionView.dataSource = self;
        //: _filterCollectionView.delegate = self;
        _filterCollectionView.delegate = self;
        //: [_filterCollectionView registerClass:[FUBeautyFilterCell class] forCellWithReuseIdentifier:kFUBeautyFilterCellIdentifier];
        [_filterCollectionView registerClass:[BlockViewCell class] forCellWithReuseIdentifier:let_resultTitleData];
    }
    //: return _filterCollectionView;
    return _filterCollectionView;
}

//: - (FUBeautyFilterViewModel *)viewModel {
- (IndexModel *)viewModel {
    //: if (!_viewModel) {
    if (!_viewModel) {
        //: _viewModel = [[FUBeautyFilterViewModel alloc] init];
        _viewModel = [[IndexModel alloc] init];
    }
    //: return _viewModel;
    return _viewModel;
}

//: @end
@end

//: @interface FUBeautyFilterCell ()
@interface BlockViewCell ()

//: @property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView;
//: @property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UILabel *textLabel;

//: @end
@end

//: @implementation FUBeautyFilterCell
@implementation BlockViewCell

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.imageView];
        [self.contentView addSubview:self.imageView];
        //: NSLayoutConstraint *imageTop = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1 constant:0];
        NSLayoutConstraint *imageTop = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1 constant:0];
        //: NSLayoutConstraint *imageLeading = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
        NSLayoutConstraint *imageLeading = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
        //: NSLayoutConstraint *imageTrailing = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
        NSLayoutConstraint *imageTrailing = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
        //: NSLayoutConstraint *imageHeight = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
        NSLayoutConstraint *imageHeight = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
        //: [self.contentView addConstraints:@[imageTop, imageLeading, imageTrailing]];
        [self.contentView addConstraints:@[imageTop, imageLeading, imageTrailing]];
        //: [self.imageView addConstraint:imageHeight];
        [self.imageView addConstraint:imageHeight];

        //: [self.contentView addSubview:self.textLabel];
        [self.contentView addSubview:self.textLabel];
        //: NSLayoutConstraint *textTop = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeBottom multiplier:1 constant:2];
        NSLayoutConstraint *textTop = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeBottom multiplier:1 constant:2];
        //: NSLayoutConstraint *textLeading = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
        NSLayoutConstraint *textLeading = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
        //: NSLayoutConstraint *textTrailing = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
        NSLayoutConstraint *textTrailing = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
        //: [self.contentView addConstraints:@[textTop, textLeading, textTrailing]];
        [self.contentView addConstraints:@[textTop, textLeading, textTrailing]];

    }
    //: return self;
    return self;
}

//: - (void)setSelected:(BOOL)selected {
- (void)setSelected:(BOOL)selected {
    //: [super setSelected:selected];
    [super setSelected:selected];
    //: self.imageView.layer.borderWidth = selected ? 2 : 0;
    self.imageView.layer.borderWidth = selected ? 2 : 0;
    //: self.imageView.layer.borderColor = selected ? [UIColor colorWithHexString:@"#B391FF"].CGColor : [UIColor clearColor].CGColor;
    self.imageView.layer.borderColor = selected ? [UIColor isView:StringFromUnderdevelopedData(kStr_climbName)].CGColor : [UIColor clearColor].CGColor;
    //: self.textLabel.textColor = selected ? [UIColor colorWithHexString:@"#B391FF"] : [UIColor colorWithHexString:@"#2C3042"];
    self.textLabel.textColor = selected ? [UIColor isView:StringFromUnderdevelopedData(kStr_climbName)] : [UIColor isView:StringFromUnderdevelopedData(kStr_electricName)];
}

//: - (UIImageView *)imageView {
- (UIImageView *)imageView {
    //: if (!_imageView) {
    if (!_imageView) {
        //: _imageView = [[UIImageView alloc] init];
        _imageView = [[UIImageView alloc] init];
        //: _imageView.translatesAutoresizingMaskIntoConstraints = NO;
        _imageView.translatesAutoresizingMaskIntoConstraints = NO;
        //: _imageView.layer.masksToBounds = YES;
        _imageView.layer.masksToBounds = YES;
        //: _imageView.layer.cornerRadius = 3.f;
        _imageView.layer.cornerRadius = 3.f;
    }
    //: return _imageView;
    return _imageView;
}

//: - (UILabel *)textLabel {
- (UILabel *)textLabel {
    //: if (!_textLabel) {
    if (!_textLabel) {
        //: _textLabel = [[UILabel alloc] init];
        _textLabel = [[UILabel alloc] init];
        //: _textLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _textLabel.textColor = [UIColor isView:StringFromUnderdevelopedData(kStr_electricName)];
        //: _textLabel.font = [UIFont systemFontOfSize:10];
        _textLabel.font = [UIFont systemFontOfSize:10];
        //: _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.textAlignment = NSTextAlignmentCenter;
        //: _textLabel.adjustsFontSizeToFitWidth = YES;
        _textLabel.adjustsFontSizeToFitWidth = YES;
        //: _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    //: return _textLabel;
    return _textLabel;
}

//: @end
@end

Byte * UnderdevelopedDataToCache(Byte *data) {
    int chop = data[0];
    int starring = data[1];
    int fedWeed = data[2];
    if (!chop) return data + fedWeed;
    for (int i = 0; i < starring / 2; i++) {
        int begin = fedWeed + i;
        int end = fedWeed + starring - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[fedWeed + starring] = 0;
    return data + fedWeed;
}

NSString *StringFromUnderdevelopedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UnderdevelopedDataToCache(data)];
}  
