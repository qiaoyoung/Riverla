
#import <Foundation/Foundation.h>

NSString *StringFromPhoneMessageData(Byte *data);


//: 皮肤美白
Byte kStr_mediaShowContent[] = {6, 12, 6, 140, 151, 133, 189, 153, 231, 142, 190, 231, 164, 130, 232, 174, 154, 231, 201};


//: #1AB391FF
Byte kStr_rowPathData[] = {50, 9, 10, 49, 40, 105, 88, 5, 168, 39, 70, 70, 49, 57, 51, 66, 65, 49, 35, 231};


//: 功能仅支持iPhoneXR及以上机型使用%@
Byte kStr_collectionChangeName[] = {91, 46, 9, 85, 147, 179, 179, 249, 65, 64, 37, 168, 148, 231, 191, 189, 228, 139, 158, 229, 186, 156, 230, 138, 184, 228, 165, 187, 228, 138, 143, 229, 82, 88, 101, 110, 111, 104, 80, 105, 129, 140, 230, 175, 148, 230, 133, 187, 228, 189, 131, 232, 159, 138, 229, 111};


//: Reset
Byte kStr_timeText[] = {94, 5, 3, 116, 101, 115, 101, 82, 214};


//: #B391FF
Byte kStr_pinAreaText[] = {92, 7, 9, 19, 212, 71, 68, 15, 123, 70, 70, 49, 57, 51, 66, 35, 105};


//: recover_item
Byte kStr_enableBubbleCellValue[] = {82, 12, 13, 101, 195, 179, 91, 42, 42, 178, 151, 30, 64, 109, 101, 116, 105, 95, 114, 101, 118, 111, 99, 101, 114, 66};


//: 功能仅支持iPhone11及以上机型使用
Byte kStr_formatShouldTitle[] = {29, 44, 5, 3, 252, 168, 148, 231, 191, 189, 228, 139, 158, 229, 186, 156, 230, 138, 184, 228, 165, 187, 228, 138, 143, 229, 49, 49, 101, 110, 111, 104, 80, 105, 129, 140, 230, 175, 148, 230, 133, 187, 228, 189, 131, 232, 159, 138, 229, 145};


//: 仅皮肤
Byte kStr_tableChangeTitle[] = {97, 9, 9, 167, 213, 143, 80, 68, 29, 164, 130, 232, 174, 154, 231, 133, 187, 228, 225};


//: 该功能只支持在高端机上使用%@
Byte kStr_blueMobileContent[] = {45, 41, 11, 28, 121, 110, 101, 48, 71, 123, 125, 64, 37, 168, 148, 231, 191, 189, 228, 138, 184, 228, 186, 156, 230, 175, 171, 231, 152, 171, 233, 168, 156, 229, 129, 140, 230, 175, 148, 230, 170, 143, 229, 189, 131, 232, 159, 138, 229, 165, 175, 232, 216};


//: #2C3042
Byte kStr_rowData[] = {65, 7, 4, 190, 50, 52, 48, 51, 67, 50, 35, 11};


//: 是否将所有参数恢复到默认值
Byte kStr_sessionBackgroundContent[] = {69, 39, 7, 238, 205, 157, 169, 188, 128, 229, 164, 174, 232, 152, 187, 233, 176, 136, 229, 141, 164, 229, 162, 129, 230, 176, 149, 230, 130, 143, 229, 137, 156, 230, 128, 137, 230, 134, 176, 229, 166, 144, 229, 175, 152, 230, 141};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AnalogDigitalConverterView.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/6/21.
//

// __M_A_C_R_O__
//: #import "FUBeautySkinView.h"
#import "AnalogDigitalConverterView.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"
//: #import <FURenderKit/UIDevice+FURenderKit.h>
#import <FURenderKit/UIDevice+FURenderKit.h>

//: static NSString * const kFUBeautySkinCellIdentifier = @"FUBeautySkinCell";
static NSString * const kLet_currentData = @"SupportTempView";

//: @interface FUBeautySkinView ()<UICollectionViewDataSource, UICollectionViewDelegate, FUSegmentedControlDelegate>
@interface AnalogDigitalConverterView ()<UICollectionViewDataSource, UICollectionViewDelegate, IndependentBottom>

