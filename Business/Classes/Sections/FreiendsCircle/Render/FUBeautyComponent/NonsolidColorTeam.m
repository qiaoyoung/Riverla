
#import <Foundation/Foundation.h>

NSString *StringFromPinData(Byte *data);


//: beauty_filter_selected
Byte kStr_departmentRoutineTitle[] = {54, 22, 56, 9, 218, 84, 118, 121, 235, 154, 157, 153, 173, 172, 177, 151, 158, 161, 164, 172, 157, 170, 151, 171, 157, 164, 157, 155, 172, 157, 156, 99};


//: ic_border
Byte kStr_dateOptShowData[] = {4, 9, 46, 4, 151, 145, 141, 144, 157, 160, 146, 147, 160, 10};


//: beauty_skin_selected
Byte kStr_whyName[] = {81, 20, 62, 4, 160, 163, 159, 179, 178, 183, 157, 177, 169, 167, 172, 157, 177, 163, 170, 163, 161, 178, 163, 162, 152};


//: FUBeautyComponent: view can not be nil!
Byte kStr_routinePrettyContent[] = {1, 39, 33, 11, 15, 61, 161, 141, 98, 99, 118, 103, 118, 99, 134, 130, 150, 149, 154, 100, 144, 142, 145, 144, 143, 134, 143, 149, 91, 65, 151, 138, 134, 152, 65, 132, 130, 143, 65, 143, 144, 149, 65, 131, 134, 65, 143, 138, 141, 66, 161};


//: beauty_filter_normal
Byte kStr_labelValue[] = {85, 20, 43, 5, 135, 141, 144, 140, 160, 159, 164, 138, 145, 148, 151, 159, 144, 157, 138, 153, 154, 157, 152, 140, 151, 48};


//: beauty_skin_normal
Byte kStr_stopLeasedData[] = {34, 18, 22, 10, 146, 172, 148, 104, 165, 29, 120, 123, 119, 139, 138, 143, 117, 137, 129, 127, 132, 117, 132, 133, 136, 131, 119, 130, 68};


//: compare_item
Byte kStr_tunaData[] = {74, 12, 27, 10, 80, 85, 73, 115, 107, 23, 126, 138, 136, 139, 124, 141, 128, 122, 132, 143, 128, 136, 84};


//: #EEEEEE
Byte kStr_oilTitle[] = {32, 7, 22, 4, 57, 91, 91, 91, 91, 91, 91, 159};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NonsolidColorTeam.m
//  NonsolidColorTeam
//
//  Created by 项林平 on 2022/6/10.
//

// __M_A_C_R_O__
//: #import "FUBeautyComponentManager.h"
#import "NonsolidColorTeam.h"
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"
//: #import "FUBeautySkinView.h"
#import "PulchritudeView.h"
//: #import "FUBeautyFilterView.h"
#import "FuturismView.h"
//: #import <FURenderKit/FURenderKit.h>
#import <FURenderKit/FURenderKit.h>

//: static FUBeautyComponentManager *beautyComponentManager = nil;
static NonsolidColorTeam *let_centerTitle = nil;
//: static dispatch_once_t onceToken;
static dispatch_once_t let_windowText;

//: @interface FUBeautyComponentManager ()<FUSegmentBarDelegate, FUBeautyFilterViewDelegate>
@interface NonsolidColorTeam ()<GinMillSegmentByCustom, UserRecent>

//: @property (nonatomic, weak) UIView *targetView;
@property (nonatomic, weak) UIView *targetView;

//@property (nonatomic, strong) PassePartoutView *categoryView;
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
@implementation NonsolidColorTeam

//: #pragma mark - Class methods
#pragma mark - Class methods

//: + (instancetype)sharedManager {
+ (instancetype)success {
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&let_windowText, ^{
        //: beautyComponentManager = [[FUBeautyComponentManager alloc] init];
        let_centerTitle = [[NonsolidColorTeam alloc] init];
    //: });
    });
    //: return beautyComponentManager;
    return let_centerTitle;
}

