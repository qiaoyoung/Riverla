//
//  FUBeautySkinView.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/6/21.
//

#import "FUBeautySkinView.h"
#import "FUBeautyDefine.h"
#import <FURenderKit/UIDevice+FURenderKit.h>

static NSString * const kFUBeautySkinCellIdentifier = @"FUBeautySkinCell";

@interface FUBeautySkinView ()<UICollectionViewDataSource, UICollectionViewDelegate, FUSegmentedControlDelegate>

@property (nonatomic, strong) UICollectionView *skinCollectionView;
/// 程度调节
@property (nonatomic, strong) FUSlider *slider;
/// 皮肤分割控制
@property (nonatomic, strong) FUSegmentedControl *segmentedControl;
/// 恢复按钮
@property (nonatomic, strong) UIButton *recoverButton;

@property (nonatomic, strong) FUBeautySkinViewModel *viewModel;

@end

@implementation FUBeautySkinView

#pragma mark - Initializer

- (instancetype)initWithFrame:(CGRect)frame {
    return [self initWithFrame:frame viewModel:[[FUBeautySkinViewModel alloc] init]];
}

- (instancetype)initWithFrame:(CGRect)frame viewModel:(FUBeautySkinViewModel *)viewModel {
    self = [super initWithFrame:frame];
    if (self) {
        self.viewModel = viewModel;
        [self configureUI];
        [self refreshSubviews];
    }
    return self;
}

#pragma mark - UI

- (void)configureUI {
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.slider];
    [self addSubview:self.skinCollectionView];
}

- (void)refreshSubviews {
    dispatch_async(dispatch_get_main_queue(), ^{
        self.segmentedControl.selectedIndex = self.viewModel.skinSegmentationEnabled ? 1 : 0;
        if (self.viewModel.isDefaultValue) {
            self.recoverButton.alpha = 0.6;
            self.recoverButton.userInteractionEnabled = NO;
        } else {
            self.recoverButton.alpha = 1;
            self.recoverButton.userInteractionEnabled = YES;
        }
        if (!self.slider.hidden && self.viewModel.selectedIndex >= 0) {
            self.slider.bidirection = self.viewModel.beautySkins[self.viewModel.selectedIndex].defaultValueInMiddle;
            self.slider.value = self.viewModel.beautySkins[self.viewModel.selectedIndex].currentValue / self.viewModel.beautySkins[self.viewModel.selectedIndex].ratio;
        }
        [self.skinCollectionView reloadData];
        if (self.viewModel.selectedIndex >= 0) {
            [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
        }
    });
}

#pragma mark - Event response

- (void)recoverAction {
    [FUAlertManager showAlertWithTitle:nil message:@"是否将所有参数恢复到默认值" cancel:@"取消" confirm:@"确定" inController:nil confirmHandler:^{
        [self.viewModel recoverAllSkinValuesToDefault];
        [self refreshSubviews];
    } cancelHandler:nil];
}

- (void)sliderValueChanged {
    [self.viewModel setSkinValue:self.slider.value];
}

- (void)sliderChangeEnded {
    [self refreshSubviews];
}

#pragma mark - FUSegmentedControlDelegate

- (BOOL)segmentedControlShouldSelectItemAtIndex:(NSUInteger)index {
    // 美白皮肤分割仅支持高端机
    if ([FURenderKit devicePerformanceLevel] < FUDevicePerformanceLevelExcellent && index == 1) {
        [FUTipHUD showTips:[NSString stringWithFormat:@"功能仅支持iPhone11及以上机型使用", @"皮肤美白"] dismissWithDelay:1];
        [self.segmentedControl refreshUI];
        return NO;
    }
    return YES;
}

- (void)segmentedControlDidSelectAtIndex:(NSUInteger)index {
    self.viewModel.skinSegmentationEnabled = index == 1;
    [self refreshSubviews];
}

#pragma mark - Collection view data source

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.viewModel.beautySkins.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    FUBeautySkinCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFUBeautySkinCellIdentifier forIndexPath:indexPath];
    FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
    cell.textLabel.text = skin.name;
    cell.imageName = skin.imageName;
    cell.defaultInMiddle = skin.defaultValueInMiddle;
    cell.defaultValue = skin.defaultValue;
    cell.currentValue = skin.currentValue;
    // 判断特效设备性能等级要求是否高于当前设备性能等级
    FUDevicePerformanceLevel level = [FURenderKit devicePerformanceLevel];
    cell.disabled = skin.performanceLevel > level;
    cell.selected = indexPath.item == self.viewModel.selectedIndex;
    return cell;
}

#pragma mark - Collection view delegate

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    FUBeautySkinCell *cell = (FUBeautySkinCell *)[collectionView cellForItemAtIndexPath:indexPath];
    if (cell.disabled) {
        FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
        if (skin.performanceLevel == FUDevicePerformanceLevelVeryHigh) {
            [FUTipHUD showTips:[NSString stringWithFormat:@"功能仅支持iPhoneXR及以上机型使用%@", skin.name] dismissWithDelay:1];
            [self.skinCollectionView reloadData];
            if (self.viewModel.selectedIndex >= 0) {
                [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
            }
        } else if (skin.performanceLevel >= FUDevicePerformanceLevelLow) {
            [FUTipHUD showTips:[NSString stringWithFormat:@"该功能只支持在高端机上使用%@",skin.name] dismissWithDelay:1];
            [self.skinCollectionView reloadData];
            if (self.viewModel.selectedIndex >= 0) {
                [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
            }
        }
        return NO;
    }
    return YES;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.item == self.viewModel.selectedIndex) {
        return;
    }
    self.viewModel.selectedIndex = indexPath.item;
    FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
//    if (skin.type == FUBeautySkinColorLevel) {
//        // 美白需要加入皮肤分割功能
//        self.slider.frame = CGRectMake(112, 16, CGRectGetWidth(self.frame) - 128, FUBeautyFunctionSliderHeight);
//        self.segmentedControl.hidden = NO;
//    } else {
//        self.segmentedControl.hidden = YES;
//        self.slider.frame = CGRectMake(56, 16, CGRectGetWidth(self.frame) - 116, FUBeautyFunctionSliderHeight);
//    }
    if (self.slider.hidden) {
        self.slider.hidden = NO;
    }
    self.slider.bidirection = skin.defaultValueInMiddle;
    self.slider.value = skin.currentValue / skin.ratio;
}

