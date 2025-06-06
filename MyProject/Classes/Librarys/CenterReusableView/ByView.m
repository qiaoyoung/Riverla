
#import <Foundation/Foundation.h>

NSString *StringFromRichSpireData(Byte *data);


//: http
Byte kStr_roachTitle[] = {12, 4, 19, 11, 84, 58, 92, 131, 210, 209, 193, 123, 135, 135, 131, 231};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ByView.m
//  ByView
//
//  Created by aier on 15-3-22.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SDCycleScrollView.h"
#import "ByView.h"
//: #import "SDCollectionViewCell.h"
#import "CenterReusableView.h"
//: #import "UIView+SDExtension.h"
#import "UIView+Face.h"
//: #import "TAPageControl.h"
#import "PictureControl.h"
//: #import "UIImageView+WebCache.h"
#import "UIImageView+WebCache.h"
//: #import "SDImageCache.h"
#import "SDImageCache.h"
//: #import "TTStripPageControl.h"
#import "HouseControl.h"

/*
 
 *********************************************************************************
 *
 * 🌟🌟🌟 新建SDCycleScrollView交流QQ群：185534916 🌟🌟🌟
 *
 * 在您使用此自动轮播库的过程中如果出现bug请及时以以下任意一种方式联系我们，我们会及时修复bug并
 * 帮您解决问题。
 * 新浪微博:GSD_iOS
 * Email : gsdios@126.com
 * GitHub: https://github.com/gsdios
 *
 * 另（我的自动布局库SDAutoLayout）：
 *  一行代码搞定自动布局！支持Cell和Tableview高度自适应，Label和ScrollView内容自适应，致力于
 *  做最简单易用的AutoLayout库。
 * 视频教程：http://www.letv.com/ptv/vplay/24038772.html
 * 用法示例：https://github.com/gsdios/SDAutoLayout/blob/master/README.md
 * GitHub：https://github.com/gsdios/SDAutoLayout
 *********************************************************************************
 
 */
//: NSString * const ID = @"cycleCell";
NSString * const let_rowValue = @"cycleCell";

//: @interface SDCycleScrollView () <UICollectionViewDataSource, UICollectionViewDelegate>
@interface ByView () <UICollectionViewDataSource, UICollectionViewDelegate>


//: @property (nonatomic, weak) UICollectionView *mainView; 
@property (nonatomic, weak) UICollectionView *mainView; // 显示图片的collectionView
//: @property (nonatomic, weak) UICollectionViewFlowLayout *flowLayout;
@property (nonatomic, weak) UICollectionViewFlowLayout *flowLayout;
//: @property (nonatomic, strong) NSArray *imagePathsGroup;
@property (nonatomic, strong) NSArray *imagePathsGroup;
//: @property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, weak) NSTimer *timer;
//: @property (nonatomic, assign) NSInteger totalItemsCount;
@property (nonatomic, assign) NSInteger totalItemsCount;
//: @property (nonatomic, weak) UIControl *pageControl;
@property (nonatomic, weak) UIControl *pageControl;

//: @property (nonatomic, strong) UIImageView *backgroundImageView; 
@property (nonatomic, strong) UIImageView *backgroundImageView; // 当imageURLs为空时的背景图

//: @property (nonatomic, assign) NSInteger networkFailedRetryCount;
@property (nonatomic, assign) NSInteger networkFailedRetryCount;

//: @end
@end

//: @implementation SDCycleScrollView
@implementation ByView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self initialization];
        [self account];
        //: [self setupMainView];
        [self colorDown];
    }
    //: return self;
    return self;
}

//: - (void)awakeFromNib
- (void)awakeFromNib
{
    //: [super awakeFromNib];
    [super awakeFromNib];
    //: [self initialization];
    [self account];
    //: [self setupMainView];
    [self colorDown];
}

//: - (void)initialization
- (void)account
{
    //: _pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
    _pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
    //: _autoScrollTimeInterval = 2.0;
    _autoScrollTimeInterval = 2.0;
    //: _titleLabelTextColor = [UIColor whiteColor];
    _titleLabelTextColor = [UIColor whiteColor];
    //: _titleLabelTextFont= [UIFont systemFontOfSize:14];
    _titleLabelTextFont= [UIFont systemFontOfSize:14];
    //: _titleLabelBackgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    _titleLabelBackgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    //: _titleLabelHeight = 30;
    _titleLabelHeight = 30;
    //: _autoScroll = YES;
    _autoScroll = YES;
    //: _infiniteLoop = YES;
    _infiniteLoop = YES;
    //: _showPageControl = YES;
    _showPageControl = YES;
    //: _pageControlDotSize = CGSizeMake(5, 5);
    _pageControlDotSize = CGSizeMake(5, 5);
    //: _pageControlStyle = SDCycleScrollViewPageContolStyleClassic;
    _pageControlStyle = SDCycleScrollViewPageContolStyleClassic;
    //: _hidesForSinglePage = YES;
    _hidesForSinglePage = YES;
    //: _currentPageDotColor = [UIColor whiteColor];
    _currentPageDotColor = [UIColor whiteColor];
    //: _pageDotColor = [UIColor lightGrayColor];
    _pageDotColor = [UIColor lightGrayColor];
    //: _bannerImageViewContentMode = UIViewContentModeScaleAspectFit;
    _bannerImageViewContentMode = UIViewContentModeScaleAspectFit;

    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

}