//: + (void)destory {
+ (void)image {
    //: onceToken = 0;
    let_windowText = 0;
    //: beautyComponentManager = nil;
    let_centerTitle = nil;
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
- (void)button:(UIView *)view {
    //: NSAssert(view != nil, @"FUBeautyComponent: view can not be nil!");
    NSAssert(view != nil, StringFromPinData(kStr_routinePrettyContent));
    //: self.targetView = view;
    self.targetView = view;
    //: [self removeComponentView];
    [self ting];
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
- (void)ting {
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
- (void)press:(NSString *)filePath {
    //: if (![FURenderKit shareRenderKit].beauty) {
    if (![FURenderKit shareRenderKit].beauty) {
        //: FUBeauty *beauty = [self defaultBeauty:filePath];
        FUBeauty *beauty = [self atOff:filePath];
        //: [FURenderKit shareRenderKit].beauty = beauty;
        [FURenderKit shareRenderKit].beauty = beauty;
    }
    // 分别设置美肤、美型、滤镜
    //: [self.beautySkinViewModel setAllSkinValues];
    [self.beautySkinViewModel text];
//    [self.beautyShapeViewModel setAllShapeValues];
    //: [self.beautyFilterViewModel setCurrentFilter];
    [self.beautyFilterViewModel subFilter];
}

//: - (void)unloadBeauty {
- (void)info {
    //: [FURenderKit shareRenderKit].beauty = nil;
    [FURenderKit shareRenderKit].beauty = nil;
}

//: - (void)saveBeauty {
- (void)relieveName {
    //: [self.beautySkinViewModel saveSkinsPersistently];
    [self.beautySkinViewModel anSkins];
//    [self.beautyShapeViewModel saveShapesPersistently];
    //: [self.beautyFilterViewModel saveFitersPersistently];
    [self.beautyFilterViewModel userPersistently];
}

//: #pragma mark - Private methods
#pragma mark - Private methods

/// 默认美颜
//: - (FUBeauty *)defaultBeauty:(NSString *)path {
- (FUBeauty *)atOff:(NSString *)path {
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
- (void)of:(UIView *)view contextOfUse:(BOOL)animated bar:(void (^)(void))completion {
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
    if (self.delegate && [self.delegate respondsToSelector:@selector(beautyKey:)]) {
        //: [self.delegate beautyComponentViewHeightDidChange:CGRectGetHeight(view.frame) + CGRectGetHeight(self.categoryView.frame)];
        [self.delegate beautyKey:CGRectGetHeight(view.frame) + CGRectGetHeight(self.categoryView.frame)];
    }
}

//: - (void)hideEffectView:(UIView *)view animated:(BOOL)animated completion:(void (^)(void))completion {
- (void)last:(UIView *)view viewAcrossCompletion:(BOOL)animated roundCompletion:(void (^)(void))completion {
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
- (UIView *)can {
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
- (void)providerTake
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
- (void)nameMessage {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentDidTouchDownComparison)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(tablePage)]) {
        //: [self.delegate beautyComponentDidTouchDownComparison];
        [self.delegate tablePage];
    }
}

//: - (void)compareTouchUpAction {
- (void)kit {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentDidTouchUpComparison)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(outsideTitle)]) {
        //: [self.delegate beautyComponentDidTouchUpComparison];
        [self.delegate outsideTitle];
    }
}

//: #pragma mark - FUSegmentBarDelegate
#pragma mark - GinMillSegmentByCustom

//: - (void)segmentBar:(FUSegmentBar *)segmentBar didSelectItemAtIndex:(NSUInteger)index {
- (void)straightaway:(PassePartoutView *)segmentBar at:(NSUInteger)index {
    //: if (index == self.selectedIndex) {
    if (index == self.selectedIndex) {
        // 隐藏
        //: segmentBar.userInteractionEnabled = NO;
        segmentBar.userInteractionEnabled = NO;
        //: [self hideEffectView:[self showingView] animated:YES completion:^{
        [self last:[self can] viewAcrossCompletion:YES roundCompletion:^{
            //: segmentBar.userInteractionEnabled = YES;
            segmentBar.userInteractionEnabled = YES;
        //: }];
        }];
//        self.compareButton.transform = CGAffineTransformIdentity;
//        self.compareButton.hidden = YES;
        //: [segmentBar selectItemAtIndex:-1];
        [segmentBar componentImage:-1];
        //: self.selectedIndex = FUBeautyCategoryNone;
        self.selectedIndex = FUBeautyCategoryNone;
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentViewHeightDidChange:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(beautyKey:)]) {
            //: [self.delegate beautyComponentViewHeightDidChange:CGRectGetHeight(self.categoryView.frame)];
            [self.delegate beautyKey:CGRectGetHeight(self.categoryView.frame)];
        }
    //: } else {
    } else {
        //: segmentBar.userInteractionEnabled = NO;
        segmentBar.userInteractionEnabled = NO;
        //: if (self.selectedIndex > FUBeautyCategoryNone) {
        if (self.selectedIndex > FUBeautyCategoryNone) {
            //: [self hideEffectView:[self showingView] animated:NO completion:nil];
            [self last:[self can] viewAcrossCompletion:NO roundCompletion:nil];
        }
        //: self.selectedIndex = index;
        self.selectedIndex = index;
        //: [self showEffectView:[self showingView] animated:YES completion:^{
        [self of:[self can] contextOfUse:YES bar:^{
            //: segmentBar.userInteractionEnabled = YES;
            segmentBar.userInteractionEnabled = YES;
        //: }];
        }];
    }
}

