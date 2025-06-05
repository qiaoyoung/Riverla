
#import <Foundation/Foundation.h>

NSString *StringFromRecurrentData(Byte *data);        


//: MM-dd hh:mm:ss
Byte kStr_furnitureName[] = {88, 14, 13, 10, 120, 182, 46, 134, 185, 59, 64, 64, 32, 87, 87, 19, 91, 91, 45, 96, 96, 45, 102, 102, 100};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexViewCell.m
//  NIM
//
//  Created by He on 2019/12/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESKeyWordMessageCell.h"
#import "IndexViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"

//: @interface NTESKeyWordMessageCell ()
@interface IndexViewCell ()

//: @property (nonatomic,strong) FFFAvatarImageView * avatar;
@property (nonatomic,strong) ViewControl * avatar;

//: @property (nonatomic,strong) UILabel * nickL;
@property (nonatomic,strong) UILabel * nickL;

//: @property (nonatomic,strong) UILabel * timeL;
@property (nonatomic,strong) UILabel * timeL;

//: @end
@end

//: @implementation NTESKeyWordMessageCell
@implementation IndexViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: [self.contentView addSubview:self.avatar];
        [self.contentView addSubview:self.avatar];
        //: [self.contentView addSubview:self.nickL];
        [self.contentView addSubview:self.nickL];
        //: [self.contentView addSubview:self.timeL];
        [self.contentView addSubview:self.timeL];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.size = CGSizeMake(40, 40);
    self.avatar.size = CGSizeMake(40, 40);
    //: self.avatar.centerY = self.contentView.height * .5f;
    self.avatar.centerY = self.contentView.height * .5f;
    //: self.avatar.left = 15.f;
    self.avatar.left = 15.f;

    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];
    //: self.textLabel.left = self.avatar.right + 15;
    self.textLabel.left = self.avatar.right + 15;
    //: self.detailTextLabel.left = self.textLabel.left;
    self.detailTextLabel.left = self.textLabel.left;

    //: [self.nickL sizeToFit];
    [self.nickL sizeToFit];
    //: self.nickL.left = self.textLabel.right + 2;
    self.nickL.left = self.textLabel.right + 2;
    //: self.nickL.centerY = self.textLabel.centerY;
    self.nickL.centerY = self.textLabel.centerY;

    //: [self.timeL sizeToFit];
    [self.timeL sizeToFit];
    //: self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    //: self.timeL.top = self.textLabel.top;
    self.timeL.top = self.textLabel.top;
    //: self.timeL.right = self.contentView.width - 15;
    self.timeL.right = self.contentView.width - 15;

    //: self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
    self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView
- (void)elite:(BuildRow *)rowData past:(UITableView *)tableView
{
    //: NSString * keyWord = rowData.title;
    NSString * keyWord = rowData.title;
    //: NIMMessage * message = rowData.extraInfo;
    NIMMessage * message = rowData.extraInfo;
    //: if ([message isKindOfClass:[NIMMessage class]])
    if ([message isKindOfClass:[NIMMessage class]])
    {
        //: FFFKitInfo * info = nil;
        OriginBy * info = nil;
        //: NIMSession * session = message.session;
        NIMSession * session = message.session;
        //: if (session.sessionType == NIMSessionTypeP2P)
        if (session.sessionType == NIMSessionTypeP2P)
        {
           //: info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:nil];
           info = [[Notice fullKit] value:session.sessionId manager:nil];
        }
        //: else
        else
        {
            //: info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
            info = [[Notice fullKit] title:session.sessionId commence:nil];
        }

        //: if (info.avatarUrlString.length)
        if (info.avatarUrlString.length)
        {
            //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString]
            [self.avatar eigenvalueImage:[NSURL URLWithString:info.avatarUrlString]
                            //: placeholderImage:info.avatarImage];
                            index:info.avatarImage];
        }
        //: else
        else
        {
            //: [self.avatar setImage:info.avatarImage];
            [self.avatar setImage:info.avatarImage];
        }

        //: self.textLabel.attributedText = [self coloredTextWithSource:info.showName keyword:keyWord];
        self.textLabel.attributedText = [self sub:info.showName bubble:keyWord];
        //: [self.textLabel sizeToFit];
        [self.textLabel sizeToFit];

        //: self.nickL.attributedText = [self coloredTextWithSource:[NSString stringWithFormat:@"(%@)", session.sessionId] keyword:keyWord];
        self.nickL.attributedText = [self sub:[NSString stringWithFormat:@"(%@)", session.sessionId] bubble:keyWord];
//        [self.nickL sizeToFit];

        //: self.detailTextLabel.attributedText = [self coloredTextWithSource:message.text keyword:keyWord];
        self.detailTextLabel.attributedText = [self sub:message.text bubble:keyWord];
        //: [self.detailTextLabel sizeToFit];
        [self.detailTextLabel sizeToFit];

        //: self.timeL.text = [self timeWithTimestamp:message.timestamp];
        self.timeL.text = [self lucidness:message.timestamp];
        //: [self.timeL sizeToFit];
        [self.timeL sizeToFit];
    }
}