//: + (instancetype)cycleScrollViewWithFrame:(CGRect)frame imageNamesGroup:(NSArray *)imageNamesGroup
+ (instancetype)panoply:(CGRect)frame time:(NSArray *)imageNamesGroup
{
    //: SDCycleScrollView *cycleScrollView = [[self alloc] initWithFrame:frame];
    ByView *cycleScrollView = [[self alloc] initWithFrame:frame];
    //: cycleScrollView.localizationImageNamesGroup = [NSMutableArray arrayWithArray:imageNamesGroup];
    cycleScrollView.localizationImageNamesGroup = [NSMutableArray arrayWithArray:imageNamesGroup];
    //: return cycleScrollView;
    return cycleScrollView;
}

//: + (instancetype)cycleScrollViewWithFrame:(CGRect)frame shouldInfiniteLoop:(BOOL)infiniteLoop imageNamesGroup:(NSArray *)imageNamesGroup
+ (instancetype)view:(CGRect)frame content:(BOOL)infiniteLoop should:(NSArray *)imageNamesGroup
{
    //: SDCycleScrollView *cycleScrollView = [[self alloc] initWithFrame:frame];
    ByView *cycleScrollView = [[self alloc] initWithFrame:frame];
    //: cycleScrollView.infiniteLoop = infiniteLoop;
    cycleScrollView.infiniteLoop = infiniteLoop;
    //: cycleScrollView.localizationImageNamesGroup = [NSMutableArray arrayWithArray:imageNamesGroup];
    cycleScrollView.localizationImageNamesGroup = [NSMutableArray arrayWithArray:imageNamesGroup];
    //: return cycleScrollView;
    return cycleScrollView;
}

//: + (instancetype)cycleScrollViewWithFrame:(CGRect)frame imageURLStringsGroup:(NSArray *)imageURLsGroup
+ (instancetype)image:(CGRect)frame scrutiny:(NSArray *)imageURLsGroup
{
    //: SDCycleScrollView *cycleScrollView = [[self alloc] initWithFrame:frame];
    ByView *cycleScrollView = [[self alloc] initWithFrame:frame];
    //: cycleScrollView.imageURLStringsGroup = [NSMutableArray arrayWithArray:imageURLsGroup];
    cycleScrollView.imageURLStringsGroup = [NSMutableArray arrayWithArray:imageURLsGroup];
    //: return cycleScrollView;
    return cycleScrollView;
}

//: + (instancetype)cycleScrollViewWithFrame:(CGRect)frame delegate:(id<SDCycleScrollViewDelegate>)delegate placeholderImage:(UIImage *)placeholderImage
+ (instancetype)array:(CGRect)frame custom:(id<ImageInputMargin>)delegate packet:(UIImage *)placeholderImage
{
    //: SDCycleScrollView *cycleScrollView = [[self alloc] initWithFrame:frame];
    ByView *cycleScrollView = [[self alloc] initWithFrame:frame];
    //: cycleScrollView.delegate = delegate;
    cycleScrollView.delegate = delegate;
    //: cycleScrollView.placeholderImage = placeholderImage;
    cycleScrollView.placeholderImage = placeholderImage;

    //: return cycleScrollView;
    return cycleScrollView;
}

// 设置显示图片的collectionView
//: - (void)setupMainView
- (void)colorDown
{
    //: UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    //: flowLayout.minimumLineSpacing = 0;
    flowLayout.minimumLineSpacing = 0;
    //: flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //: _flowLayout = flowLayout;
    _flowLayout = flowLayout;

    //: UICollectionView *mainView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:flowLayout];
    UICollectionView *mainView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:flowLayout];
    //: mainView.backgroundColor = [UIColor clearColor];
    mainView.backgroundColor = [UIColor clearColor];
    //: mainView.pagingEnabled = YES;
    mainView.pagingEnabled = YES;
    //: mainView.showsHorizontalScrollIndicator = NO;
    mainView.showsHorizontalScrollIndicator = NO;
    //: mainView.showsVerticalScrollIndicator = NO;
    mainView.showsVerticalScrollIndicator = NO;
    //: [mainView registerClass:[SDCollectionViewCell class] forCellWithReuseIdentifier:ID];
    [mainView registerClass:[CenterReusableView class] forCellWithReuseIdentifier:let_rowValue];
    //: mainView.dataSource = self;
    mainView.dataSource = self;
    //: mainView.delegate = self;
    mainView.delegate = self;
    //: mainView.scrollsToTop = NO;
    mainView.scrollsToTop = NO;
    //: [self addSubview:mainView];
    [self addSubview:mainView];
    //: _mainView = mainView;
    _mainView = mainView;
}


//: #pragma mark - properties
#pragma mark - properties

//: - (void)setPlaceholderImage:(UIImage *)placeholderImage
- (void)setPlaceholderImage:(UIImage *)placeholderImage
{
    //: _placeholderImage = placeholderImage;
    _placeholderImage = placeholderImage;

    //: if (!self.backgroundImageView) {
    if (!self.backgroundImageView) {
        //: UIImageView *bgImageView = [UIImageView new];
        UIImageView *bgImageView = [UIImageView new];
        //: bgImageView.contentMode = UIViewContentModeScaleAspectFit;
        bgImageView.contentMode = UIViewContentModeScaleAspectFit;
        //: [self insertSubview:bgImageView belowSubview:self.mainView];
        [self insertSubview:bgImageView belowSubview:self.mainView];
        //: self.backgroundImageView = bgImageView;
        self.backgroundImageView = bgImageView;
    }

    //: self.backgroundImageView.image = placeholderImage;
    self.backgroundImageView.image = placeholderImage;
}

