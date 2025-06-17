
#import <Foundation/Foundation.h>

NSString *StringFromComingData(Byte *data);        


//: MM-dd HH:mm
Byte kStr_martMessageCousinValue[] = {13, 11, 63, 13, 184, 58, 117, 1, 68, 105, 164, 134, 129, 14, 14, 238, 37, 37, 225, 9, 9, 251, 46, 46, 24};


//: title
Byte kStr_maxSexAideValue[] = {25, 5, 2, 13, 89, 51, 234, 58, 206, 201, 174, 168, 114, 114, 103, 114, 106, 99, 10};


//: #E9ECF0
Byte kStr_corridorMustTitle[] = {61, 7, 76, 13, 215, 19, 111, 105, 135, 155, 32, 87, 212, 215, 249, 237, 249, 247, 250, 228, 226};


//: #999999
Byte kStr_submitName[] = {27, 7, 95, 11, 39, 35, 210, 136, 4, 78, 73, 196, 218, 218, 218, 218, 218, 218, 42};


//: #333333
Byte kStr_carefullyTitle[] = {80, 7, 60, 11, 153, 221, 1, 8, 139, 32, 191, 231, 247, 247, 247, 247, 247, 247, 185};


//: time
Byte kStr_ficeRefreshTitle[] = {10, 4, 68, 12, 79, 2, 117, 233, 242, 45, 29, 22, 48, 37, 41, 33, 175};


//: content
Byte kStr_levelSignificanceData[] = {14, 7, 15, 4, 84, 96, 95, 101, 86, 95, 101, 67};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListCell.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamAnnouncementListCell.h"
#import "ShowTableView.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "M80AttributedLabel.h"
#import "ShowTitleView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"

//: @interface FFFTeamAnnouncementListCell ()
@interface ShowTableView ()
//: @property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *titleLabel;
//: @property (strong, nonatomic) UILabel *infoLabel;
@property (strong, nonatomic) UILabel *infoLabel;
//: @property (strong, nonatomic) UIView *line;
@property (strong, nonatomic) UIView *line;
//: @property (strong, nonatomic) M80AttributedLabel *contentLabel;
@property (strong, nonatomic) ShowTitleView *contentLabel;

//: @end
@end

//: @implementation FFFTeamAnnouncementListCell
@implementation ShowTableView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.accessoryType = UITableViewCellAccessoryNone;
//        self.layer.cornerRadius = 10;

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_titleLabel];

        //: _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        //: _infoLabel.font = [UIFont systemFontOfSize:12.f];
        _infoLabel.font = [UIFont systemFontOfSize:12.f];
        //: _infoLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _infoLabel.textColor = [UIColor withMax:StringFromComingData(kStr_submitName)];
        //: [self.contentView addSubview:_infoLabel];
        [self.contentView addSubview:_infoLabel];

        //: _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        //: _line.backgroundColor = [UIColor colorWithHexString:@"#E9ECF0"];
        _line.backgroundColor = [UIColor withMax:StringFromComingData(kStr_corridorMustTitle)];
        //: _line.hidden = YES;
        _line.hidden = YES;
        //: [self.contentView addSubview:_line];
        [self.contentView addSubview:_line];

        //: _contentLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        _contentLabel = [[ShowTitleView alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _contentLabel.textColor = [UIColor withMax:StringFromComingData(kStr_carefullyTitle)];
        //: _contentLabel.numberOfLines = 0;
        _contentLabel.numberOfLines = 0;
        //: _contentLabel.font = [UIFont systemFontOfSize:14.f];
        _contentLabel.font = [UIFont systemFontOfSize:14.f];
        //: _contentLabel.autoDetectLinks = YES;
        _contentLabel.autoDetectLinks = YES;
        //: _contentLabel.underLineForLink = YES;
        _contentLabel.underLineForLink = YES;
        //: _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _contentLabel.backgroundColor = [UIColor clearColor];
        _contentLabel.backgroundColor = [UIColor clearColor];
        //: _contentLabel.isShowTextSelection = YES;
        _contentLabel.isShowTextSelection = YES;
        //: _contentLabel.selectable = YES;
        _contentLabel.selectable = YES;

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _contentLabel.selectBlock = ^(FFFMediaItem *item) {
        _contentLabel.selectBlock = ^(ImageRecent *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            //: if (text.length) {
            if (text.length) {
                //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                //: [pasteboard setString:text];
                [pasteboard setString:text];
            }
        //: };
        };

        //: [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_contentLabel];

        //: [_contentLabel new_genMediaButton];
        [_contentLabel genMediaButton];

    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NSDictionary *)data nick:(NSString *)nick{
- (void)min:(NSDictionary *)data restoreOrNick:(NSString *)nick{
    //: NSString *title = [data objectForKey:@"title"];
    NSString *title = [data objectForKey:StringFromComingData(kStr_maxSexAideValue)];
    //: _titleLabel.text = title;
    _titleLabel.text = title;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];
    //: _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);
    _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);

    //: _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);
    _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);

    //: _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);
    _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);

    //: NSString *content = [data objectForKey:@"content"];
    NSString *content = [data objectForKey:StringFromComingData(kStr_levelSignificanceData)];
    //: [_contentLabel nim_setText:content];
    [_contentLabel time:content];
    //: [_contentLabel sizeToFit];
    [_contentLabel sizeToFit];

    //: _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    //: NSNumber *time = [data objectForKey:@"time"];
    NSNumber *time = [data objectForKey:StringFromComingData(kStr_ficeRefreshTitle)];
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"MM-dd HH:mm"];
    [dateFormatter setDateFormat:StringFromComingData(kStr_martMessageCousinValue)];
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    //: NSString *dataString = [dateFormatter stringFromDate:date];
    NSString *dataString = [dateFormatter stringFromDate:date];
    //: _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
    _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
}

//: + (CGFloat)cellHeight:(NSString *)title
+ (CGFloat)image:(NSString *)title
{
    //: CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;

    //: return 85 + size.height + 20;
    return 85 + size.height + 20;
}

//: @end
@end

Byte * ComingDataToCache(Byte *data) {
    int authorize = data[0];
    int valueToday = data[1];
    Byte bogey = data[2];
    int realizeName = data[3];
    if (!authorize) return data + realizeName;
    for (int i = realizeName; i < realizeName + valueToday; i++) {
        int value = data[i] + bogey;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[realizeName + valueToday] = 0;
    return data + realizeName;
}

NSString *StringFromComingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ComingDataToCache(data)];
}