//: - (NSAttributedString *)coloredTextWithSource:(NSString *)source
- (NSAttributedString *)sub:(NSString *)source
                                      //: keyword:(NSString *)keyword
                                      bubble:(NSString *)keyword
{
    //: if (!source)
    if (!source)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    //: NSString * lowercaseSource = [source lowercaseString];
    NSString * lowercaseSource = [source lowercaseString];
    //: NSString * lowercaseKeyword = [keyword lowercaseString];
    NSString * lowercaseKeyword = [keyword lowercaseString];
    //: if ([lowercaseSource containsString:lowercaseKeyword])
    if ([lowercaseSource containsString:lowercaseKeyword])
    {
        //: NSRange range = [source rangeOfString:keyword];
        NSRange range = [source rangeOfString:keyword];
        //: [accidString addAttributes:@{
        [accidString addAttributes:@{
            //: NSForegroundColorAttributeName : [UIColor redColor],
            NSForegroundColorAttributeName : [UIColor redColor],
        }
                             //: range:range];
                             range:range];
    }
    //: return accidString;
    return accidString;
}



//: - (FFFAvatarImageView *)avatar
- (ViewControl *)avatar
{
    //: if (!_avatar)
    if (!_avatar)
    {
        //: _avatar = [[FFFAvatarImageView alloc] init];
        _avatar = [[ViewControl alloc] init];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)nickL
- (UILabel *)nickL
{
    //: if (!_nickL)
    if (!_nickL)
    {
        //: _nickL = [[UILabel alloc] init];
        _nickL = [[UILabel alloc] init];
        //: _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
        _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _nickL;
    return _nickL;
}

//: - (UILabel *)timeL
- (UILabel *)timeL
{
    //: if (!_timeL)
    if (!_timeL)
    {
        //: _timeL = [[UILabel alloc] init];
        _timeL = [[UILabel alloc] init];
    }
    //: return _timeL;
    return _timeL;
}

//: - (NSString *)timeWithTimestamp:(NSTimeInterval)ts
- (NSString *)lucidness:(NSTimeInterval)ts
{
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    //: NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    //: NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    //: [formatter setTimeZone:timeZone];
    [formatter setTimeZone:timeZone];
    //: formatter.dateFormat = @"MM-dd hh:mm:ss";
    formatter.dateFormat = StringFromRecurrentData(kStr_furnitureName);
    //: NSString * time = [formatter stringFromDate:date];
    NSString * time = [formatter stringFromDate:date];
    //: return time;
    return time;
}

//: @end
@end

Byte * RecurrentDataToCache(Byte *data) {
    int schedule = data[0];
    int planningReply = data[1];
    Byte treasure = data[2];
    int nolleProsequi = data[3];
    if (!schedule) return data + nolleProsequi;
    for (int i = nolleProsequi; i < nolleProsequi + planningReply; i++) {
        int value = data[i] + treasure;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[nolleProsequi + planningReply] = 0;
    return data + nolleProsequi;
}

NSString *StringFromRecurrentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RecurrentDataToCache(data)];
}