//: - (void)setPageControlDotSize:(CGSize)pageControlDotSize
- (void)setPageControlDotSize:(CGSize)pageControlDotSize
{
    //: _pageControlDotSize = pageControlDotSize;
    _pageControlDotSize = pageControlDotSize;
    //: [self setupPageControl];
    [self magnitudePaper];
    //: if ([self.pageControl isKindOfClass:[TAPageControl class]]) {
    if ([self.pageControl isKindOfClass:[PictureControl class]]) {
        //: TAPageControl *pageContol = (TAPageControl *)_pageControl;
        PictureControl *pageContol = (PictureControl *)_pageControl;
        //: pageContol.dotSize = pageControlDotSize;
        pageContol.dotSize = pageControlDotSize;
    }
}

//: - (void)setShowPageControl:(BOOL)showPageControl
- (void)setShowPageControl:(BOOL)showPageControl
{
    //: _showPageControl = showPageControl;
    _showPageControl = showPageControl;

    //: _pageControl.hidden = !showPageControl;
    _pageControl.hidden = !showPageControl;
}

//: - (void)setCurrentPageDotColor:(UIColor *)currentPageDotColor
- (void)setCurrentPageDotColor:(UIColor *)currentPageDotColor
{
    //: _currentPageDotColor = currentPageDotColor;
    _currentPageDotColor = currentPageDotColor;
    //: if ([self.pageControl isKindOfClass:[TAPageControl class]]) {
    if ([self.pageControl isKindOfClass:[PictureControl class]]) {
        //: TAPageControl *pageControl = (TAPageControl *)_pageControl;
        PictureControl *pageControl = (PictureControl *)_pageControl;
        //: pageControl.dotColor = currentPageDotColor;
        pageControl.dotColor = currentPageDotColor;
    //: } else {
    } else {
        //: UIPageControl *pageControl = (UIPageControl *)_pageControl;
        UIPageControl *pageControl = (UIPageControl *)_pageControl;
        //: pageControl.currentPageIndicatorTintColor = currentPageDotColor;
        pageControl.currentPageIndicatorTintColor = currentPageDotColor;
    }

}

//: - (void)setPageDotColor:(UIColor *)pageDotColor
- (void)setPageDotColor:(UIColor *)pageDotColor
{
    //: _pageDotColor = pageDotColor;
    _pageDotColor = pageDotColor;

    //: if ([self.pageControl isKindOfClass:[UIPageControl class]]) {
    if ([self.pageControl isKindOfClass:[UIPageControl class]]) {
        //: UIPageControl *pageControl = (UIPageControl *)_pageControl;
        UIPageControl *pageControl = (UIPageControl *)_pageControl;
        //: pageControl.pageIndicatorTintColor = pageDotColor;
        pageControl.pageIndicatorTintColor = pageDotColor;
    }
}

//: - (void)setCurrentPageDotImage:(UIImage *)currentPageDotImage
- (void)setCurrentPageDotImage:(UIImage *)currentPageDotImage
{
    //: _currentPageDotImage = currentPageDotImage;
    _currentPageDotImage = currentPageDotImage;

    //: if (self.pageControlStyle != SDCycleScrollViewPageContolStyleAnimated) {
    if (self.pageControlStyle != SDCycleScrollViewPageContolStyleAnimated) {
        //: self.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
        self.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
    }

    //: [self setCustomPageControlDotImage:currentPageDotImage isCurrentPageDot:YES];
    [self ground:currentPageDotImage examineed:YES];
}

//: - (void)setPageDotImage:(UIImage *)pageDotImage
- (void)setPageDotImage:(UIImage *)pageDotImage
{
    //: _pageDotImage = pageDotImage;
    _pageDotImage = pageDotImage;

    //: if (self.pageControlStyle != SDCycleScrollViewPageContolStyleAnimated) {
    if (self.pageControlStyle != SDCycleScrollViewPageContolStyleAnimated) {
        //: self.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
        self.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
    }

    //: [self setCustomPageControlDotImage:pageDotImage isCurrentPageDot:NO];
    [self ground:pageDotImage examineed:NO];
}

//: - (void)setCustomPageControlDotImage:(UIImage *)image isCurrentPageDot:(BOOL)isCurrentPageDot
- (void)ground:(UIImage *)image examineed:(BOOL)isCurrentPageDot
{
    //: if (!image || !self.pageControl) return;
    if (!image || !self.pageControl) return;

    //: if ([self.pageControl isKindOfClass:[TAPageControl class]]) {
    if ([self.pageControl isKindOfClass:[PictureControl class]]) {
        //: TAPageControl *pageControl = (TAPageControl *)_pageControl;
        PictureControl *pageControl = (PictureControl *)_pageControl;
        //: if (isCurrentPageDot) {
        if (isCurrentPageDot) {
            //: pageControl.currentDotImage = image;
            pageControl.currentDotImage = image;
        //: } else {
        } else {
            //: pageControl.dotImage = image;
            pageControl.dotImage = image;
        }
    }
}