//: @property (nonatomic, strong) UICollectionView *skinCollectionView;
@property (nonatomic, strong) UICollectionView *skinCollectionView;
/// 程度调节
//: @property (nonatomic, strong) FUSlider *slider;
@property (nonatomic, strong) HeaderSlider *slider;
/// 皮肤分割控制
//: @property (nonatomic, strong) FUSegmentedControl *segmentedControl;
@property (nonatomic, strong) PasskeyView *segmentedControl;
/// 恢复按钮
//: @property (nonatomic, strong) UIButton *recoverButton;
@property (nonatomic, strong) UIButton *recoverButton;

//: @property (nonatomic, strong) FUBeautySkinViewModel *viewModel;
@property (nonatomic, strong) TingModel *viewModel;

//: @end
@end

//: @implementation FUBeautySkinView
@implementation AnalogDigitalConverterView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: return [self initWithFrame:frame viewModel:[[FUBeautySkinViewModel alloc] init]];
    return [self initWithTilterModel:frame theoryName:[[TingModel alloc] init]];
}

//: - (instancetype)initWithFrame:(CGRect)frame viewModel:(FUBeautySkinViewModel *)viewModel {
- (instancetype)initWithTilterModel:(CGRect)frame theoryName:(TingModel *)viewModel {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.viewModel = viewModel;
        self.viewModel = viewModel;
        //: [self configureUI];
        [self name];
        //: [self refreshSubviews];
        [self connect];
    }
    //: return self;
    return self;
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)name {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];
    //: [self addSubview:self.slider];
    [self addSubview:self.slider];
    //: [self addSubview:self.skinCollectionView];
    [self addSubview:self.skinCollectionView];
}

