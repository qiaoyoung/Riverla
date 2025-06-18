
#import <Foundation/Foundation.h>

NSString *StringFromStraightAndNarrowData(Byte *data);


//: exporting_video_tips
Byte kStr_bubbleViewName[] = {77, 20, 42, 4, 143, 162, 154, 153, 156, 158, 147, 152, 145, 137, 160, 147, 142, 143, 153, 137, 158, 147, 154, 157, 247};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/10/21.
//

// __M_A_C_R_O__
//: #import "FUExportVideoView.h"
#import "MessageView.h"
//: #import "FUProgressHUD.h"
#import "EmptyTingView.h"

//: @interface FUExportVideoView ()
@interface MessageView ()

//: @property (nonatomic, strong) UIButton *cancelButton;
@property (nonatomic, strong) UIButton *cancelButton;
//: @property (nonatomic, strong) FUProgressHUD *progressHUD;
@property (nonatomic, strong) EmptyTingView *progressHUD;

//: @end
@end

//: @implementation FUExportVideoView
@implementation MessageView

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];

        //: [self configureUI];
        [self everyFind];
    }
    //: return self;
    return self;
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)everyFind {
    //: UILabel *label = [[UILabel alloc] init];
    UILabel *label = [[UILabel alloc] init];
    //: label.text = NSLocalizedString(@"exporting_video_tips", nil);
    label.text = NSLocalizedString(StringFromStraightAndNarrowData(kStr_bubbleViewName), nil);
    //: label.font = [UIFont systemFontOfSize:13 weight:UIFontWeightMedium];
    label.font = [UIFont systemFontOfSize:13 weight:UIFontWeightMedium];
    //: label.textColor = [UIColor whiteColor];
    label.textColor = [UIColor whiteColor];
    //: label.textAlignment = NSTextAlignmentCenter;
    label.textAlignment = NSTextAlignmentCenter;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: [self addSubview:label];
    [self addSubview:label];
    //: [label mas_makeConstraints:^(MASConstraintMaker *make) {
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.leading.equalTo(self.mas_leading).mas_offset(20);
        make.leading.equalTo(self.mas_leading).mas_offset(20);
        //: make.trailing.equalTo(self.mas_trailing).mas_offset(-20);
        make.trailing.equalTo(self.mas_trailing).mas_offset(-20);
        //: make.centerY.equalTo(self.mas_centerY).mas_offset(-3);
        make.centerY.equalTo(self.mas_centerY).mas_offset(-3);
    //: }];
    }];

    //: [self addSubview:self.cancelButton];
    [self addSubview:self.cancelButton];
    //: [self.cancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.cancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.equalTo(self);
        make.centerX.equalTo(self);
        //: make.top.equalTo(label.mas_bottom).mas_offset(30);
        make.top.equalTo(label.mas_bottom).mas_offset(30);
        //: make.size.mas_offset(CGSizeMake(84, 28));
        make.size.mas_offset(CGSizeMake(84, 28));
    //: }];
    }];

    //: [self addSubview:self.progressHUD];
    [self addSubview:self.progressHUD];
    //: [self.progressHUD mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.progressHUD mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.bottom.equalTo(label.mas_top).mas_offset(-26);
        make.bottom.equalTo(label.mas_top).mas_offset(-26);
        //: make.centerX.equalTo(self);
        make.centerX.equalTo(self);
        //: make.size.mas_offset(CGSizeMake(66, 66));
        make.size.mas_offset(CGSizeMake(66, 66));
    //: }];
    }];
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)setExportProgress:(CGFloat)progress {
- (void)setCenterStride:(CGFloat)progress {
    //: [self.progressHUD setProgress:progress];
    [self.progressHUD setTinkleProgress:progress];
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)cancelAction {
- (void)paintTheLily {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(exportVideoViewDidClickCancel)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(atLength)]) {
        //: [self.delegate exportVideoViewDidClickCancel];
        [self.delegate atLength];
    }
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (FUProgressHUD *)progressHUD {
- (EmptyTingView *)progressHUD {
    //: if (!_progressHUD) {
    if (!_progressHUD) {
        //: _progressHUD = [[FUProgressHUD alloc] initWithFrame:CGRectMake(0, 0, 66, 66)];
        _progressHUD = [[EmptyTingView alloc] initWithFrame:CGRectMake(0, 0, 66, 66)];
    }
    //: return _progressHUD;
    return _progressHUD;
}

//: - (UIButton *)cancelButton {
- (UIButton *)cancelButton {
    //: if (!_cancelButton) {
    if (!_cancelButton) {
        //: _cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _cancelButton.frame = CGRectMake(0, 0, 84, 28);
        _cancelButton.frame = CGRectMake(0, 0, 84, 28);
        //: _cancelButton.layer.masksToBounds = YES;
        _cancelButton.layer.masksToBounds = YES;
        //: _cancelButton.layer.cornerRadius = 14.f;
        _cancelButton.layer.cornerRadius = 14.f;
        //: _cancelButton.layer.borderWidth = 1;
        _cancelButton.layer.borderWidth = 1;
        //: _cancelButton.layer.borderColor = [UIColor whiteColor].CGColor;
        _cancelButton.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [_cancelButton setTitle:NSLocalizedString(@"取消", nil) forState:UIControlStateNormal];
        [_cancelButton setTitle:NSLocalizedString(@"取消", nil) forState:UIControlStateNormal];
        //: [_cancelButton addTarget:self action:@selector(cancelAction) forControlEvents:UIControlEventTouchUpInside];
        [_cancelButton addTarget:self action:@selector(paintTheLily) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _cancelButton;
    return _cancelButton;
}

//: @end
@end

Byte * StraightAndNarrowDataToCache(Byte *data) {
    int demonstrate = data[0];
    int directionShouldRow = data[1];
    Byte bluish = data[2];
    int shouldItem = data[3];
    if (!demonstrate) return data + shouldItem;
    for (int i = shouldItem; i < shouldItem + directionShouldRow; i++) {
        int value = data[i] - bluish;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[shouldItem + directionShouldRow] = 0;
    return data + shouldItem;
}

NSString *StringFromStraightAndNarrowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)StraightAndNarrowDataToCache(data)];
}
