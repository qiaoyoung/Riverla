// __DEBUG__
// __CLOSE_PRINT__
//
//  UserControl.m
//  UserControl
//
//  Created by Tanguy Aladenise on 2015-01-21.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAPageControl.h"
#import "UserControl.h"
//: #import "TAAbstractDotView.h"
#import "FitView.h"
//: #import "TAAnimatedDotView.h"
#import "ActionDotView.h"
//: #import "TADotView.h"
#import "MessageDotView.h"

/**
 *  Default number of pages for initialization
 */
//: static NSInteger const kDefaultNumberOfPages = 0;
static NSInteger const kLet_calendarData = 0;

/**
 *  Default current page for initialization
 */
//: static NSInteger const kDefaultCurrentPage = 0;
static NSInteger const kLet_memberTitle = 0;

/**
 *  Default setting for hide for single page feature. For initialization
 */
//: static BOOL const kDefaultHideForSinglePage = NO;
static BOOL const kLet_pathNameData = NO;

/**
 *  Default setting for shouldResizeFromCenter. For initialiation
 */
//: static BOOL const kDefaultShouldResizeFromCenter = YES;
static BOOL const kLet_fileName = YES;

/**
 *  Default spacing between dots
 */
//: static NSInteger const kDefaultSpacingBetweenDots = 8;
static NSInteger const kLet_sheetValue = 8;

/**
 *  Default dot size
 */
//: static CGSize const kDefaultDotSize = {8, 8};
static CGSize const kLet_bottomBeforeData = {8, 8};


//: @interface TAPageControl()
@interface UserControl()


/**
 *  Array of dot views for reusability and touch events.
 */
//: @property (strong, nonatomic) NSMutableArray *dots;
@property (strong, nonatomic) NSMutableArray *dots;


//: @end
@end

//: @implementation TAPageControl
@implementation UserControl


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
        [self upward];
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
        [self upward];
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
        [self upward];
    }

    //: return self;
    return self;
}


/**
 *  Default setup when initiating control
 */
//: - (void)initialization
- (void)upward
{
    //: self.dotViewClass = [TAAnimatedDotView class];
    self.dotViewClass = [ActionDotView class];
    //: self.spacingBetweenDots = kDefaultSpacingBetweenDots;
    self.spacingBetweenDots = kLet_sheetValue;
    //: self.numberOfPages = kDefaultNumberOfPages;
    self.numberOfPages = kLet_calendarData;
    //: self.currentPage = kDefaultCurrentPage;
    self.currentPage = kLet_memberTitle;
    //: self.hidesForSinglePage = kDefaultHideForSinglePage;
    self.hidesForSinglePage = kLet_pathNameData;
    //: self.shouldResizeFromCenter = kDefaultShouldResizeFromCenter;
    self.shouldResizeFromCenter = kLet_fileName;
}


//: #pragma mark - Touch event
#pragma mark - Touch event

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: UITouch *touch = [touches anyObject];
    UITouch *touch = [touches anyObject];
    //: if (touch.view != self) {
    if (touch.view != self) {
        //: NSInteger index = [self.dots indexOfObject:touch.view];
        NSInteger index = [self.dots indexOfObject:touch.view];
        //: if ([self.delegate respondsToSelector:@selector(TAPageControl:didSelectPageAtIndex:)]) {
        if ([self.delegate respondsToSelector:@selector(index:color:)]) {
            //: [self.delegate TAPageControl:self didSelectPageAtIndex:index];
            [self.delegate index:self color:index];
        }
    }
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
    [self restore:YES];
}


//: - (CGSize)sizeForNumberOfPages:(NSInteger)pageCount
- (CGSize)voiceReload:(NSInteger)pageCount
{
    //: return CGSizeMake((self.dotSize.width + self.spacingBetweenDots) * pageCount - self.spacingBetweenDots , self.dotSize.height);
    return CGSizeMake((self.dotSize.width + self.spacingBetweenDots) * pageCount - self.spacingBetweenDots , self.dotSize.height);
}


/**
 *  Will update dots display and frame. Reuse existing views or instantiate one if required. Update their position in case frame changed.
 */
