//
//  TTStripPageControl.m
//  TianTianWang
//
//  Created by yitailong on 16/8/11.
//  Copyright © 2016年 oyxc. All rights reserved.
//



static NSInteger const kDefaultNumberOfPages = 0;

static NSInteger const kDefaultCurrentPage = 0;

static NSInteger const kDefaultSpacingBetweenDots = 10;

static BOOL const kDefaultShouldResizeFromCenter = YES;

static CGSize const kDefaultDotSize = {5, 5};

static BOOL const kDefaultHideForSinglePage = YES;


#import "TTStripPageControl.h"

@interface TTStripPageControl ()

/**
 *  Array of dot views for reusability and touch events.
 */
@property (strong, nonatomic) NSMutableArray *dots;


@property (strong, nonatomic) UIView *indicatorView;

@property (strong, nonatomic) UIView *edgeIndicatorView;

@end

@implementation TTStripPageControl

#pragma mark - Lifecycle


- (id)init
{
    self = [super init];
    if (self) {
        [self initialization];
    }
    
    return self;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialization];
    }
    return self;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialization];
    }
    
    return self;
}

- (void)initialization
{
    self.spacingBetweenDots     = kDefaultSpacingBetweenDots;
    self.numberOfPages          = kDefaultNumberOfPages;
    self.currentPage            = kDefaultCurrentPage;
    self.hidesForSinglePage     = kDefaultHideForSinglePage;
    self.shouldResizeFromCenter = kDefaultShouldResizeFromCenter;
    
    self.clipsToBounds = YES;
    
}

#pragma mark - Layout


/**
 *  Resizes and moves the receiver view so it just encloses its subviews.
 */
- (void)sizeToFit
{
    [self updateFrame:YES];
}

- (void)updateFrame:(BOOL)overrideExistingFrame
{
    CGPoint center = self.center;
    CGSize requiredSize = [self sizeForNumberOfPages:self.numberOfPages];
    
    // We apply requiredSize only if authorize to and necessary
    if (overrideExistingFrame || ((CGRectGetWidth(self.frame) < requiredSize.width || CGRectGetHeight(self.frame) < requiredSize.height) && !overrideExistingFrame)) {
        self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), requiredSize.width, requiredSize.height);
        if (self.shouldResizeFromCenter) {
            self.center = center;
        }
    }
    
    [self resetDotViews];
}

- (CGSize)sizeForNumberOfPages:(NSInteger)pageCount
{
    return CGSizeMake((self.dotSize.width + self.spacingBetweenDots) * (pageCount+1) - self.spacingBetweenDots , self.dotSize.height);
}

/**
 *  Will update dots display and frame. Reuse existing views or instantiate one if required. Update their position in case frame changed.
 */
- (void)updateDots
{
    if (self.numberOfPages == 0) {
        return;
    }
    
    for (NSInteger i = 0; i <= self.numberOfPages; i++) {
        
        UIView *dot;
        if (i < self.dots.count) {
            dot = [self.dots objectAtIndex:i];
        } else {
            dot = [self generateDotView];
        }
        
        [self updateDotFrame:dot atIndex:i];
    }
    
    [self changeIndicatorViewLayout:self.currentPage];
    [self hideForSinglePage];
}

/**
 *  Update the frame of a specific dot at a specific index
 *
 *  @param dot   Dot view
 *  @param index Page index of dot
 */
- (void)updateDotFrame:(UIView *)dot atIndex:(NSInteger)index
{
    // Dots are always centered within view
    CGFloat x = (self.dotSize.width + self.spacingBetweenDots) * index + ( (CGRectGetWidth(self.frame) - [self sizeForNumberOfPages:self.numberOfPages].width) / 2);

    CGFloat y = (CGRectGetHeight(self.frame) - self.dotSize.height) / 2;
    
    dot.frame = CGRectMake(x, y, self.dotSize.width, self.dotSize.height);
}


