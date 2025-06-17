// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryedView.m
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESPageView.h"
#import "QueryedView.h"

//: @interface NTESPageScrollView : UIScrollView
@interface ThanView : UIScrollView

//: @end
@end

//: @interface NTESPageView ()
@interface QueryedView ()
{
    //: NSInteger _currentPage;
    NSInteger _currentPage;
    //: NSInteger _currentPageForRotation;
    NSInteger _currentPageForRotation;
}

//: @property (nonatomic,strong) NSMutableArray *pages;
@property (nonatomic,strong) NSMutableArray *pages;

//: - (void)setupControls;
- (void)towardShow;

//重新载入的流程
//: - (void)calculatePageNumbers;
- (void)enablegoing;
//: - (void)reloadPage;
- (void)beggarMyNeighborPolicy;
//: - (void)raisePageIndexChangedDelegate;
- (void)heading;
//: @end
@end

//: @implementation NTESPageView
@implementation QueryedView

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: [self setupControls];
        [self towardShow];
    }
    //: return self;
    return self;
}

//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: if (self = [super initWithCoder:aDecoder])
    if (self = [super initWithCoder:aDecoder])
    {
        //: [self setupControls];
        [self towardShow];
    }
    //: return self;
    return self;
}

//: - (void)setFrame:(CGRect)frame{
- (void)setFrame:(CGRect)frame{
    //: CGFloat originalWidth = self.frame.size.width;
    CGFloat originalWidth = self.frame.size.width;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (originalWidth != frame.size.width) {
    if (originalWidth != frame.size.width) {
        //: [self reloadData];
        [self modify];
    }
}

//: - (void)dealloc
- (void)dealloc
{
    //: _scrollView.delegate = nil;
    _scrollView.delegate = nil;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [_scrollView setFrame:self.bounds];
    [_scrollView setFrame:self.bounds];

    //: CGSize size = self.bounds.size;
    CGSize size = self.bounds.size;
    //: [self.scrollView setContentSize:CGSizeMake(size.width * [self.pages count], size.height)];
    [self.scrollView setContentSize:CGSizeMake(size.width * [self.pages count], size.height)];
    //: for (NSInteger i = 0; i < [self.pages count]; i++)
    for (NSInteger i = 0; i < [self.pages count]; i++)
    {
        //: id obj = [self.pages objectAtIndex:i];
        id obj = [self.pages objectAtIndex:i];
        //: if ([obj isKindOfClass:[UIView class]])
        if ([obj isKindOfClass:[UIView class]])
        {
            //: [(UIView *)obj setFrame:CGRectMake(size.width * i, 0, size.width, size.height)];
            [(UIView *)obj setFrame:CGRectMake(size.width * i, 0, size.width, size.height)];
        }
    }

    //CGSize size = self.bounds.size;
    //: BOOL animation = NO;
    BOOL animation = NO;
    //: if (self.pageViewDelegate && [self.pageViewDelegate respondsToSelector:@selector(needScrollAnimation)])
    if (self.pageViewDelegate && [self.pageViewDelegate respondsToSelector:@selector(deviceAnd)])
    {
        //: animation = [self.pageViewDelegate needScrollAnimation];
        animation = [self.pageViewDelegate deviceAnd];
    }
    //: [self.scrollView scrollRectToVisible:CGRectMake(_currentPage * size.width, 0, size.width, size.height)
    [self.scrollView scrollRectToVisible:CGRectMake(_currentPage * size.width, 0, size.width, size.height)
                                //: animated:animation];
                                animated:animation];

}

//: - (void)setupControls
- (void)towardShow
{
    //: if (_scrollView == nil)
    if (_scrollView == nil)
    {
        //: _scrollView = [[NTESPageScrollView alloc]initWithFrame:self.bounds];
        _scrollView = [[ThanView alloc]initWithFrame:self.bounds];
        //: _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: [self addSubview:_scrollView];
        [self addSubview:_scrollView];
        //: _scrollView.pagingEnabled = YES;
        _scrollView.pagingEnabled = YES;
        //: _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        //: _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        //: _scrollView.delegate = self;
        _scrollView.delegate = self;
        //: _scrollView.scrollsToTop = NO;
        _scrollView.scrollsToTop = NO;
    }
}

//: #pragma mark - 对外接口
#pragma mark - 对外接口
//: - (void)scrollToPage: (NSInteger)page
- (void)color: (NSInteger)page
{
    //: if (_currentPage != page || page == 0)
    if (_currentPage != page || page == 0)
    {
        //: _currentPage = page;
        _currentPage = page;
        //: [self reloadData];
        [self modify];
    }

}

//: - (void)reloadData
- (void)modify
{
    //: [self calculatePageNumbers];
    [self enablegoing];
    //: [self reloadPage];
    [self beggarMyNeighborPolicy];
}

//: - (UIView *)viewAtIndex: (NSInteger)index
- (UIView *)infoOpen: (NSInteger)index
{
    //: UIView *view = nil;
    UIView *view = nil;
    //: if (index >= 0 && index < [_pages count])
    if (index >= 0 && index < [_pages count])
    {
        //: id obj = [_pages objectAtIndex:index];
        id obj = [_pages objectAtIndex:index];
        //: if ([obj isKindOfClass:[UIView class]])
        if ([obj isKindOfClass:[UIView class]])
        {
            //: view = obj;
            view = obj;
        }
    }
    //: return view;
    return view;
}

//: - (NSInteger)currentPage
- (NSInteger)eigenvalueOfAMatrix
{
    //: return _currentPage;
    return _currentPage;
}

//: - (NSInteger)pageInBound:(NSInteger)value min:(NSInteger)min max:(NSInteger)max{
- (NSInteger)key:(NSInteger)value view:(NSInteger)min image:(NSInteger)max{
    //: if (max < min) {
    if (max < min) {
        //: max = min;
        max = min;
    }
    //: NSInteger bounded = value;
    NSInteger bounded = value;
    //: if (bounded > max) {
    if (bounded > max) {
        //: bounded = max;
        bounded = max;
    }
    //: if (bounded < min) {
    if (bounded < min) {
        //: bounded = min;
        bounded = min;
    }
    //: return bounded;
    return bounded;
}

//: #pragma mark - Page载入和销毁
#pragma mark - Page载入和销毁
//: - (void)loadPagesForCurrentPage:(NSInteger)currentPage
- (void)sum:(NSInteger)currentPage
{
    //: NSUInteger count = [_pages count];
    NSUInteger count = [_pages count];
    //: if (count == 0)
    if (count == 0)
    {
        //: return;
        return;
    }
    //: NSInteger first = [self pageInBound:currentPage - 1 min:0 max:count - 1];
    NSInteger first = [self key:currentPage - 1 view:0 image:count - 1];
    //: NSInteger last = [self pageInBound:currentPage + 1 min:0 max:count - 1];
    NSInteger last = [self key:currentPage + 1 view:0 image:count - 1];
    //: NSRange range = NSMakeRange(first, last - first + 1);
    NSRange range = NSMakeRange(first, last - first + 1);

    //: for (NSUInteger index = 0; index < count; index++)
    for (NSUInteger index = 0; index < count; index++)
    {
        //: if (NSLocationInRange(index, range))
        if (NSLocationInRange(index, range))
        {
            //: id obj = [_pages objectAtIndex:index];
            id obj = [_pages objectAtIndex:index];
            //: if (![obj isKindOfClass:[UIView class]])
            if (![obj isKindOfClass:[UIView class]])
            {
                //: if (_dataSource && [_dataSource respondsToSelector:@selector(pageView:viewInPage:)])
                if (_dataSource && [_dataSource respondsToSelector:@selector(time:index:)])
                {
                    //: UIView *view = [_dataSource pageView:self viewInPage:index];
                    UIView *view = [_dataSource time:self index:index];
                    //: [_pages replaceObjectAtIndex:index withObject:view];
                    [_pages replaceObjectAtIndex:index withObject:view];
                    //: [self.scrollView addSubview:view];
                    [self.scrollView addSubview:view];
                    //: CGSize size = self.bounds.size;
                    CGSize size = self.bounds.size;
                    //: [view setFrame:CGRectMake(size.width * index, 0, size.width, size.height)];
                    [view setFrame:CGRectMake(size.width * index, 0, size.width, size.height)];
                }
                //: else
                else
                {
                    //: assert(0);
                    assert(0);
                }
            }

        }
        //: else
        else
        {
            //: id obj = [_pages objectAtIndex:index];
            id obj = [_pages objectAtIndex:index];
            //: if ([obj isKindOfClass:[UIView class]])
            if ([obj isKindOfClass:[UIView class]])
            {
                //: [obj removeFromSuperview];
                [obj removeFromSuperview];
                //: [_pages replaceObjectAtIndex:index withObject:[NSNull null]];
                [_pages replaceObjectAtIndex:index withObject:[NSNull null]];
            }
        }
    }
}


//: - (void)calculatePageNumbers
- (void)enablegoing
{
    //: NSInteger numberOfPages = 0;
    NSInteger numberOfPages = 0;
    //: for (id obj in _pages)
    for (id obj in _pages)
    {
        //: if ([obj isKindOfClass:[UIView class]])
        if ([obj isKindOfClass:[UIView class]])
        {
            //: [(UIView *)obj removeFromSuperview];
            [(UIView *)obj removeFromSuperview];
        }
    }
    //: if(_dataSource && [_dataSource respondsToSelector:@selector(numberOfPages:)])
    if(_dataSource && [_dataSource respondsToSelector:@selector(teammed:)])
    {
        //: numberOfPages = [_dataSource numberOfPages:self];
        numberOfPages = [_dataSource teammed:self];
    }
    //: self.pages = [NSMutableArray arrayWithCapacity:numberOfPages];
    self.pages = [NSMutableArray arrayWithCapacity:numberOfPages];
    //: for (NSInteger i = 0; i < numberOfPages; i ++)
    for (NSInteger i = 0; i < numberOfPages; i ++)
    {
        //: [_pages addObject:[NSNull null]];
        [_pages addObject:[NSNull null]];
    }
    //注意，这里设置delegate是因为计算contentsize的时候会引起scrollViewDidScroll执行，修改currentpage的值，这样在贴图（举个例子）前面的分类页数比后面的分类页数多，前面的分类滚动到最后面一页后，再显示后面的分类，会显示不正确
    //: self.scrollView.delegate = nil;
    self.scrollView.delegate = nil;
    //: CGSize size = self.bounds.size;
    CGSize size = self.bounds.size;
    //: [self.scrollView setContentSize:CGSizeMake(size.width * numberOfPages, size.height)];
    [self.scrollView setContentSize:CGSizeMake(size.width * numberOfPages, size.height)];
    //: self.scrollView.delegate = self;
    self.scrollView.delegate = self;
}

//: - (void)reloadPage
- (void)beggarMyNeighborPolicy
{
    //reload的时候尽量记住上次的位置
    //: if (_currentPage >= [_pages count])
    if (_currentPage >= [_pages count])
    {
        //: _currentPage = [_pages count] - 1;
        _currentPage = [_pages count] - 1;
    }
    //: if (_currentPage < 0)
    if (_currentPage < 0)
    {
        //: _currentPage = 0;
        _currentPage = 0;
    }

    //: [self loadPagesForCurrentPage:_currentPage];
    [self sum:_currentPage];
    //: [self raisePageIndexChangedDelegate];
    [self heading];
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}


//: #pragma mark - ScrollView Delegate
#pragma mark - ScrollView Delegate
//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //: CGFloat width = scrollView.bounds.size.width;
    CGFloat width = scrollView.bounds.size.width;
    //: CGFloat offsetX = scrollView.contentOffset.x;
    CGFloat offsetX = scrollView.contentOffset.x;
    //: NSInteger page = (NSInteger)(fabs(offsetX / width));
    NSInteger page = (NSInteger)(fabs(offsetX / width));
    //: if (page >= 0 && page < [_pages count])
    if (page >= 0 && page < [_pages count])
    {
        //: if (_currentPage == page) {
        if (_currentPage == page) {
            //: return;
            return;
        }
        //: _currentPage = page;
        _currentPage = page;
        //: [self loadPagesForCurrentPage:_currentPage];
        [self sum:_currentPage];
    }

    //: if (_pageViewDelegate && [_pageViewDelegate respondsToSelector:@selector(pageViewDidScroll:)])
    if (_pageViewDelegate && [_pageViewDelegate respondsToSelector:@selector(presses:)])
    {
        //: [_pageViewDelegate pageViewDidScroll:self];
        [_pageViewDelegate presses:self];
    }
}