//: - (void)updateDots
- (void)harden
{
    //: if (self.numberOfPages == 0) {
    if (self.numberOfPages == 0) {
        //: return;
        return;
    }

    //: for (NSInteger i = 0; i < self.numberOfPages; i++) {
    for (NSInteger i = 0; i < self.numberOfPages; i++) {

        //: UIView *dot;
        UIView *dot;
        //: if (i < self.dots.count) {
        if (i < self.dots.count) {
            //: dot = [self.dots objectAtIndex:i];
            dot = [self.dots objectAtIndex:i];
        //: } else {
        } else {
            //: dot = [self generateDotView];
            dot = [self disc];
        }

        //: [self updateDotFrame:dot atIndex:i];
        [self dismissView:dot changeFramework:i];
    }

    //: [self changeActivity:YES atIndex:self.currentPage];
    [self day:YES path:self.currentPage];

    //: [self hideForSinglePage];
    [self performance];
}


/**
 *  Update frame control to fit current number of pages. It will apply required size if authorize and required.
 *
 *  @param overrideExistingFrame BOOL to allow frame to be overriden. Meaning the required size will be apply no mattter what.
 */
//: - (void)updateFrame:(BOOL)overrideExistingFrame
- (void)restore:(BOOL)overrideExistingFrame
{
    //: CGPoint center = self.center;
    CGPoint center = self.center;
    //: CGSize requiredSize = [self sizeForNumberOfPages:self.numberOfPages];
    CGSize requiredSize = [self voiceReload:self.numberOfPages];

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
    [self visage];
}


/**
 *  Update the frame of a specific dot at a specific index
 *
 *  @param dot   Dot view
 *  @param index Page index of dot
 */
//: - (void)updateDotFrame:(UIView *)dot atIndex:(NSInteger)index
- (void)dismissView:(UIView *)dot changeFramework:(NSInteger)index
{
    // Dots are always centered within view
    //: CGFloat x = (self.dotSize.width + self.spacingBetweenDots) * index + ( (CGRectGetWidth(self.frame) - [self sizeForNumberOfPages:self.numberOfPages].width) / 2);
    CGFloat x = (self.dotSize.width + self.spacingBetweenDots) * index + ( (CGRectGetWidth(self.frame) - [self voiceReload:self.numberOfPages].width) / 2);
    //: CGFloat y = (CGRectGetHeight(self.frame) - self.dotSize.height) / 2;
    CGFloat y = (CGRectGetHeight(self.frame) - self.dotSize.height) / 2;

    //: dot.frame = CGRectMake(x, y, self.dotSize.width, self.dotSize.height);
    dot.frame = CGRectMake(x, y, self.dotSize.width, self.dotSize.height);
}


//: #pragma mark - Utils
#pragma mark - Utils


/**
 *  Generate a dot view and add it to the collection
 *
 *  @return The UIView object representing a dot
 */
