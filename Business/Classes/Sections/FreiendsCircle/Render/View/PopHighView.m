
#import <Foundation/Foundation.h>

NSString *StringFromVideoData(Byte *data);        


//: 480×640
Byte kStr_indexData[] = {69, 8, 16, 7, 192, 18, 46, 36, 40, 32, 179, 135, 38, 36, 32, 151};


//: 1080×1920
Byte kStr_timeTitle[] = {19, 10, 82, 13, 39, 197, 149, 159, 53, 57, 18, 142, 163, 223, 222, 230, 222, 113, 69, 223, 231, 224, 222, 171};


//: 载入图片或视频
Byte kStr_captureRowData[] = {2, 21, 12, 10, 20, 166, 185, 231, 92, 209, 220, 177, 177, 217, 121, 153, 217, 143, 178, 219, 125, 123, 218, 124, 138, 220, 155, 122, 221, 150, 133, 253};


//: 720×1280
Byte kStr_viewShowValue[] = {28, 9, 61, 4, 250, 245, 243, 134, 90, 244, 245, 251, 243, 47};


//: render_select_media
Byte kStr_cellPinData[] = {90, 19, 80, 4, 34, 21, 30, 20, 21, 34, 15, 35, 21, 28, 21, 19, 36, 15, 29, 21, 20, 25, 17, 201};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopHighView.m
//  FULiveDemo
//
//  Created by 孙慕 on 2019/10/11.
//  Copyright © 2019 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FUPopupMenu.h"
#import "PopHighView.h"

//: @interface FUPopupMenu() <FUSegmentedControlDelegate>
@interface PopHighView() <IndependentBottom>

//: @property (nonatomic, strong) UIView * menuBackView;
@property (nonatomic, strong) UIView * menuBackView;

//: @property (nonatomic) CGPoint point;
@property (nonatomic) CGPoint point;

//: @property (nonatomic,assign) int onlyTop;
@property (nonatomic,assign) int onlyTop;

//: @property (nonatomic, copy) NSArray *dataSource;
@property (nonatomic, copy) NSArray *dataSource;

//: @property (nonatomic, strong) FUSegmentedControl *segment;
@property (nonatomic, strong) PasskeyView *segment;

//: @end
@end
//: @implementation FUPopupMenu
@implementation PopHighView

//: - (instancetype)initWithFrame:(CGRect)frame onlyTop:(BOOL)onlyTop defaultSelectedAtIndex:(int)index dataSource:(nullable NSArray *)dataSource
- (instancetype)initWithView:(CGRect)frame rootage:(BOOL)onlyTop messageBlockEvent:(int)index userCan:(nullable NSArray *)dataSource
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _selIndex = index;
        _selIndex = index;
        //: _onlyTop = onlyTop;
        _onlyTop = onlyTop;
        //: _dataSource = dataSource;
        _dataSource = dataSource;
        //: [self setupView];
        [self positioning];
    }
    //: return self;
    return self;
}


