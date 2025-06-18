
#import <Foundation/Foundation.h>

NSString *StringFromAlongData(Byte *data);        


//: ic_border
Byte kStr_sessionRecordValue[] = {19, 9, 69, 12, 150, 159, 46, 178, 178, 152, 12, 49, 36, 30, 26, 29, 42, 45, 31, 32, 45, 209};


//: FUBeautyComponent: view can not be nil!
Byte kStr_backgroundInfoData[] = {57, 39, 85, 4, 241, 0, 237, 16, 12, 32, 31, 36, 238, 26, 24, 27, 26, 25, 16, 25, 31, 229, 203, 33, 20, 16, 34, 203, 14, 12, 25, 203, 25, 26, 31, 203, 13, 16, 203, 25, 20, 23, 204, 222};


//: beauty_skin_normal
Byte kStr_indexDisableName[] = {37, 18, 96, 6, 133, 200, 2, 5, 1, 21, 20, 25, 255, 19, 11, 9, 14, 255, 14, 15, 18, 13, 1, 12, 101};


//: beauty_skin_selected
Byte kStr_contentMobileMessageValue[] = {27, 20, 59, 4, 39, 42, 38, 58, 57, 62, 36, 56, 48, 46, 51, 36, 56, 42, 49, 42, 40, 57, 42, 41, 153};


//: beauty_filter_selected
Byte kStr_changeAreaName[] = {88, 22, 95, 14, 169, 235, 208, 187, 163, 167, 195, 25, 8, 15, 3, 6, 2, 22, 21, 26, 0, 7, 10, 13, 21, 6, 19, 0, 20, 6, 13, 6, 4, 21, 6, 5, 91};


//: #EEEEEE
Byte kStr_onNameData[] = {12, 7, 98, 4, 193, 227, 227, 227, 227, 227, 227, 254};


//: compare_item
Byte kStr_remoteMyValue[] = {88, 12, 13, 6, 108, 233, 86, 98, 96, 99, 84, 101, 88, 82, 92, 103, 88, 96, 153};


//: beauty_filter_normal
Byte kStr_areaHideValue[] = {60, 20, 83, 7, 225, 168, 95, 15, 18, 14, 34, 33, 38, 12, 19, 22, 25, 33, 18, 31, 12, 27, 28, 31, 26, 14, 25, 92};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomMargin.m
//  RandomMargin
//
//  Created by 项林平 on 2022/6/10.
//

// __M_A_C_R_O__
//: #import "FUBeautyComponentManager.h"
#import "RandomMargin.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"
//: #import "FUBeautySkinView.h"
#import "AnalogDigitalConverterView.h"
//: #import "FUBeautyFilterView.h"
#import "PopView.h"
//: #import <FURenderKit/FURenderKit.h>
#import <FURenderKit/FURenderKit.h>

//: static FUBeautyComponentManager *beautyComponentManager = nil;
static RandomMargin *kLet_sizeData = nil;
//: static dispatch_once_t onceToken;
static dispatch_once_t kLet_indexValue;

//: @interface FUBeautyComponentManager ()<FUSegmentBarDelegate, FUBeautyFilterViewDelegate>
@interface RandomMargin ()<SelectedAt, AnalogDigitalConverterSupport>

//: @property (nonatomic, weak) UIView *targetView;
@property (nonatomic, weak) UIView *targetView;

//@property (nonatomic, strong) RangeView *categoryView;
//: @property (nonatomic, strong) UIButton *compareButton;
@property (nonatomic, strong) UIButton *compareButton;

//: @property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) NSInteger selectedIndex;

//: @property (nonatomic, strong) UIView *categoryView;
@property (nonatomic, strong) UIView *categoryView;
//: @property (nonatomic, strong) UIButton *btnSkin;
@property (nonatomic, strong) UIButton *btnSkin;
//: @property (nonatomic, strong) UIButton *btnFilter;
@property (nonatomic, strong) UIButton *btnFilter;
//: @property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIImageView *topborder1;
//: @property (nonatomic,strong) UIImageView *topborder2;
@property (nonatomic,strong) UIImageView *topborder2;

//: @end
@end

//: @implementation FUBeautyComponentManager
@implementation RandomMargin

//: #pragma mark - Class methods
#pragma mark - Class methods

