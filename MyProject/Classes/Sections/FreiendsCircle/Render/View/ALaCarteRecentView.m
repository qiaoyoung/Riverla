
#import <Foundation/Foundation.h>

NSString *StringFromVideoData(Byte *data);        


//: 720×1280
Byte kStr_weightTitle[] = {10, 9, 71, 13, 116, 113, 1, 252, 188, 131, 7, 3, 255, 240, 235, 233, 124, 80, 234, 235, 241, 233, 22};


//: 480×640
Byte kStr_theoryTitle[] = {75, 8, 42, 13, 115, 24, 79, 185, 216, 24, 109, 153, 14, 10, 14, 6, 153, 109, 12, 10, 6, 215};


//: 1080×1920
Byte kStr_aleTitle[] = {94, 10, 52, 6, 51, 12, 253, 252, 4, 252, 143, 99, 253, 5, 254, 252, 128};


//: render_select_media
Byte kStr_purchaseValue[] = {86, 19, 17, 4, 97, 84, 93, 83, 84, 97, 78, 98, 84, 91, 84, 82, 99, 78, 92, 84, 83, 88, 80, 173};


//: 载入图片或视频
Byte kStr_gangDestructionData[] = {44, 21, 69, 10, 165, 144, 109, 104, 250, 175, 163, 120, 120, 160, 64, 96, 160, 86, 121, 162, 68, 66, 161, 67, 81, 163, 98, 65, 164, 93, 76, 67};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ALaCarteRecentView.m
//  FULiveDemo
//
//  Created by 孙慕 on 2019/10/11.
//  Copyright © 2019 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FUPopupMenu.h"
#import "ALaCarteRecentView.h"

//: @interface FUPopupMenu() <FUSegmentedControlDelegate>
@interface ALaCarteRecentView() <TitleDelegate>

//: @property (nonatomic, strong) UIView * menuBackView;
@property (nonatomic, strong) UIView * menuBackView;

//: @property (nonatomic) CGPoint point;
@property (nonatomic) CGPoint point;

//: @property (nonatomic,assign) int onlyTop;
@property (nonatomic,assign) int onlyTop;

//: @property (nonatomic, copy) NSArray *dataSource;
@property (nonatomic, copy) NSArray *dataSource;

//: @property (nonatomic, strong) FUSegmentedControl *segment;
@property (nonatomic, strong) PraiseView *segment;

//: @end
@end
//: @implementation FUPopupMenu
@implementation ALaCarteRecentView

//: - (instancetype)initWithFrame:(CGRect)frame onlyTop:(BOOL)onlyTop defaultSelectedAtIndex:(int)index dataSource:(nullable NSArray *)dataSource
- (instancetype)initWithAssemblageSource:(CGRect)frame notice:(BOOL)onlyTop text:(int)index encounterNumberSource:(nullable NSArray *)dataSource
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
        [self exist];
    }
    //: return self;
    return self;
}


//: - (void)setupView{
- (void)exist{
    //: _menuBackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, (CGRectGetWidth([UIScreen mainScreen].bounds)), (CGRectGetHeight([UIScreen mainScreen].bounds)))];
    _menuBackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, (CGRectGetWidth([UIScreen mainScreen].bounds)), (CGRectGetHeight([UIScreen mainScreen].bounds)))];
    //: _menuBackView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.1];
    _menuBackView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.1];
    //: _menuBackView.alpha = 0;
    _menuBackView.alpha = 0;
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(touchOutSide)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(tableManager)];
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
    NSArray *array = self.dataSource.count > 0 ? self.dataSource : [NSArray arrayWithObjects:StringFromVideoData(kStr_theoryTitle),StringFromVideoData(kStr_weightTitle),StringFromVideoData(kStr_aleTitle), nil];
    //: self.segment = [[FUSegmentedControl alloc] initWithFrame:CGRectMake(25, 28, self.frame.size.width-50, 32) items:array];
    self.segment = [[PraiseView alloc] initWithStartSend:CGRectMake(25, 28, self.frame.size.width-50, 32) loadTing:array];
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
        [btn setImage:[UIImage imageNamed:StringFromVideoData(kStr_purchaseValue)] forState:UIControlStateNormal];
        //: [btn setTitle:NSLocalizedString(@"载入图片或视频", nil) forState:UIControlStateNormal];
        [btn setTitle:NSLocalizedString(StringFromVideoData(kStr_gangDestructionData), nil) forState:UIControlStateNormal];
        //: [btn addTarget:self action:@selector(didClickBtn) forControlEvents:UIControlEventTouchUpInside];
        [btn addTarget:self action:@selector(modelCount) forControlEvents:UIControlEventTouchUpInside];
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
+ (ALaCarteRecentView *)location:(UIView *)view fullPhaseOfTheMoon:(CGRect)frame doingLevelDelegate:(int)index maturityDate:(BOOL)onlyTop exhibit:(id<LinkByDelegate>)delegate{
    //: return [self showRelyOnView:view frame:frame defaultSelectedAtIndex:index onlyTop:onlyTop dataSource:nil delegate:delegate];
    return [self clean:view message:frame length:index key:onlyTop image:nil language:delegate];
}

