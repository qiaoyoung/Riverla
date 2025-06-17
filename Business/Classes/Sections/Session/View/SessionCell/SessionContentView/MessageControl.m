
#import <Foundation/Foundation.h>
typedef struct {
    Byte dryFile;
    Byte *viewPatient;
    unsigned int harass;
    bool runnerLimited;
	int birthday;
} ManeuverData;

NSString *StringFromManeuverData(ManeuverData *data);


//: icon_redpacket_
ManeuverData kStr_ownDownTitle = (ManeuverData){51, (Byte []){90, 80, 92, 93, 108, 65, 86, 87, 67, 82, 80, 88, 86, 71, 108, 151}, 15, false, 155};


//: pressed
ManeuverData kStr_hidePadValue = (ManeuverData){90, (Byte []){42, 40, 63, 41, 41, 63, 62, 241}, 7, false, 234};


//: /wallet/isAcceptRed
ManeuverData kStr_itBubbleData = (ManeuverData){175, (Byte []){128, 216, 206, 195, 195, 202, 219, 128, 198, 220, 238, 204, 204, 202, 223, 219, 253, 202, 203, 31}, 19, false, 119};


//: isaccept
ManeuverData kStr_allowBileData = (ManeuverData){17, (Byte []){120, 98, 112, 114, 114, 116, 97, 101, 170}, 8, false, 99};


//: redid
ManeuverData kStr_conveyKeyContent = (ManeuverData){22, (Byte []){100, 115, 114, 127, 114, 63}, 5, false, 82};


//: 查看红包
ManeuverData kStr_intellectualSeventhDjData = (ManeuverData){119, (Byte []){145, 232, 210, 144, 235, 252, 144, 205, 213, 146, 251, 242, 73}, 12, false, 243};


//: icon_redpacket_custom
ManeuverData kStr_spectrumPadData = (ManeuverData){34, (Byte []){75, 65, 77, 76, 125, 80, 71, 70, 82, 67, 65, 73, 71, 86, 125, 65, 87, 81, 86, 77, 79, 237}, 21, false, 133};


//: data
ManeuverData kStr_gitName = (ManeuverData){123, (Byte []){31, 26, 15, 26, 155}, 4, false, 90};


//: normal
ManeuverData kStr_platformValue = (ManeuverData){206, (Byte []){160, 161, 188, 163, 175, 162, 54}, 6, false, 5};


//: from_
ManeuverData kStr_cellDrawerValue = (ManeuverData){174, (Byte []){200, 220, 193, 195, 241, 233}, 5, false, 198};


//: 领取红包
ManeuverData kStr_booContent = (ManeuverData){194, (Byte []){43, 96, 68, 39, 77, 84, 37, 120, 96, 39, 78, 71, 101}, 12, false, 64};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "MessageControl.h"
//: #import "NTESRedPacketAttachment.h"
#import "RecentAttachment.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const kLet_buttonValue = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface MessageControl()

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
@implementation MessageControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initShowDown{
    //: self = [super initSessionMessageContentView];
    self = [super initShowDown];
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
        _redPacketImage.image = [UIImage imageNamed:StringFromManeuverData(&kStr_spectrumPadData)];
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
- (void)ons:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(bluePosition:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        KitOperation *event = [[KitOperation alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = kLet_buttonValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate bluePosition:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(FFFMessageModel*)data{
- (void)scale:(StochasticProcessTeam*)data{
    //: [super refresh:data];
    [super scale:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    RecentAttachment *attachment = (RecentAttachment *)object.attachment;

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
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? StringFromManeuverData(&kStr_intellectualSeventhDjData).aboveMagnitude : StringFromManeuverData(&kStr_booContent).aboveMagnitude;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[StringFromManeuverData(&kStr_conveyKeyContent)] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromManeuverData(&kStr_itBubbleData)] tool:dict examine:NO titleResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict view:StringFromManeuverData(&kStr_gitName)];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict with:StringFromManeuverData(&kStr_allowBileData)];
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
    } exhibitClick:^(id responseObject, NSError *error) {

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
- (UIImage *)lab:(UIControlState)state preface:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? StringFromManeuverData(&kStr_platformValue) : StringFromManeuverData(&kStr_hidePadValue);
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = StringFromManeuverData(&kStr_ownDownTitle);
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:StringFromManeuverData(&kStr_cellDrawerValue)];
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

Byte *ManeuverDataToByte(ManeuverData *data) {
    if (data->runnerLimited) return data->viewPatient;
    for (int i = 0; i < data->harass; i++) {
        data->viewPatient[i] ^= data->dryFile;
    }
    data->viewPatient[data->harass] = 0;
    data->runnerLimited = true;
	if (data->harass >= 1) {
		data->birthday = data->viewPatient[0];
	}
    return data->viewPatient;
}

NSString *StringFromManeuverData(ManeuverData *data) {
    return [NSString stringWithUTF8String:(char *)ManeuverDataToByte(data)];
}