//: + (instancetype)sharedManager {
+ (instancetype)top {
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&kLet_indexValue, ^{
        //: beautyComponentManager = [[FUBeautyComponentManager alloc] init];
        kLet_sizeData = [[RandomMargin alloc] init];
    //: });
    });
    //: return beautyComponentManager;
    return kLet_sizeData;
}

//: + (void)destory {
+ (void)color {
    //: onceToken = 0;
    kLet_indexValue = 0;
    //: beautyComponentManager = nil;
    kLet_sizeData = nil;
}

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.selectedIndex = FUBeautyCategorySkin;
        self.selectedIndex = FUBeautyCategorySkin;
    }
    //: return self;
    return self;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)addComponentViewToView:(UIView *)view {
- (void)notLanguage:(UIView *)view {
    //: NSAssert(view != nil, @"FUBeautyComponent: view can not be nil!");
    NSAssert(view != nil, StringFromAlongData(kStr_backgroundInfoData));
    //: self.targetView = view;
    self.targetView = view;
    //: [self removeComponentView];
    [self title];
    //: [self.targetView addSubview:self.categoryView];
    [self.targetView addSubview:self.categoryView];

//    [self.targetView addSubview:self.compareButton];
    //: [self.targetView addSubview:self.beautySkinView];
    [self.targetView addSubview:self.beautySkinView];
//    [self.targetView addSubview:self.beautyShapeView];
    //: [self.targetView addSubview:self.beautyFilterView];
    [self.targetView addSubview:self.beautyFilterView];

}

//: - (void)removeComponentView {
- (void)title {
//    if (self.compareButton.superview) {
//        [self.compareButton removeFromSuperview];
//    }
    //: if (self.beautySkinView.superview) {
    if (self.beautySkinView.superview) {
        //: [self.beautySkinView removeFromSuperview];
        [self.beautySkinView removeFromSuperview];
    }
//    if (self.beautyShapeView.superview) {
//        [self.beautyShapeView removeFromSuperview];
//    }
    //: if (self.beautyFilterView.superview) {
    if (self.beautyFilterView.superview) {
        //: [self.beautyFilterView removeFromSuperview];
        [self.beautyFilterView removeFromSuperview];
    }
    //: if (self.categoryView.superview) {
    if (self.categoryView.superview) {
        //: [self.categoryView removeFromSuperview];
        [self.categoryView removeFromSuperview];
    }
}

//: - (void)loadBeautyForFilePath:(NSString *)filePath {
- (void)appearMenuVertical:(NSString *)filePath {
    //: if (![FURenderKit shareRenderKit].beauty) {
    if (![FURenderKit shareRenderKit].beauty) {
        //: FUBeauty *beauty = [self defaultBeauty:filePath];
        FUBeauty *beauty = [self cancel:filePath];
        //: [FURenderKit shareRenderKit].beauty = beauty;
        [FURenderKit shareRenderKit].beauty = beauty;
    }
    // 分别设置美肤、美型、滤镜
    //: [self.beautySkinViewModel setAllSkinValues];
    [self.beautySkinViewModel towardName];
//    [self.beautyShapeViewModel setAllShapeValues];
    //: [self.beautyFilterViewModel setCurrentFilter];
    [self.beautyFilterViewModel checkedNeed];
}

//: - (void)unloadBeauty {
- (void)domain {
    //: [FURenderKit shareRenderKit].beauty = nil;
    [FURenderKit shareRenderKit].beauty = nil;
}

//: - (void)saveBeauty {
- (void)color {
    //: [self.beautySkinViewModel saveSkinsPersistently];
    [self.beautySkinViewModel humanPull];
//    [self.beautyShapeViewModel saveShapesPersistently];
    //: [self.beautyFilterViewModel saveFitersPersistently];
    [self.beautyFilterViewModel fiters];
}

//: #pragma mark - Private methods
#pragma mark - Private methods

/// 默认美颜
//: - (FUBeauty *)defaultBeauty:(NSString *)path {
- (FUBeauty *)cancel:(NSString *)path {
    //: FUBeauty *beauty = [[FUBeauty alloc] initWithPath:path name:@"FUBeauty"];
    FUBeauty *beauty = [[FUBeauty alloc] initWithPath:path name:@"FUBeauty"];
    //: beauty.heavyBlur = 0;
    beauty.heavyBlur = 0;
    // 默认清晰磨皮
    //: beauty.blurType = 0;
    beauty.blurType = 0;
    // 默认精细变形
//    beauty.faceShape = 4;
//    if ([FURenderKit devicePerformanceLevel] >= FUDevicePerformanceLevelHigh) {
//        // 高性能设备设置去黑眼圈、去法令纹、大眼、嘴型最新效果
//        [beauty addPropertyMode:FUBeautyPropertyMode2 forKey:FUModeKeyRemovePouchStrength];
//        [beauty addPropertyMode:FUBeautyPropertyMode2 forKey:FUModeKeyRemoveNasolabialFoldsStrength];
//        [beauty addPropertyMode:FUBeautyPropertyMode3 forKey:FUModeKeyEyeEnlarging];
//        [beauty addPropertyMode:FUBeautyPropertyMode3 forKey:FUModeKeyIntensityMouth];
//    }
    //: return beauty;
    return beauty;
}

//: - (void)showEffectView:(UIView *)view animated:(BOOL)animated completion:(void (^)(void))completion {
- (void)ferryPlaceAfterTab:(UIView *)view blue:(BOOL)animated colorImageCompletion:(void (^)(void))completion {
    //: view.hidden = NO;
    view.hidden = NO;
//    self.compareButton.hidden = NO;
    //: if (animated) {
    if (animated) {
        //: [UIView animateWithDuration:0.2 animations:^{
        [UIView animateWithDuration:0.2 animations:^{
            //: view.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
            view.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
//            self.compareButton.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
        //: } completion:^(BOOL finished) {
        } completion:^(BOOL finished) {
            //: !completion ?: completion();
            !completion ?: completion();
        //: }];
        }];
    //: } else {
    } else {
        //: view.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
        view.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
//        self.compareButton.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
        //: !completion ?: completion();
        !completion ?: completion();
    }
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentViewHeightDidChange:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(holdering:)]) {
        //: [self.delegate beautyComponentViewHeightDidChange:CGRectGetHeight(view.frame) + CGRectGetHeight(self.categoryView.frame)];
        [self.delegate holdering:CGRectGetHeight(view.frame) + CGRectGetHeight(self.categoryView.frame)];
    }
}

