
#import <Foundation/Foundation.h>
typedef struct {
    Byte entitle;
    Byte *fileMare;
    unsigned int executiveHour;
    bool outside;
	int necessary;
	int messageGradCasualty;
	int counterrupt;
} DocumentaryToxicData;

NSString *StringFromDocumentaryToxicData(DocumentaryToxicData *data);


//: loading_%zd
DocumentaryToxicData kStr_rationTitle = (DocumentaryToxicData){152, (Byte []){244, 247, 249, 252, 241, 246, 255, 199, 189, 226, 252, 104}, 11, false, 235, 66, 189};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LightView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/10.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONCustomLoadingView.h"
#import "LightView.h"

//: @interface ZMONCustomLoadingView ()
@interface LightView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (strong, nonatomic) UIImageView *gifView;
@property (strong, nonatomic) UIImageView *gifView;

//: @end
@end

//: @implementation ZMONCustomLoadingView
@implementation LightView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
//        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
//        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
//        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initNim];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initNim{

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
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:StringFromDocumentaryToxicData(&kStr_rationTitle),i]];
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
- (void)textLanguage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)viewBy
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end

Byte *DocumentaryToxicDataToByte(DocumentaryToxicData *data) {
    if (data->outside) return data->fileMare;
    for (int i = 0; i < data->executiveHour; i++) {
        data->fileMare[i] ^= data->entitle;
    }
    data->fileMare[data->executiveHour] = 0;
    data->outside = true;
	if (data->executiveHour >= 3) {
		data->necessary = data->fileMare[0];
		data->messageGradCasualty = data->fileMare[1];
		data->counterrupt = data->fileMare[2];
	}
    return data->fileMare;
}

NSString *StringFromDocumentaryToxicData(DocumentaryToxicData *data) {
    return [NSString stringWithUTF8String:(char *)DocumentaryToxicDataToByte(data)];
}
