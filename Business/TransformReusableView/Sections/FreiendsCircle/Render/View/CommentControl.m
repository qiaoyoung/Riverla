
#import <Foundation/Foundation.h>

NSString *StringFromItemData(Byte *data);


//: render_lighting
Byte kStr_bubbleColorAreaValue[] = {19, 15, 73, 14, 27, 142, 223, 108, 214, 230, 241, 177, 103, 109, 187, 174, 183, 173, 174, 187, 168, 181, 178, 176, 177, 189, 178, 183, 176, 138};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentControl.m
//  FULiveDemo
//
//  Created by L on 2018/9/20.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FULightingSlider.h"
#import "CommentControl.h"

//: @implementation FULightingSlider
@implementation CommentControl
{
    //: UIView *line;
    UIView *line;
}

//: -(instancetype)initWithFrame:(CGRect)frame{
-(instancetype)initWithFrame:(CGRect)frame{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self setThumbImage:[UIImage imageNamed:@"render_lighting"] forState:UIControlStateNormal];
        [self setThumbImage:[UIImage imageNamed:StringFromItemData(kStr_bubbleColorAreaValue)] forState:UIControlStateNormal];
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
    [self setThumbImage:[UIImage imageNamed:StringFromItemData(kStr_bubbleColorAreaValue)] forState:UIControlStateNormal];
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

Byte * ItemDataToCache(Byte *data) {
    int blueOn = data[0];
    int canMobile = data[1];
    Byte beggarMyNeighbourPolicy = data[2];
    int magnitudeerval = data[3];
    if (!blueOn) return data + magnitudeerval;
    for (int i = magnitudeerval; i < magnitudeerval + canMobile; i++) {
        int value = data[i] - beggarMyNeighbourPolicy;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[magnitudeerval + canMobile] = 0;
    return data + magnitudeerval;
}

NSString *StringFromItemData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ItemDataToCache(data)];
}