//: - (void)hideEffectView:(UIView *)view animated:(BOOL)animated completion:(void (^)(void))completion {
- (void)data:(UIView *)view foam:(BOOL)animated contentBy:(void (^)(void))completion {
    //: if (animated) {
    if (animated) {
        //: [UIView animateWithDuration:0.2 animations:^{
        [UIView animateWithDuration:0.2 animations:^{
            //: view.transform = CGAffineTransformIdentity;
            view.transform = CGAffineTransformIdentity;
        //: } completion:^(BOOL finished) {
        } completion:^(BOOL finished) {
            //: view.hidden = YES;
            view.hidden = YES;
            //: !completion ?: completion();
            !completion ?: completion();
        //: }];
        }];
    //: } else {
    } else {
        //: view.transform = CGAffineTransformIdentity;
        view.transform = CGAffineTransformIdentity;
        //: view.hidden = YES;
        view.hidden = YES;
        //: !completion ?: completion();
        !completion ?: completion();
    }
}

//: - (UIView *)showingView {
- (UIView *)inputUser {
    //: UIView *view;
    UIView *view;
    //: switch (self.selectedIndex) {
    switch (self.selectedIndex) {
        //: case FUBeautyCategorySkin:{
        case FUBeautyCategorySkin:{
            //: view = self.beautySkinView;
            view = self.beautySkinView;
        }
            //: break;
            break;
        //: case FUBeautyCategoryFilter:{
        case FUBeautyCategoryFilter:{
            //: view = self.beautyFilterView;
            view = self.beautyFilterView;
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: return view;
    return view;
}

//: #pragma mark - Event response
#pragma mark - Event response
//: - (void)compareButtonDidTake
- (void)atInsert
{
    //: self.beautyFilterViewModel.selectedIndex = 0;
    self.beautyFilterViewModel.selectedIndex = 0;
    // 默认选中
    //: [self.beautyFilterView.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.beautyFilterViewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    [self.beautyFilterView.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.beautyFilterViewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    //: self.beautyFilterView.filterSlider.hidden = self.beautyFilterViewModel.selectedIndex < 1;
    self.beautyFilterView.filterSlider.hidden = self.beautyFilterViewModel.selectedIndex < 1;
    //: if (!self.beautyFilterView.filterSlider.hidden) {
    if (!self.beautyFilterView.filterSlider.hidden) {
        //: self.beautyFilterView.filterSlider.value = self.beautyFilterViewModel.beautyFilters[self.beautyFilterViewModel.selectedIndex].filterLevel;
        self.beautyFilterView.filterSlider.value = self.beautyFilterViewModel.beautyFilters[self.beautyFilterViewModel.selectedIndex].filterLevel;
    }
}

//: - (void)compareTouchDownAction {
- (void)tinkle {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentDidTouchDownComparison)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(downwardlyShould)]) {
        //: [self.delegate beautyComponentDidTouchDownComparison];
        [self.delegate downwardlyShould];
    }
}

