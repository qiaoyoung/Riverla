
#import <Foundation/Foundation.h>

NSString *StringFromGeneSupermarketData(Byte *data);


//: TEXT
Byte kStr_approveValue[] = {80, 4, 1, 11, 66, 205, 123, 191, 248, 173, 122, 85, 70, 89, 85, 87};


//: icon_receiver_voice_playing_003
Byte kStr_universeData[] = {57, 31, 40, 13, 206, 250, 134, 85, 72, 118, 10, 188, 42, 145, 139, 151, 150, 135, 154, 141, 139, 141, 145, 158, 141, 154, 135, 158, 151, 145, 139, 141, 135, 152, 148, 137, 161, 145, 150, 143, 135, 88, 88, 91, 240};


//: IMAGE
Byte kStr_universeComedyName[] = {75, 5, 74, 5, 82, 147, 151, 139, 145, 143, 174};


//: content
Byte kStr_fleshValue[] = {68, 7, 75, 6, 217, 90, 174, 186, 185, 191, 176, 185, 191, 141};


//: type
Byte kStr_tornSizeMustValue[] = {41, 4, 90, 13, 86, 87, 82, 69, 38, 10, 42, 97, 198, 206, 211, 202, 191, 212};


//: #F6F7FA
Byte kStr_aircraftContent[] = {24, 7, 73, 13, 19, 1, 101, 228, 103, 75, 246, 84, 113, 108, 143, 127, 143, 128, 143, 138, 247};


//: userName
Byte kStr_tributeTitle[] = {58, 8, 17, 9, 88, 169, 172, 177, 62, 134, 132, 118, 131, 95, 114, 126, 118, 91};


//: AUDIO
Byte kStr_properBenefitName[] = {59, 5, 67, 12, 37, 7, 55, 57, 224, 42, 180, 96, 132, 152, 135, 140, 146, 34};


//: reply
Byte kStr_gasCellName[] = {33, 5, 29, 13, 207, 172, 139, 82, 236, 121, 165, 114, 221, 143, 130, 141, 137, 150, 101};


//: 5D5F66
Byte kStr_viewWhenBlueText[] = {6, 6, 27, 5, 47, 80, 95, 80, 97, 81, 81, 239};


//: VIDEO
Byte kStr_paleKeyData[] = {22, 5, 12, 5, 73, 98, 85, 80, 81, 91, 75};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActivityTitleView.m
// Afterwards
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFReplyedTextContentView.h"
#import "ActivityTitleView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @interface FFFReplyedTextContentView ()<M80AttributedLabelDelegate>
@interface ActivityTitleView ()<BoundaryDelegate>
//: @end
@end

//: @implementation FFFReplyedTextContentView
@implementation ActivityTitleView

//: - (instancetype)initSessionMessageContentView {
- (instancetype)initShowDown {
    //: self = [super initSessionMessageContentView];
    self = [super initShowDown];

    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor withMax:StringFromGeneSupermarketData(kStr_aircraftContent)];
    //: self.layer.cornerRadius = 8;
    self.layer.cornerRadius = 8;
    //: self.layer.masksToBounds = YES;
    self.layer.masksToBounds = YES;

    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)scale:(StochasticProcessTeam *)data {
    //: [super refresh:data];
    [super scale:data];

    //: if ([data.message.remoteExt.allKeys containsObject:@"reply"])
    if ([data.message.remoteExt.allKeys containsObject:StringFromGeneSupermarketData(kStr_gasCellName)])
    {
        //        NSDictionary *dic = @{
        //                @"type": type,//type:TEXT、IMAGE、VIDEO
        //                @"content": contents,//content:文本内容、图片url、视频url
        //                @"userName": info.showName,//消息发送者
        //                @"messageid": @"",//messageid：留着备用
        //        };
        //: NSDictionary *dic = [data.message.remoteExt objectForKey:@"reply"];
        NSDictionary *dic = [data.message.remoteExt objectForKey:StringFromGeneSupermarketData(kStr_gasCellName)];
        //: NSString *content = [dic objectForKey:@"content"];
        NSString *content = [dic objectForKey:StringFromGeneSupermarketData(kStr_fleshValue)];
        //: NSString *userName = [dic objectForKey:@"userName"];
        NSString *userName = [dic objectForKey:StringFromGeneSupermarketData(kStr_tributeTitle)];
        //: NSString *type = [dic objectForKey:@"type"];
        NSString *type = [dic objectForKey:StringFromGeneSupermarketData(kStr_tornSizeMustValue)];

        //: UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        //: CGFloat tableViewWidth = self.superview.width;
        CGFloat tableViewWidth = self.superview.width;
        //: CGSize contentsize = [self.model replyContentSize:tableViewWidth];
        CGSize contentsize = [self.model holder:tableViewWidth];

        //: self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        //: if([type isEqualToString:@"TEXT"]){
        if([type isEqualToString:StringFromGeneSupermarketData(kStr_approveValue)]){
//            self.textLabel.text = content;
            //: [self.textLabel nim_setText:content];
            [self.textLabel time:content];
            //: self.textLabel.hidden = NO;
            self.textLabel.hidden = NO;
            //: self.picView.hidden = YES;
            self.picView.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;

            //: CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            //: self.fromUser.frame = userFrame;
            self.fromUser.frame = userFrame;

            //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            //: self.textLabel.frame = labelFrame;
            self.textLabel.frame = labelFrame;

//            self.fromUser.left =   contentInsets.left;
//            self.label.left =   contentInsets.left;

        //: }else if([type isEqualToString:@"IMAGE"]){
        }else if([type isEqualToString:StringFromGeneSupermarketData(kStr_universeComedyName)]){
//            self.textLabel.text = @"[图片]".nim_localized;

//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);
            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
//            [self.fromUser sizeToFit]; // 再次调整高度

//            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            //: self.picView.frame = picFrame;
            self.picView.frame = picFrame;



        //: }else if([type isEqualToString:@"VIDEO"]){
        }else if([type isEqualToString:StringFromGeneSupermarketData(kStr_paleKeyData)]){
            //            self.textLabel.text = @"[图片]".nim_localized;
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
//            [self.fromUser sizeToFit]; // 再次调整高度

            //            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);

                        //: self.picView.hidden = NO;
                        self.picView.hidden = NO;
                        //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        //: self.picView.frame = picFrame;
                        self.picView.frame = picFrame;

        }
        //: else if([type isEqualToString:@"AUDIO"]){
        else if([type isEqualToString:StringFromGeneSupermarketData(kStr_properBenefitName)]){
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.text = content;
            self.audioLabel.text = content;
//            [self.textLabel nim_setText:content];
            //: self.audioLabel.hidden = NO;
            self.audioLabel.hidden = NO;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
            self.picView.image = [UIImage imageNamed:StringFromGeneSupermarketData(kStr_universeData)];
//                       if(data.shouldShowLeft){
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
//                       }else{
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w_003"];
//                       }

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 50;
            //: CGFloat maxWidth = 70;
            CGFloat maxWidth = 70;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            //: self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            //: self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
            self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
        }

    }

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config repliedSetting:data.message];
    WorkerSetting *setting = [[Afterwards blue].config showImage:data.message];
    //: self.textLabel.textColor = setting.replyedTextColor;
    self.textLabel.textColor = setting.replyedTextColor;
    //: self.textLabel.font = setting.replyedFont;
    self.textLabel.font = setting.replyedFont;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
