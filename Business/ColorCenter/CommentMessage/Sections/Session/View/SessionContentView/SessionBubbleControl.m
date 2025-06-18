
#import <Foundation/Foundation.h>

NSString *StringFromNovellaData(Byte *data);


//: chat_ic_voice_g
Byte kStr_outsideFlueData[] = {91, 15, 10, 74, 155, 147, 227, 88, 111, 192, 103, 95, 101, 99, 105, 111, 118, 95, 99, 105, 95, 116, 97, 104, 99, 88};


//: chat_ic_video_g
Byte kStr_realizeTitle[] = {18, 15, 3, 103, 95, 111, 101, 100, 105, 118, 95, 99, 105, 95, 116, 97, 104, 99, 50};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionBubbleControl.m
// Afterwards
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionRtcCallRecordContentView.h"
#import "SessionBubbleControl.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"

//: @implementation FFFSessionRtcCallRecordContentView
@implementation SessionBubbleControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initShowDown
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initShowDown]) {
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
- (void)scale:(StochasticProcessTeam *)data {
    //: [super refresh:data];
    [super scale:data];
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    WorkerSetting *setting = [[Afterwards blue].config with:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [FFFKitUtil messageTipContent:data.message];
    self.textLabel.text = [PopUtil visualImage:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:StringFromNovellaData(kStr_outsideFlueData)];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:StringFromNovellaData(kStr_realizeTitle)];
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
    CGSize contentsize = [self.model contentMidSize:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end

Byte * NovellaDataToCache(Byte *data) {
    int topFice = data[0];
    int auditoryImage = data[1];
    int indexPrim = data[2];
    if (!topFice) return data + indexPrim;
    for (int i = 0; i < auditoryImage / 2; i++) {
        int begin = indexPrim + i;
        int end = indexPrim + auditoryImage - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[indexPrim + auditoryImage] = 0;
    return data + indexPrim;
}

NSString *StringFromNovellaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NovellaDataToCache(data)];
}  
