
#import <Foundation/Foundation.h>

NSString *StringFromCountervalData(Byte *data);


//: SendTextViewBkg
Byte kStr_ticClimbSeventhName[] = {2, 15, 27, 5, 246, 110, 128, 137, 127, 111, 128, 147, 143, 113, 132, 128, 146, 93, 134, 130, 187};


//: null
Byte kStr_attackWithText[] = {59, 4, 85, 11, 65, 141, 248, 205, 218, 197, 154, 195, 202, 193, 193, 41};


//: {18,25,17,25}
Byte kStr_implyParkName[] = {75, 13, 50, 14, 25, 75, 163, 106, 167, 8, 167, 20, 164, 56, 173, 99, 106, 94, 100, 103, 94, 99, 105, 94, 100, 103, 175, 78};


//: 聊天记录
Byte kStr_intellectualValue[] = {50, 12, 75, 13, 169, 200, 182, 251, 57, 155, 110, 225, 117, 51, 204, 213, 48, 239, 244, 51, 249, 251, 48, 8, 224, 65};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentControl.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMultiRetweetContentView.h"
#import "IndependentControl.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "StopOperationAttachment.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"

//: NSString *const NIMDemoEventNameOpenMergeMessage = @"NIMDemoEventNameOpenMergeMessage";
NSString *const kLet_value = @"NIMDemoEventNameOpenMergeMessage";

//: @interface NTESSessionMultiRetweetContentView ()
@interface IndependentControl ()

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSMutableArray <M80AttributedLabel *> *messageLabs;
@property (nonatomic, strong) NSMutableArray <ShowTitleView *> *messageLabs;

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UIImage *bkNormalImage;
@property (nonatomic, strong) UIImage *bkNormalImage;

//: @property (nonatomic, strong) UIButton *touchBtn;
@property (nonatomic, strong) UIButton *touchBtn;

//: @end
@end