//: #pragma mark - FUBeautyFilterViewDelegate
#pragma mark - UserRecent

//: - (void)beautyFilterViewDidChangeFilter:(NSString *)name {
- (void)deleteVideo:(NSString *)name {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentNeedsDisplayPromptContent:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(celled:)]) {
        //: [self.delegate beautyComponentNeedsDisplayPromptContent:name];
        [self.delegate celled:name];
    }
}

//: #pragma mark - FUBeautyStyleViewDelegate
#pragma mark - FUBeautyStyleViewDelegate

//: - (void)beautyStyleViewDidSelectStyle {
- (void)show {
//    [self.categoryView refresh];
}

//: - (void)beautyStyleViewDidCancelStyle {
- (void)style {
//    [self.categoryView refresh];
    // 取消风格推荐，恢复美肤、美型、滤镜效果
    //: [self.beautySkinViewModel setAllSkinValues];
    [self.beautySkinViewModel text];
//    [self.beautyShapeViewModel setAllShapeValues];
    //: [self.beautyFilterViewModel setCurrentFilter];
    [self.beautyFilterViewModel subFilter];
}

//: #pragma mark - Getters
#pragma mark - Getters
//: - (UIView *)categoryView
- (UIView *)categoryView
{
    //: if (!_categoryView) {
    if (!_categoryView) {
        //: _categoryView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds)-FUBeautyFunctionViewOverallHeight-48-60-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 48)];
        _categoryView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds)-let_eventName-48-60-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 48)];
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
        [_btnSkin setImage:[UIImage imageNamed:StringFromPinData(kStr_stopLeasedData)] forState:UIControlStateNormal];
        //: [_btnSkin setImage:[UIImage imageNamed:@"beauty_skin_selected"] forState:UIControlStateSelected];
        [_btnSkin setImage:[UIImage imageNamed:StringFromPinData(kStr_whyName)] forState:UIControlStateSelected];
        //: [_btnSkin addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_btnSkin addTarget:self action:@selector(fromsed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_categoryView addSubview:_btnSkin];
        [_categoryView addSubview:_btnSkin];
        //: _btnSkin.selected = YES;
        _btnSkin.selected = YES;

        //: _topborder1 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2-80+15, _btnSkin.bottom, 50, 2)];
        _topborder1 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2-80+15, _btnSkin.bottom, 50, 2)];
        //: _topborder1.image = [UIImage imageNamed:@"ic_border"];
        _topborder1.image = [UIImage imageNamed:StringFromPinData(kStr_dateOptShowData)];
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
        [_btnFilter setImage:[UIImage imageNamed:StringFromPinData(kStr_labelValue)] forState:UIControlStateNormal];
        //: [_btnFilter setImage:[UIImage imageNamed:@"beauty_filter_selected"] forState:UIControlStateSelected];
        [_btnFilter setImage:[UIImage imageNamed:StringFromPinData(kStr_departmentRoutineTitle)] forState:UIControlStateSelected];
        //: [_btnFilter addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_btnFilter addTarget:self action:@selector(fromsed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_categoryView addSubview:_btnFilter];
        [_categoryView addSubview:_btnFilter];

        //: _topborder2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2+15, _btnFilter.bottom, 50, 2)];
        _topborder2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2+15, _btnFilter.bottom, 50, 2)];
        //: _topborder2.image = [UIImage imageNamed:@"ic_border"];
        _topborder2.image = [UIImage imageNamed:StringFromPinData(kStr_dateOptShowData)];
        //: [_categoryView addSubview:_topborder2];
        [_categoryView addSubview:_topborder2];
        //: _topborder2.hidden = YES;
        _topborder2.hidden = YES;

        //: UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 47, [[UIScreen mainScreen] bounds].size.width, 1)];
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 47, [[UIScreen mainScreen] bounds].size.width, 1)];
        //: lineView.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        lineView.backgroundColor = [UIColor isView:StringFromPinData(kStr_oilTitle)];
        //: [_categoryView addSubview:lineView];
        [_categoryView addSubview:lineView];
    }
    //: return _categoryView;
    return _categoryView;
}
//: -(void)sliderButtonClick:(UIButton *)sender
-(void)fromsed:(UIButton *)sender
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
//- (PassePartoutView *)categoryView {
//    if (!_categoryView) {
//        NSArray<NSString *> *categories = @[@"skin", @"filter"];
//        CipherConfigurations *configurations = [[CipherConfigurations alloc] init];
//        configurations.titleFont = [UIFont systemFontOfSize:15];
//        _categoryView = [[PassePartoutView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds) - FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight), CGRectGetWidth(self.targetView.bounds), FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight)) titles:categories configuration:configurations];
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
        [_compareButton setImage:[UIImage imageNamed:StringFromPinData(kStr_tunaData)] forState:UIControlStateNormal];