//: - (void)setInfiniteLoop:(BOOL)infiniteLoop
- (void)setInfiniteLoop:(BOOL)infiniteLoop
{
    //: _infiniteLoop = infiniteLoop;
    _infiniteLoop = infiniteLoop;

    //: if (self.imagePathsGroup.count) {
    if (self.imagePathsGroup.count) {
        //: self.imagePathsGroup = self.imagePathsGroup;
        self.imagePathsGroup = self.imagePathsGroup;
    }
}

//: -(void)setAutoScroll:(BOOL)autoScroll{
-(void)setAutoScroll:(BOOL)autoScroll{
    //: _autoScroll = autoScroll;
    _autoScroll = autoScroll;

    //: [self invalidateTimer];
    [self text];

    //: if (_autoScroll) {
    if (_autoScroll) {
        //: [self setupTimer];
        [self rangeMessage];
    }
}

//: - (void)setScrollDirection:(UICollectionViewScrollDirection)scrollDirection
- (void)setScrollDirection:(UICollectionViewScrollDirection)scrollDirection
{
    //: _scrollDirection = scrollDirection;
    _scrollDirection = scrollDirection;

    //: _flowLayout.scrollDirection = scrollDirection;
    _flowLayout.scrollDirection = scrollDirection;
}

//: - (void)setAutoScrollTimeInterval:(CGFloat)autoScrollTimeInterval
- (void)setAutoScrollTimeInterval:(CGFloat)autoScrollTimeInterval
{
    //: _autoScrollTimeInterval = autoScrollTimeInterval;
    _autoScrollTimeInterval = autoScrollTimeInterval;

    //: [self setAutoScroll:self.autoScroll];
    [self setAutoScroll:self.autoScroll];
}

//: - (void)setPageControlStyle:(SDCycleScrollViewPageContolStyle)pageControlStyle
- (void)setPageControlStyle:(SDCycleScrollViewPageContolStyle)pageControlStyle
{
    //: _pageControlStyle = pageControlStyle;
    _pageControlStyle = pageControlStyle;

    //: [self setupPageControl];
    [self magnitudePaper];
}

//: - (void)setImagePathsGroup:(NSArray *)imagePathsGroup
- (void)setImagePathsGroup:(NSArray *)imagePathsGroup
{
    //: if (imagePathsGroup.count < _imagePathsGroup.count) {
    if (imagePathsGroup.count < _imagePathsGroup.count) {
        //: [_mainView setContentOffset:CGPointZero animated:NO];
        [_mainView setContentOffset:CGPointZero animated:NO];
    }

    //: _imagePathsGroup = imagePathsGroup;
    _imagePathsGroup = imagePathsGroup;

    //: _totalItemsCount = self.infiniteLoop ? self.imagePathsGroup.count * 100 : self.imagePathsGroup.count;
    _totalItemsCount = self.infiniteLoop ? self.imagePathsGroup.count * 100 : self.imagePathsGroup.count;

    //: if (imagePathsGroup.count != 1) {
    if (imagePathsGroup.count != 1) {
        //: self.mainView.scrollEnabled = YES;
        self.mainView.scrollEnabled = YES;
        //: [self setAutoScroll:self.autoScroll];
        [self setAutoScroll:self.autoScroll];
    //: } else {
    } else {
        //: [self invalidateTimer];
        [self text];
        //: self.mainView.scrollEnabled = NO;
        self.mainView.scrollEnabled = NO;
    }

    //: [self setupPageControl];
    [self magnitudePaper];
    //: [self.mainView reloadData];
    [self.mainView reloadData];

    //: if (imagePathsGroup.count) {
    if (imagePathsGroup.count) {
        //: [self.backgroundImageView removeFromSuperview];
        [self.backgroundImageView removeFromSuperview];
    //: } else {
    } else {
        //: if (self.backgroundImageView && !self.backgroundImageView.superview) {
        if (self.backgroundImageView && !self.backgroundImageView.superview) {
            //: [self insertSubview:self.backgroundImageView belowSubview:self.mainView];
            [self insertSubview:self.backgroundImageView belowSubview:self.mainView];
        }
    }
}

//: - (void)setImageURLStringsGroup:(NSArray *)imageURLStringsGroup
- (void)setImageURLStringsGroup:(NSArray *)imageURLStringsGroup
{
    //: _imageURLStringsGroup = imageURLStringsGroup;
    _imageURLStringsGroup = imageURLStringsGroup;

    //: NSMutableArray *temp = [NSMutableArray new];
    NSMutableArray *temp = [NSMutableArray new];
    //: [_imageURLStringsGroup enumerateObjectsUsingBlock:^(NSString * obj, NSUInteger idx, BOOL * stop) {
    [_imageURLStringsGroup enumerateObjectsUsingBlock:^(NSString * obj, NSUInteger idx, BOOL * stop) {
        //: NSString *urlString;
        NSString *urlString;
        //: if ([obj isKindOfClass:[NSString class]]) {
        if ([obj isKindOfClass:[NSString class]]) {
            //: urlString = obj;
            urlString = obj;
        //: } else if ([obj isKindOfClass:[NSURL class]]) {
        } else if ([obj isKindOfClass:[NSURL class]]) {
            //: NSURL *url = (NSURL *)obj;
            NSURL *url = (NSURL *)obj;
            //: urlString = [url absoluteString];
            urlString = [url absoluteString];
        }
        //: if (urlString) {
        if (urlString) {
            //: [temp addObject:urlString];
            [temp addObject:urlString];
        }
    //: }];
    }];
    //: self.imagePathsGroup = [temp copy];
    self.imagePathsGroup = [temp copy];
}

