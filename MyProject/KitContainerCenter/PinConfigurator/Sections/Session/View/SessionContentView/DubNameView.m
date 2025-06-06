
#import <Foundation/Foundation.h>

NSString *StringFromVoterData(Byte *data);        


//: chat_ic_voice_g
Byte kStr_herConfirmTubValue[] = {37, 15, 68, 11, 8, 169, 41, 200, 34, 169, 182, 31, 36, 29, 48, 27, 37, 31, 27, 50, 43, 37, 31, 33, 27, 35, 74};


//: chat_ic_video_g
Byte kStr_searcherKneelAbetValue[] = {50, 15, 92, 13, 4, 124, 224, 143, 198, 77, 122, 26, 138, 7, 12, 5, 24, 3, 13, 7, 3, 26, 13, 8, 9, 19, 3, 11, 45};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DubNameView.m
// Notice
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionRtcCallRecordContentView.h"
#import "DubNameView.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"

//: @implementation FFFSessionRtcCallRecordContentView
@implementation DubNameView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initInput
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initInput]) {
        //: _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _textLabel.numberOfLines = 1;
        _textLabel.numberOfLines = 1;
        //: _textLabel.backgroundColor = UIColor.clearColor;
        _textLabel.backgroundColor = UIColor.clearColor;
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _icImage = [[UIImageView alloc]init];
        _icImage = [[UIImageView alloc]init];
        //: [self addSubview:_icImage];
        [self addSubview:_icImage];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)key:(MaxLink *)data {
    //: [super refresh:data];
    [super key:data];
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ShowClickMessage *setting = [[Notice fullKit].config sizeGroupBar:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [FFFKitUtil messageTipContent:data.message];
    self.textLabel.text = [UtilizerUtil change:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:StringFromVoterData(kStr_herConfirmTubValue)];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:StringFromVoterData(kStr_searcherKneelAbetValue)];
    }

//    */
//   typedef NS_ENUM(NSInteger, NIMNetCallType){
//       /**
//        *  音频通话
//        */
//       NIMNetCallTypeAudio = 1,
//       /**
//        *  视频通话
//        */
//       NIMNetCallTypeVideo = 2,
//   };

}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.frame.size.width;
    CGFloat tableViewWidth = self.superview.frame.size.width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model show:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end

Byte * VoterDataToCache(Byte *data) {
    int questionCattle = data[0];
    int exceedBow = data[1];
    Byte putPinion = data[2];
    int truthEndless = data[3];
    if (!questionCattle) return data + truthEndless;
    for (int i = truthEndless; i < truthEndless + exceedBow; i++) {
        int value = data[i] + putPinion;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[truthEndless + exceedBow] = 0;
    return data + truthEndless;
}

NSString *StringFromVoterData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VoterDataToCache(data)];
}
