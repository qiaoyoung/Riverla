// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyFlowLayout.m
//  LxGridView
//

// __M_A_C_R_O__
//: #import "LxGridViewFlowLayout.h"
#import "KeyFlowLayout.h"
//: #import "TZTestCell.h"
#import "FrameViewCell.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"

//: static CGFloat const PRESS_TO_MOVE_MIN_DURATION = 0.1;
static CGFloat const kLet_cellFormatValue = 0.1;
//: static CGFloat const MIN_PRESS_TO_BEGIN_EDITING_DURATION = 0.6;
static CGFloat const kLet_scaleData = 0.6;

//: static inline CGPoint CGPointOffset(CGPoint point, CGFloat dx, CGFloat dy)
static inline CGPoint CGPointOffset(CGPoint point, CGFloat dx, CGFloat dy)
{
    //: return CGPointMake(point.x + dx, point.y + dy);
    return CGPointMake(point.x + dx, point.y + dy);
}

/*
 此类来源于DeveloperLx的优秀开源项目：LxGridView
 github链接：https://github.com/DeveloperLx/LxGridView
 我对这个类的代码做了一些修改；
 感谢DeveloperLx的优秀代码~
 */

//: @interface LxGridViewFlowLayout () <UIGestureRecognizerDelegate>
@interface KeyFlowLayout () <UIGestureRecognizerDelegate>

//: @property (nonatomic,readonly) id<LxGridViewDataSource> dataSource;
@property (nonatomic,readonly) id<HeadwaterSource> dataSource;
//: @property (nonatomic,readonly) id<LxGridViewDelegateFlowLayout> delegate;
@property (nonatomic,readonly) id<StatusIndependent> delegate;

//: @end
@end

//: @implementation LxGridViewFlowLayout
@implementation KeyFlowLayout
{
    //: UILongPressGestureRecognizer * _longPressGestureRecognizer;
    UILongPressGestureRecognizer * _longPressGestureRecognizer;
    //: UIPanGestureRecognizer * _panGestureRecognizer;
    UIPanGestureRecognizer * _panGestureRecognizer;
    //: NSIndexPath * _movingItemIndexPath;
    NSIndexPath * _movingItemIndexPath;
    //: UIView * _beingMovedPromptView;
    UIView * _beingMovedPromptView;
    //: CGPoint _sourceItemCollectionViewCellCenter;
    CGPoint _sourceItemCollectionViewCellCenter;

    //: CADisplayLink * _displayLink;
    CADisplayLink * _displayLink;
    //: CFTimeInterval _remainSecondsToBeginEditing;
    CFTimeInterval _remainSecondsToBeginEditing;
}

//: #pragma mark - setup
#pragma mark - setup

