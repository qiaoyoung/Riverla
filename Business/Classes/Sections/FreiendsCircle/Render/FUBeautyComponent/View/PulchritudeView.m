
#import <Foundation/Foundation.h>
typedef struct {
    Byte face;
    Byte *planningBroken;
    unsigned int hired;
    bool shadowPurchase;
	int imperfect;
	int pullApproximate;
	int inquiryInfo;
} DisplayData;

NSString *StringFromDisplayData(DisplayData *data);


//: #2C3042
DisplayData kStr_tunaName = (DisplayData){8, (Byte []){43, 58, 75, 59, 56, 60, 58, 148}, 7, false, 57, 25, 253};


//: #1AB391FF
DisplayData kStr_sentenceName = (DisplayData){20, (Byte []){55, 37, 85, 86, 39, 45, 37, 82, 82, 210}, 9, false, 224, 182, 198};


//: 是否将所有参数恢复到默认值
DisplayData kStr_redMakeText = (DisplayData){81, (Byte []){183, 201, 254, 180, 193, 247, 180, 225, 215, 183, 216, 209, 183, 205, 216, 180, 222, 211, 183, 196, 225, 183, 208, 243, 180, 245, 220, 180, 217, 225, 184, 234, 201, 185, 255, 245, 180, 209, 237, 6}, 39, false, 239, 252, 170};


//: #B391FF
DisplayData kStr_swingOfContent = (DisplayData){66, (Byte []){97, 0, 113, 123, 115, 4, 4, 20}, 7, false, 54, 9, 4};


//: 功能仅支持iPhone11及以上机型使用
DisplayData kStr_discusValue = (DisplayData){85, (Byte []){176, 223, 202, 189, 214, 232, 177, 238, 208, 179, 193, 250, 179, 217, 212, 60, 5, 61, 58, 59, 48, 100, 100, 176, 218, 223, 177, 238, 240, 177, 237, 223, 179, 201, 239, 176, 203, 222, 177, 232, 234, 178, 193, 253, 95}, 44, false, 40, 239, 155};


//: 仅皮肤
DisplayData kStr_leadingBubbleName = (DisplayData){81, (Byte []){181, 234, 212, 182, 203, 255, 185, 211, 245, 211}, 9, false, 177, 139, 161};


//: Reset
DisplayData kStr_trailName = (DisplayData){217, (Byte []){139, 188, 170, 188, 173, 78}, 5, false, 246, 248, 51};


//: 该功能只支持在高端机上使用%@
DisplayData kStr_sagLabelData = (DisplayData){4, (Byte []){236, 171, 161, 225, 142, 155, 236, 135, 185, 225, 139, 174, 226, 144, 171, 226, 136, 133, 225, 152, 172, 237, 175, 156, 227, 175, 171, 226, 152, 190, 224, 188, 142, 224, 185, 187, 227, 144, 172, 33, 68, 103}, 41, false, 241, 208, 193};


//: recover_item
DisplayData kStr_cheekName = (DisplayData){146, (Byte []){224, 247, 241, 253, 228, 247, 224, 205, 251, 230, 247, 255, 161}, 12, false, 86, 55, 115};


//: 皮肤美白
DisplayData kStr_cellStationName = (DisplayData){135, (Byte []){96, 29, 41, 111, 5, 35, 96, 57, 9, 96, 30, 58, 158}, 12, false, 116, 173, 223};


//: 功能仅支持iPhoneXR及以上机型使用%@
DisplayData kStr_warData = (DisplayData){31, (Byte []){250, 149, 128, 247, 156, 162, 251, 164, 154, 249, 139, 176, 249, 147, 158, 118, 79, 119, 112, 113, 122, 71, 77, 250, 144, 149, 251, 164, 186, 251, 167, 149, 249, 131, 165, 250, 129, 148, 251, 162, 160, 248, 139, 183, 58, 95, 98}, 46, false, 69, 131, 99};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PulchritudeView.m
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/6/21.
//

// __M_A_C_R_O__
//: #import "FUBeautySkinView.h"
#import "PulchritudeView.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"
//: #import <FURenderKit/UIDevice+FURenderKit.h>
#import <FURenderKit/UIDevice+FURenderKit.h>

//: static NSString * const kFUBeautySkinCellIdentifier = @"FUBeautySkinCell";
static NSString * const let_controlTitle = @"CenterActionView";

//: @interface FUBeautySkinView ()<UICollectionViewDataSource, UICollectionViewDelegate, FUSegmentedControlDelegate>
@interface PulchritudeView ()<UICollectionViewDataSource, UICollectionViewDelegate, TitleDelegate>