//: - (void)setLocalizationImageNamesGroup:(NSArray *)localizationImageNamesGroup
- (void)setLocalizationImageNamesGroup:(NSArray *)localizationImageNamesGroup
{
    //: _localizationImageNamesGroup = localizationImageNamesGroup;
    _localizationImageNamesGroup = localizationImageNamesGroup;
    //: self.imagePathsGroup = [localizationImageNamesGroup copy];
    self.imagePathsGroup = [localizationImageNamesGroup copy];
}

//: #pragma mark - actions
#pragma mark - actions

//: - (void)setupTimer
- (void)rangeMessage
{
    //: NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:self.autoScrollTimeInterval target:self selector:@selector(automaticScroll) userInfo:nil repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:self.autoScrollTimeInterval target:self selector:@selector(outsideArray) userInfo:nil repeats:YES];
    //: _timer = timer;
    _timer = timer;
    //: [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

//: - (void)invalidateTimer
- (void)text
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
}

//: - (void)setupPageControl
- (void)magnitudePaper
{
    //: if (_pageControl) [_pageControl removeFromSuperview]; 
    if (_pageControl) [_pageControl removeFromSuperview]; // 重新加载数据时调整

    //: if (self.imagePathsGroup.count == 0) return;
    if (self.imagePathsGroup.count == 0) return;

    //: if ((self.imagePathsGroup.count == 1) && self.hidesForSinglePage) return;
    if ((self.imagePathsGroup.count == 1) && self.hidesForSinglePage) return;

    //: int indexOnPageControl = [self currentIndex] % self.imagePathsGroup.count;
    int indexOnPageControl = [self area] % self.imagePathsGroup.count;

    //: switch (self.pageControlStyle) {
    switch (self.pageControlStyle) {

        //: case SDCycleScrollViewPageContolStyleStrip:
        case SDCycleScrollViewPageContolStyleStrip:
        {
            //: TTStripPageControl *pageControl = [[TTStripPageControl alloc] init];
            HouseControl *pageControl = [[HouseControl alloc] init];
            //: pageControl.numberOfPages = self.imagePathsGroup.count;
            pageControl.numberOfPages = self.imagePathsGroup.count;
            //: pageControl.dotColor = self.currentPageDotColor;
            pageControl.dotColor = self.currentPageDotColor;
            //: pageControl.userInteractionEnabled = NO;
            pageControl.userInteractionEnabled = NO;
            //: pageControl.currentPage = indexOnPageControl;
            pageControl.currentPage = indexOnPageControl;
            //: [self addSubview:pageControl];
            [self addSubview:pageControl];
            //: _pageControl = pageControl;
            _pageControl = pageControl;
        }
            //: break;
            break;

        //: case SDCycleScrollViewPageContolStyleAnimated:
        case SDCycleScrollViewPageContolStyleAnimated:
        {
            //: TAPageControl *pageControl = [[TAPageControl alloc] init];
            PictureControl *pageControl = [[PictureControl alloc] init];
            //: pageControl.numberOfPages = self.imagePathsGroup.count;
            pageControl.numberOfPages = self.imagePathsGroup.count;
            //: pageControl.dotColor = self.currentPageDotColor;
            pageControl.dotColor = self.currentPageDotColor;
            //: pageControl.userInteractionEnabled = NO;
            pageControl.userInteractionEnabled = NO;
            //: pageControl.currentPage = indexOnPageControl;
            pageControl.currentPage = indexOnPageControl;
            //: [self addSubview:pageControl];
            [self addSubview:pageControl];
            //: _pageControl = pageControl;
            _pageControl = pageControl;
        }
            //: break;
            break;

        //: case SDCycleScrollViewPageContolStyleClassic:
        case SDCycleScrollViewPageContolStyleClassic:
        {
            //: UIPageControl *pageControl = [[UIPageControl alloc] init];
            UIPageControl *pageControl = [[UIPageControl alloc] init];
            //: pageControl.numberOfPages = self.imagePathsGroup.count;
            pageControl.numberOfPages = self.imagePathsGroup.count;
            //: pageControl.currentPageIndicatorTintColor = self.currentPageDotColor;
            pageControl.currentPageIndicatorTintColor = self.currentPageDotColor;
            //: pageControl.pageIndicatorTintColor = self.pageDotColor;
            pageControl.pageIndicatorTintColor = self.pageDotColor;
            //: pageControl.userInteractionEnabled = NO;
            pageControl.userInteractionEnabled = NO;
            //: pageControl.currentPage = indexOnPageControl;
            pageControl.currentPage = indexOnPageControl;
            //: [self addSubview:pageControl];
            [self addSubview:pageControl];
            //: _pageControl = pageControl;
            _pageControl = pageControl;
        }
            //: break;
            break;

        //: default:
        default:
            //: break;
            break;
    }

    // 重设pagecontroldot图片
    //: if (self.currentPageDotImage) {
    if (self.currentPageDotImage) {
        //: self.currentPageDotImage = self.currentPageDotImage;
        self.currentPageDotImage = self.currentPageDotImage;
    }
    //: if (self.pageDotImage) {
    if (self.pageDotImage) {
        //: self.pageDotImage = self.pageDotImage;
        self.pageDotImage = self.pageDotImage;
    }
}


