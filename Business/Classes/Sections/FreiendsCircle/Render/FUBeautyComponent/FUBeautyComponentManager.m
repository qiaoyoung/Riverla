//
//  FUBeautyComponentManager.m
//  FUBeautyComponentManager
//
//  Created by 项林平 on 2022/6/10.
//

#import "FUBeautyComponentManager.h"
#import "FUBeautyDefine.h"
#import "FUBeautySkinView.h"
#import "FUBeautyFilterView.h"
#import <FURenderKit/FURenderKit.h>

static FUBeautyComponentManager *beautyComponentManager = nil;
static dispatch_once_t onceToken;

@interface FUBeautyComponentManager ()<FUSegmentBarDelegate, FUBeautyFilterViewDelegate>

@property (nonatomic, weak) UIView *targetView;

//@property (nonatomic, strong) FUSegmentBar *categoryView;
@property (nonatomic, strong) UIButton *compareButton;

@property (nonatomic, assign) NSInteger selectedIndex;

@property (nonatomic, strong) UIView *categoryView;
@property (nonatomic, strong) UIButton *btnSkin;
@property (nonatomic, strong) UIButton *btnFilter;
@property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIImageView *topborder2;

@end

@implementation FUBeautyComponentManager

#pragma mark - Class methods

+ (instancetype)sharedManager {
    dispatch_once(&onceToken, ^{
        beautyComponentManager = [[FUBeautyComponentManager alloc] init];
    });
    return beautyComponentManager;
}

+ (void)destory {
    onceToken = 0;
    beautyComponentManager = nil;
}

#pragma mark - Initializer

- (instancetype)init {
    self = [super init];
    if (self) {
        self.selectedIndex = FUBeautyCategorySkin;
    }
    return self;
}

#pragma mark - Instance methods

- (void)addComponentViewToView:(UIView *)view {
    NSAssert(view != nil, @"FUBeautyComponent: view can not be nil!");
    self.targetView = view;
    [self removeComponentView];
    [self.targetView addSubview:self.categoryView];
    
//    [self.targetView addSubview:self.compareButton];
    [self.targetView addSubview:self.beautySkinView];
//    [self.targetView addSubview:self.beautyShapeView];
    [self.targetView addSubview:self.beautyFilterView];
  
}

- (void)removeComponentView {
//    if (self.compareButton.superview) {
//        [self.compareButton removeFromSuperview];
//    }
    if (self.beautySkinView.superview) {
        [self.beautySkinView removeFromSuperview];
    }
//    if (self.beautyShapeView.superview) {
//        [self.beautyShapeView removeFromSuperview];
//    }
    if (self.beautyFilterView.superview) {
        [self.beautyFilterView removeFromSuperview];
    }
    if (self.categoryView.superview) {
        [self.categoryView removeFromSuperview];
    }
}

- (void)loadBeautyForFilePath:(NSString *)filePath {
    if (![FURenderKit shareRenderKit].beauty) {
        FUBeauty *beauty = [self defaultBeauty:filePath];
        [FURenderKit shareRenderKit].beauty = beauty;
    }
    // 分别设置美肤、美型、滤镜
    [self.beautySkinViewModel setAllSkinValues];
//    [self.beautyShapeViewModel setAllShapeValues];
    [self.beautyFilterViewModel setCurrentFilter];
}

- (void)unloadBeauty {
    [FURenderKit shareRenderKit].beauty = nil;
}

- (void)saveBeauty {
    [self.beautySkinViewModel saveSkinsPersistently];
//    [self.beautyShapeViewModel saveShapesPersistently];
    [self.beautyFilterViewModel saveFitersPersistently];
}

#pragma mark - Private methods

/// 默认美颜
- (FUBeauty *)defaultBeauty:(NSString *)path {
    FUBeauty *beauty = [[FUBeauty alloc] initWithPath:path name:@"FUBeauty"];
    beauty.heavyBlur = 0;
    // 默认清晰磨皮
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
    return beauty;
}

