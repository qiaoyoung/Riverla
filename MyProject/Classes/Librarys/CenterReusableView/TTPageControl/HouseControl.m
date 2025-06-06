// __DEBUG__
// __CLOSE_PRINT__
//
//  HouseControl.m
//  TianTianWang
//
//  Created by yitailong on 16/8/11.
//  Copyright © 2016年 oyxc. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TTStripPageControl.h"
#import "HouseControl.h"

//: static NSInteger const kDefaultNumberOfPages = 0;
static NSInteger const let_cellText = 0;

//: static NSInteger const kDefaultCurrentPage = 0;
static NSInteger const let_keyName = 0;

//: static NSInteger const kDefaultSpacingBetweenDots = 10;
static NSInteger const let_pathLinkTitle = 10;

//: static BOOL const kDefaultShouldResizeFromCenter = YES;
static BOOL const let_contextSessionContent = YES;

//: static CGSize const kDefaultDotSize = {5, 5};
static CGSize const let_dotText = {5, 5};

//: static BOOL const kDefaultHideForSinglePage = YES;
static BOOL const let_cellName = YES;




//: @interface TTStripPageControl ()
@interface HouseControl ()

/**
 *  Array of dot views for reusability and touch events.
 */
//: @property (strong, nonatomic) NSMutableArray *dots;
@property (strong, nonatomic) NSMutableArray *dots;


//: @property (strong, nonatomic) UIView *indicatorView;
@property (strong, nonatomic) UIView *indicatorView;

//: @property (strong, nonatomic) UIView *edgeIndicatorView;
@property (strong, nonatomic) UIView *edgeIndicatorView;

//: @end
@end

//: @implementation TTStripPageControl
@implementation HouseControl

//: #pragma mark - Lifecycle
#pragma mark - Lifecycle


//: - (id)init
- (id)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self sinceDate];
    }

    //: return self;
    return self;
}


//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self sinceDate];
    }
    //: return self;
    return self;
}


//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: self = [super initWithCoder:aDecoder];
    self = [super initWithCoder:aDecoder];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self sinceDate];
    }

    //: return self;
    return self;
}

//: - (void)initialization
- (void)sinceDate
{
    //: self.spacingBetweenDots = kDefaultSpacingBetweenDots;
    self.spacingBetweenDots = let_pathLinkTitle;
    //: self.numberOfPages = kDefaultNumberOfPages;
    self.numberOfPages = let_cellText;
    //: self.currentPage = kDefaultCurrentPage;
    self.currentPage = let_keyName;
    //: self.hidesForSinglePage = kDefaultHideForSinglePage;
    self.hidesForSinglePage = let_cellName;
    //: self.shouldResizeFromCenter = kDefaultShouldResizeFromCenter;
    self.shouldResizeFromCenter = let_contextSessionContent;

    //: self.clipsToBounds = YES;
    self.clipsToBounds = YES;

}

//: #pragma mark - Layout
#pragma mark - Layout


/**
 *  Resizes and moves the receiver view so it just encloses its subviews.
 */
//: - (void)sizeToFit
- (void)sizeToFit
{
    //: [self updateFrame:YES];
    [self preserve:YES];
}

//: - (void)updateFrame:(BOOL)overrideExistingFrame
- (void)preserve:(BOOL)overrideExistingFrame
{
    //: CGPoint center = self.center;
    CGPoint center = self.center;
    //: CGSize requiredSize = [self sizeForNumberOfPages:self.numberOfPages];
    CGSize requiredSize = [self ting:self.numberOfPages];

    // We apply requiredSize only if authorize to and necessary
    //: if (overrideExistingFrame || ((CGRectGetWidth(self.frame) < requiredSize.width || CGRectGetHeight(self.frame) < requiredSize.height) && !overrideExistingFrame)) {
    if (overrideExistingFrame || ((CGRectGetWidth(self.frame) < requiredSize.width || CGRectGetHeight(self.frame) < requiredSize.height) && !overrideExistingFrame)) {
        //: self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), requiredSize.width, requiredSize.height);
        self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), requiredSize.width, requiredSize.height);
        //: if (self.shouldResizeFromCenter) {
        if (self.shouldResizeFromCenter) {
            //: self.center = center;
            self.center = center;
        }
    }

    //: [self resetDotViews];
    [self afterDotView];
}

//: - (CGSize)sizeForNumberOfPages:(NSInteger)pageCount
- (CGSize)ting:(NSInteger)pageCount
{
    //: return CGSizeMake((self.dotSize.width + self.spacingBetweenDots) * (pageCount+1) - self.spacingBetweenDots , self.dotSize.height);
    return CGSizeMake((self.dotSize.width + self.spacingBetweenDots) * (pageCount+1) - self.spacingBetweenDots , self.dotSize.height);
}

/**
 *  Will update dots display and frame. Reuse existing views or instantiate one if required. Update their position in case frame changed.
 */
