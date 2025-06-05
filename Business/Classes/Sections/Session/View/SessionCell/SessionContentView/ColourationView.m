
#import <Foundation/Foundation.h>

NSString *StringFromBrainData(Byte *data);


//: icon_redpacket_
Byte kStr_retailerContent[] = {34, 15, 72, 13, 144, 63, 3, 147, 222, 130, 214, 12, 53, 177, 171, 183, 182, 167, 186, 173, 172, 184, 169, 171, 179, 173, 188, 167, 151};


//: normal
Byte kStr_grayValue[] = {66, 6, 86, 13, 170, 249, 238, 179, 35, 123, 133, 168, 206, 196, 197, 200, 195, 183, 194, 55};


//: 领取红包
Byte kStr_cattleSurpriseValue[] = {55, 12, 34, 7, 213, 110, 27, 11, 196, 168, 7, 177, 184, 9, 220, 196, 7, 174, 167, 42};


//: isaccept
Byte kStr_fishermanValue[] = {52, 8, 71, 9, 65, 49, 227, 218, 31, 176, 186, 168, 170, 170, 172, 183, 187, 230};


//: /wallet/isAcceptRed
Byte kStr_differTitle[] = {8, 19, 48, 4, 95, 167, 145, 156, 156, 149, 164, 95, 153, 163, 113, 147, 147, 149, 160, 164, 130, 149, 148, 236};


//: pressed
Byte kStr_besidesValue[] = {75, 7, 67, 8, 57, 220, 147, 230, 179, 181, 168, 182, 182, 168, 167, 216};


//: data
Byte kStr_batteryContent[] = {40, 4, 56, 5, 151, 156, 153, 172, 153, 112};


//: from_
Byte kStr_availData[] = {8, 5, 58, 14, 243, 136, 197, 79, 136, 247, 244, 236, 102, 175, 160, 172, 169, 167, 153, 117};


//: redid
Byte kStr_meteBedroomName[] = {38, 5, 67, 8, 35, 4, 250, 138, 181, 168, 167, 172, 167, 176};


//: icon_redpacket_custom
Byte kStr_spiritTubValue[] = {35, 21, 92, 10, 29, 57, 56, 47, 47, 97, 197, 191, 203, 202, 187, 206, 193, 192, 204, 189, 191, 199, 193, 208, 187, 191, 209, 207, 208, 203, 201, 139};


//: 查看红包
Byte kStr_commendationFreedomData[] = {14, 12, 98, 11, 81, 172, 154, 231, 227, 212, 114, 72, 1, 7, 73, 254, 237, 73, 28, 4, 71, 238, 231, 104};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColourationView.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "ColourationView.h"
//: #import "NTESRedPacketAttachment.h"
#import "RubyRedRecentAttachmentCustom.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const let_iconValue = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface ColourationView()

//: @property (nonatomic ,strong) UIImageView *redPacketImage;
@property (nonatomic ,strong) UIImageView *redPacketImage;

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UILabel *descLabel;

//: @property (nonatomic, strong) UIView *whiteView;
@property (nonatomic, strong) UIView *whiteView;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

//: @end
@end

//: @implementation NTESSessionRedPacketContentView
@implementation ColourationView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initInput{
    //: self = [super initSessionMessageContentView];
    self = [super initInput];
    //: if (self) {
    if (self) {
        // 内容布局
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _titleLabel.font = [UIFont systemFontOfSize:12.f];
//        _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _subTitleLabel.font = [UIFont systemFontOfSize:12.f];
//        _descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _descLabel.font = [UIFont systemFontOfSize:13.f];

        //: _redPacketImage = [[UIImageView alloc] init];
        _redPacketImage = [[UIImageView alloc] init];
        //: _redPacketImage.clipsToBounds = YES;
        _redPacketImage.clipsToBounds = YES;
        //: _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        //: _redPacketImage.image = [UIImage imageNamed:@"icon_redpacket_custom"];
        _redPacketImage.image = [UIImage imageNamed:StringFromBrainData(kStr_spiritTubValue)];
        //: _redPacketImage.layer.masksToBounds = YES;
        _redPacketImage.layer.masksToBounds = YES;
        //: _redPacketImage.layer.cornerRadius = 10;
        _redPacketImage.layer.cornerRadius = 10;

        //: _whiteView = [[UIView alloc] init];
        _whiteView = [[UIView alloc] init];
        //: _whiteView.userInteractionEnabled = NO;
        _whiteView.userInteractionEnabled = NO;
        //: _whiteView.backgroundColor = [UIColor whiteColor];
        _whiteView.backgroundColor = [UIColor whiteColor];
        //: _whiteView.alpha = 0.5;
        _whiteView.alpha = 0.5;
        //: _whiteView.hidden = YES;
        _whiteView.hidden = YES;

        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;

        //: [self addSubview:_redPacketImage];
        [self addSubview:_redPacketImage];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [self addSubview:_subTitleLabel];
        [self addSubview:_subTitleLabel];
        //: [self addSubview:_descLabel];
        [self addSubview:_descLabel];
        //: [self addSubview:_whiteView];
        [self addSubview:_whiteView];

    }
    //: return self;
    return self;
}


