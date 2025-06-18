// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxFrameView.m
//  MaxFrameView
//
//  Created by youyou on 16/12/5.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UUMarqueeView.h"
#import "MaxFrameView.h"

//: @interface UUMarqueeView () <UUMarqueeViewTouchResponder>
@interface MaxFrameView () <CountFitResponder>

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, assign) NSInteger visibleItemCount;
@property (nonatomic, assign) NSInteger visibleItemCount;
//: @property (nonatomic, strong) NSMutableArray<UUMarqueeItemView*> *items;
@property (nonatomic, strong) NSMutableArray<MarqueeIndexView*> *items;
//: @property (nonatomic, assign) int firstItemIndex;
@property (nonatomic, assign) int firstItemIndex;
//: @property (nonatomic, assign) int dataIndex;
@property (nonatomic, assign) int dataIndex;
//: @property (nonatomic, strong) NSTimer *scrollTimer;
@property (nonatomic, strong) NSTimer *scrollTimer;
//: @property (nonatomic, strong) UUMarqueeViewTouchReceiver *touchReceiver;
@property (nonatomic, strong) AmbitView *touchReceiver;

//: @property (nonatomic, assign) BOOL isWaiting;
@property (nonatomic, assign) BOOL isWaiting;
//: @property (nonatomic, assign) BOOL isScrolling;
@property (nonatomic, assign) BOOL isScrolling;
//: @property (nonatomic, assign) BOOL isScrollNeedsToStop;
@property (nonatomic, assign) BOOL isScrollNeedsToStop;
//: @property (nonatomic, assign) BOOL isPausingBeforeTouchesBegan;
@property (nonatomic, assign) BOOL isPausingBeforeTouchesBegan;
//: @property (nonatomic, assign) BOOL isPausingBeforeResignActive;
@property (nonatomic, assign) BOOL isPausingBeforeResignActive;

//: @end
@end

//: @implementation UUMarqueeView
@implementation MaxFrameView

//: static NSInteger const DEFAULT_VISIBLE_ITEM_COUNT = 2;
static NSInteger const kLet_tingObjectText = 2;
//: static NSTimeInterval const DEFAULT_TIME_INTERVAL = 4.0;
static NSTimeInterval const kLet_sessionCellData = 4.0;
//: static NSTimeInterval const DEFAULT_TIME_DURATION = 1.0;
static NSTimeInterval const kLet_resolutionText = 1.0;
//: static float const DEFAULT_SCROLL_SPEED = 40.0f;
static float const kLet_bottomTouchTitle = 40.0f;
//: static float const DEFAULT_ITEM_SPACING = 20.0f;
static float const kLet_nameText = 20.0f;