//: - (void)setupView{
- (void)positioning{
    //: _menuBackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, (CGRectGetWidth([UIScreen mainScreen].bounds)), (CGRectGetHeight([UIScreen mainScreen].bounds)))];
    _menuBackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, (CGRectGetWidth([UIScreen mainScreen].bounds)), (CGRectGetHeight([UIScreen mainScreen].bounds)))];
    //: _menuBackView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.1];
    _menuBackView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.1];
    //: _menuBackView.alpha = 0;
    _menuBackView.alpha = 0;
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(touchOutSide)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(nameAcrossSide)];
    //: [_menuBackView addGestureRecognizer: tap];
    [_menuBackView addGestureRecognizer: tap];
    //: self.alpha = 0;
    self.alpha = 0;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *bageView = [[UIView alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, self.frame.size.height - 10)];
    UIView *bageView = [[UIView alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, self.frame.size.height - 10)];
    //: bageView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.6];
    bageView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.6];
    //: bageView.layer.cornerRadius = 5;
    bageView.layer.cornerRadius = 5;
    //: [self addSubview:bageView];
    [self addSubview:bageView];

    /* 分段控制器 */
    //: NSArray *array = self.dataSource.count > 0 ? self.dataSource : [NSArray arrayWithObjects:@"480×640",@"720×1280",@"1080×1920", nil];
    NSArray *array = self.dataSource.count > 0 ? self.dataSource : [NSArray arrayWithObjects:StringFromVideoData(kStr_indexData),StringFromVideoData(kStr_viewShowValue),StringFromVideoData(kStr_timeTitle), nil];
    //: self.segment = [[FUSegmentedControl alloc] initWithFrame:CGRectMake(25, 28, self.frame.size.width-50, 32) items:array];
    self.segment = [[PasskeyView alloc] initWithColorDownItems:CGRectMake(25, 28, self.frame.size.width-50, 32) part:array];
    //: self.segment.layer.masksToBounds = YES;
    self.segment.layer.masksToBounds = YES;
    //: self.segment.layer.cornerRadius = 4;
    self.segment.layer.cornerRadius = 4;
    //: self.segment.layer.borderWidth = 0.5;
    self.segment.layer.borderWidth = 0.5;
    //: self.segment.layer.borderColor = [UIColor whiteColor].CGColor;
    self.segment.layer.borderColor = [UIColor whiteColor].CGColor;
    //: self.segment.titleFont = [UIFont systemFontOfSize:13 weight:UIFontWeightMedium];
    self.segment.titleFont = [UIFont systemFontOfSize:13 weight:UIFontWeightMedium];
    //: self.segment.selectedIndex = _selIndex;
    self.segment.selectedIndex = _selIndex;
    //: self.segment.delegate = self;
    self.segment.delegate = self;
    //: [self addSubview:self.segment];
    [self addSubview:self.segment];

    //: if (!_onlyTop) {
    if (!_onlyTop) {
        //: UIView *view = [[UIView alloc] init];
        UIView *view = [[UIView alloc] init];
        //: view.frame = CGRectMake(25 ,80, self.frame.size.width - 50, 0.5);
        view.frame = CGRectMake(25 ,80, self.frame.size.width - 50, 0.5);
        //: view.layer.backgroundColor = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:0.2].CGColor;
        view.layer.backgroundColor = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:0.2].CGColor;
        //: [self addSubview:view];
        [self addSubview:view];

        //: UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btn.frame = CGRectMake(25, 81, self.frame.size.width-50, 50);
        btn.frame = CGRectMake(25, 81, self.frame.size.width-50, 50);
        //: [btn setImage:[UIImage imageNamed:@"render_select_media"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:StringFromVideoData(kStr_cellPinData)] forState:UIControlStateNormal];
        //: [btn setTitle:NSLocalizedString(@"载入图片或视频", nil) forState:UIControlStateNormal];
        [btn setTitle:NSLocalizedString(StringFromVideoData(kStr_captureRowData), nil) forState:UIControlStateNormal];
        //: [btn addTarget:self action:@selector(didClickBtn) forControlEvents:UIControlEventTouchUpInside];
        [btn addTarget:self action:@selector(dataText) forControlEvents:UIControlEventTouchUpInside];
        //: btn.titleLabel.font = [UIFont systemFontOfSize:13];
        btn.titleLabel.font = [UIFont systemFontOfSize:13];
        //: btn.titleLabel.textAlignment = NSTextAlignmentLeft;
        btn.titleLabel.textAlignment = NSTextAlignmentLeft;
        //: [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: btn.imageEdgeInsets = UIEdgeInsetsMake(0, btn.frame.size.width - btn.imageView.frame.size.width , 0, 0);
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, btn.frame.size.width - btn.imageView.frame.size.width , 0, 0);
        //: btn.titleEdgeInsets = UIEdgeInsetsMake(0, - btn.frame.size.width - btn.imageView.frame.size.width + btn.titleLabel.frame.size.width, 0, 0);
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, - btn.frame.size.width - btn.imageView.frame.size.width + btn.titleLabel.frame.size.width, 0, 0);
        //: [self addSubview:btn];
        [self addSubview:btn];
    }

}