//: - (void)onTouchUpInside:(id)sender
- (void)duringRemote:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(marginned:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        IndexBar *event = [[IndexBar alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = let_iconValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate marginned:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(FFFMessageModel*)data{
- (void)key:(MaxLink*)data{
    //: [super refresh:data];
    [super key:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    RubyRedRecentAttachmentCustom *attachment = (RubyRedRecentAttachmentCustom *)object.attachment;

    //: self.titleLabel.text = attachment.title;
    self.titleLabel.text = attachment.title;
    //: self.descLabel.text = attachment.content;
    self.descLabel.text = attachment.content;

    //: self.titleLabel.textColor = [UIColor lightGrayColor];
    self.titleLabel.textColor = [UIColor lightGrayColor];
    //: self.subTitleLabel.textColor = [UIColor whiteColor];
    self.subTitleLabel.textColor = [UIColor whiteColor];
    //: self.descLabel.textColor = [UIColor whiteColor];
    self.descLabel.textColor = [UIColor whiteColor];

    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: CGRect rect = self.titleLabel.frame;
    CGRect rect = self.titleLabel.frame;
    //: if (CGRectGetMaxX(rect) > self.bounds.size.width)
    if (CGRectGetMaxX(rect) > self.bounds.size.width)
    {
        //: rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        //: self.titleLabel.frame = rect;
        self.titleLabel.frame = rect;
    }
    //: self.subTitleLabel.text = self.model.message.isOutgoingMsg? @"查看红包".ntes_localized : @"领取红包".ntes_localized;
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? StringFromBrainData(kStr_commendationFreedomData).titleLocalized : StringFromBrainData(kStr_cattleSurpriseValue).titleLocalized;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[StringFromBrainData(kStr_meteBedroomName)] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromBrainData(kStr_differTitle)] sub:dict record:NO tapGetFailed:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict straddle:StringFromBrainData(kStr_batteryContent)];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict speedy:StringFromBrainData(kStr_fishermanValue)];
        //: if (isaccept.integerValue == 0) {
        if (isaccept.integerValue == 0) {
            //: _whiteView.hidden = YES;
            _whiteView.hidden = YES;
        //: }else{
        }else{
            //: _whiteView.hidden = NO;
            _whiteView.hidden = NO;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    //: _whiteView.frame = CGRectMake(0, 0, 160, 180);
    _whiteView.frame = CGRectMake(0, 0, 160, 180);

    //: BOOL outgoing = self.model.message.isOutgoingMsg;
    BOOL outgoing = self.model.message.isOutgoingMsg;
    //: if (outgoing)
    if (outgoing)
    {
        //: self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
    }
    //: else
    else
    {
        //: self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
    }
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)sure:(UIControlState)state red:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? StringFromBrainData(kStr_grayValue) : StringFromBrainData(kStr_besidesValue);
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = StringFromBrainData(kStr_retailerContent);
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:StringFromBrainData(kStr_availData)];
    }
    //: else
    else
    {
        //: imageName = [imageName stringByAppendingString:@"to_"];
        imageName = [imageName stringByAppendingString:@"to_"];
    }
    //: imageName = [imageName stringByAppendingString:stateString];
    imageName = [imageName stringByAppendingString:stateString];
    //: return [UIImage imageNamed:imageName];
    return [UIImage imageNamed:imageName];
}

//: @end
@end

Byte * BrainDataToCache(Byte *data) {
    int don = data[0];
    int fab = data[1];
    Byte disagreeableWoman = data[2];
    int prior = data[3];
    if (!don) return data + prior;
    for (int i = prior; i < prior + fab; i++) {
        int value = data[i] - disagreeableWoman;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[prior + fab] = 0;
    return data + prior;
}

NSString *StringFromBrainData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BrainDataToCache(data)];
}
