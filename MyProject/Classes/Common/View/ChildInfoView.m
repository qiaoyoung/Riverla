
#import <Foundation/Foundation.h>

NSString *StringFromTheoryData(Byte *data);


//: loading_%zd
Byte kStr_harvestData[] = {41, 11, 9, 182, 80, 91, 183, 197, 26, 100, 122, 37, 95, 103, 110, 105, 100, 97, 111, 108, 178};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChildInfoView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/10.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONCustomLoadingView.h"
#import "ChildInfoView.h"

//: @interface ZMONCustomLoadingView ()
@interface ChildInfoView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (strong, nonatomic) UIImageView *gifView;
@property (strong, nonatomic) UIImageView *gifView;

//: @end
@end

//: @implementation ZMONCustomLoadingView
@implementation ChildInfoView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [UIColor clearColor];
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
//        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
//        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initTextDown];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initTextDown{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    //: _viewBg.backgroundColor = [UIColor whiteColor];
    _viewBg.backgroundColor = [UIColor whiteColor];
    //: _viewBg.center = CGPointMake(self.width/2, self.height/2);
    _viewBg.center = CGPointMake(self.width/2, self.height/2);
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 8;
    _viewBg.layer.cornerRadius = 8;
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: [self.viewBg addSubview:self.gifView];
    [self.viewBg addSubview:self.gifView];
    //: self.gifView.frame = CGRectMake(10, 10, 100, 100);
    self.gifView.frame = CGRectMake(10, 10, 100, 100);
    //: NSMutableArray *refreshingImages = [NSMutableArray array];
    NSMutableArray *refreshingImages = [NSMutableArray array];
    //: for (NSInteger i = 0; i<30; i++) {
    for (NSInteger i = 0; i<30; i++) {
        //: UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"loading_%zd",i]];
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:StringFromTheoryData(kStr_harvestData),i]];
        //: [refreshingImages addObject:image];
        [refreshingImages addObject:image];
    }
    //: [self.gifView stopAnimating];
    [self.gifView stopAnimating];
    //: self.gifView.animationImages = refreshingImages;
    self.gifView.animationImages = refreshingImages;
    //: self.gifView.animationDuration = refreshingImages.count * 0.1;
    self.gifView.animationDuration = refreshingImages.count * 0.1;
    //: [self.gifView startAnimating];
    [self.gifView startAnimating];

}

//: - (UIImageView *)gifView
- (UIImageView *)gifView
{
    //: if (!_gifView) {
    if (!_gifView) {
       //: _gifView = [[UIImageView alloc] init];
       _gifView = [[UIImageView alloc] init];
    }
    //: return _gifView;
    return _gifView;
}

//: - (void)animationClose
- (void)randomShow
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)blueAnimation
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end

Byte * TheoryDataToCache(Byte *data) {
    int securityStare = data[0];
    int church = data[1];
    int set = data[2];
    if (!securityStare) return data + set;
    for (int i = 0; i < church / 2; i++) {
        int begin = set + i;
        int end = set + church - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[set + church] = 0;
    return data + set;
}

NSString *StringFromTheoryData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TheoryDataToCache(data)];
}  