- (void)showEffectView:(UIView *)view animated:(BOOL)animated completion:(void (^)(void))completion {
    view.hidden = NO;
//    self.compareButton.hidden = NO;
    if (animated) {
        [UIView animateWithDuration:0.2 animations:^{
            view.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
//            self.compareButton.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
        } completion:^(BOOL finished) {
            !completion ?: completion();
        }];
    } else {
        view.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
//        self.compareButton.transform = CGAffineTransformMakeTranslation(0, -CGRectGetHeight(view.frame));
        !completion ?: completion();
    }
    if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentViewHeightDidChange:)]) {
        [self.delegate beautyComponentViewHeightDidChange:CGRectGetHeight(view.frame) + CGRectGetHeight(self.categoryView.frame)];
    }
}

- (void)hideEffectView:(UIView *)view animated:(BOOL)animated completion:(void (^)(void))completion {
    if (animated) {
        [UIView animateWithDuration:0.2 animations:^{
            view.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            view.hidden = YES;
            !completion ?: completion();
        }];
    } else {
        view.transform = CGAffineTransformIdentity;
        view.hidden = YES;
        !completion ?: completion();
    }
}

- (UIView *)showingView {
    UIView *view;
    switch (self.selectedIndex) {
        case FUBeautyCategorySkin:{
            view = self.beautySkinView;
        }
            break;
        case FUBeautyCategoryFilter:{
            view = self.beautyFilterView;
        }
            break;
        default:
            break;
    }
    return view;
}

#pragma mark - Event response
- (void)compareButtonDidTake
{
    self.beautyFilterViewModel.selectedIndex = 0;
    // 默认选中
    [self.beautyFilterView.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:self.beautyFilterViewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    self.beautyFilterView.filterSlider.hidden = self.beautyFilterViewModel.selectedIndex < 1;
    if (!self.beautyFilterView.filterSlider.hidden) {
        self.beautyFilterView.filterSlider.value = self.beautyFilterViewModel.beautyFilters[self.beautyFilterViewModel.selectedIndex].filterLevel;
    }
}

- (void)compareTouchDownAction {
    if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentDidTouchDownComparison)]) {
        [self.delegate beautyComponentDidTouchDownComparison];
    }
}

- (void)compareTouchUpAction {
    if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentDidTouchUpComparison)]) {
        [self.delegate beautyComponentDidTouchUpComparison];
    }
}

#pragma mark - FUSegmentBarDelegate

- (void)segmentBar:(FUSegmentBar *)segmentBar didSelectItemAtIndex:(NSUInteger)index {
    if (index == self.selectedIndex) {
        // 隐藏
        segmentBar.userInteractionEnabled = NO;
        [self hideEffectView:[self showingView] animated:YES completion:^{
            segmentBar.userInteractionEnabled = YES;
        }];
//        self.compareButton.transform = CGAffineTransformIdentity;
//        self.compareButton.hidden = YES;
        [segmentBar selectItemAtIndex:-1];
        self.selectedIndex = FUBeautyCategoryNone;
        if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentViewHeightDidChange:)]) {
            [self.delegate beautyComponentViewHeightDidChange:CGRectGetHeight(self.categoryView.frame)];
        }
    } else {
        segmentBar.userInteractionEnabled = NO;
        if (self.selectedIndex > FUBeautyCategoryNone) {
            [self hideEffectView:[self showingView] animated:NO completion:nil];
        }
        self.selectedIndex = index;
        [self showEffectView:[self showingView] animated:YES completion:^{
            segmentBar.userInteractionEnabled = YES;
        }];
    }
}

#pragma mark - FUBeautyFilterViewDelegate

- (void)beautyFilterViewDidChangeFilter:(NSString *)name {
    if (self.delegate && [self.delegate respondsToSelector:@selector(beautyComponentNeedsDisplayPromptContent:)]) {
        [self.delegate beautyComponentNeedsDisplayPromptContent:name];
    }
}

#pragma mark - FUBeautyStyleViewDelegate