//: - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //: [self raisePageIndexChangedDelegate];
    [self heading];
}

//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: - (void)raisePageIndexChangedDelegate
- (void)heading
{
    //: if (_pageViewDelegate && [_pageViewDelegate respondsToSelector:@selector(pageViewScrollEnd:currentIndex:totolPages:)])
    if (_pageViewDelegate && [_pageViewDelegate respondsToSelector:@selector(chance:lightImage:date:)])
    {
        //: [_pageViewDelegate pageViewScrollEnd:self
        [_pageViewDelegate chance:self
                                //: currentIndex:_currentPage
                                lightImage:_currentPage
                                  //: totolPages:[_pages count]];
                                  date:[_pages count]];
    }
}

//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)humanArray:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration
                                performance:(NSTimeInterval)duration
{
    //: _scrollView.delegate = nil;
    _scrollView.delegate = nil;
    //: _currentPageForRotation = _currentPage;
    _currentPageForRotation = _currentPage;
}

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)off:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration
                                         view:(NSTimeInterval)duration
{
    //: CGSize size = self.bounds.size;
    CGSize size = self.bounds.size;
    //: _scrollView.contentSize = CGSizeMake(size.width * [_pages count], size.height);
    _scrollView.contentSize = CGSizeMake(size.width * [_pages count], size.height);
    //: for (NSUInteger i = 0; i < [_pages count]; i++)
    for (NSUInteger i = 0; i < [_pages count]; i++)
    {
        //: id obj = [_pages objectAtIndex:i];
        id obj = [_pages objectAtIndex:i];
        //: if ([obj isKindOfClass:[UIView class]])
        if ([obj isKindOfClass:[UIView class]])
        {
            //: [(UIView *)obj setFrame:CGRectMake(size.width * i, 0, size.width, size.height)];
            [(UIView *)obj setFrame:CGRectMake(size.width * i, 0, size.width, size.height)];

            /*
             //这里有点ugly,先这样吧...
             if ([obj respondsToSelector:@selector(reset)])
             {
             [obj performSelector:@selector(reset)];
             }*/
        }
    }
    //: _scrollView.contentOffset = CGPointMake(_currentPageForRotation * self.bounds.size.width, 0);
    _scrollView.contentOffset = CGPointMake(_currentPageForRotation * self.bounds.size.width, 0);
    //: _scrollView.delegate = self;
    _scrollView.delegate = self;

}

//: @end
@end


//: @implementation NTESPageScrollView
@implementation ThanView
//fix: swipe to delete in a UITableView which is embeded in a UIScrollView
//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer
- (BOOL)poke:(UIGestureRecognizer *)gestureRecognizer spectrum:(nonnull UIGestureRecognizer *)otherGestureRecognizer
{
    //: return [otherGestureRecognizer.view.superview isKindOfClass:[UITableView class]];
    return [otherGestureRecognizer.view.superview isKindOfClass:[UITableView class]];
}

//: @end
@end