//: - (void)refreshSubviews {
- (void)connect {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: self.segmentedControl.selectedIndex = self.viewModel.skinSegmentationEnabled ? 1 : 0;
        self.segmentedControl.selectedIndex = self.viewModel.skinSegmentationEnabled ? 1 : 0;
        //: if (self.viewModel.isDefaultValue) {
        if (self.viewModel.isDefaultValue) {
            //: self.recoverButton.alpha = 0.6;
            self.recoverButton.alpha = 0.6;
            //: self.recoverButton.userInteractionEnabled = NO;
            self.recoverButton.userInteractionEnabled = NO;
        //: } else {
        } else {
            //: self.recoverButton.alpha = 1;
            self.recoverButton.alpha = 1;
            //: self.recoverButton.userInteractionEnabled = YES;
            self.recoverButton.userInteractionEnabled = YES;
        }
        //: if (!self.slider.hidden && self.viewModel.selectedIndex >= 0) {
        if (!self.slider.hidden && self.viewModel.selectedIndex >= 0) {
            //: self.slider.bidirection = self.viewModel.beautySkins[self.viewModel.selectedIndex].defaultValueInMiddle;
            self.slider.bidirection = self.viewModel.beautySkins[self.viewModel.selectedIndex].defaultValueInMiddle;
            //: self.slider.value = self.viewModel.beautySkins[self.viewModel.selectedIndex].currentValue / self.viewModel.beautySkins[self.viewModel.selectedIndex].ratio;
            self.slider.value = self.viewModel.beautySkins[self.viewModel.selectedIndex].currentValue / self.viewModel.beautySkins[self.viewModel.selectedIndex].ratio;
        }
        //: [self.skinCollectionView reloadData];
        [self.skinCollectionView reloadData];
        //: if (self.viewModel.selectedIndex >= 0) {
        if (self.viewModel.selectedIndex >= 0) {
            //: [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
            [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
        }
    //: });
    });
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)recoverAction {
- (void)findDown {
    //: [FUAlertManager showAlertWithTitle:nil message:@"是否将所有参数恢复到默认值" cancel:@"取消" confirm:@"确定" inController:nil confirmHandler:^{
    [DisableManager evidence:nil table:StringFromPhoneMessageData(kStr_sessionBackgroundContent) line:@"取消" session:@"确定" with:nil imageRefreshHandler:^{
        //: [self.viewModel recoverAllSkinValuesToDefault];
        [self.viewModel clearDefault];
        //: [self refreshSubviews];
        [self connect];
    //: } cancelHandler:nil];
    } disableHandler:nil];
}

//: - (void)sliderValueChanged {
- (void)politenessName {
    //: [self.viewModel setSkinValue:self.slider.value];
    [self.viewModel setText:self.slider.value];
}

//: - (void)sliderChangeEnded {
- (void)thatQuick {
    //: [self refreshSubviews];
    [self connect];
}

//: #pragma mark - FUSegmentedControlDelegate
#pragma mark - IndependentBottom

//: - (BOOL)segmentedControlShouldSelectItemAtIndex:(NSUInteger)index {
- (BOOL)impressionLabel:(NSUInteger)index {
    // 美白皮肤分割仅支持高端机
    //: if ([FURenderKit devicePerformanceLevel] < FUDevicePerformanceLevelExcellent && index == 1) {
    if ([FURenderKit devicePerformanceLevel] < FUDevicePerformanceLevelExcellent && index == 1) {
        //: [FUTipHUD showTips:[NSString stringWithFormat:@"功能仅支持iPhone11及以上机型使用", @"皮肤美白"] dismissWithDelay:1];
        [PopHud content:[NSString stringWithFormat:StringFromPhoneMessageData(kStr_formatShouldTitle), StringFromPhoneMessageData(kStr_mediaShowContent)] with:1];
        //: [self.segmentedControl refreshUI];
        [self.segmentedControl view];
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)segmentedControlDidSelectAtIndex:(NSUInteger)index {
- (void)messaged:(NSUInteger)index {
    //: self.viewModel.skinSegmentationEnabled = index == 1;
    self.viewModel.skinSegmentationEnabled = index == 1;
    //: [self refreshSubviews];
    [self connect];
}

//: #pragma mark - Collection view data source
#pragma mark - Collection view data source

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.viewModel.beautySkins.count;
    return self.viewModel.beautySkins.count;
}

//: - (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: FUBeautySkinCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFUBeautySkinCellIdentifier forIndexPath:indexPath];
    SupportTempView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kLet_currentData forIndexPath:indexPath];
    //: FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
    RecentModel *skin = self.viewModel.beautySkins[indexPath.item];
    //: cell.textLabel.text = skin.name;
    cell.textLabel.text = skin.name;
    //: cell.imageName = skin.imageName;
    cell.imageName = skin.imageName;
    //: cell.defaultInMiddle = skin.defaultValueInMiddle;
    cell.defaultInMiddle = skin.defaultValueInMiddle;
    //: cell.defaultValue = skin.defaultValue;
    cell.defaultValue = skin.defaultValue;
    //: cell.currentValue = skin.currentValue;
    cell.currentValue = skin.currentValue;
    // 判断特效设备性能等级要求是否高于当前设备性能等级
    //: FUDevicePerformanceLevel level = [FURenderKit devicePerformanceLevel];
    FUDevicePerformanceLevel level = [FURenderKit devicePerformanceLevel];
    //: cell.disabled = skin.performanceLevel > level;
    cell.disabled = skin.performanceLevel > level;
    //: cell.selected = indexPath.item == self.viewModel.selectedIndex;
    cell.selected = indexPath.item == self.viewModel.selectedIndex;
    //: return cell;
    return cell;
}

//: #pragma mark - Collection view delegate
#pragma mark - Collection view delegate