//: - (instancetype)initWithCoder:(NSCoder *)aDecoder {
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    //: if (self = [super initWithCoder:aDecoder]) {
    if (self = [super initWithCoder:aDecoder]) {
        //: _timeIntervalPerScroll = DEFAULT_TIME_INTERVAL;
        _timeIntervalPerScroll = kLet_sessionCellData;
        //: _timeDurationPerScroll = DEFAULT_TIME_DURATION;
        _timeDurationPerScroll = kLet_resolutionText;
        //: _scrollSpeed = DEFAULT_SCROLL_SPEED;
        _scrollSpeed = kLet_bottomTouchTitle;
        //: _itemSpacing = DEFAULT_ITEM_SPACING;
        _itemSpacing = kLet_nameText;
        //: _touchEnabled = NO;
        _touchEnabled = NO;
        //: _stopWhenLessData = NO;
        _stopWhenLessData = NO;

        //: _contentView = [[UIView alloc] initWithFrame:self.bounds];
        _contentView = [[UIView alloc] initWithFrame:self.bounds];
        //: _contentView.clipsToBounds = YES;
        _contentView.clipsToBounds = YES;
        //: [self addSubview:_contentView];
        [self addSubview:_contentView];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleResignActiveNotification:)
                                                 selector:@selector(handleName:)
                                                     //: name:UIApplicationWillResignActiveNotification
                                                     name:UIApplicationWillResignActiveNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleBecomeActiveNotification:)
                                                 selector:@selector(transformed:)
                                                     //: name:UIApplicationDidBecomeActiveNotification
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithDirection:(UUMarqueeViewDirection)direction {
- (instancetype)initWithWrittenMatter:(UUMarqueeViewDirection)direction {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _direction = direction;
        _direction = direction;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithFrame:(CGRect)frame direction:(UUMarqueeViewDirection)direction {
- (instancetype)initWithUserDirection:(CGRect)frame content:(UUMarqueeViewDirection)direction {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: _direction = direction;
        _direction = direction;
        //: _timeIntervalPerScroll = DEFAULT_TIME_INTERVAL;
        _timeIntervalPerScroll = kLet_sessionCellData;
        //: _timeDurationPerScroll = DEFAULT_TIME_DURATION;
        _timeDurationPerScroll = kLet_resolutionText;
        //: _scrollSpeed = DEFAULT_SCROLL_SPEED;
        _scrollSpeed = kLet_bottomTouchTitle;
        //: _itemSpacing = DEFAULT_ITEM_SPACING;
        _itemSpacing = kLet_nameText;
        //: _touchEnabled = NO;
        _touchEnabled = NO;
        //: _stopWhenLessData = NO;
        _stopWhenLessData = NO;

        //: _contentView = [[UIView alloc] initWithFrame:self.bounds];
        _contentView = [[UIView alloc] initWithFrame:self.bounds];
        //: _contentView.clipsToBounds = YES;
        _contentView.clipsToBounds = YES;
        //: [self addSubview:_contentView];
        [self addSubview:_contentView];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleResignActiveNotification:)
                                                 selector:@selector(handleName:)
                                                     //: name:UIApplicationWillResignActiveNotification
                                                     name:UIApplicationWillResignActiveNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleBecomeActiveNotification:)
                                                 selector:@selector(transformed:)
                                                     //: name:UIApplicationDidBecomeActiveNotification
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: _timeIntervalPerScroll = DEFAULT_TIME_INTERVAL;
        _timeIntervalPerScroll = kLet_sessionCellData;
        //: _timeDurationPerScroll = DEFAULT_TIME_DURATION;
        _timeDurationPerScroll = kLet_resolutionText;
        //: _scrollSpeed = DEFAULT_SCROLL_SPEED;
        _scrollSpeed = kLet_bottomTouchTitle;
        //: _itemSpacing = DEFAULT_ITEM_SPACING;
        _itemSpacing = kLet_nameText;
        //: _touchEnabled = NO;
        _touchEnabled = NO;
        //: _stopWhenLessData = NO;
        _stopWhenLessData = NO;

        //: _contentView = [[UIView alloc] initWithFrame:self.bounds];
        _contentView = [[UIView alloc] initWithFrame:self.bounds];
        //: _contentView.clipsToBounds = YES;
        _contentView.clipsToBounds = YES;
        //: [self addSubview:_contentView];
        [self addSubview:_contentView];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleResignActiveNotification:)
                                                 selector:@selector(handleName:)
                                                     //: name:UIApplicationWillResignActiveNotification
                                                     name:UIApplicationWillResignActiveNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(handleBecomeActiveNotification:)
                                                 selector:@selector(transformed:)
                                                     //: name:UIApplicationDidBecomeActiveNotification
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)setClipsToBounds:(BOOL)clipsToBounds {
- (void)setClipsToBounds:(BOOL)clipsToBounds {
    //: _contentView.clipsToBounds = clipsToBounds;
    _contentView.clipsToBounds = clipsToBounds;
}

//: - (void)setTouchEnabled:(BOOL)touchEnabled {
- (void)setTouchEnabled:(BOOL)touchEnabled {
    //: _touchEnabled = touchEnabled;
    _touchEnabled = touchEnabled;
    //: [self resetTouchReceiver];
    [self text];
}

//: - (void)reloadData {
- (void)row {
    //: if (_isWaiting) {
    if (_isWaiting) {
        //: if (_scrollTimer) {
        if (_scrollTimer) {
            //: [_scrollTimer invalidate];
            [_scrollTimer invalidate];
            //: self.scrollTimer = nil;
            self.scrollTimer = nil;
        }
        //: [self resetAll];
        [self sheet];
        //: [self startAfterTimeInterval:YES];
        [self view:YES];
    //: } else if (_isScrolling) {
    } else if (_isScrolling) {
        //: [self resetAll];
        [self sheet];
    //: } else {
    } else {
        // stopped
        //: [self resetAll];
        [self sheet];
        //: [self startAfterTimeInterval:YES];
        [self view:YES];
    }
}

//: - (void)start {
- (void)stateStart {
    //: self.isScrollNeedsToStop = NO;
    self.isScrollNeedsToStop = NO;
    //: if (!_isScrolling && !_isWaiting) {
    if (!_isScrolling && !_isWaiting) {
        //: [self startAfterTimeInterval:NO];
        [self view:NO];
    }
}

//: - (void)pause {
- (void)telecasting {
    //: self.isScrollNeedsToStop = YES;
    self.isScrollNeedsToStop = YES;
}

//: - (void)repeat {
- (void)contriveImage {
    //: if (!_isScrollNeedsToStop) {
    if (!_isScrollNeedsToStop) {
        //: [self startAfterTimeInterval:YES];
        [self view:YES];
    }
}

//: - (void)repeatWithAnimationFinished:(BOOL)finished {
- (void)distance:(BOOL)finished {
    //: if (!_isScrollNeedsToStop) {
    if (!_isScrollNeedsToStop) {
        //: [self startAfterTimeInterval:YES animationFinished:finished];
        [self totalermission:YES blue:finished];
    }
}

//: - (void)startAfterTimeInterval:(BOOL)afterTimeInterval {
- (void)view:(BOOL)afterTimeInterval {
    //: [self startAfterTimeInterval:afterTimeInterval animationFinished:YES];
    [self totalermission:afterTimeInterval blue:YES];
}

//: - (void)startAfterTimeInterval:(BOOL)afterTimeInterval animationFinished:(BOOL)finished {
- (void)totalermission:(BOOL)afterTimeInterval blue:(BOOL)finished {
    //: if (_isScrolling || _items.count <= 0) {
    if (_isScrolling || _items.count <= 0) {
        //: return;
        return;
    }

    //: self.isWaiting = YES;
    self.isWaiting = YES;
    //: NSTimeInterval timeInterval = 1.0;
    NSTimeInterval timeInterval = 1.0;
    //: if (finished) {
    if (finished) {
        //: timeInterval = afterTimeInterval ? _timeIntervalPerScroll : 0.0;
        timeInterval = afterTimeInterval ? _timeIntervalPerScroll : 0.0;
    }
    //: self.scrollTimer = [NSTimer scheduledTimerWithTimeInterval:timeInterval
    self.scrollTimer = [NSTimer scheduledTimerWithTimeInterval:timeInterval
                                                        //: target:self
                                                        target:self
                                                      //: selector:@selector(scrollTimerDidFire:)
                                                      selector:@selector(alonging:)
                                                      //: userInfo:nil
                                                      userInfo:nil
                                                       //: repeats:NO];
                                                       repeats:NO];
}

//: #pragma mark - Override(private)
#pragma mark - Override(private)
//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: [_contentView setFrame:self.bounds];
    [_contentView setFrame:self.bounds];
    //: [self repositionItemViews];
    [self item];
    //: if (_touchEnabled && _touchReceiver) {
    if (_touchEnabled && _touchReceiver) {
        //: [_touchReceiver setFrame:self.bounds];
        [_touchReceiver setFrame:self.bounds];
    }
}