//: - (void)automaticScroll
- (void)outsideArray
{
    //: if (0 == _totalItemsCount) return;
    if (0 == _totalItemsCount) return;
    //: int currentIndex = [self currentIndex];
    int currentIndex = [self area];
    //: int targetIndex = currentIndex + 1;
    int targetIndex = currentIndex + 1;
    //: if (targetIndex >= _totalItemsCount) {
    if (targetIndex >= _totalItemsCount) {
        //: if (self.infiniteLoop) {
        if (self.infiniteLoop) {
            //: targetIndex = _totalItemsCount * 0.5;
            targetIndex = _totalItemsCount * 0.5;
            //: [_mainView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:targetIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
            [_mainView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:targetIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
        }
        //: return;
        return;
    }
    //: [_mainView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:targetIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
    [_mainView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:targetIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
}

//: - (int)currentIndex
- (int)area
{
    //: if (_mainView.sd_width == 0 || _mainView.sd_height == 0) {
    if (_mainView.sd_width == 0 || _mainView.sd_height == 0) {
        //: return 0;
        return 0;
    }

    //: int index = 0;
    int index = 0;
    //: if (_flowLayout.scrollDirection == UICollectionViewScrollDirectionHorizontal) {
    if (_flowLayout.scrollDirection == UICollectionViewScrollDirectionHorizontal) {
        //: index = (_mainView.contentOffset.x + _flowLayout.itemSize.width * 0.5) / _flowLayout.itemSize.width;
        index = (_mainView.contentOffset.x + _flowLayout.itemSize.width * 0.5) / _flowLayout.itemSize.width;
    //: } else {
    } else {
        //: index = (_mainView.contentOffset.y + _flowLayout.itemSize.height * 0.5) / _flowLayout.itemSize.height;
        index = (_mainView.contentOffset.y + _flowLayout.itemSize.height * 0.5) / _flowLayout.itemSize.height;
    }
    //: return index;
    return index;
}

//: - (void)clearCache
- (void)languageCache
{
    //: [[self class] clearImagesCache];
    [[self class] page];
}

//: + (void)clearImagesCache
+ (void)page
{
//    [[[SDWebImageManager sharedManager] imageCache] clearDiskOnCompletion:nil];
    //: [[[SDWebImageManager sharedManager] imageCache] clearWithCacheType:SDImageCacheTypeDisk completion:nil];
    [[[SDWebImageManager sharedManager] imageCache] clearWithCacheType:SDImageCacheTypeDisk completion:nil];
}

//: #pragma mark - life circles
#pragma mark - life circles

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _flowLayout.itemSize = self.frame.size;
    _flowLayout.itemSize = self.frame.size;

    //: _mainView.frame = self.bounds;
    _mainView.frame = self.bounds;
    //: if (_mainView.contentOffset.x == 0 && _totalItemsCount) {
    if (_mainView.contentOffset.x == 0 && _totalItemsCount) {
        //: int targetIndex = 0;
        int targetIndex = 0;
        //: if (self.infiniteLoop) {
        if (self.infiniteLoop) {
            //: targetIndex = _totalItemsCount * 0.5;
            targetIndex = _totalItemsCount * 0.5;
        //: }else{
        }else{
            //: targetIndex = 0;
            targetIndex = 0;
        }
        //: [_mainView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:targetIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
        [_mainView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:targetIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
    }

    //: CGSize size = CGSizeZero;
    CGSize size = CGSizeZero;
    //: if ([self.pageControl isKindOfClass:[TAPageControl class]]) {
    if ([self.pageControl isKindOfClass:[PictureControl class]]) {
        //: TAPageControl *pageControl = (TAPageControl *)_pageControl;
        PictureControl *pageControl = (PictureControl *)_pageControl;
        //: if (!(self.pageDotImage && self.currentPageDotImage && __CGSizeEqualToSize(CGSizeMake(5, 5), self.pageControlDotSize))) {
        if (!(self.pageDotImage && self.currentPageDotImage && __CGSizeEqualToSize(CGSizeMake(5, 5), self.pageControlDotSize))) {
            //: pageControl.dotSize = self.pageControlDotSize;
            pageControl.dotSize = self.pageControlDotSize;
        }
        //: size = [pageControl sizeForNumberOfPages:self.imagePathsGroup.count];
        size = [pageControl isOf:self.imagePathsGroup.count];
    }
    //: else if ([self.pageControl isKindOfClass:[TTStripPageControl class]]){
    else if ([self.pageControl isKindOfClass:[HouseControl class]]){
        //: TTStripPageControl *pageControl = (TTStripPageControl *)_pageControl;
        HouseControl *pageControl = (HouseControl *)_pageControl;
        //: size = [pageControl sizeForNumberOfPages:self.imagePathsGroup.count];
        size = [pageControl ting:self.imagePathsGroup.count];
    }
    //: else {
    else {
        //: size = CGSizeMake(self.imagePathsGroup.count * self.pageControlDotSize.width * 1.2, self.pageControlDotSize.height);
        size = CGSizeMake(self.imagePathsGroup.count * self.pageControlDotSize.width * 1.2, self.pageControlDotSize.height);
    }


    //: CGFloat x = (self.sd_width - size.width) * 0.5;
    CGFloat x = (self.sd_width - size.width) * 0.5;
    //: if (self.pageControlAliment == SDCycleScrollViewPageContolAlimentRight) {
    if (self.pageControlAliment == SDCycleScrollViewPageContolAlimentRight) {
        //: x = self.mainView.sd_width - size.width - 10;
        x = self.mainView.sd_width - size.width - 10;
    }
    //: CGFloat y = self.mainView.sd_height - size.height - 10;
    CGFloat y = self.mainView.sd_height - size.height - 10;

    //: if ([self.pageControl isKindOfClass:[TAPageControl class]]) {
    if ([self.pageControl isKindOfClass:[PictureControl class]]) {
        //: TAPageControl *pageControl = (TAPageControl *)_pageControl;
        PictureControl *pageControl = (PictureControl *)_pageControl;
        //: [pageControl sizeToFit];
        [pageControl sizeToFit];
    }
    //: else if ([self.pageControl isKindOfClass:[TTStripPageControl class]]){
    else if ([self.pageControl isKindOfClass:[HouseControl class]]){
        //: TTStripPageControl *pageControl = (TTStripPageControl *)_pageControl;
        HouseControl *pageControl = (HouseControl *)_pageControl;
        //: [pageControl sizeToFit];
        [pageControl sizeToFit];
    }

    //: self.pageControl.frame = CGRectMake(x, y, size.width, size.height);
    self.pageControl.frame = CGRectMake(x, y, size.width, size.height);
    //: self.pageControl.hidden = !_showPageControl;
    self.pageControl.hidden = !_showPageControl;

    //: if (self.backgroundImageView) {
    if (self.backgroundImageView) {
        //: self.backgroundImageView.frame = self.bounds;
        self.backgroundImageView.frame = self.bounds;
    }

}

//解决当父View释放时，当前视图因为被Timer强引用而不能释放的问题
//: - (void)willMoveToSuperview:(UIView *)newSuperview
- (void)willMoveToSuperview:(UIView *)newSuperview
{
    //: if (!newSuperview) {
    if (!newSuperview) {
        //: [self invalidateTimer];
        [self text];
    }
}

//解决当timer释放后 回调scrollViewDidScroll时访问野指针导致崩溃
//: - (void)dealloc {
- (void)dealloc {
    //: _mainView.delegate = nil;
    _mainView.delegate = nil;
    //: _mainView.dataSource = nil;
    _mainView.dataSource = nil;
}

//: #pragma mark - public actions
#pragma mark - public actions


//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //: return _totalItemsCount;
    return _totalItemsCount;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: SDCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    CenterReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:let_rowValue forIndexPath:indexPath];
    //: cell.showGradient = self.showGradient;
    cell.showGradient = self.showGradient;
    //: long itemIndex = indexPath.item % self.imagePathsGroup.count;
    long itemIndex = indexPath.item % self.imagePathsGroup.count;

    //: NSString *imagePath = self.imagePathsGroup[itemIndex];
    NSString *imagePath = self.imagePathsGroup[itemIndex];

    //: if ([imagePath isKindOfClass:[NSString class]]) {
    if ([imagePath isKindOfClass:[NSString class]]) {
        //: if ([imagePath hasPrefix:@"http"]) {
        if ([imagePath hasPrefix:StringFromRichSpireData(kStr_roachTitle)]) {
            //: [cell.imageView sd_setImageWithURL:[NSURL URLWithString:imagePath] placeholderImage:self.placeholderImage];
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:imagePath] placeholderImage:self.placeholderImage];
        //: } else {
        } else {
            //: UIImage *image = [UIImage imageNamed:imagePath];
            UIImage *image = [UIImage imageNamed:imagePath];
            //: if (!image) {
            if (!image) {
                //: [UIImage imageWithContentsOfFile:imagePath];
                [UIImage imageWithContentsOfFile:imagePath];
            }
            //: cell.imageView.image = image;
            cell.imageView.image = image;
        }
    //: } else if ([imagePath isKindOfClass:[UIImage class]]) {
    } else if ([imagePath isKindOfClass:[UIImage class]]) {
        //: cell.imageView.image = (UIImage *)imagePath;
        cell.imageView.image = (UIImage *)imagePath;
    }

    //: if (_titlesGroup.count && itemIndex < _titlesGroup.count) {
    if (_titlesGroup.count && itemIndex < _titlesGroup.count) {
        //: cell.title = _titlesGroup[itemIndex];
        cell.title = _titlesGroup[itemIndex];
    }

    //: if (!cell.hasConfigured) {
    if (!cell.hasConfigured) {
        //: cell.titleLabelBackgroundColor = self.titleLabelBackgroundColor;
        cell.titleLabelBackgroundColor = self.titleLabelBackgroundColor;
        //: cell.titleLabelHeight = self.titleLabelHeight;
        cell.titleLabelHeight = self.titleLabelHeight;
        //: cell.titleLabelTextColor = self.titleLabelTextColor;
        cell.titleLabelTextColor = self.titleLabelTextColor;
        //: cell.titleLabelTextFont = self.titleLabelTextFont;
        cell.titleLabelTextFont = self.titleLabelTextFont;
        //: cell.hasConfigured = YES;
        cell.hasConfigured = YES;
        //: cell.imageView.contentMode = self.bannerImageViewContentMode;
        cell.imageView.contentMode = self.bannerImageViewContentMode;
        //: cell.clipsToBounds = YES;
        cell.clipsToBounds = YES;
    }

    //: return cell;
    return cell;
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(cycleScrollView:didSelectItemAtIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(dieDoing:should:)]) {
        //: [self.delegate cycleScrollView:self didSelectItemAtIndex:indexPath.item % self.imagePathsGroup.count];
        [self.delegate dieDoing:self should:indexPath.item % self.imagePathsGroup.count];
    }
    //: if (self.clickItemOperationBlock) {
    if (self.clickItemOperationBlock) {
        //: self.clickItemOperationBlock(indexPath.item % self.imagePathsGroup.count);
        self.clickItemOperationBlock(indexPath.item % self.imagePathsGroup.count);
    }
}