//: - (void)dealloc
- (void)dealloc
{
    //: [_displayLink invalidate];
    [_displayLink invalidate];

    //: [self removeGestureRecognizers];
    [self assemblageRecognizers];
    //: [self removeObserver:self forKeyPath:@__STRING(collectionView)];
    [self removeObserver:self forKeyPath:@__STRING(collectionView)];
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: [self setup];
        [self view];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithCoder:(NSCoder *)coder
- (instancetype)initWithCoder:(NSCoder *)coder
{
    //: if (self = [super initWithCoder:coder]) {
    if (self = [super initWithCoder:coder]) {
        //: [self setup];
        [self view];
    }
    //: return self;
    return self;
}

//: - (void)setup
- (void)view
{
    //: [self addObserver:self forKeyPath:@__STRING(collectionView) options:NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:@__STRING(collectionView) options:NSKeyValueObservingOptionNew context:nil];
}

//: - (void)addGestureRecognizers
- (void)dataGround
{
    //: self.collectionView.userInteractionEnabled = YES;
    self.collectionView.userInteractionEnabled = YES;

    //: _longPressGestureRecognizer = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressGestureRecognizerTriggerd:)];
    _longPressGestureRecognizer = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(itemBy:)];
    //: _longPressGestureRecognizer.cancelsTouchesInView = NO;
    _longPressGestureRecognizer.cancelsTouchesInView = NO;
    //: _longPressGestureRecognizer.minimumPressDuration = PRESS_TO_MOVE_MIN_DURATION;
    _longPressGestureRecognizer.minimumPressDuration = kLet_cellFormatValue;
    //: _longPressGestureRecognizer.delegate = self;
    _longPressGestureRecognizer.delegate = self;

    //: for (UIGestureRecognizer * gestureRecognizer in self.collectionView.gestureRecognizers) {
    for (UIGestureRecognizer * gestureRecognizer in self.collectionView.gestureRecognizers) {
        //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
        if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
            //: [gestureRecognizer requireGestureRecognizerToFail:_longPressGestureRecognizer];
            [gestureRecognizer requireGestureRecognizerToFail:_longPressGestureRecognizer];
        }
    }

    //: [self.collectionView addGestureRecognizer:_longPressGestureRecognizer];
    [self.collectionView addGestureRecognizer:_longPressGestureRecognizer];

    //: _panGestureRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panGestureRecognizerTriggerd:)];
    _panGestureRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(bes:)];
    //: _panGestureRecognizer.delegate = self;
    _panGestureRecognizer.delegate = self;
    //: [self.collectionView addGestureRecognizer:_panGestureRecognizer];
    [self.collectionView addGestureRecognizer:_panGestureRecognizer];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResignActive:) name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(redMemberActive:) name:UIApplicationWillResignActiveNotification object:nil];
}

//: - (void)removeGestureRecognizers
- (void)assemblageRecognizers
{
    //: if (_longPressGestureRecognizer) {
    if (_longPressGestureRecognizer) {
        //: if (_longPressGestureRecognizer.view) {
        if (_longPressGestureRecognizer.view) {
            //: [_longPressGestureRecognizer.view removeGestureRecognizer:_longPressGestureRecognizer];
            [_longPressGestureRecognizer.view removeGestureRecognizer:_longPressGestureRecognizer];
        }
        //: _longPressGestureRecognizer = nil;
        _longPressGestureRecognizer = nil;
    }

    //: if (_panGestureRecognizer) {
    if (_panGestureRecognizer) {
        //: if (_panGestureRecognizer.view) {
        if (_panGestureRecognizer.view) {
            //: [_panGestureRecognizer.view removeGestureRecognizer:_panGestureRecognizer];
            [_panGestureRecognizer.view removeGestureRecognizer:_panGestureRecognizer];
        }
        //: _panGestureRecognizer = nil;
        _panGestureRecognizer = nil;
    }

    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
}

//: #pragma mark - getter and setter implementation
#pragma mark - getter and setter implementation

//: - (id<LxGridViewDataSource>)dataSource
- (id<HeadwaterSource>)dataSource
{
    //: return (id<LxGridViewDataSource>)self.collectionView.dataSource;
    return (id<HeadwaterSource>)self.collectionView.dataSource;
}

//: - (id<LxGridViewDelegateFlowLayout>)delegate
- (id<StatusIndependent>)delegate
{
    //: return (id<LxGridViewDelegateFlowLayout>)self.collectionView.delegate;
    return (id<StatusIndependent>)self.collectionView.delegate;
}

//: #pragma mark - override UICollectionViewLayout methods
#pragma mark - override UICollectionViewLayout methods

//: - (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    //: NSArray * layoutAttributesForElementsInRect = [super layoutAttributesForElementsInRect:rect];
    NSArray * layoutAttributesForElementsInRect = [super layoutAttributesForElementsInRect:rect];

    //: for (UICollectionViewLayoutAttributes * layoutAttributes in layoutAttributesForElementsInRect) {
    for (UICollectionViewLayoutAttributes * layoutAttributes in layoutAttributesForElementsInRect) {

        //: if (layoutAttributes.representedElementCategory == UICollectionElementCategoryCell) {
        if (layoutAttributes.representedElementCategory == UICollectionElementCategoryCell) {
            //: layoutAttributes.hidden = [layoutAttributes.indexPath isEqual:_movingItemIndexPath];
            layoutAttributes.hidden = [layoutAttributes.indexPath isEqual:_movingItemIndexPath];
        }
    }
    //: return layoutAttributesForElementsInRect;
    return layoutAttributesForElementsInRect;
}

