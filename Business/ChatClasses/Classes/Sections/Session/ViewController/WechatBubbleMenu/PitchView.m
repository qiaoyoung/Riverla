
#import <Foundation/Foundation.h>

NSString *StringFromAyeData(Byte *data);


//: FFFCF7
Byte kStr_sexName[] = {97, 6, 94, 11, 20, 238, 52, 111, 44, 197, 229, 164, 164, 164, 161, 164, 149, 119};


//: arrowDown
Byte kStr_sateRepresentTitle[] = {41, 9, 69, 6, 47, 173, 166, 183, 183, 180, 188, 137, 180, 188, 179, 206};


//: ic_fold
Byte kStr_vertContent[] = {24, 7, 79, 13, 228, 5, 91, 63, 172, 65, 161, 115, 168, 184, 178, 174, 181, 190, 187, 179, 40};


//: friend_circle_adapter_like
Byte kStr_willSharedName[] = {28, 26, 99, 11, 64, 9, 167, 175, 182, 183, 37, 201, 213, 204, 200, 209, 199, 194, 198, 204, 213, 198, 207, 200, 194, 196, 199, 196, 211, 215, 200, 213, 194, 207, 204, 206, 200, 165};


//: ic_praise%d
Byte kStr_blueOptionContent[] = {25, 11, 60, 13, 120, 78, 79, 33, 74, 43, 146, 116, 167, 165, 159, 155, 172, 174, 157, 165, 175, 161, 97, 160, 164};


//: arrowUp
Byte kStr_mareDisturbingValue[] = {25, 7, 30, 5, 55, 127, 144, 144, 141, 149, 115, 142, 58};


//: #333333
Byte kStr_comingToTingText[] = {38, 7, 69, 14, 99, 200, 210, 48, 159, 209, 140, 9, 92, 220, 104, 120, 120, 120, 120, 120, 120, 49};

// __DEBUG__
// __CLOSE_PRINT__
//
//  JYBubbleMenuView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/4/1.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFBubbleMenuView.h"
#import "PitchView.h"
//: #import "FFFBubbleButtonModel.h"
#import "FrameModel.h"

//: typedef NS_OPTIONS(NSUInteger, FFFBubbleMenuViewDirectionPriorityType) {
typedef NS_OPTIONS(NSUInteger, FFFBubbleMenuViewDirectionPriorityType) {
    //: FFFBubbleMenuViewDirectionPriorityType_Up,
    FFFBubbleMenuViewDirectionPriorityType_Up,
    //: FFFBubbleMenuViewDirectionPriorityType_Down
    FFFBubbleMenuViewDirectionPriorityType_Down
//: };
};

//: @interface FFFBubbleMenuView()
@interface PitchView()

//: @property (nonatomic, assign)NSInteger buttonCount;
@property (nonatomic, assign)NSInteger buttonCount;// 总按钮数量
//: @property (nonatomic, assign)CGFloat bubbleWidth;
@property (nonatomic, assign)CGFloat bubbleWidth;
//: @property (nonatomic, assign)CGFloat bubbleHeight;
@property (nonatomic, assign)CGFloat bubbleHeight;
//: @property (nonatomic, assign)CGFloat bubbleLeftMargin;
@property (nonatomic, assign)CGFloat bubbleLeftMargin;// 气泡距离屏幕左右两边的最小距离
//: @property (nonatomic, assign)CGFloat bubbleContentMargin;
@property (nonatomic, assign)CGFloat bubbleContentMargin;// 气泡距离内容的最小距离
//: @property (nonatomic, assign)CGFloat bubbleBottomMargin;
@property (nonatomic, assign)CGFloat bubbleBottomMargin;// 气泡距离屏幕上下两边的最小距离

//存放button的背景视图
//: @property (nonatomic, strong)UIView *buttonsBgView;
@property (nonatomic, strong)UIView *buttonsBgView;

//指向内容的箭头宽度
//: @property (nonatomic, assign)CGFloat arrowWidth;
@property (nonatomic, assign)CGFloat arrowWidth;
//: @property (nonatomic, assign)CGFloat arrowHeight;
@property (nonatomic, assign)CGFloat arrowHeight;