- (void)beautyStyleViewDidSelectStyle {
//    [self.categoryView refresh];
}

- (void)beautyStyleViewDidCancelStyle {
//    [self.categoryView refresh];
    // 取消风格推荐，恢复美肤、美型、滤镜效果
    [self.beautySkinViewModel setAllSkinValues];
//    [self.beautyShapeViewModel setAllShapeValues];
    [self.beautyFilterViewModel setCurrentFilter];
}

#pragma mark - Getters
- (UIView *)categoryView
{
    if (!_categoryView) {
        _categoryView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds)-FUBeautyFunctionViewOverallHeight-48-60-SCREEN_BOTTOM_HEIGHT, SCREEN_WIDTH, 48)];
        _categoryView.backgroundColor = [UIColor whiteColor];
        
        [_categoryView addSubview:self.compareButton];
        
        _btnSkin = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnSkin.frame = CGRectMake(SCREEN_WIDTH/2-80, 0, 80, 44);
        _btnSkin.tag = 0;
//        _btnSkin.titleLabel.font   = [UIFont systemFontOfSize:14];
//        [_btnSkin setTitleColor:ThemeColor forState:UIControlStateNormal];
//        [_btnSkin setTitle:LangKey(@"skin") forState:UIControlStateNormal];
        [_btnSkin setImage:[UIImage imageNamed:@"beauty_skin_normal"] forState:UIControlStateNormal];
        [_btnSkin setImage:[UIImage imageNamed:@"beauty_skin_selected"] forState:UIControlStateSelected];
        [_btnSkin addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_categoryView addSubview:_btnSkin];
        _btnSkin.selected = YES;
        
        _topborder1 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2-80+15, _btnSkin.bottom, 50, 2)];
        _topborder1.image = [UIImage imageNamed:@"ic_border"];
        [_categoryView addSubview:_topborder1];
        

        _btnFilter = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnFilter.frame = CGRectMake(SCREEN_WIDTH/2, 0, 80, 44);
        _btnFilter.tag = 1;
//        _btnFilter.titleLabel.font   = [UIFont systemFontOfSize:14];
//        [_btnFilter setTitleColor:RGB_COLOR_String(@"666666") forState:UIControlStateNormal];
//        [_btnFilter setTitle:LangKey(@"filter") forState:UIControlStateNormal];
        [_btnFilter setImage:[UIImage imageNamed:@"beauty_filter_normal"] forState:UIControlStateNormal];
        [_btnFilter setImage:[UIImage imageNamed:@"beauty_filter_selected"] forState:UIControlStateSelected];
        [_btnFilter addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_categoryView addSubview:_btnFilter];

        _topborder2 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2+15, _btnFilter.bottom, 50, 2)];
        _topborder2.image = [UIImage imageNamed:@"ic_border"];
        [_categoryView addSubview:_topborder2];
        _topborder2.hidden = YES;
        
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 47, SCREEN_WIDTH, 1)];
        lineView.backgroundColor = RGB_COLOR_String(@"#EEEEEE");
        [_categoryView addSubview:lineView];
    }
    return _categoryView;
}
-(void)sliderButtonClick:(UIButton *)sender
{
    if(sender == self.btnSkin){
        self.btnSkin.selected = YES;
        self.btnFilter.selected = NO;
//        [_btnFilter setTitleColor:RGB_COLOR_String(@"#666666") forState:UIControlStateNormal];
//        [_btnSkin setTitleColor:ThemeColor forState:UIControlStateNormal];
        self.topborder1.hidden = NO;
        self.topborder2.hidden = YES;
        
        self.beautySkinView.hidden = NO;
        self.beautyFilterView.hidden = YES;
    }else if (sender == self.btnFilter){
        self.btnSkin.selected = NO;
        self.btnFilter.selected = YES;
        
//        [_btnSkin setTitleColor:RGB_COLOR_String(@"#666666") forState:UIControlStateNormal];
//        [_btnFilter setTitleColor:ThemeColor forState:UIControlStateNormal];
        self.topborder1.hidden = YES;
        self.topborder2.hidden = NO;
        
        self.beautySkinView.hidden = YES;
        self.beautyFilterView.hidden = NO;
    }
}
//- (FUSegmentBar *)categoryView {
//    if (!_categoryView) {
//        NSArray<NSString *> *categories = @[@"skin", @"filter"];
//        FUSegmentBarConfigurations *configurations = [[FUSegmentBarConfigurations alloc] init];
//        configurations.titleFont = [UIFont systemFontOfSize:15];
//        _categoryView = [[FUSegmentBar alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.targetView.bounds) - FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight), CGRectGetWidth(self.targetView.bounds), FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight)) titles:categories configuration:configurations];
//        _categoryView.delegate = self;
//    }
//    return _categoryView;
//}