//: - (void)compareTouchUpAction {
- (void)fromAction {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentDidTouchUpComparison)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(grayEnd)]) {
        //: [self.delegate beautyComponentDidTouchUpComparison];
        [self.delegate grayEnd];
    }
}

//: #pragma mark - FUSegmentBarDelegate
#pragma mark - SelectedAt

//: - (void)segmentBar:(FUSegmentBar *)segmentBar didSelectItemAtIndex:(NSUInteger)index {
- (void)lineItem:(RangeView *)segmentBar distance:(NSUInteger)index {
    //: if (index == self.selectedIndex) {
    if (index == self.selectedIndex) {
        // 隐藏
        //: segmentBar.userInteractionEnabled = NO;
        segmentBar.userInteractionEnabled = NO;
        //: [self hideEffectView:[self showingView] animated:YES completion:^{
        [self data:[self inputUser] foam:YES contentBy:^{
            //: segmentBar.userInteractionEnabled = YES;
            segmentBar.userInteractionEnabled = YES;
        //: }];
        }];
//        self.compareButton.transform = CGAffineTransformIdentity;
//        self.compareButton.hidden = YES;
        //: [segmentBar selectItemAtIndex:-1];
        [segmentBar awayWithoutQuantitativeRelationFullCalorimetry:-1];
        //: self.selectedIndex = FUBeautyCategoryNone;
        self.selectedIndex = FUBeautyCategoryNone;
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentViewHeightDidChange:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(holdering:)]) {
            //: [self.delegate beautyComponentViewHeightDidChange:CGRectGetHeight(self.categoryView.frame)];
            [self.delegate holdering:CGRectGetHeight(self.categoryView.frame)];
        }
    //: } else {
    } else {
        //: segmentBar.userInteractionEnabled = NO;
        segmentBar.userInteractionEnabled = NO;
        //: if (self.selectedIndex > FUBeautyCategoryNone) {
        if (self.selectedIndex > FUBeautyCategoryNone) {
            //: [self hideEffectView:[self showingView] animated:NO completion:nil];
            [self data:[self inputUser] foam:NO contentBy:nil];
        }
        //: self.selectedIndex = index;
        self.selectedIndex = index;
        //: [self showEffectView:[self showingView] animated:YES completion:^{
        [self ferryPlaceAfterTab:[self inputUser] blue:YES colorImageCompletion:^{
            //: segmentBar.userInteractionEnabled = YES;
            segmentBar.userInteractionEnabled = YES;
        //: }];
        }];
    }
}

//: #pragma mark - FUBeautyFilterViewDelegate
#pragma mark - AnalogDigitalConverterSupport

//: - (void)beautyFilterViewDidChangeFilter:(NSString *)name {
- (void)beautyGreenStrain:(NSString *)name {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentNeedsDisplayPromptContent:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(glamorLikeCollectionContent:)]) {
        //: [self.delegate beautyComponentNeedsDisplayPromptContent:name];
        [self.delegate glamorLikeCollectionContent:name];
    }
}

//: #pragma mark - FUBeautyStyleViewDelegate
#pragma mark - FUBeautyStyleViewDelegate