//: - (void)dealloc {
- (void)dealloc {
    //: if (_scrollTimer) {
    if (_scrollTimer) {
        //: [_scrollTimer invalidate];
        [_scrollTimer invalidate];
        //: self.scrollTimer = nil;
        self.scrollTimer = nil;
    }
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)handleResignActiveNotification:(NSNotification*)notification {
- (void)handleName:(NSNotification*)notification {
    //: self.isPausingBeforeResignActive = _isScrollNeedsToStop;
    self.isPausingBeforeResignActive = _isScrollNeedsToStop;
    //: [self pause];
    [self telecasting];
}

//: - (void)handleBecomeActiveNotification:(NSNotification*)notification {
- (void)transformed:(NSNotification*)notification {
    //: if (!_isPausingBeforeResignActive) {
    if (!_isPausingBeforeResignActive) {
        //: [self start];
        [self stateStart];
    }
}

//: #pragma mark - ItemView(private)
#pragma mark - ItemView(private)
//: - (void)resetAll {
- (void)sheet {
    //: self.dataIndex = -1;
    self.dataIndex = -1;
    //: self.firstItemIndex = 0;
    self.firstItemIndex = 0;

    //: if (_items) {
    if (_items) {
        //: [_items makeObjectsPerformSelector:@selector(removeFromSuperview)];
        [_items makeObjectsPerformSelector:@selector(removeFromSuperview)];
        //: [_items removeAllObjects];
        [_items removeAllObjects];
    //: } else {
    } else {
        //: self.items = [NSMutableArray array];
        self.items = [NSMutableArray array];
    }

    //: if (_direction == UUMarqueeViewDirectionLeftward) {
    if (_direction == UUMarqueeViewDirectionLeftward) {
        //: self.visibleItemCount = 1;
        self.visibleItemCount = 1;
    //: } else {
    } else {
        //: if ([_delegate respondsToSelector:@selector(numberOfVisibleItemsForMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(imaged:)]) {
            //: self.visibleItemCount = [_delegate numberOfVisibleItemsForMarqueeView:self];
            self.visibleItemCount = [_delegate imaged:self];
            //: if (_visibleItemCount <= 0) {
            if (_visibleItemCount <= 0) {
                //: return;
                return;
            }
        //: } else {
        } else {
            //: self.visibleItemCount = DEFAULT_VISIBLE_ITEM_COUNT;
            self.visibleItemCount = kLet_tingObjectText;
        }
    }

    //: for (int i = 0; i < _visibleItemCount + 2; i++) {
    for (int i = 0; i < _visibleItemCount + 2; i++) {
        //: UUMarqueeItemView *itemView = [[UUMarqueeItemView alloc] init];
        MarqueeIndexView *itemView = [[MarqueeIndexView alloc] init];
        //: [_contentView addSubview:itemView];
        [_contentView addSubview:itemView];
        //: [_items addObject:itemView];
        [_items addObject:itemView];
    }

    //: if (_direction == UUMarqueeViewDirectionLeftward) {
    if (_direction == UUMarqueeViewDirectionLeftward) {
        //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        //: CGFloat lastMaxX = 0.0f;
        CGFloat lastMaxX = 0.0f;
        //: for (int i = 0; i < _items.count; i++) {
        for (int i = 0; i < _items.count; i++) {
            //: int index = (i + _firstItemIndex) % _items.count;
            int index = (i + _firstItemIndex) % _items.count;

            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: if (i == 0) {
            if (i == 0) {
                //: [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = 0.0f;
                lastMaxX = 0.0f;

                //: [self createItemView:_items[index]];
                [self sound:_items[index]];
            //: } else {
            } else {
                //: [self moveToNextDataIndex];
                [self performance];
                //: _items[index].tag = _dataIndex;
                _items[index].tag = _dataIndex;
                //: _items[index].width = [self itemWidthAtIndex:_items[index].tag];
                _items[index].width = [self comment:_items[index].tag];
                //: itemWidth = ((_items[index].width + _itemSpacing) > (itemWidth) ? (_items[index].width + _itemSpacing) : (itemWidth));
                itemWidth = ((_items[index].width + _itemSpacing) > (itemWidth) ? (_items[index].width + _itemSpacing) : (itemWidth));

                //: [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = lastMaxX + itemWidth;
                lastMaxX = lastMaxX + itemWidth;

                //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                [self viewBack:_items[index] intervaleractMake:_items[index].tag];
            }
        }
    //: } else {
    } else {
        //: if (_useDynamicHeight) {
        if (_useDynamicHeight) {
            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == _items.count - 1) {
                if (i == _items.count - 1) {
                    //: [self moveToNextDataIndex];
                    [self performance];
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;
                    //: _items[index].height = [self itemHeightAtIndex:_items[index].tag];
                    _items[index].height = [self highness:_items[index].tag];
                    //: _items[index].alpha = 0.0f;
                    _items[index].alpha = 0.0f;

                    //: [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                    [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                    //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                    [self viewBack:_items[index] intervaleractMake:_items[index].tag];
                //: } else {
                } else {
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;
                    //: _items[index].alpha = 0.0f;
                    _items[index].alpha = 0.0f;

                    //: [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                    [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                }
            }
        //: } else {
        } else {
            //: NSUInteger dataCount = 0;
            NSUInteger dataCount = 0;
            //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
            if ([_delegate respondsToSelector:@selector(requestName:)]) {
                //: dataCount = [_delegate numberOfDataForMarqueeView:self];
                dataCount = [_delegate requestName:self];
            }

            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == 0) {
                if (i == 0) {
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;

                    //: [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                    //: [self createItemView:_items[index]];
                    [self sound:_items[index]];
                //: } else {
                } else {
                    //: [self moveToNextDataIndex];
                    [self performance];
                    //: _items[index].tag = _dataIndex;
                    _items[index].tag = _dataIndex;

                    //: [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];

                    //: if (_stopWhenLessData) {
                    if (_stopWhenLessData) {
                        //: if (i <= dataCount) {
                        if (i <= dataCount) {
                            //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                            [self viewBack:_items[index] intervaleractMake:_items[index].tag];
                        //: } else {
                        } else {
                            //: [self createItemView:_items[index]];
                            [self sound:_items[index]];
                        }
                    //: } else {
                    } else {
                        //: [self updateItemView:_items[index] atIndex:_items[index].tag];
                        [self viewBack:_items[index] intervaleractMake:_items[index].tag];
                    }
                }
            }
        }
    }

    //: [self resetTouchReceiver];
    [self text];
}