//: #pragma mark - UIScrollViewDelegate
#pragma mark - UIScrollViewDelegate

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //: if (!self.imagePathsGroup.count) return; 
    if (!self.imagePathsGroup.count) return; // 解决清除timer时偶尔会出现的问题
    //: int itemIndex = [self currentIndex];
    int itemIndex = [self area];

    //: int indexOnPageControl = itemIndex % self.imagePathsGroup.count;
    int indexOnPageControl = itemIndex % self.imagePathsGroup.count;

    //: if ([self.pageControl isKindOfClass:[TAPageControl class]]) {
    if ([self.pageControl isKindOfClass:[PictureControl class]]) {
        //: TAPageControl *pageControl = (TAPageControl *)_pageControl;
        PictureControl *pageControl = (PictureControl *)_pageControl;
        //: pageControl.currentPage = indexOnPageControl;
        pageControl.currentPage = indexOnPageControl;
    }
    //: else if([self.pageControl isKindOfClass:[TTStripPageControl class]]){
    else if([self.pageControl isKindOfClass:[HouseControl class]]){
        //: TTStripPageControl *pageControl = ( TTStripPageControl *)_pageControl;
        HouseControl *pageControl = ( HouseControl *)_pageControl;
        //: CGFloat offsetX = scrollView.contentOffset.x;
        CGFloat offsetX = scrollView.contentOffset.x;
        //: CGFloat width = _flowLayout.itemSize.width;
        CGFloat width = _flowLayout.itemSize.width;
        //: NSInteger floorIndex = floor(offsetX/width);
        NSInteger floorIndex = floor(offsetX/width);
        //: NSInteger indexOnPageControl = floorIndex % self.imagePathsGroup.count;
        NSInteger indexOnPageControl = floorIndex % self.imagePathsGroup.count;

        //: CGFloat progress = offsetX/width-floorIndex;
        CGFloat progress = offsetX/width-floorIndex;
        //: pageControl.currentPage = indexOnPageControl+progress;
        pageControl.currentPage = indexOnPageControl+progress;
    }
    //: else {
    else {
        //: UIPageControl *pageControl = (UIPageControl *)_pageControl;
        UIPageControl *pageControl = (UIPageControl *)_pageControl;
        //: pageControl.currentPage = indexOnPageControl;
        pageControl.currentPage = indexOnPageControl;
    }
}