//: - (void)beautyStyleViewDidSelectStyle {
- (void)changeStyle {
//    [self.categoryView refresh];
}

//: - (void)beautyStyleViewDidCancelStyle {
- (void)link {
//    [self.categoryView refresh];
    // 取消风格推荐，恢复美肤、美型、滤镜效果
    //: [self.beautySkinViewModel setAllSkinValues];
    [self.beautySkinViewModel towardName];
//    [self.beautyShapeViewModel setAllShapeValues];
    //: [self.beautyFilterViewModel setCurrentFilter];
    [self.beautyFilterViewModel checkedNeed];
}

//: #pragma mark - Getters
#pragma mark - Getters
//: - (UIView *)categoryView
- (UIView *)categoryView
{
    //: if (!_categoryView) {
    if (!_categoryView) {
        //: _categoryView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds)-FUBeautyFunctionViewOverallHeight-48-60-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 48)];
        _categoryView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds)-kLet_kitPlayText-48-60-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 48)];
        //: _categoryView.backgroundColor = [UIColor whiteColor];
        _categoryView.backgroundColor = [UIColor whiteColor];

        //: [_categoryView addSubview:self.compareButton];
        [_categoryView addSubview:self.compareButton];

        //: _btnSkin = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnSkin = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnSkin.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-80, 0, 80, 44);
        _btnSkin.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-80, 0, 80, 44);
        //: _btnSkin.tag = 0;
        _btnSkin.tag = 0;
//        _btnSkin.titleLabel.font   = [UIFont systemFontOfSize:14];
//        [_btnSkin setTitleColor:ThemeColor forState:UIControlStateNormal];
//        [_btnSkin setTitle:LangKey(@"skin") forState:UIControlStateNormal];
        //: [_btnSkin setImage:[UIImage imageNamed:@"beauty_skin_normal"] forState:UIControlStateNormal];
        [_btnSkin setImage:[UIImage imageNamed:StringFromAlongData(kStr_indexDisableName)] forState:UIControlStateNormal];
        //: [_btnSkin setImage:[UIImage imageNamed:@"beauty_skin_selected"] forState:UIControlStateSelected];
        [_btnSkin setImage:[UIImage imageNamed:StringFromAlongData(kStr_contentMobileMessageValue)] forState:UIControlStateSelected];
        //: [_btnSkin addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_btnSkin addTarget:self action:@selector(showwed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_categoryView addSubview:_btnSkin];
        [_categoryView addSubview:_btnSkin];
        //: _btnSkin.selected = YES;
        _btnSkin.selected = YES;

        //: _topborder1 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2-80+15, _btnSkin.bottom, 50, 2)];
        _topborder1 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2-80+15, _btnSkin.bottom, 50, 2)];
        //: _topborder1.image = [UIImage imageNamed:@"ic_border"];
        _topborder1.image = [UIImage imageNamed:StringFromAlongData(kStr_sessionRecordValue)];
        //: [_categoryView addSubview:_topborder1];
        [_categoryView addSubview:_topborder1];


        //: _btnFilter = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnFilter = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnFilter.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width/2, 0, 80, 44);
        _btnFilter.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width/2, 0, 80, 44);
        //: _btnFilter.tag = 1;
        _btnFilter.tag = 1;