//: @implementation NTESSessionMultiRetweetContentView
@implementation IndependentControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initShowDown{
    //: self = [super initSessionMessageContentView];
    self = [super initShowDown];
    //: if (self) {
    if (self) {
        //: static UIImage *bkNormalImage = nil;
        static UIImage *bkNormalImage = nil;
        //: static dispatch_once_t onceToken;
        static dispatch_once_t onceToken;
        //: _dispatch_once(&onceToken, ^{
        _dispatch_once(&onceToken, ^{
            //: bkNormalImage = [[UIImage imageNamed:@"SendTextViewBkg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            bkNormalImage = [[UIImage imageNamed:StringFromCountervalData(kStr_ticClimbSeventhName)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromCountervalData(kStr_implyParkName)) resizingMode:UIImageResizingModeStretch];
        //: });
        });
        //: _bkNormalImage = bkNormalImage;
        _bkNormalImage = bkNormalImage;
        //: _messageLabs = [NSMutableArray array];
        _messageLabs = [NSMutableArray array];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.line];
        [self addSubview:self.line];
        //: [self addSubview:self.subTitleLabel];
        [self addSubview:self.subTitleLabel];
        //: [self addSubview:self.touchBtn];
        [self addSubview:self.touchBtn];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)scale:(StochasticProcessTeam *)data{
    //: [super refresh:data];
    [super scale:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESMultiRetweetAttachment *attachment = (NTESMultiRetweetAttachment *)object.attachment;
    StopOperationAttachment *attachment = (StopOperationAttachment *)object.attachment;

    //: [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    //: [_messageLabs removeAllObjects];
    [_messageLabs removeAllObjects];

    //: _titleLabel.text = [attachment formatTitleMessage];
    _titleLabel.text = [attachment visualAspectInCipherMessage];

    //: for (NTESMessageAbstract *abstract in attachment.abstracts) {
    for (ViewThan *abstract in attachment.abstracts) {
        //: M80AttributedLabel *lab = [self setupMessageLabel];
        ShowTitleView *lab = [self videoLabel];
        //: [lab nim_setText:[attachment formatAbstractMessage:abstract]];
        [lab time:[attachment model:abstract]];
        //: [_messageLabs addObject:lab];
        [_messageLabs addObject:lab];
        //: [self addSubview:lab];
        [self addSubview:lab];
    }
    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing {
- (UIImage *)lab:(UIControlState)state preface:(BOOL)outgoing {
    //: return _bkNormalImage;
    return _bkNormalImage;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat inset = 12.0;
    CGFloat inset = 12.0;
    //: _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    //: if (_messageLabs.count != 0) {
    if (_messageLabs.count != 0) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: __block CGFloat yOffset = 0;
        __block CGFloat yOffset = 0;
        //: [_messageLabs enumerateObjectsUsingBlock:^(M80AttributedLabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_messageLabs enumerateObjectsUsingBlock:^(ShowTitleView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            //: obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            //: yOffset += (obj.height + padding);
            yOffset += (obj.height + padding);
        //: }];
        }];
        //: M80AttributedLabel *lastLab = [_messageLabs lastObject];
        ShowTitleView *lastLab = [_messageLabs lastObject];
        //: _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
    //: } else {
    } else {
        //: _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
    }
    //: _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    //: _touchBtn.frame = self.bounds;
    _touchBtn.frame = self.bounds;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)touchAction:(UIButton *)sender {
- (void)actionGreen:(UIButton *)sender {
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(bluePosition:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        KitOperation *event = [[KitOperation alloc] init];
        //: event.eventName = NIMDemoEventNameOpenMergeMessage;
        event.eventName = kLet_value;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate bluePosition:event];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        //: _titleLabel.text = @"null";
        _titleLabel.text = StringFromCountervalData(kStr_attackWithText);
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: [_titleLabel sizeToFit];
        [_titleLabel sizeToFit];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)subTitleLabel {
- (UILabel *)subTitleLabel {
    //: if (!_subTitleLabel) {
    if (!_subTitleLabel) {
        //: _subTitleLabel = [self setupContentLabel];
        _subTitleLabel = [self segmentShould];
        //: _subTitleLabel.text = @"聊天记录".ntes_localized;
        _subTitleLabel.text = StringFromCountervalData(kStr_intellectualValue).aboveMagnitude;
        //: [_subTitleLabel sizeToFit];
        [_subTitleLabel sizeToFit];
    }
    //: return _subTitleLabel;
    return _subTitleLabel;
}

//: - (UIButton *)touchBtn {
- (UIButton *)touchBtn {
    //: if (!_touchBtn) {
    if (!_touchBtn) {
        //: _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_touchBtn addTarget:self action:@selector(touchAction:) forControlEvents:UIControlEventTouchUpInside];
        [_touchBtn addTarget:self action:@selector(actionGreen:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _touchBtn;
    return _touchBtn;
}


//: - (UILabel *)setupContentLabel {
- (UILabel *)segmentShould {
    //: UILabel *ret = [[UILabel alloc] init];
    UILabel *ret = [[UILabel alloc] init];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.textAlignment = NSTextAlignmentLeft;
    ret.textAlignment = NSTextAlignmentLeft;
    //: ret.text = @"null";
    ret.text = StringFromCountervalData(kStr_attackWithText);
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: [ret sizeToFit];
    [ret sizeToFit];
    //: return ret;
    return ret;
}

//: - (M80AttributedLabel *)setupMessageLabel {
- (ShowTitleView *)videoLabel {
    //: M80AttributedLabel *ret = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    ShowTitleView *ret = [[ShowTitleView alloc] initWithFrame:CGRectZero];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.numberOfLines = 1;
    ret.numberOfLines = 1;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: return ret;
    return ret;
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor lightGrayColor];
        _line.backgroundColor = [UIColor lightGrayColor];
    }
    //: return _line;
    return _line;
}
//: @end
@end

Byte * CountervalDataToCache(Byte *data) {
    int galaColor = data[0];
    int beatTear = data[1];
    Byte menagerie = data[2];
    int brutalPeak = data[3];
    if (!galaColor) return data + brutalPeak;
    for (int i = brutalPeak; i < brutalPeak + beatTear; i++) {
        int value = data[i] - menagerie;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[brutalPeak + beatTear] = 0;
    return data + brutalPeak;
}

NSString *StringFromCountervalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CountervalDataToCache(data)];
}