#pragma mark - Getters

- (UICollectionView *)skinCollectionView {
    if (!_skinCollectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.itemSize = CGSizeMake(44, 74);
        layout.minimumLineSpacing = 22;
        layout.minimumInteritemSpacing = 22;
        layout.sectionInset = UIEdgeInsetsMake(16, 16, 6, 16);
        _skinCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(20, 62, SCREEN_WIDTH-40, 74) collectionViewLayout:layout];
        _skinCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
        _skinCollectionView.backgroundColor = [UIColor clearColor];
        _skinCollectionView.showsVerticalScrollIndicator = NO;
        _skinCollectionView.showsHorizontalScrollIndicator = NO;
        _skinCollectionView.dataSource = self;
        _skinCollectionView.delegate = self;
        [_skinCollectionView registerClass:[FUBeautySkinCell class] forCellWithReuseIdentifier:kFUBeautySkinCellIdentifier];
//        _skinCollectionView.scrollEnabled = NO;
    }
    return _skinCollectionView;
}

- (FUSegmentedControl *)segmentedControl {
    if (!_segmentedControl) {
        _segmentedControl = [[FUSegmentedControl alloc] initWithFrame:CGRectMake(16, 19, 80, 24) items:@[@"全局", @"仅皮肤"]];
        _segmentedControl.titleColor = [UIColor colorWithWhite:1 alpha:0.45];
        _segmentedControl.selectedTitleColor = [UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1];
        _segmentedControl.titleFont = [UIFont systemFontOfSize:10];
        _segmentedControl.layer.masksToBounds = YES;
        _segmentedControl.layer.cornerRadius = 12;
        _segmentedControl.layer.borderWidth = 1;
        _segmentedControl.layer.borderColor = [UIColor whiteColor].CGColor;
        _segmentedControl.hidden = YES;
        _segmentedControl.delegate = self;
    }
    return _segmentedControl;
}

- (UIButton *)recoverButton {
    if (!_recoverButton) {
        _recoverButton = [[UIButton alloc] initWithFrame:CGRectMake(15, 92, 93, 40)];
        _recoverButton.backgroundColor = RGB_COLOR_String(@"#1AB391FF");
        _recoverButton.layer.cornerRadius = 20;
        _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
        [_recoverButton setTitle:@"Reset" forState:UIControlStateNormal];
        [_recoverButton  setTitleColor:ThemeColor forState:UIControlStateNormal];
        [_recoverButton setImage:[UIImage imageNamed:@"recover_item"] forState:UIControlStateNormal];
//        _recoverButton.alpha = 0.1;
        _recoverButton.userInteractionEnabled = NO;
        [_recoverButton addTarget:self action:@selector(recoverAction) forControlEvents:UIControlEventTouchUpInside];
//        _recoverButton.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _recoverButton;
}

-(FUSlider *)slider {
    if (!_slider) {
        _slider = [[FUSlider alloc] initWithFrame:CGRectMake(20, 16, SCREEN_WIDTH-40, FUBeautyFunctionSliderHeight)];
//        _slider.hidden = YES;
        [_slider addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
        [_slider addTarget:self action:@selector(sliderChangeEnded) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
    }
    return _slider;
}

@end

@interface FUBeautySkinCell ()

@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) UILabel *textLabel;

@end

@implementation FUBeautySkinCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.imageView];
        NSLayoutConstraint *imageTop = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1 constant:0];
        NSLayoutConstraint *imageLeading = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
        NSLayoutConstraint *imageTrailing = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
        NSLayoutConstraint *imageHeight = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
        [self.contentView addConstraints:@[imageTop, imageLeading, imageTrailing]];
        [self.imageView addConstraint:imageHeight];
        
        [self.contentView addSubview:self.textLabel];
        NSLayoutConstraint *textTop = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeBottom multiplier:1 constant:7];
        NSLayoutConstraint *textLeading = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
        NSLayoutConstraint *textTrailing = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0];
        [self.contentView addConstraints:@[textTop, textLeading, textTrailing]];
    }
    return self;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    if (self.disabled) {
        self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
        self.imageView.alpha = 0.7;
        self.textLabel.alpha = 0.7;
    } else {
        self.imageView.alpha = 1;
        self.textLabel.alpha = 1;
        BOOL changed = NO;
        if (self.defaultInMiddle) {
            changed = fabs(self.currentValue - 0.5) > 0.01;
        }else{
            changed = self.currentValue > 0.01;
        }
        if (selected) {
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-2",self.imageName]];
            self.textLabel.textColor = ThemeColor;
        } else {
            self.imageView.image =  [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
            self.textLabel.textColor = kTextColor_2c3042;
        }
    }
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
        _imageView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _imageView;
}

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.font = [UIFont systemFontOfSize:10];
        _textLabel.textColor = kTextColor_2c3042;
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.adjustsFontSizeToFitWidth = YES;
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _textLabel.hidden = YES;
    }
    return _textLabel;
}

@end