//: - (void)updateDots
- (void)tapIcon
{
    //: if (self.numberOfPages == 0) {
    if (self.numberOfPages == 0) {
        //: return;
        return;
    }

    //: for (NSInteger i = 0; i <= self.numberOfPages; i++) {
    for (NSInteger i = 0; i <= self.numberOfPages; i++) {

        //: UIView *dot;
        UIView *dot;
        //: if (i < self.dots.count) {
        if (i < self.dots.count) {
            //: dot = [self.dots objectAtIndex:i];
            dot = [self.dots objectAtIndex:i];
        //: } else {
        } else {
            //: dot = [self generateDotView];
            dot = [self produce];
        }

        //: [self updateDotFrame:dot atIndex:i];
        [self atMid:dot astatineDismiss:i];
    }

    //: [self changeIndicatorViewLayout:self.currentPage];
    [self need:self.currentPage];
    //: [self hideForSinglePage];
    [self selectImage];
}

/**
 *  Update the frame of a specific dot at a specific index
 *
 *  @param dot   Dot view
 *  @param index Page index of dot
 */
//: - (void)updateDotFrame:(UIView *)dot atIndex:(NSInteger)index
- (void)atMid:(UIView *)dot astatineDismiss:(NSInteger)index
{
    // Dots are always centered within view
    //: CGFloat x = (self.dotSize.width + self.spacingBetweenDots) * index + ( (CGRectGetWidth(self.frame) - [self sizeForNumberOfPages:self.numberOfPages].width) / 2);
    CGFloat x = (self.dotSize.width + self.spacingBetweenDots) * index + ( (CGRectGetWidth(self.frame) - [self ting:self.numberOfPages].width) / 2);

    //: CGFloat y = (CGRectGetHeight(self.frame) - self.dotSize.height) / 2;
    CGFloat y = (CGRectGetHeight(self.frame) - self.dotSize.height) / 2;

    //: dot.frame = CGRectMake(x, y, self.dotSize.width, self.dotSize.height);
    dot.frame = CGRectMake(x, y, self.dotSize.width, self.dotSize.height);
}


//: - (void)changeIndicatorViewLayout:(CGFloat)page
- (void)need:(CGFloat)page
{
    //: [self bringSubviewToFront:self.indicatorView];
    [self bringSubviewToFront:self.indicatorView];
    //: [self bringSubviewToFront:self.edgeIndicatorView];
    [self bringSubviewToFront:self.edgeIndicatorView];

    //: if (page>self.numberOfPages-1) {
    if (page>self.numberOfPages-1) {

        //: CGFloat edge = page - self.numberOfPages+1;
        CGFloat edge = page - self.numberOfPages+1;

        //: self.edgeIndicatorView.frame = CGRectMake(-_edgeIndicatorView.width+edge*_edgeIndicatorView.width, 0, _edgeIndicatorView.width, _edgeIndicatorView.height);
        self.edgeIndicatorView.frame = CGRectMake(-_edgeIndicatorView.width+edge*_edgeIndicatorView.width, 0, _edgeIndicatorView.width, _edgeIndicatorView.height);
    }
    //: else{
    else{
        //: self.edgeIndicatorView.frame = CGRectMake((self.dotSize.width+self.spacingBetweenDots)*page, 0, _edgeIndicatorView.width, _edgeIndicatorView.height);
        self.edgeIndicatorView.frame = CGRectMake((self.dotSize.width+self.spacingBetweenDots)*page, 0, _edgeIndicatorView.width, _edgeIndicatorView.height);
    }

    //: NSInteger pageIndex = floor(page);
    NSInteger pageIndex = floor(page);
    //: if (pageIndex == self.numberOfPages-1) {
    if (pageIndex == self.numberOfPages-1) {
        //: CGFloat offsetX = (self.dotSize.width+self.spacingBetweenDots)*pageIndex + (_indicatorView.width)*(page-pageIndex);
        CGFloat offsetX = (self.dotSize.width+self.spacingBetweenDots)*pageIndex + (_indicatorView.width)*(page-pageIndex);
        //: self.indicatorView.frame = CGRectMake(offsetX, 0, _indicatorView.width, _indicatorView.height);
        self.indicatorView.frame = CGRectMake(offsetX, 0, _indicatorView.width, _indicatorView.height);
    }
    //: else{
    else{
        //: self.indicatorView.frame = CGRectMake((self.dotSize.width+self.spacingBetweenDots)*page, 0, _indicatorView.width, _indicatorView.height);
        self.indicatorView.frame = CGRectMake((self.dotSize.width+self.spacingBetweenDots)*page, 0, _indicatorView.width, _indicatorView.height);
    }

}

//: - (void)resetDotViews
- (void)afterDotView
{
    //: for (UIView *dotView in self.dots) {
    for (UIView *dotView in self.dots) {
        //: [dotView removeFromSuperview];
        [dotView removeFromSuperview];
    }

    //: [self.dots removeAllObjects];
    [self.dots removeAllObjects];
    //: [self updateDots];
    [self tapIcon];
}

/**
 *  Generate a dot view and add it to the collection
 *
 *  @return The UIView object representing a dot
 */