//: - (void)repositionItemViews {
- (void)item {
    //: if (_direction == UUMarqueeViewDirectionLeftward) {
    if (_direction == UUMarqueeViewDirectionLeftward) {
        //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
        //: CGFloat lastMaxX = 0.0f;
        CGFloat lastMaxX = 0.0f;
        //: for (int i = 0; i < _items.count; i++) {
        for (int i = 0; i < _items.count; i++) {
            //: int index = (i + _firstItemIndex) % _items.count;
            int index = (i + _firstItemIndex) % _items.count;

            //: CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
            CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));

            //: if (i == 0) {
            if (i == 0) {
                //: [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = 0.0f;
                lastMaxX = 0.0f;
            //: } else {
            } else {
                //: [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                //: lastMaxX = lastMaxX + itemWidth;
                lastMaxX = lastMaxX + itemWidth;
            }
        }
    //: } else {
    } else {
        //: if (_useDynamicHeight) {
        if (_useDynamicHeight) {
            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat lastMaxY = 0.0f;
            CGFloat lastMaxY = 0.0f;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == 0) {
                if (i == 0) {
                    //: [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                    [_items[index] setFrame:CGRectMake(0.0f, 0.0f, itemWidth, 0.0f)];
                    //: lastMaxY = 0.0f;
                    lastMaxY = 0.0f;
                //: } else if (i == _items.count - 1) {
                } else if (i == _items.count - 1) {
                    //: [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                    [_items[index] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[index].height)];
                //: } else {
                } else {
                    //: [_items[index] setFrame:CGRectMake(0.0f, lastMaxY, itemWidth, _items[index].height)];
                    [_items[index] setFrame:CGRectMake(0.0f, lastMaxY, itemWidth, _items[index].height)];
                    //: lastMaxY = lastMaxY + _items[index].height;
                    lastMaxY = lastMaxY + _items[index].height;
                }
            }

            //: CGFloat offsetY = CGRectGetHeight(self.frame) - lastMaxY;
            CGFloat offsetY = CGRectGetHeight(self.frame) - lastMaxY;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i > 0 && i < _items.count - 1) {
                if (i > 0 && i < _items.count - 1) {
                    //: [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                    [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                                                       //: CGRectGetMinY(_items[index].frame) + offsetY,
                                                       CGRectGetMinY(_items[index].frame) + offsetY,
                                                       //: itemWidth,
                                                       itemWidth,
                                                       //: _items[index].height)];
                                                       _items[index].height)];
                }
            }
        //: } else {
        } else {
            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;
                //: if (i == 0) {
                if (i == 0) {
                    //: [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                //: } else {
                } else {
                    //: [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];
                    [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 1), itemWidth, itemHeight)];
                }
            }
        }
    }
}

//: - (int)itemIndexWithOffsetFromTop:(int)offsetFromTop {
- (int)size:(int)offsetFromTop {
    //: return (_firstItemIndex + offsetFromTop) % (_visibleItemCount + 2);
    return (_firstItemIndex + offsetFromTop) % (_visibleItemCount + 2);
}

//: - (void)moveToNextItemIndex {
- (void)lineIndex {
    //: if (_firstItemIndex >= _items.count - 1) {
    if (_firstItemIndex >= _items.count - 1) {
        //: self.firstItemIndex = 0;
        self.firstItemIndex = 0;
    //: } else {
    } else {
        //: self.firstItemIndex++;
        self.firstItemIndex++;
    }
}

//: - (CGFloat)itemWidthAtIndex:(NSInteger)index {
- (CGFloat)comment:(NSInteger)index {
    //: CGFloat itemWidth = 0.0f;
    CGFloat itemWidth = 0.0f;
    //: if (index >= 0) {
    if (index >= 0) {
        //: if ([_delegate respondsToSelector:@selector(itemViewWidthAtIndex:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(replacementStyle:titleItem:)]) {
            //: itemWidth = [_delegate itemViewWidthAtIndex:index forMarqueeView:self];
            itemWidth = [_delegate replacementStyle:index titleItem:self];
        }
    }
    //: return itemWidth;
    return itemWidth;
}