- (UIButton *)compareButton {
    if (!_compareButton) {
        _compareButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _compareButton.frame = CGRectMake(15, 2, 44, 44);
        [_compareButton setImage:[UIImage imageNamed:@"compare_item"] forState:UIControlStateNormal];
//        [_compareButton addTarget:self action:@selector(compareTouchDownAction) forControlEvents:UIControlEventTouchDown];
//        [_compareButton addTarget:self action:@selector(compareTouchUpAction) forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchUpOutside];
//        _compareButton.hidden = YES;
        [_compareButton addTarget:self action:@selector(compareButtonDidTake) forControlEvents:UIControlEventTouchUpInside];
    }
    return _compareButton;
}

- (FUBeautySkinView *)beautySkinView {
    if (!_beautySkinView) {
//        _beautySkinView = [[FUBeautySkinView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautySkinViewModel];
        _beautySkinView = [[FUBeautySkinView alloc] initWithFrame:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautySkinViewModel];
//        _beautySkinView.hidden = YES;
    }
    return _beautySkinView;
}

//- (FUBeautyShapeView *)beautyShapeView {
//    if (!_beautyShapeView) {
//        _beautyShapeView = [[FUBeautyShapeView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyShapeViewModel];
//        _beautyShapeView.hidden = YES;
//    }
//    return _beautyShapeView;
//}

- (FUBeautyFilterView *)beautyFilterView {
    if (!_beautyFilterView) {
//        _beautyFilterView = [[FUBeautyFilterView alloc] initWithFrame:CGRectMake(0, CGRectGetMinY(self.categoryView.frame), CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyFilterViewModel];
        _beautyFilterView = [[FUBeautyFilterView alloc] initWithFrame:CGRectMake(0, self.categoryView.bottom, CGRectGetWidth(self.targetView.bounds), FUBeautyFunctionViewOverallHeight) viewModel:self.beautyFilterViewModel];
        _beautyFilterView.hidden = YES;
        _beautyFilterView.delegate = self;
    }
    return _beautyFilterView;
}

- (FUBeautySkinViewModel *)beautySkinViewModel {
    if (!_beautySkinViewModel) {
        _beautySkinViewModel = [[FUBeautySkinViewModel alloc] init];
    }
    return _beautySkinViewModel;
}

//- (FUBeautyShapeViewModel *)beautyShapeViewModel {
//    if (!_beautyShapeViewModel) {
//        _beautyShapeViewModel = [[FUBeautyShapeViewModel alloc] init];
//    }
//    return _beautyShapeViewModel;
//}

- (FUBeautyFilterViewModel *)beautyFilterViewModel {
    if (!_beautyFilterViewModel) {
        _beautyFilterViewModel = [[FUBeautyFilterViewModel alloc] init];
    }
    return _beautyFilterViewModel;
}

- (CGFloat)componentViewHeight {
    if (self.selectedIndex == FUBeautyCategoryNone) {
        return FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight);
    } else {
        return FUBeautyHeightIncludeBottomSafeArea(FUBeautyCategoryViewHeight) + FUBeautyFunctionViewOverallHeight;
    }
}

@end