//: - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    //: if (self.autoScroll) {
    if (self.autoScroll) {
        //: [self invalidateTimer];
        [self text];
    }
}

//: - (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    //: if (self.autoScroll) {
    if (self.autoScroll) {
        //: [self setupTimer];
        [self rangeMessage];
    }
}

//: - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //: [self scrollViewDidEndScrollingAnimation:self.mainView];
    [self scrollViewDidEndScrollingAnimation:self.mainView];
}

//: - (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    //: if (!self.imagePathsGroup.count) return; 
    if (!self.imagePathsGroup.count) return; // 解决清除timer时偶尔会出现的问题
    //: int itemIndex = [self currentIndex];
    int itemIndex = [self area];
    //: int indexOnPageControl = itemIndex % self.imagePathsGroup.count;
    int indexOnPageControl = itemIndex % self.imagePathsGroup.count;

    //: if ([self.delegate respondsToSelector:@selector(cycleScrollView:didScrollToIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(will_strong:digitalAnalogConverter:)]) {
        //: [self.delegate cycleScrollView:self didScrollToIndex:indexOnPageControl];
        [self.delegate will_strong:self digitalAnalogConverter:indexOnPageControl];
    //: } else if (self.itemDidScrollOperationBlock) {
    } else if (self.itemDidScrollOperationBlock) {
        //: self.itemDidScrollOperationBlock(indexOnPageControl);
        self.itemDidScrollOperationBlock(indexOnPageControl);
    }
}


//: @end
@end

Byte * RichSpireDataToCache(Byte *data) {
    int cruDate = data[0];
    int worried = data[1];
    Byte ofReign = data[2];
    int knifeRefresh = data[3];
    if (!cruDate) return data + knifeRefresh;
    for (int i = knifeRefresh; i < knifeRefresh + worried; i++) {
        int value = data[i] - ofReign;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[knifeRefresh + worried] = 0;
    return data + knifeRefresh;
}

NSString *StringFromRichSpireData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RichSpireDataToCache(data)];
}
