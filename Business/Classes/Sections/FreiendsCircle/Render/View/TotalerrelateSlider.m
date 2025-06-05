
#import <Foundation/Foundation.h>

NSString *StringFromMaterData(Byte *data);


//: render_lighting
Byte kStr_gladName[] = {60, 15, 4, 85, 103, 110, 105, 116, 104, 103, 105, 108, 95, 114, 101, 100, 110, 101, 114, 168};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalerrelateSlider.m
//  FULiveDemo
//
//  Created by L on 2018/9/20.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FULightingSlider.h"
#import "TotalerrelateSlider.h"

//: @implementation FULightingSlider
@implementation TotalerrelateSlider
{
    //: UIView *line;
    UIView *line;
}

//: -(instancetype)initWithFrame:(CGRect)frame{
-(instancetype)initWithFrame:(CGRect)frame{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self setThumbImage:[UIImage imageNamed:@"render_lighting"] forState:UIControlStateNormal];
        [self setThumbImage:[UIImage imageNamed:StringFromMaterData(kStr_gladName)] forState:UIControlStateNormal];
        //: [self setMaximumTrackTintColor:[UIColor whiteColor]];
        [self setMaximumTrackTintColor:[UIColor whiteColor]];
        //: [self setMinimumTrackTintColor:[UIColor whiteColor]];
        [self setMinimumTrackTintColor:[UIColor whiteColor]];
    }
    //: return self;
    return self;
}

//: - (void)awakeFromNib {
- (void)awakeFromNib {
    //: [super awakeFromNib];
    [super awakeFromNib];
    //: [self setThumbImage:[UIImage imageNamed:@"render_lighting"] forState:UIControlStateNormal];
    [self setThumbImage:[UIImage imageNamed:StringFromMaterData(kStr_gladName)] forState:UIControlStateNormal];
    //: [self setMaximumTrackTintColor:[UIColor whiteColor]];
    [self setMaximumTrackTintColor:[UIColor whiteColor]];
    //: [self setMinimumTrackTintColor:[UIColor whiteColor]];
    [self setMinimumTrackTintColor:[UIColor whiteColor]];
}

//: -(void)layoutSubviews {
-(void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: if (!line) {
    if (!line) {
        //: line = [[UIView alloc] init];
        line = [[UIView alloc] init];
        //: line.backgroundColor = [UIColor whiteColor];
        line.backgroundColor = [UIColor whiteColor];
        //: line.layer.masksToBounds = YES;
        line.layer.masksToBounds = YES;
        //: line.layer.cornerRadius = 1.0;
        line.layer.cornerRadius = 1.0;
        //: [self insertSubview:line atIndex: self.subviews.count - 1];
        [self insertSubview:line atIndex: self.subviews.count - 1];
    }
    //: line.frame = CGRectMake(self.frame.size.width / 2.0 - 1.0, 4.0, 2.0, self.frame.size.height - 8.0);
    line.frame = CGRectMake(self.frame.size.width / 2.0 - 1.0, 4.0, 2.0, self.frame.size.height - 8.0);

    //: CGFloat value = self.value;
    CGFloat value = self.value;
    //: [self setValue:value animated:NO];
    [self setValue:value animated:NO];
}


//: - (void)setValue:(float)value animated:(BOOL)animated {
- (void)setValue:(float)value animated:(BOOL)animated {
    //: [super setValue:value animated:animated];
    [super setValue:value animated:animated];
}

//: @end
@end

Byte * MaterDataToCache(Byte *data) {
    int leased = data[0];
    int optOut = data[1];
    int refresh = data[2];
    if (!leased) return data + refresh;
    for (int i = 0; i < optOut / 2; i++) {
        int begin = refresh + i;
        int end = refresh + optOut - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[refresh + optOut] = 0;
    return data + refresh;
}

NSString *StringFromMaterData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MaterDataToCache(data)];
}  
