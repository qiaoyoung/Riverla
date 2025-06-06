// __DEBUG__
// __CLOSE_PRINT__
//
//  AppChangeView.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/10/21.
//

// __M_A_C_R_O__
//: #import "FUProgressHUD.h"
#import "AppChangeView.h"

//: @interface FUProgressHUD ()
@interface AppChangeView ()

//: @property (nonatomic, strong) CAShapeLayer *backgroundLayer;
@property (nonatomic, strong) CAShapeLayer *backgroundLayer;
//: @property (nonatomic, strong) CAShapeLayer *progressLayer;
@property (nonatomic, strong) CAShapeLayer *progressLayer;
//: @property (nonatomic, strong) UILabel *progressLabel;
@property (nonatomic, strong) UILabel *progressLabel;

//: @end
@end

//: @implementation FUProgressHUD
@implementation AppChangeView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self.layer addSublayer:self.backgroundLayer];
        [self.layer addSublayer:self.backgroundLayer];
        //: [self.layer addSublayer:self.progressLayer];
        [self.layer addSublayer:self.progressLayer];

        //: [self addSubview:self.progressLabel];
        [self addSubview:self.progressLabel];
        //: self.progressLabel.center = self.center;
        self.progressLabel.center = self.center;
    }
    //: return self;
    return self;
}

//: - (void)setProgress:(CGFloat)progress {
- (void)setColorProgress:(CGFloat)progress {
    //: self.progressLayer.strokeEnd = progress;
    self.progressLayer.strokeEnd = progress;

    //: NSInteger temp = (NSInteger)(progress * 100);
    NSInteger temp = (NSInteger)(progress * 100);
    //: self.progressLabel.text = [NSString stringWithFormat:@"%ld%%", (long)temp];
    self.progressLabel.text = [NSString stringWithFormat:@"%ld%%", (long)temp];
}

//: - (CAShapeLayer *)backgroundLayer {
- (CAShapeLayer *)backgroundLayer {
    //: if (!_backgroundLayer) {
    if (!_backgroundLayer) {
        //: UIBezierPath *smoothedPath = [UIBezierPath bezierPathWithArcCenter:self.center radius:CGRectGetWidth(self.frame) / 2.f startAngle:-1.57079632679489661923132169163975144 endAngle:(3.14159265358979323846264338327950288 + 1.57079632679489661923132169163975144) clockwise:YES];
        UIBezierPath *smoothedPath = [UIBezierPath bezierPathWithArcCenter:self.center radius:CGRectGetWidth(self.frame) / 2.f startAngle:-1.57079632679489661923132169163975144 endAngle:(3.14159265358979323846264338327950288 + 1.57079632679489661923132169163975144) clockwise:YES];
        //: _backgroundLayer = [CAShapeLayer layer];
        _backgroundLayer = [CAShapeLayer layer];
        //: _backgroundLayer.frame = self.bounds;
        _backgroundLayer.frame = self.bounds;
        //: _backgroundLayer.fillColor = [UIColor clearColor].CGColor;
        _backgroundLayer.fillColor = [UIColor clearColor].CGColor;
        //: _backgroundLayer.strokeColor = [UIColor colorWithHex:0x111226].CGColor;
        _backgroundLayer.strokeColor = [UIColor smart:0x111226].CGColor;
        //: _backgroundLayer.lineWidth = 4.f;
        _backgroundLayer.lineWidth = 4.f;
        //: _backgroundLayer.strokeEnd = 1.f;
        _backgroundLayer.strokeEnd = 1.f;
        //: _backgroundLayer.path = smoothedPath.CGPath;
        _backgroundLayer.path = smoothedPath.CGPath;
    }
    //: return _backgroundLayer;
    return _backgroundLayer;
}

//: - (CAShapeLayer *)progressLayer {
- (CAShapeLayer *)progressLayer {
    //: if (!_progressLayer) {
    if (!_progressLayer) {
        //: UIBezierPath *smoothedPath = [UIBezierPath bezierPathWithArcCenter:self.center radius:CGRectGetWidth(self.frame) / 2.f startAngle:-1.57079632679489661923132169163975144 endAngle:(3.14159265358979323846264338327950288 + 1.57079632679489661923132169163975144) clockwise:YES];
        UIBezierPath *smoothedPath = [UIBezierPath bezierPathWithArcCenter:self.center radius:CGRectGetWidth(self.frame) / 2.f startAngle:-1.57079632679489661923132169163975144 endAngle:(3.14159265358979323846264338327950288 + 1.57079632679489661923132169163975144) clockwise:YES];
        //: _progressLayer = [CAShapeLayer layer];
        _progressLayer = [CAShapeLayer layer];
        //: _progressLayer.frame = self.bounds;
        _progressLayer.frame = self.bounds;
        //: _progressLayer.fillColor = [UIColor clearColor].CGColor;
        _progressLayer.fillColor = [UIColor clearColor].CGColor;
        //: _progressLayer.strokeColor = [UIColor colorWithHex:0x5EC7FE].CGColor;
        _progressLayer.strokeColor = [UIColor smart:0x5EC7FE].CGColor;
        //: _progressLayer.lineWidth = 4.f;
        _progressLayer.lineWidth = 4.f;
        //: _progressLayer.lineCap = kCALineCapRound;
        _progressLayer.lineCap = kCALineCapRound;
        //: _progressLayer.lineJoin = kCALineJoinBevel;
        _progressLayer.lineJoin = kCALineJoinBevel;
        //: _progressLayer.strokeEnd = 0.f;
        _progressLayer.strokeEnd = 0.f;
        //: _progressLayer.path = smoothedPath.CGPath;
        _progressLayer.path = smoothedPath.CGPath;
    }
    //: return _progressLayer;
    return _progressLayer;
}

//: - (UILabel *)progressLabel {
- (UILabel *)progressLabel {
    //: if (!_progressLabel) {
    if (!_progressLabel) {
        //: _progressLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _progressLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: _progressLabel.textColor = [UIColor whiteColor];
        _progressLabel.textColor = [UIColor whiteColor];
        //: _progressLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightMedium];
        _progressLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightMedium];
        //: _progressLabel.textAlignment = NSTextAlignmentCenter;
        _progressLabel.textAlignment = NSTextAlignmentCenter;
        //: _progressLabel.text = [NSString stringWithFormat:@"0%%"];
        _progressLabel.text = [NSString stringWithFormat:@"0%%"];
    }
    //: return _progressLabel;
    return _progressLabel;
}

//: @end
@end