//: - (CGFloat)itemHeightAtIndex:(NSInteger)index {
- (CGFloat)highness:(NSInteger)index {
    //: CGFloat itemHeight = 0.0f;
    CGFloat itemHeight = 0.0f;
    //: if (index >= 0) {
    if (index >= 0) {
        //: if ([_delegate respondsToSelector:@selector(itemViewHeightAtIndex:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(team:should:)]) {
            //: itemHeight = [_delegate itemViewHeightAtIndex:index forMarqueeView:self];
            itemHeight = [_delegate team:index should:self];
        }
    }
    //: return itemHeight;
    return itemHeight;
}

//: - (void)createItemView:(UUMarqueeItemView*)itemView {
- (void)sound:(MarqueeIndexView*)itemView {
    //: if (!itemView.didFinishCreate) {
    if (!itemView.didFinishCreate) {
        //: if ([_delegate respondsToSelector:@selector(createItemView:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(performanceFull:language:)]) {
            //: [_delegate createItemView:itemView forMarqueeView:self];
            [_delegate performanceFull:itemView language:self];
            //: itemView.didFinishCreate = YES;
            itemView.didFinishCreate = YES;
        }
    }
}

//: - (void)updateItemView:(UUMarqueeItemView*)itemView atIndex:(NSInteger)index {
- (void)viewBack:(MarqueeIndexView*)itemView intervaleractMake:(NSInteger)index {
    //: if (index < 0) {
    if (index < 0) {
        //: [itemView clear];
        [itemView tidingsItem];
    }

    //: if (!itemView.didFinishCreate) {
    if (!itemView.didFinishCreate) {
        //: if ([_delegate respondsToSelector:@selector(createItemView:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(performanceFull:language:)]) {
            //: [_delegate createItemView:itemView forMarqueeView:self];
            [_delegate performanceFull:itemView language:self];
            //: itemView.didFinishCreate = YES;
            itemView.didFinishCreate = YES;
        }
    }

    //: if (index >= 0) {
    if (index >= 0) {
        //: if ([_delegate respondsToSelector:@selector(updateItemView:atIndex:forMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(shade:flush:error:)]) {
            //: [_delegate updateItemView:itemView atIndex:index forMarqueeView:self];
            [_delegate shade:itemView flush:index error:self];
        }
    }
}