//: - (UIView *)generateDotView
- (UIView *)produce
{
    //: UIView *dotView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.dotSize.width, self.dotSize.height)];
    UIView *dotView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.dotSize.width, self.dotSize.height)];
    //: dotView.backgroundColor = self.dotColor;
    dotView.backgroundColor = self.dotColor;
    //: dotView.layer.cornerRadius = self.dotSize.width*0.5;
    dotView.layer.cornerRadius = self.dotSize.width*0.5;
    //: dotView.clipsToBounds = YES;
    dotView.clipsToBounds = YES;

    //: if (dotView) {
    if (dotView) {
        //: [self addSubview:dotView];
        [self addSubview:dotView];
        //: [self.dots addObject:dotView];
        [self.dots addObject:dotView];
    }

    //: dotView.userInteractionEnabled = YES;
    dotView.userInteractionEnabled = YES;
    //: return dotView;
    return dotView;
}



//: - (void)hideForSinglePage
- (void)selectImage
{
    //: if (self.dots.count == 1 && self.hidesForSinglePage) {
    if (self.dots.count == 1 && self.hidesForSinglePage) {
        //: self.hidden = YES;
        self.hidden = YES;
    //: } else {
    } else {
        //: self.hidden = NO;
        self.hidden = NO;
    }
}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (void)setNumberOfPages:(NSInteger)numberOfPages
- (void)setNumberOfPages:(NSInteger)numberOfPages
{
    //: _numberOfPages = numberOfPages;
    _numberOfPages = numberOfPages;

    // Update dot position to fit new number of pages
    //: [self resetDotViews];
    [self afterDotView];
}


//: - (void)setSpacingBetweenDots:(NSInteger)spacingBetweenDots
- (void)setSpacingBetweenDots:(NSInteger)spacingBetweenDots
{
    //: _spacingBetweenDots = spacingBetweenDots;
    _spacingBetweenDots = spacingBetweenDots;

    //: [self resetDotViews];
    [self afterDotView];
}


//: - (void)setCurrentPage:(CGFloat)currentPage
- (void)setCurrentPage:(CGFloat)currentPage
{
    // If no pages, no current page to treat.
    //: if (self.numberOfPages == 0 || currentPage == _currentPage) {
    if (self.numberOfPages == 0 || currentPage == _currentPage) {
        //: _currentPage = currentPage;
        _currentPage = currentPage;
        //: return;
        return;
    }

    //: _currentPage = currentPage;
    _currentPage = currentPage;

    //: [self changeIndicatorViewLayout:currentPage];
    [self need:currentPage];
}

//: - (UIView *)indicatorView
- (UIView *)indicatorView
{
    //: if (!_indicatorView) {
    if (!_indicatorView) {
        //: _indicatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.spacingBetweenDots+self.dotSize.width*2, self.dotSize.height)];
        _indicatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.spacingBetweenDots+self.dotSize.width*2, self.dotSize.height)];
        //: _indicatorView.backgroundColor = [UIColor whiteColor];
        _indicatorView.backgroundColor = [UIColor whiteColor];
        //: _indicatorView.layer.cornerRadius = self.dotSize.width*0.5;
        _indicatorView.layer.cornerRadius = self.dotSize.width*0.5;
        //: _indicatorView.clipsToBounds = YES;
        _indicatorView.clipsToBounds = YES;
        //: [self addSubview:_indicatorView];
        [self addSubview:_indicatorView];
    }

    //: return _indicatorView;
    return _indicatorView;
}

//: - (UIView *)edgeIndicatorView
- (UIView *)edgeIndicatorView
{
    //: if (!_edgeIndicatorView) {
    if (!_edgeIndicatorView) {
        //: _edgeIndicatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.spacingBetweenDots+self.dotSize.width*2, self.dotSize.height)];
        _edgeIndicatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.spacingBetweenDots+self.dotSize.width*2, self.dotSize.height)];
        //: _edgeIndicatorView.backgroundColor = [UIColor whiteColor];
        _edgeIndicatorView.backgroundColor = [UIColor whiteColor];
        //: _edgeIndicatorView.layer.cornerRadius = self.dotSize.width*0.5;
        _edgeIndicatorView.layer.cornerRadius = self.dotSize.width*0.5;
        //: _edgeIndicatorView.clipsToBounds = YES;
        _edgeIndicatorView.clipsToBounds = YES;
        //: [self addSubview:_edgeIndicatorView];
        [self addSubview:_edgeIndicatorView];
    }

    //: return _edgeIndicatorView;
    return _edgeIndicatorView;
}

//: - (NSMutableArray *)dots
- (NSMutableArray *)dots
{
    //: if (!_dots) {
    if (!_dots) {
        //: _dots = [[NSMutableArray alloc] init];
        _dots = [[NSMutableArray alloc] init];
    }

    //: return _dots;
    return _dots;
}

//: - (CGSize)dotSize
- (CGSize)dotSize
{
    //: if (__CGSizeEqualToSize(_dotSize, CGSizeZero)) {
    if (__CGSizeEqualToSize(_dotSize, CGSizeZero)) {
        //: _dotSize = kDefaultDotSize;
        _dotSize = let_dotText;
    }

    //: return _dotSize;
    return _dotSize;
}

//: @end
@end