//        _btnFilter.titleLabel.font   = [UIFont systemFontOfSize:14];
//        [_btnFilter setTitleColor:RGB_COLOR_String(@"666666") forState:UIControlStateNormal];
//        [_btnFilter setTitle:LangKey(@"filter") forState:UIControlStateNormal];
        //: [_btnFilter setImage:[UIImage imageNamed:@"beauty_filter_normal"] forState:UIControlStateNormal];
        [_btnFilter setImage:[UIImage imageNamed:StringFromAlongData(kStr_areaHideValue)] forState:UIControlStateNormal];
        //: [_btnFilter setImage:[UIImage imageNamed:@"beauty_filter_selected"] forState:UIControlStateSelected];
        [_btnFilter setImage:[UIImage imageNamed:StringFromAlongData(kStr_changeAreaName)] forState:UIControlStateSelected];
        //: [_btnFilter addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_btnFilter addTarget:self action:@selector(showwed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_categoryView addSubview:_btnFilter];
        [_categoryView addSubview:_btnFilter];

        //: _topborder2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2+15, _btnFilter.bottom, 50, 2)];
        _topborder2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2+15, _btnFilter.bottom, 50, 2)];
        //: _topborder2.image = [UIImage imageNamed:@"ic_border"];
        _topborder2.image = [UIImage imageNamed:StringFromAlongData(kStr_sessionRecordValue)];
        //: [_categoryView addSubview:_topborder2];
        [_categoryView addSubview:_topborder2];
        //: _topborder2.hidden = YES;
        _topborder2.hidden = YES;

        //: UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 47, [[UIScreen mainScreen] bounds].size.width, 1)];
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 47, [[UIScreen mainScreen] bounds].size.width, 1)];
        //: lineView.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        lineView.backgroundColor = [UIColor withMax:StringFromAlongData(kStr_onNameData)];
        //: [_categoryView addSubview:lineView];
        [_categoryView addSubview:lineView];
    }
    //: return _categoryView;
    return _categoryView;
}
//: -(void)sliderButtonClick:(UIButton *)sender
-(void)showwed:(UIButton *)sender
{
    //: if(sender == self.btnSkin){
    if(sender == self.btnSkin){
        //: self.btnSkin.selected = YES;
        self.btnSkin.selected = YES;
        //: self.btnFilter.selected = NO;
        self.btnFilter.selected = NO;
//        [_btnFilter setTitleColor:RGB_COLOR_String(@"#666666") forState:UIControlStateNormal];
//        [_btnSkin setTitleColor:ThemeColor forState:UIControlStateNormal];
        //: self.topborder1.hidden = NO;
        self.topborder1.hidden = NO;
        //: self.topborder2.hidden = YES;
        self.topborder2.hidden = YES;

        //: self.beautySkinView.hidden = NO;
        self.beautySkinView.hidden = NO;
        //: self.beautyFilterView.hidden = YES;
        self.beautyFilterView.hidden = YES;
    //: }else if (sender == self.btnFilter){
    }else if (sender == self.btnFilter){
        //: self.btnSkin.selected = NO;
        self.btnSkin.selected = NO;
        //: self.btnFilter.selected = YES;
        self.btnFilter.selected = YES;

//        [_btnSkin setTitleColor:RGB_COLOR_String(@"#666666") forState:UIControlStateNormal];
//        [_btnFilter setTitleColor:ThemeColor forState:UIControlStateNormal];
        //: self.topborder1.hidden = YES;
        self.topborder1.hidden = YES;
        //: self.topborder2.hidden = NO;
        self.topborder2.hidden = NO;

        //: self.beautySkinView.hidden = YES;
        self.beautySkinView.hidden = YES;
        //: self.beautyFilterView.hidden = NO;
        self.beautyFilterView.hidden = NO;
    }
}
//- (RangeView *)categoryView {
//    if (!_categoryView) {
//        NSArray<NSString *> *categories = @[@"skin", @"filter"];
//        HideConfigurations *configurations = [[HideConfigurations alloc] init];
//        configurations.titleFont = [UIFont systemFontOfSize:15];
//        _categoryView = [[RangeView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds) - FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight), CGRectGetWidth(self.targetView.bounds), FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight)) titles:categories configuration:configurations];
//        _categoryView.delegate = self;
//    }
//    return _categoryView;
//}

//: - (UIButton *)compareButton {
- (UIButton *)compareButton {
    //: if (!_compareButton) {
    if (!_compareButton) {
        //: _compareButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _compareButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _compareButton.frame = CGRectMake(15, 2, 44, 44);
        _compareButton.frame = CGRectMake(15, 2, 44, 44);
        //: [_compareButton setImage:[UIImage imageNamed:@"compare_item"] forState:UIControlStateNormal];
        [_compareButton setImage:[UIImage imageNamed:StringFromAlongData(kStr_remoteMyValue)] forState:UIControlStateNormal];
//        [_compareButton addTarget:self action:@selector(compareTouchDownAction) forControlEvents:UIControlEventTouchDown];
//        [_compareButton addTarget:self action:@selector(compareTouchUpAction) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
//        _compareButton.hidden = YES;
        //: [_compareButton addTarget:self action:@selector(compareButtonDidTake) forControlEvents:UIControlEventTouchUpInside];
        [_compareButton addTarget:self action:@selector(atInsert) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _compareButton;
    return _compareButton;
}

//: - (FUBeautySkinView *)beautySkinView {
- (AnalogDigitalConverterView *)beautySkinView {
    //: if (!_beautySkinView) {
    if (!_beautySkinView) {
//        _beautySkinView = [[AnalogDigitalConverterView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautySkinViewModel];
        //: _beautySkinView = [[FUBeautySkinView alloc] initWithFrame:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautySkinViewModel];
        _beautySkinView = [[AnalogDigitalConverterView alloc] initWithTilterModel:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), kLet_kitPlayText) theoryName:self.beautySkinViewModel];
//        _beautySkinView.hidden = YES;
    }
    //: return _beautySkinView;
    return _beautySkinView;
}