//: + (FUPopupMenu *)showRelyOnView:(UIView *)view frame:(CGRect)frame defaultSelectedAtIndex:(int)index onlyTop:(BOOL)onlyTop delegate:(id<FUPopupMenuDelegate>)delegate{
+ (PopHighView *)clear:(UIView *)view cleanRect:(CGRect)frame flipSource:(int)index justLanguageDelegate:(BOOL)onlyTop titleView:(id<ActivityDelegate>)delegate{
    //: return [self showRelyOnView:view frame:frame defaultSelectedAtIndex:index onlyTop:onlyTop dataSource:nil delegate:delegate];
    return [self areaConstant:view table:frame view:index addIndex:onlyTop bar:nil eliteDelegate:delegate];
}

//: + (FUPopupMenu *)showRelyOnView:(UIView *)view frame:(CGRect)frame defaultSelectedAtIndex:(int)index onlyTop:(BOOL)onlyTop dataSource:(NSArray *)dataSource delegate:(id<FUPopupMenuDelegate>)delegate {
+ (PopHighView *)areaConstant:(UIView *)view table:(CGRect)frame view:(int)index addIndex:(BOOL)onlyTop bar:(NSArray *)dataSource eliteDelegate:(id<ActivityDelegate>)delegate {
    //: CGRect absoluteRect = [view convertRect:view.bounds toView:FUKeyWindow()];
    CGRect absoluteRect = [view convertRect:view.bounds toView:FUKeyWindow()];
    //: CGPoint relyPoint = CGPointMake(absoluteRect.origin.x + absoluteRect.size.width / 2, absoluteRect.origin.y + absoluteRect.size.height);
    CGPoint relyPoint = CGPointMake(absoluteRect.origin.x + absoluteRect.size.width / 2, absoluteRect.origin.y + absoluteRect.size.height);
    //: FUPopupMenu *popupMenu = [[FUPopupMenu alloc] initWithFrame:frame onlyTop:(BOOL)onlyTop defaultSelectedAtIndex:(int)index dataSource:dataSource];
    PopHighView *popupMenu = [[PopHighView alloc] initWithView:frame rootage:(BOOL)onlyTop messageBlockEvent:(int)index userCan:dataSource];
    //: popupMenu.delegate = delegate;
    popupMenu.delegate = delegate;
    //: popupMenu.point = relyPoint;
    popupMenu.point = relyPoint;
    //: CGFloat anchorPointX= (relyPoint.x - frame.origin.x) / frame.size.width * 1.0;
    CGFloat anchorPointX= (relyPoint.x - frame.origin.x) / frame.size.width * 1.0;
    //: popupMenu.layer.anchorPoint = CGPointMake(anchorPointX, 0);
    popupMenu.layer.anchorPoint = CGPointMake(anchorPointX, 0);
    //: popupMenu.layer.frame = frame;
    popupMenu.layer.frame = frame;
    //: [popupMenu show];
    [popupMenu letter];
    //: return popupMenu;
    return popupMenu;
}

//: - (void)segmentedControlDidSelectAtIndex:(NSUInteger)index {
- (void)messaged:(NSUInteger)index {
    //: if ([self.delegate respondsToSelector:@selector(fuPopupMenuSegment:didSelectedAtIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(searched:control:)]) {
        //: [self.delegate fuPopupMenuSegment:self.segment didSelectedAtIndex:index];
        [self.delegate searched:self.segment control:index];
    }
}