//: #pragma mark - Timer & Animation(private)
#pragma mark - Timer & Animation(private)
//: - (void)scrollTimerDidFire:(NSTimer *)timer {
- (void)alonging:(NSTimer *)timer {
    //: self.isWaiting = NO;
    self.isWaiting = NO;
    //: if (_isScrollNeedsToStop) {
    if (_isScrollNeedsToStop) {
        //: return;
        return;
    }

    //: self.isScrolling = YES;
    self.isScrolling = YES;
    //: if (_stopWhenLessData) {
    if (_stopWhenLessData) {
        //: NSUInteger dataCount = 0;
        NSUInteger dataCount = 0;
        //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
        if ([_delegate respondsToSelector:@selector(requestName:)]) {
            //: dataCount = [_delegate numberOfDataForMarqueeView:self];
            dataCount = [_delegate requestName:self];
        }
        //: if (_direction == UUMarqueeViewDirectionLeftward) {
        if (_direction == UUMarqueeViewDirectionLeftward) {
            //: if (dataCount <= 1) {
            if (dataCount <= 1) {
                //: CGFloat itemWidth = ((_items[1].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[1].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                CGFloat itemWidth = ((_items[1].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[1].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                //: if (itemWidth <= CGRectGetWidth(self.frame)) {
                if (itemWidth <= CGRectGetWidth(self.frame)) {
                    //: __weak __typeof(self) weakSelf = self;
                    __weak __typeof(self) weakSelf = self;
                    //: dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                    dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                        //: __strong __typeof(self) self = weakSelf;
                        __strong __typeof(self) self = weakSelf;
                        //: if (self) {
                        if (self) {
                            //: self.isScrolling = NO;
                            self.isScrolling = NO;
                            //: [self repeat];
                            [self contriveImage];
                        }
                    //: });
                    });
                    //: return;
                    return;
                }
            }
        //: } else {
        } else {
            //: if (dataCount <= _visibleItemCount) {
            if (dataCount <= _visibleItemCount) {
                //: __weak __typeof(self) weakSelf = self;
                __weak __typeof(self) weakSelf = self;
                //: dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                dispatch_after(dispatch_time((0ull), (int64_t)(_timeDurationPerScroll * 1000000000ull)), dispatch_get_main_queue(), ^{
                    //: __strong __typeof(self) self = weakSelf;
                    __strong __typeof(self) self = weakSelf;
                    //: if (self) {
                    if (self) {
                        //: self.isScrolling = NO;
                        self.isScrolling = NO;
                        //: [self repeat];
                        [self contriveImage];
                    }
                //: });
                });
                //: return;
                return;
            }
        }
    }
    //: dispatch_async(dispatch_get_main_queue(), ^() {
    dispatch_async(dispatch_get_main_queue(), ^() {
        //: if (_direction == UUMarqueeViewDirectionLeftward) {
        if (_direction == UUMarqueeViewDirectionLeftward) {
            //: [self moveToNextDataIndex];
            [self performance];

            //: CGFloat itemHeight = CGRectGetHeight(self.frame);
            CGFloat itemHeight = CGRectGetHeight(self.frame);
            //: CGFloat firstItemWidth = CGRectGetWidth(self.frame);
            CGFloat firstItemWidth = CGRectGetWidth(self.frame);
            //: CGFloat currentItemWidth = CGRectGetWidth(self.frame);
            CGFloat currentItemWidth = CGRectGetWidth(self.frame);
            //: CGFloat lastItemWidth = CGRectGetWidth(self.frame);
            CGFloat lastItemWidth = CGRectGetWidth(self.frame);
            //: for (int i = 0; i < _items.count; i++) {
            for (int i = 0; i < _items.count; i++) {
                //: int index = (i + _firstItemIndex) % _items.count;
                int index = (i + _firstItemIndex) % _items.count;

                //: CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));

                //: if (i == 0) {
                if (i == 0) {
                    //: firstItemWidth = itemWidth;
                    firstItemWidth = itemWidth;
                //: } else if (i == 1) {
                } else if (i == 1) {
                    //: currentItemWidth = itemWidth;
                    currentItemWidth = itemWidth;
                //: } else {
                } else {
                    //: lastItemWidth = itemWidth;
                    lastItemWidth = itemWidth;
                }
            }

            // move the left item to right without animation
            //: _items[_firstItemIndex].tag = _dataIndex;
            _items[_firstItemIndex].tag = _dataIndex;
            //: _items[_firstItemIndex].width = [self itemWidthAtIndex:_items[_firstItemIndex].tag];
            _items[_firstItemIndex].width = [self comment:_items[_firstItemIndex].tag];
            //: CGFloat nextItemWidth = ((_items[_firstItemIndex].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[_firstItemIndex].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
            CGFloat nextItemWidth = ((_items[_firstItemIndex].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[_firstItemIndex].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
            //: [_items[_firstItemIndex] setFrame:CGRectMake(lastItemWidth, 0.0f, nextItemWidth, itemHeight)];
            [_items[_firstItemIndex] setFrame:CGRectMake(lastItemWidth, 0.0f, nextItemWidth, itemHeight)];
            //: if (firstItemWidth != nextItemWidth) {
            if (firstItemWidth != nextItemWidth) {
                // if the width of next item view changes, then recreate it by delegate
                //: [_items[_firstItemIndex] clear];
                [_items[_firstItemIndex] tidingsItem];
            }
            //: [self updateItemView:_items[_firstItemIndex] atIndex:_items[_firstItemIndex].tag];
            [self viewBack:_items[_firstItemIndex] intervaleractMake:_items[_firstItemIndex].tag];

            //: __weak __typeof(self) weakSelf = self;
            __weak __typeof(self) weakSelf = self;
            //: [UIView animateWithDuration:(currentItemWidth / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
            [UIView animateWithDuration:(currentItemWidth / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
                //: CGFloat lastMaxX = 0.0f;
                CGFloat lastMaxX = 0.0f;
                //: for (int i = 0; i < _items.count; i++) {
                for (int i = 0; i < _items.count; i++) {
                    //: int index = (i + _firstItemIndex) % _items.count;
                    int index = (i + _firstItemIndex) % _items.count;

                    //: CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));
                    CGFloat itemWidth = ((_items[index].width + _itemSpacing) > (CGRectGetWidth(self.frame)) ? (_items[index].width + _itemSpacing) : (CGRectGetWidth(self.frame)));

                    //: if (i == 0) {
                    if (i == 0) {
                        //: continue;
                        continue;
                    //: } else if (i == 1) {
                    } else if (i == 1) {
                        //: [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                        [_items[index] setFrame:CGRectMake(-itemWidth, 0.0f, itemWidth, itemHeight)];
                        //: lastMaxX = 0.0f;
                        lastMaxX = 0.0f;
                    //: } else {
                    } else {
                        //: [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                        [_items[index] setFrame:CGRectMake(lastMaxX, 0.0f, itemWidth, itemHeight)];
                        //: lastMaxX = lastMaxX + itemWidth;
                        lastMaxX = lastMaxX + itemWidth;
                    }
                }
            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {
                //: __strong __typeof(self) self = weakSelf;
                __strong __typeof(self) self = weakSelf;
                //: if (self) {
                if (self) {
                    //: self.isScrolling = NO;
                    self.isScrolling = NO;
                    //: [self repeatWithAnimationFinished:finished];
                    [self distance:finished];
                }
            //: }];
            }];
            //: [self moveToNextItemIndex];
            [self lineIndex];
        //: } else {
        } else {
            //: [self moveToNextDataIndex];
            [self performance];

            //: CGFloat itemWidth = CGRectGetWidth(self.frame);
            CGFloat itemWidth = CGRectGetWidth(self.frame);
            //: CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;
            CGFloat itemHeight = CGRectGetHeight(self.frame) / _visibleItemCount;

            // move the top item to bottom without animation
            //: _items[_firstItemIndex].tag = _dataIndex;
            _items[_firstItemIndex].tag = _dataIndex;
            //: if (_useDynamicHeight) {
            if (_useDynamicHeight) {
                //: CGFloat firstItemWidth = _items[_firstItemIndex].height;
                CGFloat firstItemWidth = _items[_firstItemIndex].height;
                //: _items[_firstItemIndex].height = [self itemHeightAtIndex:_items[_firstItemIndex].tag];
                _items[_firstItemIndex].height = [self highness:_items[_firstItemIndex].tag];
                //: [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[_firstItemIndex].height)];
                [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, _items[_firstItemIndex].height)];
                //: if (firstItemWidth != _items[_firstItemIndex].height) {
                if (firstItemWidth != _items[_firstItemIndex].height) {
                    // if the height of next item view changes, then recreate it by delegate
                    //: [_items[_firstItemIndex] clear];
                    [_items[_firstItemIndex] tidingsItem];
                }
            //: } else {
            } else {
                //: [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, itemHeight)];
                [_items[_firstItemIndex] setFrame:CGRectMake(0.0f, CGRectGetMaxY(self.bounds), itemWidth, itemHeight)];
            }
            //: [self updateItemView:_items[_firstItemIndex] atIndex:_items[_firstItemIndex].tag];
            [self viewBack:_items[_firstItemIndex] intervaleractMake:_items[_firstItemIndex].tag];

            //: if (_useDynamicHeight) {
            if (_useDynamicHeight) {
                //: int lastItemIndex = (int)(_items.count - 1 + _firstItemIndex) % _items.count;
                int lastItemIndex = (int)(_items.count - 1 + _firstItemIndex) % _items.count;
                //: CGFloat lastItemHeight = _items[lastItemIndex].height;
                CGFloat lastItemHeight = _items[lastItemIndex].height;
                //: __weak __typeof(self) weakSelf = self;
                __weak __typeof(self) weakSelf = self;
                //: [UIView animateWithDuration:(lastItemHeight / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
                [UIView animateWithDuration:(lastItemHeight / _scrollSpeed) delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
                    //: for (int i = 0; i < _items.count; i++) {
                    for (int i = 0; i < _items.count; i++) {
                        //: int index = (i + _firstItemIndex) % _items.count;
                        int index = (i + _firstItemIndex) % _items.count;
                        //: if (i == 0) {
                        if (i == 0) {
                            //: continue;
                            continue;
                        //: } else if (i == 1) {
                        } else if (i == 1) {
                            //: [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                            [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                                                               //: CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               //: itemWidth,
                                                               itemWidth,
                                                               //: _items[index].height)];
                                                               _items[index].height)];
                            //: _items[index].alpha = 0.0f;
                            _items[index].alpha = 0.0f;
                        //: } else {
                        } else {
                            //: [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                            [_items[index] setFrame:CGRectMake(CGRectGetMinX(_items[index].frame),
                                                               //: CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               CGRectGetMinY(_items[index].frame) - lastItemHeight,
                                                               //: itemWidth,
                                                               itemWidth,
                                                               //: _items[index].height)];
                                                               _items[index].height)];
                            //: _items[index].alpha = 1.0f;
                            _items[index].alpha = 1.0f;
                        }
                    }
                //: } completion:^(BOOL finished) {
                } completion:^(BOOL finished) {
                    //: __strong __typeof(self) self = weakSelf;
                    __strong __typeof(self) self = weakSelf;
                    //: if (self) {
                    if (self) {
                        //: self.isScrolling = NO;
                        self.isScrolling = NO;
                        //: [self repeatWithAnimationFinished:finished];
                        [self distance:finished];
                    }
                //: }];
                }];
            //: } else {
            } else {
                //: UIViewAnimationOptions animationOptions = UIViewAnimationOptionCurveEaseInOut;
                UIViewAnimationOptions animationOptions = UIViewAnimationOptionCurveEaseInOut;
                //: if (_timeIntervalPerScroll <= 0.0) {
                if (_timeIntervalPerScroll <= 0.0) {
                    // smooth animation
                    //: animationOptions = UIViewAnimationOptionCurveLinear;
                    animationOptions = UIViewAnimationOptionCurveLinear;
                }
                //: __weak __typeof(self) weakSelf = self;
                __weak __typeof(self) weakSelf = self;
                //: [UIView animateWithDuration:_timeDurationPerScroll delay:0.0 options:animationOptions animations:^{
                [UIView animateWithDuration:_timeDurationPerScroll delay:0.0 options:animationOptions animations:^{
                    //: for (int i = 0; i < _items.count; i++) {
                    for (int i = 0; i < _items.count; i++) {
                        //: int index = (i + _firstItemIndex) % _items.count;
                        int index = (i + _firstItemIndex) % _items.count;
                        //: if (i == 0) {
                        if (i == 0) {
                            //: continue;
                            continue;
                        //: } else if (i == 1) {
                        } else if (i == 1) {
                            //: [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                            [_items[index] setFrame:CGRectMake(0.0f, -itemHeight, itemWidth, itemHeight)];
                        //: } else {
                        } else {
                            //: [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 2), itemWidth, itemHeight)];
                            [_items[index] setFrame:CGRectMake(0.0f, itemHeight * (i - 2), itemWidth, itemHeight)];
                        }
                    }
                //: } completion:^(BOOL finished) {
                } completion:^(BOOL finished) {
                    //: __strong __typeof(self) self = weakSelf;
                    __strong __typeof(self) self = weakSelf;
                    //: if (self) {
                    if (self) {
                        //: self.isScrolling = NO;
                        self.isScrolling = NO;
                        //: [self repeatWithAnimationFinished:finished];
                        [self distance:finished];
                    }
                //: }];
                }];
            }

            //: [self moveToNextItemIndex];
            [self lineIndex];
        }
    //: });
    });
}