//: - (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: UICollectionViewLayoutAttributes * layoutAttributes = [super layoutAttributesForItemAtIndexPath:indexPath];
    UICollectionViewLayoutAttributes * layoutAttributes = [super layoutAttributesForItemAtIndexPath:indexPath];
    //: if (layoutAttributes.representedElementCategory == UICollectionElementCategoryCell) {
    if (layoutAttributes.representedElementCategory == UICollectionElementCategoryCell) {
        //: layoutAttributes.hidden = [layoutAttributes.indexPath isEqual:_movingItemIndexPath];
        layoutAttributes.hidden = [layoutAttributes.indexPath isEqual:_movingItemIndexPath];
    }
    //: return layoutAttributes;
    return layoutAttributes;
}

//: #pragma mark - gesture
#pragma mark - gesture

//: - (void)setPanGestureRecognizerEnable:(BOOL)panGestureRecognizerEnable
- (void)setPanGestureRecognizerEnable:(BOOL)panGestureRecognizerEnable
{
    //: _panGestureRecognizer.enabled = panGestureRecognizerEnable;
    _panGestureRecognizer.enabled = panGestureRecognizerEnable;
}

//: - (BOOL)panGestureRecognizerEnable
- (BOOL)panGestureRecognizerEnable
{
    //: return _panGestureRecognizer.enabled;
    return _panGestureRecognizer.enabled;
}