//: @property (nonatomic, strong) UICollectionView *skinCollectionView;
@property (nonatomic, strong) UICollectionView *skinCollectionView;
/// 程度调节
//: @property (nonatomic, strong) FUSlider *slider;
@property (nonatomic, strong) ChildSlider *slider;
/// 皮肤分割控制
//: @property (nonatomic, strong) FUSegmentedControl *segmentedControl;
@property (nonatomic, strong) PraiseView *segmentedControl;
/// 恢复按钮
//: @property (nonatomic, strong) UIButton *recoverButton;
@property (nonatomic, strong) UIButton *recoverButton;

//: @property (nonatomic, strong) FUBeautySkinViewModel *viewModel;
@property (nonatomic, strong) MarginPopRecent *viewModel;

//: @end
@end

//: @implementation FUBeautySkinView
@implementation PulchritudeView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: return [self initWithFrame:frame viewModel:[[FUBeautySkinViewModel alloc] init]];
    return [self initWithElect:frame cyclorama:[[MarginPopRecent alloc] init]];
}

//: - (instancetype)initWithFrame:(CGRect)frame viewModel:(FUBeautySkinViewModel *)viewModel {
- (instancetype)initWithElect:(CGRect)frame cyclorama:(MarginPopRecent *)viewModel {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.viewModel = viewModel;
        self.viewModel = viewModel;
        //: [self configureUI];
        [self change];
        //: [self refreshSubviews];
        [self color];
    }
    //: return self;
    return self;
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)change {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];
    //: [self addSubview:self.slider];
    [self addSubview:self.slider];
    //: [self addSubview:self.skinCollectionView];
    [self addSubview:self.skinCollectionView];
}