//: - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: FUBeautySkinCell *cell = (FUBeautySkinCell *)[collectionView cellForItemAtIndexPath:indexPath];
    SupportTempView *cell = (SupportTempView *)[collectionView cellForItemAtIndexPath:indexPath];
    //: if (cell.disabled) {
    if (cell.disabled) {
        //: FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
        RecentModel *skin = self.viewModel.beautySkins[indexPath.item];
        //: if (skin.performanceLevel == FUDevicePerformanceLevelVeryHigh) {
        if (skin.performanceLevel == FUDevicePerformanceLevelVeryHigh) {
            //: [FUTipHUD showTips:[NSString stringWithFormat:@"功能仅支持iPhoneXR及以上机型使用%@", skin.name] dismissWithDelay:1];
            [PopHud content:[NSString stringWithFormat:StringFromPhoneMessageData(kStr_collectionChangeName), skin.name] with:1];
            //: [self.skinCollectionView reloadData];
            [self.skinCollectionView reloadData];
            //: if (self.viewModel.selectedIndex >= 0) {
            if (self.viewModel.selectedIndex >= 0) {
                //: [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
                [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
            }
        //: } else if (skin.performanceLevel >= FUDevicePerformanceLevelLow) {
        } else if (skin.performanceLevel >= FUDevicePerformanceLevelLow) {
            //: [FUTipHUD showTips:[NSString stringWithFormat:@"该功能只支持在高端机上使用%@",skin.name] dismissWithDelay:1];
            [PopHud content:[NSString stringWithFormat:StringFromPhoneMessageData(kStr_blueMobileContent),skin.name] with:1];
            //: [self.skinCollectionView reloadData];
            [self.skinCollectionView reloadData];
            //: if (self.viewModel.selectedIndex >= 0) {
            if (self.viewModel.selectedIndex >= 0) {
                //: [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
                [self.skinCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.viewModel.selectedIndex inSection:0] animated:NO scrollPosition:UICollectionViewScrollPositionNone];
            }
        }
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (indexPath.item == self.viewModel.selectedIndex) {
    if (indexPath.item == self.viewModel.selectedIndex) {
        //: return;
        return;
    }
    //: self.viewModel.selectedIndex = indexPath.item;
    self.viewModel.selectedIndex = indexPath.item;
    //: FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
    RecentModel *skin = self.viewModel.beautySkins[indexPath.item];
//    if (skin.type == FUBeautySkinColorLevel) {
//        // 美白需要加入皮肤分割功能
//        self.slider.frame = CGRectMake(112, 16, CGRectGetWidth(self.frame) - 128, FUBeautyFunctionSliderHeight);
//        self.segmentedControl.hidden = NO;
//    } else {
//        self.segmentedControl.hidden = YES;
//        self.slider.frame = CGRectMake(56, 16, CGRectGetWidth(self.frame) - 116, FUBeautyFunctionSliderHeight);
//    }
    //: if (self.slider.hidden) {
    if (self.slider.hidden) {
        //: self.slider.hidden = NO;
        self.slider.hidden = NO;
    }
    //: self.slider.bidirection = skin.defaultValueInMiddle;
    self.slider.bidirection = skin.defaultValueInMiddle;
    //: self.slider.value = skin.currentValue / skin.ratio;
    self.slider.value = skin.currentValue / skin.ratio;
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (UICollectionView *)skinCollectionView {
- (UICollectionView *)skinCollectionView {
    //: if (!_skinCollectionView) {
    if (!_skinCollectionView) {
        //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //: layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        //: layout.itemSize = CGSizeMake(44, 74);
        layout.itemSize = CGSizeMake(44, 74);
        //: layout.minimumLineSpacing = 22;
        layout.minimumLineSpacing = 22;
        //: layout.minimumInteritemSpacing = 22;
        layout.minimumInteritemSpacing = 22;
        //: layout.sectionInset = UIEdgeInsetsMake(16, 16, 6, 16);
        layout.sectionInset = UIEdgeInsetsMake(16, 16, 6, 16);
        //: _skinCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(20, 62, [[UIScreen mainScreen] bounds].size.width-40, 74) collectionViewLayout:layout];
        _skinCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(20, 62, [[UIScreen mainScreen] bounds].size.width-40, 74) collectionViewLayout:layout];
        //: _skinCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
        _skinCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
        //: _skinCollectionView.backgroundColor = [UIColor clearColor];
        _skinCollectionView.backgroundColor = [UIColor clearColor];
        //: _skinCollectionView.showsVerticalScrollIndicator = NO;
        _skinCollectionView.showsVerticalScrollIndicator = NO;
        //: _skinCollectionView.showsHorizontalScrollIndicator = NO;
        _skinCollectionView.showsHorizontalScrollIndicator = NO;
        //: _skinCollectionView.dataSource = self;
        _skinCollectionView.dataSource = self;
        //: _skinCollectionView.delegate = self;
        _skinCollectionView.delegate = self;
        //: [_skinCollectionView registerClass:[FUBeautySkinCell class] forCellWithReuseIdentifier:kFUBeautySkinCellIdentifier];
        [_skinCollectionView registerClass:[SupportTempView class] forCellWithReuseIdentifier:kLet_currentData];
//        _skinCollectionView.scrollEnabled = NO;
    }
    //: return _skinCollectionView;
    return _skinCollectionView;
}

//: - (FUSegmentedControl *)segmentedControl {
- (PasskeyView *)segmentedControl {
    //: if (!_segmentedControl) {
    if (!_segmentedControl) {
        //: _segmentedControl = [[FUSegmentedControl alloc] initWithFrame:CGRectMake(16, 19, 80, 24) items:@[@"全局", @"仅皮肤"]];
        _segmentedControl = [[PasskeyView alloc] initWithColorDownItems:CGRectMake(16, 19, 80, 24) part:@[@"全局", StringFromPhoneMessageData(kStr_tableChangeTitle)]];
        //: _segmentedControl.titleColor = [UIColor colorWithWhite:1 alpha:0.45];
        _segmentedControl.titleColor = [UIColor colorWithWhite:1 alpha:0.45];
        //: _segmentedControl.selectedTitleColor = [UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1];
        _segmentedControl.selectedTitleColor = [UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1];
        //: _segmentedControl.titleFont = [UIFont systemFontOfSize:10];
        _segmentedControl.titleFont = [UIFont systemFontOfSize:10];
        //: _segmentedControl.layer.masksToBounds = YES;
        _segmentedControl.layer.masksToBounds = YES;
        //: _segmentedControl.layer.cornerRadius = 12;
        _segmentedControl.layer.cornerRadius = 12;
        //: _segmentedControl.layer.borderWidth = 1;
        _segmentedControl.layer.borderWidth = 1;
        //: _segmentedControl.layer.borderColor = [UIColor whiteColor].CGColor;
        _segmentedControl.layer.borderColor = [UIColor whiteColor].CGColor;
        //: _segmentedControl.hidden = YES;
        _segmentedControl.hidden = YES;
        //: _segmentedControl.delegate = self;
        _segmentedControl.delegate = self;
    }
    //: return _segmentedControl;
    return _segmentedControl;
}

//: - (UIButton *)recoverButton {
- (UIButton *)recoverButton {
    //: if (!_recoverButton) {
    if (!_recoverButton) {
        //: _recoverButton = [[UIButton alloc] initWithFrame:CGRectMake(15, 92, 93, 40)];
        _recoverButton = [[UIButton alloc] initWithFrame:CGRectMake(15, 92, 93, 40)];
        //: _recoverButton.backgroundColor = [UIColor colorWithHexString:@"#1AB391FF"];
        _recoverButton.backgroundColor = [UIColor withMax:StringFromPhoneMessageData(kStr_rowPathData)];
        //: _recoverButton.layer.cornerRadius = 20;
        _recoverButton.layer.cornerRadius = 20;
        //: _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
        _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
        //: [_recoverButton setTitle:@"Reset" forState:UIControlStateNormal];
        [_recoverButton setTitle:StringFromPhoneMessageData(kStr_timeText) forState:UIControlStateNormal];
        //: [_recoverButton setTitleColor:[UIColor colorWithHexString:@"#B391FF"] forState:UIControlStateNormal];
        [_recoverButton setTitleColor:[UIColor withMax:StringFromPhoneMessageData(kStr_pinAreaText)] forState:UIControlStateNormal];
        //: [_recoverButton setImage:[UIImage imageNamed:@"recover_item"] forState:UIControlStateNormal];
        [_recoverButton setImage:[UIImage imageNamed:StringFromPhoneMessageData(kStr_enableBubbleCellValue)] forState:UIControlStateNormal];
//        _recoverButton.alpha = 0.1;
        //: _recoverButton.userInteractionEnabled = NO;
        _recoverButton.userInteractionEnabled = NO;
        //: [_recoverButton addTarget:self action:@selector(recoverAction) forControlEvents:UIControlEventTouchUpInside];
        [_recoverButton addTarget:self action:@selector(findDown) forControlEvents:UIControlEventTouchUpInside];
//        _recoverButton.translatesAutoresizingMaskIntoConstraints = NO;
    }
    //: return _recoverButton;
    return _recoverButton;
}

//: -(FUSlider *)slider {
-(HeaderSlider *)slider {
    //: if (!_slider) {
    if (!_slider) {
        //: _slider = [[FUSlider alloc] initWithFrame:CGRectMake(20, 16, [[UIScreen mainScreen] bounds].size.width-40, FUBeautyFunctionSliderHeight)];
        _slider = [[HeaderSlider alloc] initWithFrame:CGRectMake(20, 16, [[UIScreen mainScreen] bounds].size.width-40, kLet_fromValue)];
//        _slider.hidden = YES;
        //: [_slider addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
        [_slider addTarget:self action:@selector(politenessName) forControlEvents:UIControlEventValueChanged];
        //: [_slider addTarget:self action:@selector(sliderChangeEnded) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
        [_slider addTarget:self action:@selector(thatQuick) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
    }
    //: return _slider;
    return _slider;
}

//: @end
@end

//: @interface FUBeautySkinCell ()
@interface SupportTempView ()

//: @property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView;

//: @property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UILabel *textLabel;

//: @end
@end

//: @implementation FUBeautySkinCell
@implementation SupportTempView

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
        //: NSLayoutConstraint *textTop = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeBottom multiplier:1 constant:7];
        NSLayoutConstraint *textTop = [NSLayoutConstraint constraintWithItem:self.textLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.imageView attribute:NSLayoutAttributeBottom multiplier:1 constant:7];
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
    //: if (self.disabled) {
    if (self.disabled) {
        //: self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
        self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
        //: self.imageView.alpha = 0.7;
        self.imageView.alpha = 0.7;
        //: self.textLabel.alpha = 0.7;
        self.textLabel.alpha = 0.7;
    //: } else {
    } else {
        //: self.imageView.alpha = 1;
        self.imageView.alpha = 1;
        //: self.textLabel.alpha = 1;
        self.textLabel.alpha = 1;
        //: BOOL changed = NO;
        BOOL changed = NO;
        //: if (self.defaultInMiddle) {
        if (self.defaultInMiddle) {
            //: changed = fabs(self.currentValue - 0.5) > 0.01;
            changed = fabs(self.currentValue - 0.5) > 0.01;
        //: }else{
        }else{
            //: changed = self.currentValue > 0.01;
            changed = self.currentValue > 0.01;
        }
        //: if (selected) {
        if (selected) {
            //: self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-2",self.imageName]];
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-2",self.imageName]];
            //: self.textLabel.textColor = [UIColor colorWithHexString:@"#B391FF"];
            self.textLabel.textColor = [UIColor withMax:StringFromPhoneMessageData(kStr_pinAreaText)];
        //: } else {
        } else {
            //: self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
            //: self.textLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
            self.textLabel.textColor = [UIColor withMax:StringFromPhoneMessageData(kStr_rowData)];
        }
    }
}

//: - (UIImageView *)imageView {
- (UIImageView *)imageView {
    //: if (!_imageView) {
    if (!_imageView) {
        //: _imageView = [[UIImageView alloc] init];
        _imageView = [[UIImageView alloc] init];
        //: _imageView.translatesAutoresizingMaskIntoConstraints = NO;
        _imageView.translatesAutoresizingMaskIntoConstraints = NO;
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
        //: _textLabel.font = [UIFont systemFontOfSize:10];
        _textLabel.font = [UIFont systemFontOfSize:10];
        //: _textLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _textLabel.textColor = [UIColor withMax:StringFromPhoneMessageData(kStr_rowData)];
        //: _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.textAlignment = NSTextAlignmentCenter;
        //: _textLabel.adjustsFontSizeToFitWidth = YES;
        _textLabel.adjustsFontSizeToFitWidth = YES;
        //: _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        //: _textLabel.hidden = YES;
        _textLabel.hidden = YES;
    }
    //: return _textLabel;
    return _textLabel;
}

//: @end
@end

Byte * PhoneMessageDataToCache(Byte *data) {
    int list = data[0];
    int bottomShould = data[1];
    int cypher = data[2];
    if (!list) return data + cypher;
    for (int i = 0; i < bottomShould / 2; i++) {
        int begin = cypher + i;
        int end = cypher + bottomShould - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[cypher + bottomShould] = 0;
    return data + cypher;
}

NSString *StringFromPhoneMessageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PhoneMessageDataToCache(data)];
}  