//: + (FUPopupMenu *)showRelyOnView:(UIView *)view frame:(CGRect)frame defaultSelectedAtIndex:(int)index onlyTop:(BOOL)onlyTop dataSource:(NSArray *)dataSource delegate:(id<FUPopupMenuDelegate>)delegate {
+ (ALaCarteRecentView *)clean:(UIView *)view message:(CGRect)frame length:(int)index key:(BOOL)onlyTop image:(NSArray *)dataSource language:(id<LinkByDelegate>)delegate {
    //: CGRect absoluteRect = [view convertRect:view.bounds toView:FUKeyWindow()];
    CGRect absoluteRect = [view convertRect:view.bounds toView:FUKeyWindow()];
    //: CGPoint relyPoint = CGPointMake(absoluteRect.origin.x + absoluteRect.size.width / 2, absoluteRect.origin.y + absoluteRect.size.height);
    CGPoint relyPoint = CGPointMake(absoluteRect.origin.x + absoluteRect.size.width / 2, absoluteRect.origin.y + absoluteRect.size.height);
    //: FUPopupMenu *popupMenu = [[FUPopupMenu alloc] initWithFrame:frame onlyTop:(BOOL)onlyTop defaultSelectedAtIndex:(int)index dataSource:dataSource];
    ALaCarteRecentView *popupMenu = [[ALaCarteRecentView alloc] initWithAssemblageSource:frame notice:(BOOL)onlyTop text:(int)index encounterNumberSource:dataSource];
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
    [popupMenu scale];
    //: return popupMenu;
    return popupMenu;
}

//: - (void)segmentedControlDidSelectAtIndex:(NSUInteger)index {
- (void)segmented:(NSUInteger)index {
    //: if ([self.delegate respondsToSelector:@selector(fuPopupMenuSegment:didSelectedAtIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(modelEnable:item:)]) {
        //: [self.delegate fuPopupMenuSegment:self.segment didSelectedAtIndex:index];
        [self.delegate modelEnable:self.segment item:index];
    }
}

//: #pragma mark - privates
#pragma mark - privates
//: - (void)show
- (void)scale
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
- (void)tinkleWindow{
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
- (void)tableManager {
    //: [self dismiss];
    [self tinkleWindow];
}

//: -(void)didClickBtn{
-(void)modelCount{
    //: if ([self.delegate respondsToSelector:@selector(fuPopupMenuDidSelectedImage)]) {
    if ([self.delegate respondsToSelector:@selector(sizeInfo)]) {
        //: [self.delegate fuPopupMenuDidSelectedImage];
        [self.delegate sizeInfo];
        //: [self dismiss];
        [self tinkleWindow];
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
    int hangByAHair = data[0];
    int bind = data[1];
    Byte reverse = data[2];
    int tingMy = data[3];
    if (!hangByAHair) return data + tingMy;
    for (int i = tingMy; i < tingMy + bind; i++) {
        int value = data[i] + reverse;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tingMy + bind] = 0;
    return data + tingMy;
}

NSString *StringFromVideoData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VideoDataToCache(data)];
}
