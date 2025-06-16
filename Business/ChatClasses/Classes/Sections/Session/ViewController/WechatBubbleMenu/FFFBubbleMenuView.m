//
//  JYBubbleMenuView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/4/1.
//  Copyright © 2022 Jack Young. All rights reserved.
//

#import "FFFBubbleMenuView.h"
#import "FFFBubbleButtonModel.h"

typedef NS_OPTIONS(NSUInteger, FFFBubbleMenuViewDirectionPriorityType) {
    FFFBubbleMenuViewDirectionPriorityType_Up,
    FFFBubbleMenuViewDirectionPriorityType_Down
};

@interface FFFBubbleMenuView()

@property (nonatomic, assign)NSInteger buttonCount;// 总按钮数量
@property (nonatomic, assign)CGFloat bubbleWidth;
@property (nonatomic, assign)CGFloat bubbleHeight;
@property (nonatomic, assign)CGFloat bubbleLeftMargin;// 气泡距离屏幕左右两边的最小距离
@property (nonatomic, assign)CGFloat bubbleContentMargin;// 气泡距离内容的最小距离
@property (nonatomic, assign)CGFloat bubbleBottomMargin;// 气泡距离屏幕上下两边的最小距离

//存放button的背景视图
@property (nonatomic, strong)UIView *buttonsBgView;

//指向内容的箭头宽度
@property (nonatomic, assign)CGFloat arrowWidth;
@property (nonatomic, assign)CGFloat arrowHeight;

@property (nonatomic, strong)UIImageView *arrowView;// 气泡的箭头的高度，该高度包含在bubbleHeight里面。

@property (nonatomic, strong)UIButton *foldbtn;//折叠表情按钮
@property (nonatomic, assign)BOOL isfold;
//存放点赞表情的视图
@property (nonatomic, assign)CGFloat praiseWidth;
@property (nonatomic, strong)UIView *praiseView;

//选中文本在window坐标系中的坐标。
@property (nonatomic, assign)CGRect selectionTextRectInWindow;

@property (nonatomic, assign)FFFBubbleMenuViewDirectionPriorityType directionPriority;

@property (nonatomic, strong)NSMutableArray *oldContentArray;
@property (nonatomic, strong)NSArray *myNewContentArray;

@property (nonatomic, copy)void (^selectBlock)(id data);

@property (nonatomic, copy)void (^praiseBlock)(NSInteger index);

@end

@implementation FFFBubbleMenuView

+ (instancetype)shareMenuView {
    static FFFBubbleMenuView *menu = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (menu == nil) {
            menu = [[FFFBubbleMenuView alloc] init];
        }
    });
  return menu;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //初始化默认数据
        self.backgroundColor = UIColor.clearColor;
        _isfold = YES;
         _buttonCount = 40;
        _praiseWidth = 314;
        _arrowHeight = 20;
        _bubbleLeftMargin = 20;
        _bubbleContentMargin = 15;
        _bubbleBottomMargin = 20;
        _directionPriority = FFFBubbleMenuViewDirectionPriorityType_Up;
        
        UITapGestureRecognizer *singleTapbox1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickView)];
        [self addGestureRecognizer:singleTapbox1];
        
        
        _buttonsBgView = [[UIView alloc] init];
        _buttonsBgView.backgroundColor = [UIColor whiteColor];
        _buttonsBgView.layer.cornerRadius = 8;
        _buttonsBgView.clipsToBounds = true;
        [self addSubview:_buttonsBgView];
        
//        _arrowWidth = 11;
//        _arrowHeight = 5;
//        _arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, _arrowWidth, _arrowHeight)];
////        _arrowView.backgroundColor = UIColor.greenColor;
//        [self addSubview:_arrowView];
        
        _praiseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _praiseWidth, 48)];
        _praiseView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
        _praiseView.layer.borderWidth = 1;
        _praiseView.layer.borderColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.2].CGColor;
        _praiseView.layer.cornerRadius = 12;
        [self addSubview:_praiseView];
        _praiseView.hidden = YES;
        [self drawPraiseButtons];
        
        _oldContentArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)clickView{
    self.praiseView.hidden = YES;
    self.buttonsBgView.hidden = NO;
    [self removeFromSuperview];
}