//: - (void)longPressGestureRecognizerTriggerd:(UILongPressGestureRecognizer *)longPress
- (void)itemBy:(UILongPressGestureRecognizer *)longPress
{
    //: switch (longPress.state) {
    switch (longPress.state) {
        //: case UIGestureRecognizerStatePossible:
        case UIGestureRecognizerStatePossible:
            //: break;
            break;
        //: case UIGestureRecognizerStateBegan:
        case UIGestureRecognizerStateBegan:
        {
            //: if (_displayLink == nil) {
            if (_displayLink == nil) {
                //: _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayLinkTriggered:)];
                _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(linking:)];
                //: _displayLink.frameInterval = 6;
                _displayLink.frameInterval = 6;
                //: [_displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
                [_displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];

                //: _remainSecondsToBeginEditing = MIN_PRESS_TO_BEGIN_EDITING_DURATION;
                _remainSecondsToBeginEditing = kLet_scaleData;
            }

            //: _movingItemIndexPath = [self.collectionView indexPathForItemAtPoint:[longPress locationInView:self.collectionView]];
            _movingItemIndexPath = [self.collectionView indexPathForItemAtPoint:[longPress locationInView:self.collectionView]];
            //: if ([self.dataSource respondsToSelector:@selector(collectionView:canMoveItemAtIndexPath:)] && [self.dataSource collectionView:self.collectionView canMoveItemAtIndexPath:_movingItemIndexPath] == NO) {
            if ([self.dataSource respondsToSelector:@selector(collectionView:canMoveItemAtIndexPath:)] && [self.dataSource collectionView:self.collectionView canMoveItemAtIndexPath:_movingItemIndexPath] == NO) {
                //: _movingItemIndexPath = nil;
                _movingItemIndexPath = nil;
                //: return;
                return;
            }

            //: if ([self.delegate respondsToSelector:@selector(collectionView:layout:willBeginDraggingItemAtIndexPath:)]) {
            if ([self.delegate respondsToSelector:@selector(should:quick:parent:)]) {
                //: [self.delegate collectionView:self.collectionView layout:self willBeginDraggingItemAtIndexPath:_movingItemIndexPath];
                [self.delegate should:self.collectionView quick:self parent:_movingItemIndexPath];
            }

            //: UICollectionViewCell *sourceCollectionViewCell = [self.collectionView cellForItemAtIndexPath:_movingItemIndexPath];
            UICollectionViewCell *sourceCollectionViewCell = [self.collectionView cellForItemAtIndexPath:_movingItemIndexPath];
            //: TZTestCell *sourceCell = (TZTestCell *)sourceCollectionViewCell;
            FrameViewCell *sourceCell = (FrameViewCell *)sourceCollectionViewCell;

            //: _beingMovedPromptView = [[UIView alloc]initWithFrame:CGRectOffset(sourceCollectionViewCell.frame, -10, -10)];
            _beingMovedPromptView = [[UIView alloc]initWithFrame:CGRectOffset(sourceCollectionViewCell.frame, -10, -10)];
            //: _beingMovedPromptView.tz_width += 20;
            _beingMovedPromptView.tz_width += 20;
            //: _beingMovedPromptView.tz_height += 20;
            _beingMovedPromptView.tz_height += 20;

            //: sourceCollectionViewCell.highlighted = YES;
            sourceCollectionViewCell.highlighted = YES;
            //: UIView * highlightedSnapshotView = [sourceCell snapshotView];
            UIView * highlightedSnapshotView = [sourceCell snapshot];
            //: highlightedSnapshotView.frame = _beingMovedPromptView.bounds;
            highlightedSnapshotView.frame = _beingMovedPromptView.bounds;
            //: highlightedSnapshotView.alpha = 1;
            highlightedSnapshotView.alpha = 1;

            //: sourceCollectionViewCell.highlighted = NO;
            sourceCollectionViewCell.highlighted = NO;
            //: UIView * snapshotView = [sourceCell snapshotView];
            UIView * snapshotView = [sourceCell snapshot];
            //: snapshotView.frame = _beingMovedPromptView.bounds;
            snapshotView.frame = _beingMovedPromptView.bounds;
            //: snapshotView.alpha = 0;
            snapshotView.alpha = 0;

            //: [_beingMovedPromptView addSubview:snapshotView];
            [_beingMovedPromptView addSubview:snapshotView];
            //: [_beingMovedPromptView addSubview:highlightedSnapshotView];
            [_beingMovedPromptView addSubview:highlightedSnapshotView];
            //: [self.collectionView addSubview:_beingMovedPromptView];
            [self.collectionView addSubview:_beingMovedPromptView];

             //: _sourceItemCollectionViewCellCenter = sourceCollectionViewCell.center;
             _sourceItemCollectionViewCellCenter = sourceCollectionViewCell.center;

            //: typeof(self) __weak weakSelf = self;
            typeof(self) __weak weakSelf = self;
            //: [UIView animateWithDuration:0
            [UIView animateWithDuration:0
                                  //: delay:0
                                  delay:0
                                //: options:UIViewAnimationOptionBeginFromCurrentState
                                options:UIViewAnimationOptionBeginFromCurrentState
                             //: animations:^{
                             animations:^{

                                 //: typeof(self) __strong strongSelf = weakSelf;
                                 typeof(self) __strong strongSelf = weakSelf;
                                 //: if (strongSelf) {
                                 if (strongSelf) {
                                     //: highlightedSnapshotView.alpha = 0;
                                     highlightedSnapshotView.alpha = 0;
                                     //: snapshotView.alpha = 1;
                                     snapshotView.alpha = 1;
                                 }
                             }
                             //: completion:^(BOOL finished) {
                             completion:^(BOOL finished) {

                                 //: typeof(self) __strong strongSelf = weakSelf;
                                 typeof(self) __strong strongSelf = weakSelf;
                                 //: if (strongSelf) {
                                 if (strongSelf) {
                                     //: [highlightedSnapshotView removeFromSuperview];
                                     [highlightedSnapshotView removeFromSuperview];

                                     //: if ([strongSelf.delegate respondsToSelector:@selector(collectionView:layout:didBeginDraggingItemAtIndexPath:)]) {
                                     if ([strongSelf.delegate respondsToSelector:@selector(cell:background:manageressPath:)]) {
                                         //: [strongSelf.delegate collectionView:strongSelf.collectionView layout:strongSelf didBeginDraggingItemAtIndexPath:self->_movingItemIndexPath];
                                         [strongSelf.delegate cell:strongSelf.collectionView background:strongSelf manageressPath:self->_movingItemIndexPath];
                                     }
                                 }
                             //: }];
                             }];

            //: [self invalidateLayout];
            [self invalidateLayout];
        }
            //: break;
            break;
        //: case UIGestureRecognizerStateChanged:
        case UIGestureRecognizerStateChanged:
            //: break;
            break;
        //: case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateEnded:
        //: case UIGestureRecognizerStateCancelled:
        case UIGestureRecognizerStateCancelled:
        {
            //: [_displayLink invalidate];
            [_displayLink invalidate];
            //: _displayLink = nil;
            _displayLink = nil;

            //: NSIndexPath * movingItemIndexPath = _movingItemIndexPath;
            NSIndexPath * movingItemIndexPath = _movingItemIndexPath;

            //: if (movingItemIndexPath) {
            if (movingItemIndexPath) {
                //: if ([self.delegate respondsToSelector:@selector(collectionView:layout:willEndDraggingItemAtIndexPath:)]) {
                if ([self.delegate respondsToSelector:@selector(begin:languageOf:soundPath:)]) {
                    //: [self.delegate collectionView:self.collectionView layout:self willEndDraggingItemAtIndexPath:movingItemIndexPath];
                    [self.delegate begin:self.collectionView languageOf:self soundPath:movingItemIndexPath];
                }

                //: _movingItemIndexPath = nil;
                _movingItemIndexPath = nil;
                //: _sourceItemCollectionViewCellCenter = CGPointZero;
                _sourceItemCollectionViewCellCenter = CGPointZero;

                //: UICollectionViewLayoutAttributes * movingItemCollectionViewLayoutAttributes = [self layoutAttributesForItemAtIndexPath:movingItemIndexPath];
                UICollectionViewLayoutAttributes * movingItemCollectionViewLayoutAttributes = [self layoutAttributesForItemAtIndexPath:movingItemIndexPath];

                //: _longPressGestureRecognizer.enabled = NO;
                _longPressGestureRecognizer.enabled = NO;

                //: typeof(self) __weak weakSelf = self;
                typeof(self) __weak weakSelf = self;
                //: [UIView animateWithDuration:0.2
                [UIView animateWithDuration:0.2
                                      //: delay:0
                                      delay:0
                                    //: options:UIViewAnimationOptionBeginFromCurrentState
                                    options:UIViewAnimationOptionBeginFromCurrentState
                                 //: animations:^{
                                 animations:^{
                                     //: typeof(self) __strong strongSelf = weakSelf;
                                     typeof(self) __strong strongSelf = weakSelf;
                                     //: if (strongSelf) {
                                     if (strongSelf) {
                                         //: self->_beingMovedPromptView.center = movingItemCollectionViewLayoutAttributes.center;
                                         self->_beingMovedPromptView.center = movingItemCollectionViewLayoutAttributes.center;
                                     }
                                 }
                                 //: completion:^(BOOL finished) {
                                 completion:^(BOOL finished) {

                                     //: self->_longPressGestureRecognizer.enabled = YES;
                                     self->_longPressGestureRecognizer.enabled = YES;

                                     //: typeof(self) __strong strongSelf = weakSelf;
                                     typeof(self) __strong strongSelf = weakSelf;
                                     //: if (strongSelf) {
                                     if (strongSelf) {
                                         //: [self->_beingMovedPromptView removeFromSuperview];
                                         [self->_beingMovedPromptView removeFromSuperview];
                                         //: self->_beingMovedPromptView = nil;
                                         self->_beingMovedPromptView = nil;
                                         //: [strongSelf invalidateLayout];
                                         [strongSelf invalidateLayout];

                                         //: if ([strongSelf.delegate respondsToSelector:@selector(collectionView:layout:didEndDraggingItemAtIndexPath:)]) {
                                         if ([strongSelf.delegate respondsToSelector:@selector(nameIndex:show:draggingReloadVoice:)]) {
                                             //: [strongSelf.delegate collectionView:strongSelf.collectionView layout:strongSelf didEndDraggingItemAtIndexPath:movingItemIndexPath];
                                             [strongSelf.delegate nameIndex:strongSelf.collectionView show:strongSelf draggingReloadVoice:movingItemIndexPath];
                                         }
                                     }
                                 //: }];
                                 }];
            }
        }
            //: break;
            break;
        //: case UIGestureRecognizerStateFailed:
        case UIGestureRecognizerStateFailed:
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (void)panGestureRecognizerTriggerd:(UIPanGestureRecognizer *)pan
- (void)bes:(UIPanGestureRecognizer *)pan
{
    //: switch (pan.state) {
    switch (pan.state) {
        //: case UIGestureRecognizerStatePossible:
        case UIGestureRecognizerStatePossible:
            //: break;
            break;
        //: case UIGestureRecognizerStateBegan:
        case UIGestureRecognizerStateBegan:
        //: case UIGestureRecognizerStateChanged:
        case UIGestureRecognizerStateChanged:
        {
            //: CGPoint panTranslation = [pan translationInView:self.collectionView];
            CGPoint panTranslation = [pan translationInView:self.collectionView];
            //: _beingMovedPromptView.center = CGPointOffset(_sourceItemCollectionViewCellCenter, panTranslation.x, panTranslation.y);
            _beingMovedPromptView.center = CGPointOffset(_sourceItemCollectionViewCellCenter, panTranslation.x, panTranslation.y);

            //: NSIndexPath * sourceIndexPath = _movingItemIndexPath;
            NSIndexPath * sourceIndexPath = _movingItemIndexPath;
            //: NSIndexPath * destinationIndexPath = [self.collectionView indexPathForItemAtPoint:_beingMovedPromptView.center];
            NSIndexPath * destinationIndexPath = [self.collectionView indexPathForItemAtPoint:_beingMovedPromptView.center];

            //: if ((destinationIndexPath == nil) || [destinationIndexPath isEqual:sourceIndexPath]) {
            if ((destinationIndexPath == nil) || [destinationIndexPath isEqual:sourceIndexPath]) {
                //: return;
                return;
            }

            //: if ([self.dataSource respondsToSelector:@selector(collectionView:itemAtIndexPath:canMoveToIndexPath:)] && [self.dataSource collectionView:self.collectionView itemAtIndexPath:sourceIndexPath canMoveToIndexPath:destinationIndexPath] == NO) {
            if ([self.dataSource respondsToSelector:@selector(remove:date:path:)] && [self.dataSource remove:self.collectionView date:sourceIndexPath path:destinationIndexPath] == NO) {
                //: return;
                return;
            }

            //: if ([self.dataSource respondsToSelector:@selector(collectionView:itemAtIndexPath:willMoveToIndexPath:)]) {
            if ([self.dataSource respondsToSelector:@selector(tingFor:name:option:)]) {
                //: [self.dataSource collectionView:self.collectionView itemAtIndexPath:sourceIndexPath willMoveToIndexPath:destinationIndexPath];
                [self.dataSource tingFor:self.collectionView name:sourceIndexPath option:destinationIndexPath];
            }

            //: _movingItemIndexPath = destinationIndexPath;
            _movingItemIndexPath = destinationIndexPath;

            //: typeof(self) __weak weakSelf = self;
            typeof(self) __weak weakSelf = self;
            //: [self.collectionView performBatchUpdates:^{
            [self.collectionView performBatchUpdates:^{
                //: typeof(self) __strong strongSelf = weakSelf;
                typeof(self) __strong strongSelf = weakSelf;
                //: if (strongSelf) {
                if (strongSelf) {
                    //: if (sourceIndexPath && destinationIndexPath) {
                    if (sourceIndexPath && destinationIndexPath) {
                        //: [strongSelf.collectionView deleteItemsAtIndexPaths:@[sourceIndexPath]];
                        [strongSelf.collectionView deleteItemsAtIndexPaths:@[sourceIndexPath]];
                        //: [strongSelf.collectionView insertItemsAtIndexPaths:@[destinationIndexPath]];
                        [strongSelf.collectionView insertItemsAtIndexPaths:@[destinationIndexPath]];
                    }
                }
            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {
                //: typeof(self) __strong strongSelf = weakSelf;
                typeof(self) __strong strongSelf = weakSelf;
                //: if ([strongSelf.dataSource respondsToSelector:@selector(collectionView:itemAtIndexPath:didMoveToIndexPath:)]) {
                if ([strongSelf.dataSource respondsToSelector:@selector(viewName:content:imagePath:)]) {
                    //: [strongSelf.dataSource collectionView:strongSelf.collectionView itemAtIndexPath:sourceIndexPath didMoveToIndexPath:destinationIndexPath];
                    [strongSelf.dataSource viewName:strongSelf.collectionView content:sourceIndexPath imagePath:destinationIndexPath];
                }
            //: }];
            }];
        }
            //: break;
            break;
        //: case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateEnded:
            //: break;
            break;
        //: case UIGestureRecognizerStateCancelled:
        case UIGestureRecognizerStateCancelled:
            //: break;
            break;
        //: case UIGestureRecognizerStateFailed:
        case UIGestureRecognizerStateFailed:
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([_panGestureRecognizer isEqual:gestureRecognizer]) {
    if ([_panGestureRecognizer isEqual:gestureRecognizer]) {
        //: return _movingItemIndexPath != nil;
        return _movingItemIndexPath != nil;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    //  only _longPressGestureRecognizer and _panGestureRecognizer can recognize simultaneously
    //: if ([_longPressGestureRecognizer isEqual:gestureRecognizer]) {
    if ([_longPressGestureRecognizer isEqual:gestureRecognizer]) {
        //: return [_panGestureRecognizer isEqual:otherGestureRecognizer];
        return [_panGestureRecognizer isEqual:otherGestureRecognizer];
    }
    //: if ([_panGestureRecognizer isEqual:gestureRecognizer]) {
    if ([_panGestureRecognizer isEqual:gestureRecognizer]) {
        //: return [_longPressGestureRecognizer isEqual:otherGestureRecognizer];
        return [_longPressGestureRecognizer isEqual:otherGestureRecognizer];
    }
    //: return NO;
    return NO;
}

//: #pragma mark - displayLink
#pragma mark - displayLink

//: - (void)displayLinkTriggered:(CADisplayLink *)displayLink
- (void)linking:(CADisplayLink *)displayLink
{
    //: if (_remainSecondsToBeginEditing <= 0) {
    if (_remainSecondsToBeginEditing <= 0) {
        //: [_displayLink invalidate];
        [_displayLink invalidate];
        //: _displayLink = nil;
        _displayLink = nil;
    }

    //: _remainSecondsToBeginEditing = _remainSecondsToBeginEditing - 0.1;
    _remainSecondsToBeginEditing = _remainSecondsToBeginEditing - 0.1;
}

//: #pragma mark - KVO and notification
#pragma mark - KVO and notification

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    //: if ([keyPath isEqualToString:@__STRING(collectionView)]) {
    if ([keyPath isEqualToString:@__STRING(collectionView)]) {
        //: if (self.collectionView) {
        if (self.collectionView) {
            //: [self addGestureRecognizers];
            [self dataGround];
        }
        //: else {
        else {
            //: [self removeGestureRecognizers];
            [self assemblageRecognizers];
        }
    }
}

//: - (void)applicationWillResignActive:(NSNotification *)notificaiton
- (void)redMemberActive:(NSNotification *)notificaiton
{
    //: _panGestureRecognizer.enabled = NO;
    _panGestureRecognizer.enabled = NO;
    //: _panGestureRecognizer.enabled = YES;
    _panGestureRecognizer.enabled = YES;
}

//: @end
@end