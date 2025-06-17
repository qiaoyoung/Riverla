//
//  FFFReplyedTextContentView.m
// MyUserKit
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "FFFReplyedTextContentView.h"
#import "M80AttributedLabel+MyUserKit.h"
#import "UIViewNimKit.h"
#import "MyUserKit.h"

@interface FFFReplyedTextContentView ()<M80AttributedLabelDelegate>
@end

@implementation FFFReplyedTextContentView

- (instancetype)initSessionMessageContentView {
    self = [super initSessionMessageContentView];
    
    self.backgroundColor = RGB_COLOR_String(@"#F6F7FA");
    self.layer.cornerRadius = 8;
    self.layer.masksToBounds = YES;
    
    return self;
}

- (void)refresh:(FFFMessageModel *)data {
    [super refresh:data];
    
    if ([data.message.remoteExt.allKeys containsObject:@"reply"])
    {
        //        NSDictionary *dic = @{
        //                @"type": type,//type:TEXT、IMAGE、VIDEO
        //                @"content": contents,//content:文本内容、图片url、视频url
        //                @"userName": info.showName,//消息发送者
        //                @"messageid": @"",//messageid：留着备用
        //        };
        NSDictionary *dic = [data.message.remoteExt objectForKey:@"reply"];
        NSString *content = [dic objectForKey:@"content"];
        NSString *userName = [dic objectForKey:@"userName"];
        NSString *type = [dic objectForKey:@"type"];
        
        UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        CGFloat tableViewWidth = self.superview.width;
        CGSize contentsize = [self.model replyContentSize:tableViewWidth];
        
        self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        if([type isEqualToString:@"TEXT"]){
//            self.textLabel.text = content;
            [self.textLabel nim_setText:content];
            self.textLabel.hidden = NO;
            self.picView.hidden = YES;
            self.audioLabel.hidden = YES;
            
            CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            self.fromUser.frame = userFrame;

            CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            self.textLabel.frame = labelFrame;
            
//            self.fromUser.left =   contentInsets.left;
//            self.label.left =   contentInsets.left;
          
        }else if([type isEqualToString:@"IMAGE"]){
//            self.textLabel.text = @"[图片]".nim_localized;
            
//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);
            // 先让label根据内容自适应大小
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            CGFloat maxWidth = 90;
            CGFloat finalWidth = MIN(preferredWidth, maxWidth);
            // 设置label的frame
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
//            [self.fromUser sizeToFit]; // 再次调整高度
            
//            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);
            self.textLabel.hidden = YES;
            self.audioLabel.hidden = YES;
            self.picView.hidden = NO;
            [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            self.picView.frame = picFrame;
            
            
            
        }else if([type isEqualToString:@"VIDEO"]){
            //            self.textLabel.text = @"[图片]".nim_localized;
            self.textLabel.hidden = YES;
            self.audioLabel.hidden = YES;
//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);
            
            // 先让label根据内容自适应大小
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            CGFloat maxWidth = 90;
            CGFloat finalWidth = MIN(preferredWidth, maxWidth);
            // 设置label的frame
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
//            [self.fromUser sizeToFit]; // 再次调整高度
            
            //            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);
                        
                        self.picView.hidden = NO;
                        [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        self.picView.frame = picFrame;
            
        }
        else if([type isEqualToString:@"AUDIO"]){
            self.textLabel.hidden = YES;
            self.audioLabel.text = content;
//            [self.textLabel nim_setText:content];
            self.audioLabel.hidden = NO;
            self.picView.hidden = NO;
            self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
//                       if(data.shouldShowLeft){
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
//                       }else{
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w_003"];
//                       }
            
            // 先让label根据内容自适应大小
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 50;
            CGFloat maxWidth = 70;
            CGFloat finalWidth = MIN(preferredWidth, maxWidth);
            // 设置label的frame
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
        }
        
    }
    
    FFFKitSetting *setting = [[MyUserKit sharedKit].config repliedSetting:data.message];
    self.textLabel.textColor = setting.replyedTextColor;
    self.textLabel.font = setting.replyedFont;
    [self setNeedsLayout];
}

- (void)layoutSubviews{
    [super layoutSubviews];
//    UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
//    
//    CGFloat tableViewWidth = self.superview.nim_width;
//    CGSize contentsize = [self.model replyContentSize:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;
}

- (UILabel *)audioLabel
{
    if (!_audioLabel)
    {
        _audioLabel = [[UILabel alloc]init];
        _audioLabel.textColor = RGB_COLOR_String(@"5D5F66");
        _audioLabel.font = [UIFont systemFontOfSize:12];
        _audioLabel.hidden = YES;
        [self addSubview:_audioLabel];
    }
    
    return _audioLabel;
}

- (UIImageView *)picView
{
    if(!_picView){
        _picView = [[UIImageView alloc]init];
        _picView.layer.cornerRadius = 4;
        _picView.layer.masksToBounds = YES;
        _picView.hidden = YES;
        [self addSubview:_picView];
    }
    return _picView;
}

- (UILabel *)fromUser
{
    if(!_fromUser){
        _fromUser = [[UILabel alloc]init];
        _fromUser.textColor = RGB_COLOR_String(@"5D5F66");
        _fromUser.font = [UIFont systemFontOfSize:12];
        [self addSubview:_fromUser];
    }
    return _fromUser;
}

- (M80AttributedLabel *)textLabel
{
    if (!_textLabel)
    {
        _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel.M80delegate = self;
        _textLabel.numberOfLines = 0;
        _textLabel.autoDetectLinks = NO;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.backgroundColor = [UIColor clearColor];
//        _textLabel.textColor = [UIColor grayColor];
        _textLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:_textLabel];
    }
    
    return _textLabel;
}
#pragma mark - M80AttributedLabelDelegate
- (void)m80AttributedLabel:(M80AttributedLabel *)label
             clickedOnLink:(id)linkData{
    FFFKitEvent *event = [[FFFKitEvent alloc] init];
    event.eventName = FFFKitEventNameTapLabelLink;
    event.messageModel = self.model;
    event.data = linkData;
    [self.delegate onCatchEvent:event];
}


- (void)onTouchUpInside:(id)sender
{
//    FFFKitEvent *event = [[FFFKitEvent alloc] init];
//    event.eventName = FFFKitEventNameTapRepliedContent;
//    event.messageModel = self.model;
//    [self.delegate onCatchEvent:event];
}

- (void)onTouchDown:(id)sender
{
    
}

- (void)onTouchUpOutside:(id)sender{
    
}
@end