//: @property (nonatomic, strong)UIImageView *arrowView;
@property (nonatomic, strong)UIImageView *arrowView;// 气泡的箭头的高度，该高度包含在bubbleHeight里面。

//: @property (nonatomic, strong)UIButton *foldbtn;
@property (nonatomic, strong)UIButton *foldbtn;//折叠表情按钮
//: @property (nonatomic, assign)BOOL isfold;
@property (nonatomic, assign)BOOL isfold;
//存放点赞表情的视图
//: @property (nonatomic, assign)CGFloat praiseWidth;
@property (nonatomic, assign)CGFloat praiseWidth;
//: @property (nonatomic, strong)UIView *praiseView;
@property (nonatomic, strong)UIView *praiseView;

//选中文本在window坐标系中的坐标。
//: @property (nonatomic, assign)CGRect selectionTextRectInWindow;
@property (nonatomic, assign)CGRect selectionTextRectInWindow;

//: @property (nonatomic, assign)FFFBubbleMenuViewDirectionPriorityType directionPriority;
@property (nonatomic, assign)FFFBubbleMenuViewDirectionPriorityType directionPriority;

//: @property (nonatomic, strong)NSMutableArray *oldContentArray;
@property (nonatomic, strong)NSMutableArray *oldContentArray;
//: @property (nonatomic, strong)NSArray *myNewContentArray;
@property (nonatomic, strong)NSArray *myNewContentArray;

//: @property (nonatomic, copy)void (^selectBlock)(id data);
@property (nonatomic, copy)void (^selectBlock)(id data);

//: @property (nonatomic, copy)void (^praiseBlock)(NSInteger index);
@property (nonatomic, copy)void (^praiseBlock)(NSInteger index);

//: @end
@end

//: @implementation FFFBubbleMenuView
@implementation PitchView

//: + (instancetype)shareMenuView {
+ (instancetype)voice {
    //: static FFFBubbleMenuView *menu = nil;
    static PitchView *menu = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (menu == nil) {
        if (menu == nil) {
            //: menu = [[FFFBubbleMenuView alloc] init];
            menu = [[PitchView alloc] init];
        }
    //: });
    });
  //: return menu;
  return menu;
}

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //初始化默认数据
        //: self.backgroundColor = UIColor.clearColor;
        self.backgroundColor = UIColor.clearColor;
        //: _isfold = YES;
        _isfold = YES;
         //: _buttonCount = 40;
         _buttonCount = 40;
        //: _praiseWidth = 314;
        _praiseWidth = 314;
        //: _arrowHeight = 20;
        _arrowHeight = 20;
        //: _bubbleLeftMargin = 20;
        _bubbleLeftMargin = 20;
        //: _bubbleContentMargin = 15;
        _bubbleContentMargin = 15;
        //: _bubbleBottomMargin = 20;
        _bubbleBottomMargin = 20;
        //: _directionPriority = FFFBubbleMenuViewDirectionPriorityType_Up;
        _directionPriority = FFFBubbleMenuViewDirectionPriorityType_Up;

        //: UITapGestureRecognizer *singleTapbox1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickView)];
        UITapGestureRecognizer *singleTapbox1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(outpostValue)];
        //: [self addGestureRecognizer:singleTapbox1];
        [self addGestureRecognizer:singleTapbox1];


        //: _buttonsBgView = [[UIView alloc] init];
        _buttonsBgView = [[UIView alloc] init];
        //: _buttonsBgView.backgroundColor = [UIColor whiteColor];
        _buttonsBgView.backgroundColor = [UIColor whiteColor];
        //: _buttonsBgView.layer.cornerRadius = 8;
        _buttonsBgView.layer.cornerRadius = 8;
        //: _buttonsBgView.clipsToBounds = true;
        _buttonsBgView.clipsToBounds = true;
        //: [self addSubview:_buttonsBgView];
        [self addSubview:_buttonsBgView];