- (void)changeIndicatorViewLayout:(CGFloat)page
{
    [self bringSubviewToFront:self.indicatorView];
    [self bringSubviewToFront:self.edgeIndicatorView];
    
    if (page>self.numberOfPages-1) {
        
        CGFloat edge = page - self.numberOfPages+1;

        self.edgeIndicatorView.frame = CGRectMake(-_edgeIndicatorView.width+edge*_edgeIndicatorView.width, 0, _edgeIndicatorView.width, _edgeIndicatorView.height);
    }
    else{
        self.edgeIndicatorView.frame = CGRectMake((self.dotSize.width+self.spacingBetweenDots)*page, 0, _edgeIndicatorView.width, _edgeIndicatorView.height);
    }
    
    NSInteger pageIndex = floor(page);
    if (pageIndex == self.numberOfPages-1) {
        CGFloat offsetX = (self.dotSize.width+self.spacingBetweenDots)*pageIndex + (_indicatorView.width)*(page-pageIndex);
        self.indicatorView.frame = CGRectMake(offsetX, 0, _indicatorView.width, _indicatorView.height);
    }
    else{
        self.indicatorView.frame = CGRectMake((self.dotSize.width+self.spacingBetweenDots)*page, 0, _indicatorView.width, _indicatorView.height);
    }

}

- (void)resetDotViews
{
    for (UIView *dotView in self.dots) {
        [dotView removeFromSuperview];
    }
    
    [self.dots removeAllObjects];
    [self updateDots];
}

/**
 *  Generate a dot view and add it to the collection
 *
 *  @return The UIView object representing a dot
 */
- (UIView *)generateDotView
{
    UIView *dotView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.dotSize.width, self.dotSize.height)];
    dotView.backgroundColor = self.dotColor;
    dotView.layer.cornerRadius = self.dotSize.width*0.5;
    dotView.clipsToBounds = YES;
    
    if (dotView) {
        [self addSubview:dotView];
        [self.dots addObject:dotView];
    }
    
    dotView.userInteractionEnabled = YES;
    return dotView;
}



- (void)hideForSinglePage
{
    if (self.dots.count == 1 && self.hidesForSinglePage) {
        self.hidden = YES;
    } else {
        self.hidden = NO;
    }
}

#pragma mark -- Setter && Getter
- (void)setNumberOfPages:(NSInteger)numberOfPages
{
    _numberOfPages = numberOfPages;
    
    // Update dot position to fit new number of pages
    [self resetDotViews];
}


- (void)setSpacingBetweenDots:(NSInteger)spacingBetweenDots
{
    _spacingBetweenDots = spacingBetweenDots;
    
    [self resetDotViews];
}


- (void)setCurrentPage:(CGFloat)currentPage
{
    // If no pages, no current page to treat.
    if (self.numberOfPages == 0 || currentPage == _currentPage) {
        _currentPage = currentPage;
        return;
    }
 
    _currentPage = currentPage;

    [self changeIndicatorViewLayout:currentPage];
}

- (UIView *)indicatorView
{
    if (!_indicatorView) {
        _indicatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.spacingBetweenDots+self.dotSize.width*2, self.dotSize.height)];
        _indicatorView.backgroundColor = [UIColor whiteColor];
        _indicatorView.layer.cornerRadius = self.dotSize.width*0.5;
        _indicatorView.clipsToBounds = YES;
        [self addSubview:_indicatorView];
    }
    
    return _indicatorView;
}

- (UIView *)edgeIndicatorView
{
    if (!_edgeIndicatorView) {
        _edgeIndicatorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.spacingBetweenDots+self.dotSize.width*2, self.dotSize.height)];
        _edgeIndicatorView.backgroundColor = [UIColor whiteColor];
        _edgeIndicatorView.layer.cornerRadius = self.dotSize.width*0.5;
        _edgeIndicatorView.clipsToBounds = YES;
        [self addSubview:_edgeIndicatorView];
    }
    
    return _edgeIndicatorView;
}

- (NSMutableArray *)dots
{
    if (!_dots) {
        _dots = [[NSMutableArray alloc] init];
    }
    
    return _dots;
}

- (CGSize)dotSize
{
    if (CGSizeEqualToSize(_dotSize, CGSizeZero)) {
        _dotSize = kDefaultDotSize;
    }
    
    return _dotSize;
}

@end