//: #pragma mark - privates
#pragma mark - privates
//: - (void)show
- (void)letter
{
    //: [FUKeyWindow() addSubview:_menuBackView];
    [FUKeyWindow() addSubview:_menuBackView];
    //: [FUKeyWindow() addSubview:self];
    [FUKeyWindow() addSubview:self];
    //: self.layer.affineTransform = CGAffineTransformMakeScale(0.1, 0.1);
    self.layer.affineTransform = CGAffineTransformMakeScale(0.1, 0.1);
    //: [UIView animateWithDuration: 0.25 animations:^{
    [UIView animateWithDuration: 0.25 animations:^{
        //: self.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);
        self.layer.affineTransform = CGAffineTransformMakeScale(1.0, 1.0);
        //: self.alpha = 1;
        self.alpha = 1;
        //: self.menuBackView.alpha = 1;
        self.menuBackView.alpha = 1;
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
    //: }];
    }];
}


//: - (void)dismiss{
- (void)filter{
    //: [UIView animateWithDuration: 0.25 animations:^{
    [UIView animateWithDuration: 0.25 animations:^{
        //: self.layer.affineTransform = CGAffineTransformMakeScale(0.1, 0.1);
        self.layer.affineTransform = CGAffineTransformMakeScale(0.1, 0.1);
        //: self.alpha = 0;
        self.alpha = 0;
        //: self.menuBackView.alpha = 0;
        self.menuBackView.alpha = 0;
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: self.delegate = nil;
        self.delegate = nil;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
        //: [self.menuBackView removeFromSuperview];
        [self.menuBackView removeFromSuperview];
    //: }];
    }];
}

//: - (void)touchOutSide {
- (void)nameAcrossSide {
    //: [self dismiss];
    [self filter];
}

//: -(void)didClickBtn{
-(void)dataText{
    //: if ([self.delegate respondsToSelector:@selector(fuPopupMenuDidSelectedImage)]) {
    if ([self.delegate respondsToSelector:@selector(onOption)]) {
        //: [self.delegate fuPopupMenuDidSelectedImage];
        [self.delegate onOption];
        //: [self dismiss];
        [self filter];
    }
}

//: #pragma mark 绘制三角形
#pragma mark 绘制三角形
//: - (void)drawRect:(CGRect)rect
- (void)drawRect:(CGRect)rect
{
    //    [colors[serie] setFill];
    // 设置背景色
    //: [[UIColor whiteColor] set];
    [[UIColor whiteColor] set];
    //拿到当前视图准备好的画板
    //: CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextRef context = UIGraphicsGetCurrentContext();
    //利用path进行绘制三角形
    //: CGContextBeginPath(context);
    CGContextBeginPath(context);//标记
    //: CGContextMoveToPoint(context,
    CGContextMoveToPoint(context,
                         //: self.point.x - self.frame.origin.x, 0);
                         self.point.x - self.frame.origin.x, 0);//设置起点

    //: CGContextAddLineToPoint(context,
    CGContextAddLineToPoint(context,
                            //: self.point.x - self.frame.origin.x - 10 , 10);
                            self.point.x - self.frame.origin.x - 10 , 10);

    //: CGContextAddLineToPoint(context,
    CGContextAddLineToPoint(context,
                            //: self.point.x - self.frame.origin.x + 10, 10);
                            self.point.x - self.frame.origin.x + 10, 10);

    //: CGContextClosePath(context);
    CGContextClosePath(context);//路径结束标志，不写默认封闭

    //: [[UIColor colorWithWhite:0.0 alpha:0.6] setFill]; 
    [[UIColor colorWithWhite:0.0 alpha:0.6] setFill]; //设置填充色
    //: [[UIColor clearColor] setStroke];
    [[UIColor clearColor] setStroke];
    //: CGContextDrawPath(context,
    CGContextDrawPath(context,
                      //: kCGPathFillStroke);
                      kCGPathFillStroke);//绘制路径path

    //    [self setNeedsDisplay];
}

//: @end
@end

Byte * VideoDataToCache(Byte *data) {
    int sign = data[0];
    int hideView = data[1];
    Byte primrosePath = data[2];
    int build = data[3];
    if (!sign) return data + build;
    for (int i = build; i < build + hideView; i++) {
        int value = data[i] + primrosePath;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[build + hideView] = 0;
    return data + build;
}

NSString *StringFromVideoData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VideoDataToCache(data)];
}