//        _arrowWidth = 11;
//        _arrowHeight = 5;
//        _arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, _arrowWidth, _arrowHeight)];
////        _arrowView.backgroundColor = UIColor.greenColor;
//        [self addSubview:_arrowView];

        //: _praiseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _praiseWidth, 48)];
        _praiseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _praiseWidth, 48)];
        //: _praiseView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
        _praiseView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
        //: _praiseView.layer.borderWidth = 1;
        _praiseView.layer.borderWidth = 1;
        //: _praiseView.layer.borderColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2].CGColor;
        _praiseView.layer.borderColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2].CGColor;
        //: _praiseView.layer.cornerRadius = 12;
        _praiseView.layer.cornerRadius = 12;
        //: [self addSubview:_praiseView];
        [self addSubview:_praiseView];
        //: _praiseView.hidden = YES;
        _praiseView.hidden = YES;
        //: [self drawPraiseButtons];
        [self mismanage];

        //: _oldContentArray = [[NSMutableArray alloc] init];
        _oldContentArray = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)clickView{
- (void)outpostValue{
    //: self.praiseView.hidden = YES;
    self.praiseView.hidden = YES;
    //: self.buttonsBgView.hidden = NO;
    self.buttonsBgView.hidden = NO;
    //: [self removeFromSuperview];
    [self removeFromSuperview];
}

//: - (void)drawPraiseButtons{
- (void)mismanage{

    //: NSArray *viewsArray = _praiseView.subviews;
    NSArray *viewsArray = _praiseView.subviews;
    //: for (int i = 0; i < viewsArray.count; i ++) {
    for (int i = 0; i < viewsArray.count; i ++) {
        //: UIView *subview = viewsArray[i];
        UIView *subview = viewsArray[i];
        //: [subview removeFromSuperview];
        [subview removeFromSuperview];
    }


    //: CGFloat topMargin = 10;
    CGFloat topMargin = 10;//button距离上、下面的间距
    //: CGFloat rightMargin = 10;
    CGFloat rightMargin = 10;//button距离左、右面的间距
    //: CGFloat buttonWidth = 28;
    CGFloat buttonWidth = 28;
    //: CGFloat buttonHeight = 28;
    CGFloat buttonHeight = 28;

    //: NSInteger countInOneLine = 8;
    NSInteger countInOneLine = 8;
    //: NSInteger lines = (_buttonCount <= countInOneLine) ? 1:(_buttonCount / countInOneLine);
    NSInteger lines = (_buttonCount <= countInOneLine) ? 1:(_buttonCount / countInOneLine);

    //: CGFloat width = rightMargin*(countInOneLine+1) + buttonWidth*countInOneLine;
    CGFloat width = rightMargin*(countInOneLine+1) + buttonWidth*countInOneLine;

    //: if(_isfold){
    if(_isfold){
        //: _praiseView.frame = CGRectMake(0, 0, width, 48);
        _praiseView.frame = CGRectMake(0, 0, width, 48);
    //: }else{
    }else{
        //: _praiseView.frame = CGRectMake(0, 0, width, 48*lines);
        _praiseView.frame = CGRectMake(0, 0, width, 48*lines);
    }

    //布局所有的按钮
    //: for (int i = 0; i < _buttonCount; i ++) {
    for (int i = 0; i < _buttonCount; i ++) {

        //: CGFloat x = rightMargin + (i%countInOneLine)*(buttonWidth+rightMargin);
        CGFloat x = rightMargin + (i%countInOneLine)*(buttonWidth+rightMargin);
        //: CGFloat y = topMargin + i/countInOneLine * (buttonHeight + topMargin * 2);
        CGFloat y = topMargin + i/countInOneLine * (buttonHeight + topMargin * 2);

        //: if(_isfold && i==7){
        if(_isfold && i==7){
            //: _foldbtn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
            _foldbtn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
            //: [_foldbtn addTarget:self action:@selector(onButtonFoldClick:) forControlEvents:UIControlEventTouchUpInside];
            [_foldbtn addTarget:self action:@selector(coloring:) forControlEvents:UIControlEventTouchUpInside];
            //: [_foldbtn setImage:[UIImage imageNamed:@"ic_fold"] forState:UIControlStateNormal];
            [_foldbtn setImage:[UIImage imageNamed:StringFromAyeData(kStr_vertContent)] forState:UIControlStateNormal];
            //: [_praiseView addSubview:_foldbtn];
            [_praiseView addSubview:_foldbtn];

            //: return;
            return;
        }

        //: UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        //: button.tag = 1 + i;
        button.tag = 1 + i;
        //: [button addTarget:self action:@selector(onButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(disableClick:) forControlEvents:UIControlEventTouchUpInside];
        //: [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_praise%d",i+1]] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:[NSString stringWithFormat:StringFromAyeData(kStr_blueOptionContent),i+1]] forState:UIControlStateNormal];
        //        button.backgroundColor = RGB_COLOR_String(@"#4355B5");
        //: [_praiseView addSubview:button];
        [_praiseView addSubview:button];


    }


}

//: - (void)showViewWithButtonModels:(NSArray *)array
- (void)fender:(NSArray *)array
                 //: cursorStartRect:(CGRect)cursorStartRect selectionTextRectInWindow:(CGRect)rect selectBlock:(void(^)(FFFMediaItem *item))block praiseBlock:(void(^)(NSInteger tag))praiseblock {
                 show:(CGRect)cursorStartRect red:(CGRect)rect corner:(void(^)(ImageRecent *item))block count:(void(^)(NSInteger tag))praiseblock {

    //: _selectBlock = block;
    _selectBlock = block;
    //: _praiseBlock = praiseblock;
    _praiseBlock = praiseblock;

    //    ([UIApplication sharedApplication].delegate).window.backgroundColor = UIColor.redColor;
    //: if (self.superview == nil) {
    if (self.superview == nil) {
        //: [([UIApplication sharedApplication].delegate).window addSubview:self];
        [([UIApplication sharedApplication].delegate).window addSubview:self];
    }
    //: _selectionTextRectInWindow = rect;
    _selectionTextRectInWindow = rect;

    //: UIView *buttonsBgView = [self drawButtonsWithArray:array];
    UIView *buttonsBgView = [self draw:array];

    //: _bubbleWidth = buttonsBgView.frame.size.width;
    _bubbleWidth = buttonsBgView.frame.size.width;
    //: _bubbleHeight = buttonsBgView.frame.size.height + 5;
    _bubbleHeight = buttonsBgView.frame.size.height + 5;

    //: CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    //: CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;

    //: CGRect selfRect = CGRectZero;
    CGRect selfRect = CGRectZero;

    //: CGFloat praiseheight = 0;
    CGFloat praiseheight = 0;
    //: if(_isfold){
    if(_isfold){
        //: praiseheight = 48;
        praiseheight = 48;
    //: }else{
    }else{
        //: praiseheight = 48*5;
        praiseheight = 48*5;
    }

    //默认的方向是优先方向
    //: FFFBubbleMenuViewDirectionPriorityType direction = _directionPriority;
    FFFBubbleMenuViewDirectionPriorityType direction = _directionPriority;
//
//    if (_directionPriority == EtiqAuBubbleMenuViewDirectionPriorityType_Down) {
//        //Y轴处理，bubble在下面。
//        if (screenHeight - rect.origin.y - rect.size.height - _bubbleContentMargin - _bubbleBottomMargin > _bubbleHeight) {
//            selfRect.origin.y = rect.origin.y + rect.size.height + _bubbleContentMargin;
//            direction = EtiqAuBubbleMenuViewDirectionPriorityType_Down;
//
//            //bubble在上面
//        } else if (rect.origin.y - _bubbleContentMargin - _bubbleBottomMargin > _bubbleHeight) {
//            selfRect.origin.y = rect.origin.y - _bubbleContentMargin - _bubbleHeight;
//            direction = EtiqAuBubbleMenuViewDirectionPriorityType_Up;
//        }
//    } else {
//        //优先级Up的话，先判断在上面的情况。

        //在上面的情况。
        //: if (rect.origin.y - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
        if (rect.origin.y - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
            //: selfRect.origin.y = rect.origin.y - _bubbleContentMargin - _bubbleHeight - praiseheight + 15;
            selfRect.origin.y = rect.origin.y - _bubbleContentMargin - _bubbleHeight - praiseheight + 15;
            //: direction = FFFBubbleMenuViewDirectionPriorityType_Up;
            direction = FFFBubbleMenuViewDirectionPriorityType_Up;

            //在下面的情况。
        //: } else if (screenHeight - rect.origin.y - rect.size.height - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
        } else if (screenHeight - rect.origin.y - rect.size.height - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
            //: selfRect.origin.y = rect.origin.y + rect.size.height + _bubbleContentMargin -15;
            selfRect.origin.y = rect.origin.y + rect.size.height + _bubbleContentMargin -15;
            //: direction = FFFBubbleMenuViewDirectionPriorityType_Down;
            direction = FFFBubbleMenuViewDirectionPriorityType_Down;

            //上下空间太小，只能压着内容显示该bubbleMenu
        //: } else {
        } else {
            //: selfRect.origin.y = screenHeight - _bubbleBottomMargin - _bubbleHeight - praiseheight -15;
            selfRect.origin.y = screenHeight - _bubbleBottomMargin - _bubbleHeight - praiseheight -15;
            //: direction = FFFBubbleMenuViewDirectionPriorityType_Down;
            direction = FFFBubbleMenuViewDirectionPriorityType_Down;
        }
//    }

    //将所有按钮页面添加到self上面。
    //: CGRect bgViewRect = buttonsBgView.frame;
    CGRect bgViewRect = buttonsBgView.frame;
    //: bgViewRect.origin.y = direction == FFFBubbleMenuViewDirectionPriorityType_Down ? _arrowHeight : praiseheight;
    bgViewRect.origin.y = direction == FFFBubbleMenuViewDirectionPriorityType_Down ? _arrowHeight : praiseheight;
    //: buttonsBgView.frame = bgViewRect;
    buttonsBgView.frame = bgViewRect;
    //: [self addSubview:buttonsBgView];
    [self addSubview:buttonsBgView];
//    buttonsBgView.centerX = _praiseWidth/2;


    //X轴处理
//    if (direction == EtiqAuBubbleMenuViewDirectionPriorityType_Down) {
//        selfRect.origin.x = rect.size.width / 2.0 + rect.origin.x - _bubbleWidth / 2.0;
//    } else {
//        //        if ((NSInteger)cursorStartRect.size.height == (NSInteger)rect.size.height) {//同一行
//        //            selfRect.origin.x = rect.size.width / 2.0 + rect.origin.x - _bubbleWidth / 2.0;
//        //        } else {
//        //不在同一行
//        //            selfRect.origin.x = (rect.origin.x + rect.size.width - cursorStartRect.origin.x) / 2.0 + cursorStartRect.origin.x - _bubbleWidth / 2.0;
//        selfRect.origin.x = screenWidth - _praiseWidth;
//        //        }
//    }
    //: if (selfRect.origin.x < _bubbleLeftMargin) {
    if (selfRect.origin.x < _bubbleLeftMargin) {
        //: selfRect.origin.x = _bubbleLeftMargin;
        selfRect.origin.x = _bubbleLeftMargin;
    //: } else if (selfRect.origin.x + _bubbleWidth + _bubbleLeftMargin > screenWidth) {
    } else if (selfRect.origin.x + _bubbleWidth + _bubbleLeftMargin > screenWidth) {
        //        selfRect.origin.x = screenWidth - _bubbleWidth - _bubbleLeftMargin;
        //: selfRect.origin.x = screenWidth - _praiseWidth;
        selfRect.origin.x = screenWidth - _praiseWidth;
    //: }else{
    }else{
        //: selfRect.origin.x = screenWidth - _praiseWidth;
        selfRect.origin.x = screenWidth - _praiseWidth;
    }

    //: selfRect.size.width = _praiseWidth;
    selfRect.size.width = _praiseWidth;
    //    selfRect.size.width = _bubbleWidth;
    //: selfRect.size.height = _bubbleHeight+praiseheight;
    selfRect.size.height = _bubbleHeight+praiseheight;
    //: self.frame = selfRect;
    self.frame = selfRect;

    // 布局arrow的位置。
    //: CGRect arrowRect = _arrowView.frame;
    CGRect arrowRect = _arrowView.frame;
    //    CGRect praiseRect = _praiseView.frame;

    //: if (direction == FFFBubbleMenuViewDirectionPriorityType_Up) {
    if (direction == FFFBubbleMenuViewDirectionPriorityType_Up) {
        //: arrowRect.origin.y = selfRect.size.height - arrowRect.size.height;
        arrowRect.origin.y = selfRect.size.height - arrowRect.size.height;
        //: if ((NSInteger)cursorStartRect.size.height == (NSInteger)rect.size.height) {
        if ((NSInteger)cursorStartRect.size.height == (NSInteger)rect.size.height) {
            //: arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
            arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        //: } else {
        } else {
            // 如果不是在同一行，需要按照光标位置计算箭头位置。
            //: arrowRect.origin.x = (rect.origin.x + rect.size.width - cursorStartRect.origin.x) / 2.0 + cursorStartRect.origin.x - _arrowWidth / 2.0 - selfRect.origin.x;
            arrowRect.origin.x = (rect.origin.x + rect.size.width - cursorStartRect.origin.x) / 2.0 + cursorStartRect.origin.x - _arrowWidth / 2.0 - selfRect.origin.x;
        }
        //判断如果超出menuView的最右边，让其等于最右边。5是cornerRadius
        //: if (arrowRect.origin.x > selfRect.size.width - 5 - _arrowWidth) {
        if (arrowRect.origin.x > selfRect.size.width - 5 - _arrowWidth) {
            //: arrowRect.origin.x = selfRect.size.width - 5 - _arrowWidth;
            arrowRect.origin.x = selfRect.size.width - 5 - _arrowWidth;
        }
        //: _arrowView.image = [UIImage imageNamed:@"arrowDown"];
        _arrowView.image = [UIImage imageNamed:StringFromAyeData(kStr_sateRepresentTitle)];

        //: _praiseView.bottom = _buttonsBgView.top;
        _praiseView.bottom = _buttonsBgView.top;
        //: _praiseView.left = 0;
        _praiseView.left = 0;
        //        _praiseView.left = rect.size.width/2.0 + rect.origin.x - _praiseView.width/2.0;
    //: } else {
    } else {
        //: arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        //: arrowRect.origin.y = 0;
        arrowRect.origin.y = 0;
        //: _arrowView.image = [UIImage imageNamed:@"arrowUp"];
        _arrowView.image = [UIImage imageNamed:StringFromAyeData(kStr_mareDisturbingValue)];

        //: _praiseView.top = _buttonsBgView.bottom;
        _praiseView.top = _buttonsBgView.bottom;
        //: _praiseView.left = 0;
        _praiseView.left = 0;
    }


    //: _arrowView.frame = arrowRect;
    _arrowView.frame = arrowRect;


    //: buttonsBgView.left = arrowRect.origin.x-50;
    buttonsBgView.left = arrowRect.origin.x-50;

}

//返回整个buttons所占的view的宽高。返回之后，需加上箭头的高度，就是这个self的宽高。
//: - (UIView *)drawButtonsWithArray:(NSArray *)array {
- (UIView *)draw:(NSArray *)array {

    //如果数据发生了变化,将所有buttons都删掉，重新画，如果没有变化，不需要重新画，直接返回。
    //    if ([self ifButtonsInfoChanged:array]) {
    //: NSArray *viewsArray = _buttonsBgView.subviews;
    NSArray *viewsArray = _buttonsBgView.subviews;
    //: for (int i = 0; i < viewsArray.count; i ++) {
    for (int i = 0; i < viewsArray.count; i ++) {
        //: UIView *subview = viewsArray[i];
        UIView *subview = viewsArray[i];
        //: [subview removeFromSuperview];
        [subview removeFromSuperview];
    }
    //    } else {
    //        return _buttonsBgView;
    //    }
    //: _myNewContentArray = array;
    _myNewContentArray = array;

    //: CGFloat topMargin = 12;
    CGFloat topMargin = 12;//button距离上、下面的间距
    //: CGFloat rightMargin = 13;
    CGFloat rightMargin = 13;//button距离左、右面的间距
    //: CGFloat buttonWidth = 85;
    CGFloat buttonWidth = 85;
    //: CGFloat buttonHeight = 30;
    CGFloat buttonHeight = 30;

    //: NSInteger countInOneLine = 5;
    NSInteger countInOneLine = 5;

    //    NSInteger lines = (array.count <= countInOneLine) ? 1:(array.count / countInOneLine + 1);

    //确定按钮背景的视图尺寸。
    //    CGFloat width = rightMargin * 2 + ((array.count > countInOneLine)? countInOneLine : array.count) * buttonWidth;
    //    CGFloat height = lines * (2 * topMargin + buttonHeight);
    //: CGFloat width = rightMargin * 2 + buttonWidth;
    CGFloat width = rightMargin * 2 + buttonWidth;
    //: CGFloat height = topMargin * 2 + array.count * buttonHeight;
    CGFloat height = topMargin * 2 + array.count * buttonHeight;
    //: _buttonsBgView.frame = CGRectMake(0, 0, width, height);
    _buttonsBgView.frame = CGRectMake(0, 0, width, height);

    //布局所有的按钮
    //: for (int i = 0; i < array.count; i ++) {
    for (int i = 0; i < array.count; i ++) {
        //        CGFloat x = rightMargin + i % countInOneLine * buttonWidth;
        //        CGFloat y = topMargin + i / countInOneLine * (buttonHeight + topMargin * 2);
        //: CGFloat x = rightMargin;
        CGFloat x = rightMargin;
        //: CGFloat y = topMargin + i*buttonHeight;
        CGFloat y = topMargin + i*buttonHeight;
        //: UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        //: button.tag = 100 + i;
        button.tag = 100 + i;
        //: [button addTarget:self action:@selector(onButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(iconned:) forControlEvents:UIControlEventTouchUpInside];

        //: FFFBubbleButtonModel *model = array[i];
        FrameModel *model = array[i];

        //: UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 7, 16, 16)];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 7, 16, 16)];
        //: if (model.normalImage) {
        if (model.normalImage) {
            //: imageView.image = model.normalImage;
            imageView.image = model.normalImage;
        //: } else {
        } else {
            //: imageView.image = [UIImage imageNamed:model.imageName];
            imageView.image = [UIImage imageNamed:model.imageName];
        }
        //: imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        //: [button addSubview:imageView];
        [button addSubview:imageView];

        //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, buttonWidth-25, 30)];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, buttonWidth-25, 30)];
        //: label.font = [UIFont systemFontOfSize:13];
        label.font = [UIFont systemFontOfSize:13];
        //        label.textAlignment = NSTextAlignmentCenter;
        //: label.textColor = [UIColor colorWithHexString:@"#333333"];
        label.textColor = [UIColor withMax:StringFromAyeData(kStr_comingToTingText)];
        //: label.text = model.name;
        label.text = model.name;
        //: [button addSubview:label];
        [button addSubview:label];

        //        button.backgroundColor = i % 2 == 0 ? UIColor.redColor : UIColor.greenColor;
        //: [_buttonsBgView addSubview:button];
        [_buttonsBgView addSubview:button];
    }

    //: _buttonsBgView.backgroundColor = [UIColor colorWithHexString:@"FFFCF7"];
    _buttonsBgView.backgroundColor = [UIColor withMax:StringFromAyeData(kStr_sexName)];

    //: return _buttonsBgView;
    return _buttonsBgView;
}

//: - (void)onButtonTouched:(UIButton *)button {
- (void)iconned:(UIButton *)button {
    //: if (_myNewContentArray.count > button.tag - 100) {
    if (_myNewContentArray.count > button.tag - 100) {
        //: FFFBubbleButtonModel *model = (FFFBubbleButtonModel *)_myNewContentArray[button.tag - 100];
        FrameModel *model = (FrameModel *)_myNewContentArray[button.tag - 100];
        //: NSLog(@"点击了%@",model.name);

        //: if([model.name isEqual:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_like"]]){
        if([model.name isEqual:[ItemManager sessionInformation:StringFromAyeData(kStr_willSharedName)]]){
            //: self.praiseView.hidden = NO;
            self.praiseView.hidden = NO;
        //: }else{
        }else{
            //: self.praiseView.hidden = YES;
            self.praiseView.hidden = YES;

            //: if (self.selectBlock != nil) {
            if (self.selectBlock != nil) {
                //: self.selectBlock(model.item);
                self.selectBlock(model.item);
            }
        }
    }
}

//: - (void)onButtonClick:(UIButton *)button {
- (void)disableClick:(UIButton *)button {
    //: NSLog(@"%ld",(long)button.tag);
    //: self.praiseView.hidden = YES;
    self.praiseView.hidden = YES;
    //: self.buttonsBgView.hidden = NO;
    self.buttonsBgView.hidden = NO;

    //: if (self.praiseBlock != nil) {
    if (self.praiseBlock != nil) {
        //: self.praiseBlock(button.tag);
        self.praiseBlock(button.tag);
    }

}

//: - (void)onButtonFoldClick:(UIButton *)button {
- (void)coloring:(UIButton *)button {
    //: _isfold = NO;
    _isfold = NO;
    //: self.buttonsBgView.hidden = YES;
    self.buttonsBgView.hidden = YES;
    //: [self drawPraiseButtons];
    [self mismanage];
}

//判断button的信息内容是不是修改了，true：改动了，   false：内容没有变
//: - (BOOL)ifButtonsInfoChanged:(NSArray *)newArray {
- (BOOL)tableOfTextsChanged:(NSArray *)newArray {
    //: if (_oldContentArray.count != newArray.count) {
    if (_oldContentArray.count != newArray.count) {
        //: _oldContentArray = [NSMutableArray arrayWithArray:newArray];
        _oldContentArray = [NSMutableArray arrayWithArray:newArray];
        //: return true;
        return true;
    }

    //: for (int i = 0; i < newArray.count; i ++) {
    for (int i = 0; i < newArray.count; i ++) {
        //: BOOL finded = false;
        BOOL finded = false;
        //: NSInteger newId = ((FFFBubbleButtonModel *)_oldContentArray[i]).buttonId;
        NSInteger newId = ((FrameModel *)_oldContentArray[i]).buttonId;
        //: for (int j = 0; j < _oldContentArray.count; j ++) {
        for (int j = 0; j < _oldContentArray.count; j ++) {
            //: NSInteger oldId = ((FFFBubbleButtonModel *)_oldContentArray[j]).buttonId;
            NSInteger oldId = ((FrameModel *)_oldContentArray[j]).buttonId;
            //: if (newId == oldId) {
            if (newId == oldId) {
                //: finded = true;
                finded = true;
                //: continue;
                continue;
            }
        }
        // 如果没有找到
        //: if (finded != true) {
        if (finded != true) {
            //: _oldContentArray = [NSMutableArray arrayWithArray:newArray];
            _oldContentArray = [NSMutableArray arrayWithArray:newArray];
            //: return true;
            return true;
        }
    }
    //: return false;
    return false;
}

//: @end
@end

Byte * AyeDataToCache(Byte *data) {
    int cocaineProm = data[0];
    int untilVoice = data[1];
    Byte titleCousin = data[2];
    int valueSize = data[3];
    if (!cocaineProm) return data + valueSize;
    for (int i = valueSize; i < valueSize + untilVoice; i++) {
        int value = data[i] - titleCousin;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[valueSize + untilVoice] = 0;
    return data + valueSize;
}

NSString *StringFromAyeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AyeDataToCache(data)];
}