//: - (UIView *)generateDotView
- (UIView *)disc
{
    //: UIView *dotView;
    UIView *dotView;

    //: if (self.dotViewClass) {
    if (self.dotViewClass) {
        //: dotView = [[self.dotViewClass alloc] initWithFrame:CGRectMake(0, 0, self.dotSize.width, self.dotSize.height)];
        dotView = [[self.dotViewClass alloc] initWithFrame:CGRectMake(0, 0, self.dotSize.width, self.dotSize.height)];
        //: if ([dotView isKindOfClass:[TAAnimatedDotView class]] && self.dotColor) {
        if ([dotView isKindOfClass:[ActionDotView class]] && self.dotColor) {
            //: ((TAAnimatedDotView *)dotView).dotColor = self.dotColor;
            ((ActionDotView *)dotView).dotColor = self.dotColor;
        }
    //: } else {
    } else {
        //: dotView = [[UIImageView alloc] initWithImage:self.dotImage];
        dotView = [[UIImageView alloc] initWithImage:self.dotImage];
        //: dotView.frame = CGRectMake(0, 0, self.dotSize.width, self.dotSize.height);
        dotView.frame = CGRectMake(0, 0, self.dotSize.width, self.dotSize.height);
    }

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


/**
 *  Change activity state of a dot view. Current/not currrent.
 *
 *  @param active Active state to apply
 *  @param index  Index of dot for state update
 */
//: - (void)changeActivity:(BOOL)active atIndex:(NSInteger)index
- (void)day:(BOOL)active path:(NSInteger)index
{
    //: if (self.dotViewClass) {
    if (self.dotViewClass) {
        //: TAAbstractDotView *abstractDotView = (TAAbstractDotView *)[self.dots objectAtIndex:index];
        FitView *abstractDotView = (FitView *)[self.dots objectAtIndex:index];
        //: if ([abstractDotView respondsToSelector:@selector(changeActivityState:)]) {
        if ([abstractDotView respondsToSelector:@selector(developments:)]) {
            //: [abstractDotView changeActivityState:active];
            [abstractDotView developments:active];
        //: } else {
        } else {
            //: NSLog(@"Custom view : %@ must implement an 'changeActivityState' method or you can subclass %@ to help you.", self.dotViewClass, [TAAbstractDotView class]);
        }
    //: } else if (self.dotImage && self.currentDotImage) {
    } else if (self.dotImage && self.currentDotImage) {
        //: UIImageView *dotView = (UIImageView *)[self.dots objectAtIndex:index];
        UIImageView *dotView = (UIImageView *)[self.dots objectAtIndex:index];
        //: dotView.image = (active) ? self.currentDotImage : self.dotImage;
        dotView.image = (active) ? self.currentDotImage : self.dotImage;
    }
}


//: - (void)resetDotViews
- (void)visage
{
    //: for (UIView *dotView in self.dots) {
    for (UIView *dotView in self.dots) {
        //: [dotView removeFromSuperview];
        [dotView removeFromSuperview];
    }

    //: [self.dots removeAllObjects];
    [self.dots removeAllObjects];
    //: [self updateDots];
    [self harden];
}


//: - (void)hideForSinglePage
- (void)performance
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

//: #pragma mark - Setters
#pragma mark - Setters


//: - (void)setNumberOfPages:(NSInteger)numberOfPages
- (void)setNumberOfPages:(NSInteger)numberOfPages
{
    //: _numberOfPages = numberOfPages;
    _numberOfPages = numberOfPages;

    // Update dot position to fit new number of pages
    //: [self resetDotViews];
    [self visage];
}


//: - (void)setSpacingBetweenDots:(NSInteger)spacingBetweenDots
- (void)setSpacingBetweenDots:(NSInteger)spacingBetweenDots
{
    //: _spacingBetweenDots = spacingBetweenDots;
    _spacingBetweenDots = spacingBetweenDots;

    //: [self resetDotViews];
    [self visage];
}


//: - (void)setCurrentPage:(NSInteger)currentPage
- (void)setCurrentPage:(NSInteger)currentPage
{
    // If no pages, no current page to treat.
    //: if (self.numberOfPages == 0 || currentPage == _currentPage) {
    if (self.numberOfPages == 0 || currentPage == _currentPage) {
        //: _currentPage = currentPage;
        _currentPage = currentPage;
        //: return;
        return;
    }

    // Pre set
    //: [self changeActivity:NO atIndex:_currentPage];
    [self day:NO path:_currentPage];
    //: _currentPage = currentPage;
    _currentPage = currentPage;
    // Post set
    //: [self changeActivity:YES atIndex:_currentPage];
    [self day:YES path:_currentPage];
}


//: - (void)setDotImage:(UIImage *)dotImage
- (void)setDotImage:(UIImage *)dotImage
{
    //: _dotImage = dotImage;
    _dotImage = dotImage;
    //: [self resetDotViews];
    [self visage];
    //: self.dotViewClass = nil;
    self.dotViewClass = nil;
}


//: - (void)setCurrentDotImage:(UIImage *)currentDotimage
- (void)setCurrentDotImage:(UIImage *)currentDotimage
{
    //: _currentDotImage = currentDotimage;
    _currentDotImage = currentDotimage;
    //: [self resetDotViews];
    [self visage];
    //: self.dotViewClass = nil;
    self.dotViewClass = nil;
}


//: - (void)setDotViewClass:(Class)dotViewClass
- (void)setDotViewClass:(Class)dotViewClass
{
    //: _dotViewClass = dotViewClass;
    _dotViewClass = dotViewClass;
    //: self.dotSize = CGSizeZero;
    self.dotSize = CGSizeZero;
    //: [self resetDotViews];
    [self visage];
}


//: #pragma mark - Getters
#pragma mark - Getters


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
    // Dot size logic depending on the source of the dot view
    //: if (self.dotImage && __CGSizeEqualToSize(_dotSize, CGSizeZero)) {
    if (self.dotImage && __CGSizeEqualToSize(_dotSize, CGSizeZero)) {
        //: _dotSize = self.dotImage.size;
        _dotSize = self.dotImage.size;
    //: } else if (self.dotViewClass && __CGSizeEqualToSize(_dotSize, CGSizeZero)) {
    } else if (self.dotViewClass && __CGSizeEqualToSize(_dotSize, CGSizeZero)) {
        //: _dotSize = kDefaultDotSize;
        _dotSize = kLet_bottomBeforeData;
        //: return _dotSize;
        return _dotSize;
    }

    //: return _dotSize;
    return _dotSize;
}

//: @end
@end