//: #pragma mark - Data source(private)
#pragma mark - Data source(private)
//: - (void)moveToNextDataIndex {
- (void)performance {
    //: NSUInteger dataCount = 0;
    NSUInteger dataCount = 0;
    //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
    if ([_delegate respondsToSelector:@selector(requestName:)]) {
        //: dataCount = [_delegate numberOfDataForMarqueeView:self];
        dataCount = [_delegate requestName:self];
    }

    //: if (dataCount <= 0) {
    if (dataCount <= 0) {
        //: self.dataIndex = -1;
        self.dataIndex = -1;
    //: } else {
    } else {
        //: self.dataIndex = _dataIndex + 1;
        self.dataIndex = _dataIndex + 1;
        //: if (_dataIndex < 0 || _dataIndex > dataCount - 1) {
        if (_dataIndex < 0 || _dataIndex > dataCount - 1) {
            //: self.dataIndex = 0;
            self.dataIndex = 0;
        }
    }
}

//: #pragma mark - Touch handler(private)
#pragma mark - Touch handler(private)
//: - (void)resetTouchReceiver {
- (void)text {
    //: if (_touchEnabled) {
    if (_touchEnabled) {
        //: if (!_touchReceiver) {
        if (!_touchReceiver) {
            //: self.touchReceiver = [[UUMarqueeViewTouchReceiver alloc] init];
            self.touchReceiver = [[AmbitView alloc] init];
            //: _touchReceiver.touchDelegate = self;
            _touchReceiver.touchDelegate = self;
            //: [self addSubview:_touchReceiver];
            [self addSubview:_touchReceiver];
        //: } else {
        } else {
            //: [self bringSubviewToFront:_touchReceiver];
            [self bringSubviewToFront:_touchReceiver];
        }
    //: } else {
    } else {
        //: if (_touchReceiver) {
        if (_touchReceiver) {
            //: [_touchReceiver removeFromSuperview];
            [_touchReceiver removeFromSuperview];
            //: self.touchReceiver = nil;
            self.touchReceiver = nil;
        }
    }
}