- (void)drawPraiseButtons{
    
    NSArray *viewsArray = _praiseView.subviews;
    for (int i = 0; i < viewsArray.count; i ++) {
        UIView *subview = viewsArray[i];
        [subview removeFromSuperview];
    }
    
    
    CGFloat topMargin = 10;//button距离上、下面的间距
    CGFloat rightMargin = 10;//button距离左、右面的间距
    CGFloat buttonWidth = 28;
    CGFloat buttonHeight = 28;
    
    NSInteger countInOneLine = 8;
    NSInteger lines = (_buttonCount <= countInOneLine) ? 1:(_buttonCount / countInOneLine);
    
    CGFloat width = rightMargin*(countInOneLine+1) +  buttonWidth*countInOneLine;
    
    if(_isfold){
        _praiseView.frame = CGRectMake(0, 0, width, 48);
    }else{
        _praiseView.frame = CGRectMake(0, 0, width, 48*lines);
    }
    
    //布局所有的按钮
    for (int i = 0; i < _buttonCount; i ++) {
        
        CGFloat x = rightMargin + (i%countInOneLine)*(buttonWidth+rightMargin);
        CGFloat y = topMargin + i/countInOneLine * (buttonHeight + topMargin * 2);
        
        if(_isfold && i==7){
            _foldbtn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
            [_foldbtn addTarget:self action:@selector(onButtonFoldClick:) forControlEvents:UIControlEventTouchUpInside];
            [_foldbtn setImage:[UIImage imageNamed:@"ic_fold"] forState:UIControlStateNormal];
            [_praiseView addSubview:_foldbtn];
            
            return;
        }
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        button.tag = 1 + i;
        [button addTarget:self action:@selector(onButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_praise%d",i+1]] forState:UIControlStateNormal];
        //        button.backgroundColor = RGB_COLOR_String(@"#4355B5");
        [_praiseView addSubview:button];
        
       
    }
    
    
}

- (void)showViewWithButtonModels:(NSArray *)array
                 cursorStartRect:(CGRect)cursorStartRect selectionTextRectInWindow:(CGRect)rect selectBlock:(void(^)(FFFMediaItem *item))block praiseBlock:(void(^)(NSInteger tag))praiseblock {
    
    _selectBlock = block;
    _praiseBlock = praiseblock;
    
    //    ([UIApplication sharedApplication].delegate).window.backgroundColor = UIColor.redColor;
    if (self.superview == nil) {
        [([UIApplication sharedApplication].delegate).window addSubview:self];
    }
    _selectionTextRectInWindow = rect;
    
    UIView *buttonsBgView = [self drawButtonsWithArray:array];
    
    _bubbleWidth = buttonsBgView.frame.size.width;
    _bubbleHeight = buttonsBgView.frame.size.height + 5;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    CGRect selfRect = CGRectZero;
    
    CGFloat praiseheight = 0;
    if(_isfold){
        praiseheight = 48;
    }else{
        praiseheight = 48*5;
    }
    
    //默认的方向是优先方向
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
        if (rect.origin.y - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
            selfRect.origin.y = rect.origin.y - _bubbleContentMargin - _bubbleHeight - praiseheight + 15;
            direction = FFFBubbleMenuViewDirectionPriorityType_Up;
            
            //在下面的情况。
        } else if (screenHeight - rect.origin.y - rect.size.height - _bubbleContentMargin - _bubbleBottomMargin - praiseheight > _bubbleHeight) {
            selfRect.origin.y = rect.origin.y + rect.size.height + _bubbleContentMargin -15;
            direction = FFFBubbleMenuViewDirectionPriorityType_Down;
            
            //上下空间太小，只能压着内容显示该bubbleMenu
        } else {
            selfRect.origin.y = screenHeight - _bubbleBottomMargin - _bubbleHeight - praiseheight -15;
            direction = FFFBubbleMenuViewDirectionPriorityType_Down;
        }
//    }
    
    //将所有按钮页面添加到self上面。
    CGRect bgViewRect = buttonsBgView.frame;
    bgViewRect.origin.y = direction == FFFBubbleMenuViewDirectionPriorityType_Down ? _arrowHeight : praiseheight;
    buttonsBgView.frame = bgViewRect;
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
    if (selfRect.origin.x < _bubbleLeftMargin) {
        selfRect.origin.x = _bubbleLeftMargin;
    } else if (selfRect.origin.x + _bubbleWidth + _bubbleLeftMargin > screenWidth) {
        //        selfRect.origin.x = screenWidth - _bubbleWidth - _bubbleLeftMargin;
        selfRect.origin.x = screenWidth - _praiseWidth;
    }else{
        selfRect.origin.x = screenWidth - _praiseWidth;
    }
    
    selfRect.size.width = _praiseWidth;
    //    selfRect.size.width = _bubbleWidth;
    selfRect.size.height = _bubbleHeight+praiseheight;
    self.frame = selfRect;
    
    // 布局arrow的位置。
    CGRect arrowRect = _arrowView.frame;
    //    CGRect praiseRect = _praiseView.frame;
    
    if (direction == FFFBubbleMenuViewDirectionPriorityType_Up) {
        arrowRect.origin.y = selfRect.size.height - arrowRect.size.height;
        if ((NSInteger)cursorStartRect.size.height == (NSInteger)rect.size.height) {
            arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        } else {
            // 如果不是在同一行，需要按照光标位置计算箭头位置。
            arrowRect.origin.x = (rect.origin.x + rect.size.width - cursorStartRect.origin.x) / 2.0 + cursorStartRect.origin.x - _arrowWidth / 2.0 - selfRect.origin.x;
        }
        //判断如果超出menuView的最右边，让其等于最右边。5是cornerRadius
        if (arrowRect.origin.x > selfRect.size.width - 5 - _arrowWidth) {
            arrowRect.origin.x = selfRect.size.width - 5 - _arrowWidth;
        }
        _arrowView.image = [UIImage imageNamed:@"arrowDown"];
        
        _praiseView.bottom = _buttonsBgView.top;
        _praiseView.left = 0;
        //        _praiseView.left = rect.size.width/2.0 + rect.origin.x - _praiseView.width/2.0;
    } else {
        arrowRect.origin.x = rect.origin.x + rect.size.width / 2.0 - selfRect.origin.x - _arrowWidth / 2.0;
        arrowRect.origin.y = 0;
        _arrowView.image = [UIImage imageNamed:@"arrowUp"];
        
        _praiseView.top = _buttonsBgView.bottom;
        _praiseView.left = 0;
    }
    
    
    _arrowView.frame = arrowRect;
    
    
    buttonsBgView.left = arrowRect.origin.x-50;
    
}

//返回整个buttons所占的view的宽高。返回之后，需加上箭头的高度，就是这个self的宽高。
- (UIView *)drawButtonsWithArray:(NSArray *)array {
    
    //如果数据发生了变化,将所有buttons都删掉，重新画，如果没有变化，不需要重新画，直接返回。
    //    if ([self ifButtonsInfoChanged:array]) {
    NSArray *viewsArray = _buttonsBgView.subviews;
    for (int i = 0; i < viewsArray.count; i ++) {
        UIView *subview = viewsArray[i];
        [subview removeFromSuperview];
    }
    //    } else {
    //        return _buttonsBgView;
    //    }
    _myNewContentArray = array;
    
    CGFloat topMargin = 12;//button距离上、下面的间距
    CGFloat rightMargin = 13;//button距离左、右面的间距
    CGFloat buttonWidth = 85;
    CGFloat buttonHeight = 30;
    
    NSInteger countInOneLine = 5;
    
    //    NSInteger lines = (array.count <= countInOneLine) ? 1:(array.count / countInOneLine + 1);
    
    //确定按钮背景的视图尺寸。
    //    CGFloat width = rightMargin * 2 + ((array.count > countInOneLine)? countInOneLine : array.count) * buttonWidth;
    //    CGFloat height = lines * (2 * topMargin + buttonHeight);
    CGFloat width = rightMargin * 2 +  buttonWidth;
    CGFloat height = topMargin * 2 +  array.count * buttonHeight;
    _buttonsBgView.frame = CGRectMake(0, 0, width, height);
    
    //布局所有的按钮
    for (int i = 0; i < array.count; i ++) {
        //        CGFloat x = rightMargin + i % countInOneLine * buttonWidth;
        //        CGFloat y = topMargin + i / countInOneLine * (buttonHeight + topMargin * 2);
        CGFloat x = rightMargin;
        CGFloat y = topMargin + i*buttonHeight;
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, buttonWidth, buttonHeight)];
        button.tag = 100 + i;
        [button addTarget:self action:@selector(onButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
        
        FFFBubbleButtonModel *model = array[i];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 7, 16, 16)];
        if (model.normalImage) {
            imageView.image = model.normalImage;
        } else {
            imageView.image = [UIImage imageNamed:model.imageName];
        }
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [button addSubview:imageView];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, buttonWidth-25, 30)];
        label.font = [UIFont systemFontOfSize:13];
        //        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = TextColor_4;
        label.text = model.name;
        [button addSubview:label];
        
        //        button.backgroundColor = i % 2 == 0 ? UIColor.redColor : UIColor.greenColor;
        [_buttonsBgView addSubview:button];
    }
    
    _buttonsBgView.backgroundColor = RGB_COLOR_String(@"FFFCF7");
    
    return _buttonsBgView;
}

