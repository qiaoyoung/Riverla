
#import <Foundation/Foundation.h>

NSString *StringFromMartData(Byte *data);


//: loading_%zd
Byte kStr_alcoholTitle[] = {43, 11, 8, 107, 140, 236, 174, 247, 100, 122, 37, 95, 103, 110, 105, 100, 97, 111, 108, 83};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SenseView.m
//  天天网
//
//  Created by zhaoweibing on 14-4-25.
//  Copyright (c) 2014年 Ios. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ShowNotice.h"
#import "SenseView.h"

//: @interface ShowNotice ()
@interface SenseView ()

//: @property (nonatomic, retain) UIView *viewBg;
@property (nonatomic, retain) UIView *viewBg;//黑色半透明背景色
//: @property (weak, nonatomic) UIImageView *gifView;
@property (weak, nonatomic) UIImageView *gifView;

//: @end
@end

//: @implementation ShowNotice
@implementation SenseView

//: - (id)init
- (id)init
{
    //: return [self initWithFrame:CGRectZero];
    return [self initWithFrame:CGRectZero];
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        // Initialization code

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //黑色透明背景
        //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        //: _viewBg.backgroundColor = [UIColor whiteColor];
        _viewBg.backgroundColor = [UIColor whiteColor];
        //: _viewBg.center = CGPointMake(self.width/2, self.height/2);
        _viewBg.center = CGPointMake(self.width/2, self.height/2);
        //: _viewBg.layer.masksToBounds = YES;
        _viewBg.layer.masksToBounds = YES;
        //: _viewBg.layer.cornerRadius = 8;
        _viewBg.layer.cornerRadius = 8;
        //: _viewBg.layer.shadowColor = [UIColor blackColor].CGColor;
        _viewBg.layer.shadowColor = [UIColor blackColor].CGColor;
        //: _viewBg.layer.opacity = 0.85f;
        _viewBg.layer.opacity = 0.85f;
        //: [self addSubview:_viewBg];
        [self addSubview:_viewBg];


    }
    //: return self;
    return self;
}

//: - (UIImageView *)gifView
- (UIImageView *)gifView
{
    //: if (!_gifView) {
    if (!_gifView) {
        //: UIImageView *gifView = [[UIImageView alloc] init];
        UIImageView *gifView = [[UIImageView alloc] init];
        //: [self.viewBg addSubview:_gifView = gifView];
        [self.viewBg addSubview:_gifView = gifView];
    }
    //: return _gifView;
    return _gifView;
}

//: + (ShowNotice *)showNoticeTo:(UIView *)view animated:(BOOL)animated
+ (SenseView *)lipRead:(UIView *)view bubbleShow:(BOOL)animated
{
    //: ShowNotice *notice = [[ShowNotice alloc] init];
    SenseView *notice = [[SenseView alloc] init];
    //: [view addSubview:notice];
    [view addSubview:notice];

        //设置即将刷新状态的动画图片
        //: NSMutableArray *refreshingImages = [NSMutableArray array];
        NSMutableArray *refreshingImages = [NSMutableArray array];
        //: for (NSInteger i = 0; i<30; i++) {
        for (NSInteger i = 0; i<30; i++) {
            //: UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"loading_%zd",i]];
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:StringFromMartData(kStr_alcoholTitle),i]];
            //: [refreshingImages addObject:image];
            [refreshingImages addObject:image];
        }

        //: [notice.gifView stopAnimating];
        [notice.gifView stopAnimating];

            //: notice.gifView.animationImages = refreshingImages;
            notice.gifView.animationImages = refreshingImages;
            //: notice.gifView.animationDuration = refreshingImages.count * 0.1;
            notice.gifView.animationDuration = refreshingImages.count * 0.1;
            //: [notice.gifView startAnimating];
            [notice.gifView startAnimating];


        //: notice.gifView.frame = CGRectMake(0, 0, 100, 100);
        notice.gifView.frame = CGRectMake(0, 0, 100, 100);


    //: return notice;
    return notice;
}





//: - (void)hideNoticeAnimated:(BOOL)animated
- (void)addAcross:(BOOL)animated
{
    //: if (animated == NO) {
    if (animated == NO) {

        //: [self removeFromSuperview];
        [self removeFromSuperview];
        //: return ;
        return ;
    }

    //: [UIView animateWithDuration:0.2f animations:^{
    [UIView animateWithDuration:0.2f animations:^{
        //: self.alpha = 0;
        self.alpha = 0;
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}


//: @end
@end

Byte * MartDataToCache(Byte *data) {
    int cellCousin = data[0];
    int stackView = data[1];
    int restoreOption = data[2];
    if (!cellCousin) return data + restoreOption;
    for (int i = 0; i < stackView / 2; i++) {
        int begin = restoreOption + i;
        int end = restoreOption + stackView - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[restoreOption + stackView] = 0;
    return data + restoreOption;
}

NSString *StringFromMartData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MartDataToCache(data)];
}  