//: #pragma mark - UUMarqueeViewTouchResponder(private)
#pragma mark - CountFitResponder(private)
//: - (void)touchesBegan {
- (void)more {
    //: self.isPausingBeforeTouchesBegan = _isScrollNeedsToStop;
    self.isPausingBeforeTouchesBegan = _isScrollNeedsToStop;
    //: [self pause];
    [self telecasting];
}

//: - (void)touchesEndedAtPoint:(CGPoint)point {
- (void)viewPoint:(CGPoint)point {
    //: for (UUMarqueeItemView *itemView in _items) {
    for (MarqueeIndexView *itemView in _items) {
        //: if ([itemView.layer.presentationLayer hitTest:point]) {
        if ([itemView.layer.presentationLayer hitTest:point]) {
            //: NSUInteger dataCount = 0;
            NSUInteger dataCount = 0;
            //: if ([_delegate respondsToSelector:@selector(numberOfDataForMarqueeView:)]) {
            if ([_delegate respondsToSelector:@selector(requestName:)]) {
                //: dataCount = [_delegate numberOfDataForMarqueeView:self];
                dataCount = [_delegate requestName:self];
            }

            //: if (dataCount > 0 && itemView.tag >= 0 && itemView.tag < dataCount) {
            if (dataCount > 0 && itemView.tag >= 0 && itemView.tag < dataCount) {
                //: if ([self.delegate respondsToSelector:@selector(didTouchItemViewAtIndex:forMarqueeView:)]) {
                if ([self.delegate respondsToSelector:@selector(beggarMyNeighborPolicyAt:extra:)]) {
                    //: [self.delegate didTouchItemViewAtIndex:itemView.tag forMarqueeView:self];
                    [self.delegate beggarMyNeighborPolicyAt:itemView.tag extra:self];
                }
            }
            //: break;
            break;
        }
    }
    //: if (!_isPausingBeforeTouchesBegan) {
    if (!_isPausingBeforeTouchesBegan) {
        //: [self start];
        [self stateStart];
    }
}

//: - (void)touchesCancelled {
- (void)toTing {
    //: if (!_isPausingBeforeTouchesBegan) {
    if (!_isPausingBeforeTouchesBegan) {
        //: [self start];
        [self stateStart];
    }
}

//: @end
@end

//: #pragma mark - UUMarqueeViewTouchReceiver(private)
#pragma mark - AmbitView(private)
//: @implementation UUMarqueeViewTouchReceiver
@implementation AmbitView

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //: if (_touchDelegate) {
    if (_touchDelegate) {
        //: [_touchDelegate touchesBegan];
        [_touchDelegate more];
    }
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: UITouch *touch = [touches anyObject];
    UITouch *touch = [touches anyObject];
    //: CGPoint touchLocation = [touch locationInView:self];
    CGPoint touchLocation = [touch locationInView:self];
    //: if (_touchDelegate) {
    if (_touchDelegate) {
        //: [_touchDelegate touchesEndedAtPoint:touchLocation];
        [_touchDelegate viewPoint:touchLocation];
    }
}

//: - (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: if (_touchDelegate) {
    if (_touchDelegate) {
        //: [_touchDelegate touchesCancelled];
        [_touchDelegate toTing];
    }
}

//: @end
@end

//: #pragma mark - UUMarqueeItemView(Private)
#pragma mark - MarqueeIndexView(Private)
//: @implementation UUMarqueeItemView
@implementation MarqueeIndexView

//: - (void)clear {
- (void)tidingsItem {
    //: [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    //: _didFinishCreate = NO;
    _didFinishCreate = NO;
}

//: @end
@end