- (void)onButtonTouched:(UIButton *)button {
    if (_myNewContentArray.count > button.tag - 100) {
        FFFBubbleButtonModel *model = (FFFBubbleButtonModel *)_myNewContentArray[button.tag - 100];
        NSLog(@"点击了%@",model.name);
        
        if([model.name isEqual:LangKey(@"friend_circle_adapter_like")]){
            self.praiseView.hidden = NO;
        }else{
            self.praiseView.hidden = YES;
            
            if (self.selectBlock != nil) {
                self.selectBlock(model.item);
            }
        }
    }
}

- (void)onButtonClick:(UIButton *)button {
    NSLog(@"%ld",(long)button.tag);
    self.praiseView.hidden = YES;
    self.buttonsBgView.hidden = NO;
 
    if (self.praiseBlock != nil) {
        self.praiseBlock(button.tag);
    }
    
}

- (void)onButtonFoldClick:(UIButton *)button {
    _isfold = NO;
    self.buttonsBgView.hidden = YES;
    [self drawPraiseButtons];
}

//判断button的信息内容是不是修改了，true：改动了，   false：内容没有变
- (BOOL)ifButtonsInfoChanged:(NSArray *)newArray {
    if (_oldContentArray.count != newArray.count) {
        _oldContentArray = [NSMutableArray arrayWithArray:newArray];
        return true;
    }
    
    for (int i = 0; i < newArray.count; i ++) {
        BOOL finded = false;
        NSInteger newId = ((FFFBubbleButtonModel *)_oldContentArray[i]).buttonId;
        for (int j = 0; j < _oldContentArray.count; j ++) {
            NSInteger oldId = ((FFFBubbleButtonModel *)_oldContentArray[j]).buttonId;
            if (newId == oldId) {
                finded = true;
                continue;
            }
        }
        // 如果没有找到
        if (finded != true) {
            _oldContentArray = [NSMutableArray arrayWithArray:newArray];
            return true;
        }
    }
    return false;
}

@end