//- (FUBeautyShapeView *)beautyShapeView {
//    if (!_beautyShapeView) {
//        _beautyShapeView = [[FUBeautyShapeView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyShapeViewModel];
//        _beautyShapeView.hidden = YES;
//    }
//    return _beautyShapeView;
//}

//: - (FUBeautyFilterView *)beautyFilterView {
- (PopView *)beautyFilterView {
    //: if (!_beautyFilterView) {
    if (!_beautyFilterView) {
//        _beautyFilterView = [[PopView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyFilterViewModel];
        //: _beautyFilterView = [[FUBeautyFilterView alloc] initWithFrame:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyFilterViewModel];
        _beautyFilterView = [[PopView alloc] initWithFrame:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), kLet_kitPlayText) state:self.beautyFilterViewModel];
        //: _beautyFilterView.hidden = YES;
        _beautyFilterView.hidden = YES;
        //: _beautyFilterView.delegate = self;
        _beautyFilterView.delegate = self;
    }
    //: return _beautyFilterView;
    return _beautyFilterView;
}

//: - (FUBeautySkinViewModel *)beautySkinViewModel {
- (TingModel *)beautySkinViewModel {
    //: if (!_beautySkinViewModel) {
    if (!_beautySkinViewModel) {
        //: _beautySkinViewModel = [[FUBeautySkinViewModel alloc] init];
        _beautySkinViewModel = [[TingModel alloc] init];
    }
    //: return _beautySkinViewModel;
    return _beautySkinViewModel;
}

//- (FUBeautyShapeViewModel *)beautyShapeViewModel {
//    if (!_beautyShapeViewModel) {
//        _beautyShapeViewModel = [[FUBeautyShapeViewModel alloc] init];
//    }
//    return _beautyShapeViewModel;
//}

//: - (FUBeautyFilterViewModel *)beautyFilterViewModel {
- (ToStatus *)beautyFilterViewModel {
    //: if (!_beautyFilterViewModel) {
    if (!_beautyFilterViewModel) {
        //: _beautyFilterViewModel = [[FUBeautyFilterViewModel alloc] init];
        _beautyFilterViewModel = [[ToStatus alloc] init];
    }
    //: return _beautyFilterViewModel;
    return _beautyFilterViewModel;
}

//: - (CGFloat)componentViewHeight {
- (CGFloat)componentViewHeight {
    //: if (self.selectedIndex == FUBeautyCategoryNone) {
    if (self.selectedIndex == FUBeautyCategoryNone) {
        //: return FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight);
        return FUBeautyHeightIncludeBottomSafeArea(kLet_aspectIndexTitle);
    //: } else {
    } else {
        //: return FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight) + FUBeautyFunctionViewOverallHeight;
        return FUBeautyHeightIncludeBottomSafeArea(kLet_aspectIndexTitle) + kLet_kitPlayText;
    }
}

//: @end
@end

Byte * AlongDataToCache(Byte *data) {
    int showWith = data[0];
    int keyColor = data[1];
    Byte pinLayer = data[2];
    int recordingBubble = data[3];
    if (!showWith) return data + recordingBubble;
    for (int i = recordingBubble; i < recordingBubble + keyColor; i++) {
        int value = data[i] + pinLayer;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[recordingBubble + keyColor] = 0;
    return data + recordingBubble;
}

NSString *StringFromAlongData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AlongDataToCache(data)];
}