//        [_compareButton addTarget:self action:@selector(compareTouchDownAction) forControlEvents:UIControlEventTouchDown];
//        [_compareButton addTarget:self action:@selector(compareTouchUpAction) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
//        _compareButton.hidden = YES;
        //: [_compareButton addTarget:self action:@selector(compareButtonDidTake) forControlEvents:UIControlEventTouchUpInside];
        [_compareButton addTarget:self action:@selector(providerTake) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _compareButton;
    return _compareButton;
}

//: - (FUBeautySkinView *)beautySkinView {
- (PulchritudeView *)beautySkinView {
    //: if (!_beautySkinView) {
    if (!_beautySkinView) {
//        _beautySkinView = [[PulchritudeView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautySkinViewModel];
        //: _beautySkinView = [[FUBeautySkinView alloc] initWithFrame:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautySkinViewModel];
        _beautySkinView = [[PulchritudeView alloc] initWithElect:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), let_eventName) cyclorama:self.beautySkinViewModel];
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
- (FuturismView *)beautyFilterView {
    //: if (!_beautyFilterView) {
    if (!_beautyFilterView) {
//        _beautyFilterView = [[FuturismView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyFilterViewModel];
        //: _beautyFilterView = [[FUBeautyFilterView alloc] initWithFrame:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyFilterViewModel];
        _beautyFilterView = [[FuturismView alloc] initWithColor:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), let_eventName) dismissGreen:self.beautyFilterViewModel];
        //: _beautyFilterView.hidden = YES;
        _beautyFilterView.hidden = YES;
        //: _beautyFilterView.delegate = self;
        _beautyFilterView.delegate = self;
    }
    //: return _beautyFilterView;
    return _beautyFilterView;
}

//: - (FUBeautySkinViewModel *)beautySkinViewModel {
- (MarginPopRecent *)beautySkinViewModel {
    //: if (!_beautySkinViewModel) {
    if (!_beautySkinViewModel) {
        //: _beautySkinViewModel = [[FUBeautySkinViewModel alloc] init];
        _beautySkinViewModel = [[MarginPopRecent alloc] init];
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
- (IndexModel *)beautyFilterViewModel {
    //: if (!_beautyFilterViewModel) {
    if (!_beautyFilterViewModel) {
        //: _beautyFilterViewModel = [[FUBeautyFilterViewModel alloc] init];
        _beautyFilterViewModel = [[IndexModel alloc] init];
    }
    //: return _beautyFilterViewModel;
    return _beautyFilterViewModel;
}

//: - (CGFloat)componentViewHeight {
- (CGFloat)componentViewHeight {
    //: if (self.selectedIndex == FUBeautyCategoryNone) {
    if (self.selectedIndex == FUBeautyCategoryNone) {
        //: return FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight);
        return FUBeautyHeightIncludeBottomSafeArea(let_windowKitValue);
    //: } else {
    } else {
        //: return FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight) + FUBeautyFunctionViewOverallHeight;
        return FUBeautyHeightIncludeBottomSafeArea(let_windowKitValue) + let_eventName;
    }
}

//: @end
@end

Byte * PinDataToCache(Byte *data) {
    int quantityerpreter = data[0];
    int pretty = data[1];
    Byte chap = data[2];
    int whySpend = data[3];
    if (!quantityerpreter) return data + whySpend;
    for (int i = whySpend; i < whySpend + pretty; i++) {
        int value = data[i] - chap;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[whySpend + pretty] = 0;
    return data + whySpend;
}

NSString *StringFromPinData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PinDataToCache(data)];
}
