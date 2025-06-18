
#import <Foundation/Foundation.h>

NSString *StringFromViewData(Byte *data);


//: render_lighting_mon
Byte kStr_styleChangeTitle[] = {64, 19, 7, 1, 215, 160, 84, 110, 111, 109, 95, 103, 110, 105, 116, 104, 103, 105, 108, 95, 114, 101, 100, 110, 101, 114, 20};


//: render_lighting_sun
Byte kStr_sizeText[] = {78, 19, 7, 215, 110, 105, 119, 110, 117, 115, 95, 103, 110, 105, 116, 104, 103, 105, 108, 95, 114, 101, 100, 110, 101, 114, 99};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HighView.m
//  FULiveDemo
//
//  Created by L on 2018/9/20.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FULightingView.h"
#import "HighView.h"

//: @interface FULightingView()
@interface HighView()
//: @property (strong, nonatomic) UIImageView *sunImage;
@property (strong, nonatomic) UIImageView *sunImage;
//: @property (strong, nonatomic) UIImageView *monImage;
@property (strong, nonatomic) UIImageView *monImage;
//: @end
@end

//: @implementation FULightingView
@implementation HighView

//: -(instancetype)initWithFrame:(CGRect)frame{
-(instancetype)initWithFrame:(CGRect)frame{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self setupSubView];
        [self red];
    }
    //: return self;
    return self;
}

//: -(void)setupSubView{
-(void)red{
    //: self.monImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"render_lighting_mon"]];
    self.monImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromViewData(kStr_styleChangeTitle)]];
    //: self.monImage.frame = CGRectMake(10, 0, 20, 20);
    self.monImage.frame = CGRectMake(10, 0, 20, 20);
    //: [self addSubview:self.monImage];
    [self addSubview:self.monImage];
    //: self.sunImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"render_lighting_sun"]];
    self.sunImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromViewData(kStr_sizeText)]];
    //: self.sunImage.frame = CGRectMake(self.frame.size.width - 30, 0, 20, 20);
    self.sunImage.frame = CGRectMake(self.frame.size.width - 30, 0, 20, 20);
    //: [self addSubview:self.sunImage];
    [self addSubview:self.sunImage];

    //: self.slider = [[FULightingSlider alloc] initWithFrame:CGRectMake(40, 0, self.frame.size.width - 80, 20)];
    self.slider = [[CommentControl alloc] initWithFrame:CGRectMake(40, 0, self.frame.size.width - 80, 20)];
    //: [self.slider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    [self.slider addTarget:self action:@selector(changeBubble:) forControlEvents:UIControlEventValueChanged];
    //: [self addSubview:self.slider];
    [self addSubview:self.slider];

    //: self.monImage.transform = CGAffineTransformMakeRotation(1.57079632679489661923132169163975144);
    self.monImage.transform = CGAffineTransformMakeRotation(1.57079632679489661923132169163975144);
    //: self.sunImage.transform = CGAffineTransformMakeRotation(1.57079632679489661923132169163975144);
    self.sunImage.transform = CGAffineTransformMakeRotation(1.57079632679489661923132169163975144);
}


//: -(void)awakeFromNib {
-(void)awakeFromNib {
    //: [super awakeFromNib];
    [super awakeFromNib];
    //: [self setupSubView];
    [self red];

}

//: -(void)sliderValueChange:(FULightingSlider *)sender {
-(void)changeBubble:(CommentControl *)sender {
    //: float value = sender.value;
    float value = sender.value;
    //: if ([self.delegate respondsToSelector:@selector(lightingViewValueDidChange:)]) {
    if ([self.delegate respondsToSelector:@selector(inputs:)]) {
        //: [self.delegate lightingViewValueDidChange:value];
        [self.delegate inputs:value];
    }
}


//: @end
@end

Byte * ViewDataToCache(Byte *data) {
    int myColor = data[0];
    int cannulise = data[1];
    int queryedRecording = data[2];
    if (!myColor) return data + queryedRecording;
    for (int i = 0; i < cannulise / 2; i++) {
        int begin = queryedRecording + i;
        int end = queryedRecording + cannulise - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[queryedRecording + cannulise] = 0;
    return data + queryedRecording;
}

NSString *StringFromViewData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ViewDataToCache(data)];
}  
