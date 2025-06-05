
#import <Foundation/Foundation.h>

NSString *StringFromShouldData(Byte *data);        


//: exporting_video_tips
Byte kStr_normText[] = {53, 20, 43, 11, 205, 128, 2, 220, 17, 245, 190, 58, 77, 69, 68, 71, 73, 62, 67, 60, 52, 75, 62, 57, 58, 68, 52, 73, 62, 69, 72, 94};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteTitleView.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/10/21.
//

// __M_A_C_R_O__
//: #import "FUExportVideoView.h"
#import "StatuteTitleView.h"
//: #import "FUProgressHUD.h"
#import "AppChangeView.h"

//: @interface FUExportVideoView ()
@interface StatuteTitleView ()

//: @property (nonatomic, strong) UIButton *cancelButton;
@property (nonatomic, strong) UIButton *cancelButton;
//: @property (nonatomic, strong) FUProgressHUD *progressHUD;
@property (nonatomic, strong) AppChangeView *progressHUD;

//: @end
@end

//: @implementation FUExportVideoView
@implementation StatuteTitleView

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
        [self user];
    }
    //: return self;
    return self;
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)user {
    //: UILabel *label = [[UILabel alloc] init];
    UILabel *label = [[UILabel alloc] init];
    //: label.text = NSLocalizedString(@"exporting_video_tips", nil);
    label.text = NSLocalizedString(StringFromShouldData(kStr_normText), nil);
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
- (void)setTitleReasonProgress:(CGFloat)progress {
    //: [self.progressHUD setProgress:progress];
    [self.progressHUD setColorProgress:progress];
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)cancelAction {
- (void)teamAction {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(exportVideoViewDidClickCancel)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(addModel)]) {
        //: [self.delegate exportVideoViewDidClickCancel];
        [self.delegate addModel];
    }
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (FUProgressHUD *)progressHUD {
- (AppChangeView *)progressHUD {
    //: if (!_progressHUD) {
    if (!_progressHUD) {
        //: _progressHUD = [[FUProgressHUD alloc] initWithFrame:CGRectMake(0, 0, 66, 66)];
        _progressHUD = [[AppChangeView alloc] initWithFrame:CGRectMake(0, 0, 66, 66)];
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
        [_cancelButton addTarget:self action:@selector(teamAction) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _cancelButton;
    return _cancelButton;
}

//: @end
@end

Byte * ShouldDataToCache(Byte *data) {
    int sentence = data[0];
    int excite = data[1];
    Byte indicator = data[2];
    int talePress = data[3];
    if (!sentence) return data + talePress;
    for (int i = talePress; i < talePress + excite; i++) {
        int value = data[i] + indicator;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[talePress + excite] = 0;
    return data + talePress;
}

NSString *StringFromShouldData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ShouldDataToCache(data)];
}