//    
//    CGFloat tableViewWidth = self.superview.nim_width;
//    CGSize contentsize = [self.model replyContentSize:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;
}

//: - (UILabel *)audioLabel
- (UILabel *)audioLabel
{
    //: if (!_audioLabel)
    if (!_audioLabel)
    {
        //: _audioLabel = [[UILabel alloc]init];
        _audioLabel = [[UILabel alloc]init];
        //: _audioLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _audioLabel.textColor = [UIColor withMax:StringFromGeneSupermarketData(kStr_viewWhenBlueText)];
        //: _audioLabel.font = [UIFont systemFontOfSize:12];
        _audioLabel.font = [UIFont systemFontOfSize:12];
        //: _audioLabel.hidden = YES;
        _audioLabel.hidden = YES;
        //: [self addSubview:_audioLabel];
        [self addSubview:_audioLabel];
    }

    //: return _audioLabel;
    return _audioLabel;
}

//: - (UIImageView *)picView
- (UIImageView *)picView
{
    //: if(!_picView){
    if(!_picView){
        //: _picView = [[UIImageView alloc]init];
        _picView = [[UIImageView alloc]init];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: _picView.hidden = YES;
        _picView.hidden = YES;
        //: [self addSubview:_picView];
        [self addSubview:_picView];
    }
    //: return _picView;
    return _picView;
}

//: - (UILabel *)fromUser
- (UILabel *)fromUser
{
    //: if(!_fromUser){
    if(!_fromUser){
        //: _fromUser = [[UILabel alloc]init];
        _fromUser = [[UILabel alloc]init];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _fromUser.textColor = [UIColor withMax:StringFromGeneSupermarketData(kStr_viewWhenBlueText)];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [self addSubview:_fromUser];
        [self addSubview:_fromUser];
    }
    //: return _fromUser;
    return _fromUser;
}

//: - (M80AttributedLabel *)textLabel
- (ShowTitleView *)textLabel
{
    //: if (!_textLabel)
    if (!_textLabel)
    {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[ShowTitleView alloc] initWithFrame:CGRectZero];
        //: _textLabel.M80delegate = self;
        _textLabel.M80delegate = self;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
//        _textLabel.textColor = [UIColor grayColor];
        //: _textLabel.font = [UIFont systemFontOfSize:13];
        _textLabel.font = [UIFont systemFontOfSize:13];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];
    }

    //: return _textLabel;
    return _textLabel;
}
//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - BoundaryDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)hold:(ShowTitleView *)label
             //: clickedOnLink:(id)linkData{
             label:(id)linkData{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    KitOperation *event = [[KitOperation alloc] init];
    //: event.eventName = FFFKitEventNameTapLabelLink;
    event.eventName = kLet_channelValue;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate bluePosition:event];
}


//: - (void)onTouchUpInside:(id)sender
- (void)ons:(id)sender
{
//    KitOperation *event = [[KitOperation alloc] init];
//    event.eventName = FFFKitEventNameTapRepliedContent;
//    event.messageModel = self.model;
//    [self.delegate onCatchEvent:event];
}

//: - (void)onTouchDown:(id)sender
- (void)arrayed:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)aboveBlack:(id)sender{

}
//: @end
@end

Byte * GeneSupermarketDataToCache(Byte *data) {
    int passagewayStead = data[0];
    int novelEvolutionary = data[1];
    Byte storeFrequentImage = data[2];
    int showGroup = data[3];
    if (!passagewayStead) return data + showGroup;
    for (int i = showGroup; i < showGroup + novelEvolutionary; i++) {
        int value = data[i] - storeFrequentImage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[showGroup + novelEvolutionary] = 0;
    return data + showGroup;
}

NSString *StringFromGeneSupermarketData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GeneSupermarketDataToCache(data)];
}