//: - (void)refreshSubviews {
- (void)color {
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
- (void)viewCenter {
    //: [FUAlertManager showAlertWithTitle:nil message:@"是否将所有参数恢复到默认值" cancel:@"取消" confirm:@"确定" inController:nil confirmHandler:^{
    [ShouldColor enable:nil top:StringFromDisplayData(&kStr_redMakeText) input:@"取消" button:@"确定" totalelligenceInformation:nil max:^{
        //: [self.viewModel recoverAllSkinValuesToDefault];
        [self.viewModel reload];
        //: [self refreshSubviews];
        [self color];
    //: } cancelHandler:nil];
    } label:nil];
}

//: - (void)sliderValueChanged {
- (void)timeValue {
    //: [self.viewModel setSkinValue:self.slider.value];
    [self.viewModel setMisplaceKeyValue:self.slider.value];
}

//: - (void)sliderChangeEnded {
- (void)streetSmart {
    //: [self refreshSubviews];
    [self color];
}

//: #pragma mark - FUSegmentedControlDelegate
#pragma mark - TitleDelegate

//: - (BOOL)segmentedControlShouldSelectItemAtIndex:(NSUInteger)index {
- (BOOL)lats:(NSUInteger)index {
    // 美白皮肤分割仅支持高端机
    //: if ([FURenderKit devicePerformanceLevel] < FUDevicePerformanceLevelExcellent && index == 1) {
    if ([FURenderKit devicePerformanceLevel] < FUDevicePerformanceLevelExcellent && index == 1) {
        //: [FUTipHUD showTips:[NSString stringWithFormat:@"功能仅支持iPhone11及以上机型使用", @"皮肤美白"] dismissWithDelay:1];
        [ChangeActionVideo image:[NSString stringWithFormat:StringFromDisplayData(&kStr_discusValue), StringFromDisplayData(&kStr_cellStationName)] notice:1];
        //: [self.segmentedControl refreshUI];
        [self.segmentedControl red];
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)segmentedControlDidSelectAtIndex:(NSUInteger)index {
- (void)segmented:(NSUInteger)index {
    //: self.viewModel.skinSegmentationEnabled = index == 1;
    self.viewModel.skinSegmentationEnabled = index == 1;
    //: [self refreshSubviews];
    [self color];
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
    CenterActionView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:let_controlTitle forIndexPath:indexPath];
    //: FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
    PictureImage *skin = self.viewModel.beautySkins[indexPath.item];
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
    CenterActionView *cell = (CenterActionView *)[collectionView cellForItemAtIndexPath:indexPath];
    //: if (cell.disabled) {
    if (cell.disabled) {
        //: FUBeautySkinModel *skin = self.viewModel.beautySkins[indexPath.item];
        PictureImage *skin = self.viewModel.beautySkins[indexPath.item];
        //: if (skin.performanceLevel == FUDevicePerformanceLevelVeryHigh) {
        if (skin.performanceLevel == FUDevicePerformanceLevelVeryHigh) {
            //: [FUTipHUD showTips:[NSString stringWithFormat:@"功能仅支持iPhoneXR及以上机型使用%@", skin.name] dismissWithDelay:1];
            [ChangeActionVideo image:[NSString stringWithFormat:StringFromDisplayData(&kStr_warData), skin.name] notice:1];
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
            [ChangeActionVideo image:[NSString stringWithFormat:StringFromDisplayData(&kStr_sagLabelData),skin.name] notice:1];
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
    PictureImage *skin = self.viewModel.beautySkins[indexPath.item];
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
        [_skinCollectionView registerClass:[CenterActionView class] forCellWithReuseIdentifier:let_controlTitle];
//        _skinCollectionView.scrollEnabled = NO;
    }
    //: return _skinCollectionView;
    return _skinCollectionView;
}

//: - (FUSegmentedControl *)segmentedControl {
- (PraiseView *)segmentedControl {
    //: if (!_segmentedControl) {
    if (!_segmentedControl) {
        //: _segmentedControl = [[FUSegmentedControl alloc] initWithFrame:CGRectMake(16, 19, 80, 24) items:@[@"全局", @"仅皮肤"]];
        _segmentedControl = [[PraiseView alloc] initWithStartSend:CGRectMake(16, 19, 80, 24) loadTing:@[@"全局", StringFromDisplayData(&kStr_leadingBubbleName)]];
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
        _recoverButton.backgroundColor = [UIColor isView:StringFromDisplayData(&kStr_sentenceName)];
        //: _recoverButton.layer.cornerRadius = 20;
        _recoverButton.layer.cornerRadius = 20;
        //: _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
        _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
        //: [_recoverButton setTitle:@"Reset" forState:UIControlStateNormal];
        [_recoverButton setTitle:StringFromDisplayData(&kStr_trailName) forState:UIControlStateNormal];
        //: [_recoverButton setTitleColor:[UIColor colorWithHexString:@"#B391FF"] forState:UIControlStateNormal];
        [_recoverButton setTitleColor:[UIColor isView:StringFromDisplayData(&kStr_swingOfContent)] forState:UIControlStateNormal];
        //: [_recoverButton setImage:[UIImage imageNamed:@"recover_item"] forState:UIControlStateNormal];
        [_recoverButton setImage:[UIImage imageNamed:StringFromDisplayData(&kStr_cheekName)] forState:UIControlStateNormal];
//        _recoverButton.alpha = 0.1;
        //: _recoverButton.userInteractionEnabled = NO;
        _recoverButton.userInteractionEnabled = NO;
        //: [_recoverButton addTarget:self action:@selector(recoverAction) forControlEvents:UIControlEventTouchUpInside];
        [_recoverButton addTarget:self action:@selector(viewCenter) forControlEvents:UIControlEventTouchUpInside];
//        _recoverButton.translatesAutoresizingMaskIntoConstraints = NO;
    }
    //: return _recoverButton;
    return _recoverButton;
}

//: -(FUSlider *)slider {
-(ChildSlider *)slider {
    //: if (!_slider) {
    if (!_slider) {
        //: _slider = [[FUSlider alloc] initWithFrame:CGRectMake(20, 16, [[UIScreen mainScreen] bounds].size.width-40, FUBeautyFunctionSliderHeight)];
        _slider = [[ChildSlider alloc] initWithFrame:CGRectMake(20, 16, [[UIScreen mainScreen] bounds].size.width-40, let_lastData)];
//        _slider.hidden = YES;
        //: [_slider addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
        [_slider addTarget:self action:@selector(timeValue) forControlEvents:UIControlEventValueChanged];
        //: [_slider addTarget:self action:@selector(sliderChangeEnded) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
        [_slider addTarget:self action:@selector(streetSmart) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
    }
    //: return _slider;
    return _slider;
}

//: @end
@end

//: @interface FUBeautySkinCell ()
@interface CenterActionView ()

//: @property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView;

//: @property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UILabel *textLabel;

//: @end
@end

//: @implementation FUBeautySkinCell
@implementation CenterActionView

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
            self.textLabel.textColor = [UIColor isView:StringFromDisplayData(&kStr_swingOfContent)];
        //: } else {
        } else {
            //: self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@-1",self.imageName]];
            //: self.textLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
            self.textLabel.textColor = [UIColor isView:StringFromDisplayData(&kStr_tunaName)];
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
        _textLabel.textColor = [UIColor isView:StringFromDisplayData(&kStr_tunaName)];
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

Byte *DisplayDataToByte(DisplayData *data) {
    if (data->shadowPurchase) return data->planningBroken;
    for (int i = 0; i < data->hired; i++) {
        data->planningBroken[i] ^= data->face;
    }
    data->planningBroken[data->hired] = 0;
    data->shadowPurchase = true;
	if (data->hired >= 3) {
		data->imperfect = data->planningBroken[0];
		data->pullApproximate = data->planningBroken[1];
		data->inquiryInfo = data->planningBroken[2];
	}
    return data->planningBroken;
}

NSString *StringFromDisplayData(DisplayData *data) {
    return [NSString stringWithUTF8String:(char *)DisplayDataToByte(data)];
}
