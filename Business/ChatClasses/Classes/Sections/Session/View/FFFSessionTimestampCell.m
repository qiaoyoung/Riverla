//
//  NTESSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFSessionTimestampCell.h"
#import "FFFCellConfig.h"
#import "UIViewNimKit.h"
#import "FFFTimestampModel.h"
#import "FFFKitUtil.h"
#import "UIImage+NeeyoKit.h"
#import "NeeyoKit.h"

@interface FFFSessionTimestampCell()

@property (nonatomic,strong) FFFTimestampModel *model;

@end

@implementation FFFSessionTimestampCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        self.backgroundColor = [NeeyoKit sharedKit].config.cellBackgroundColor;
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:_timeBGView];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        _timeLabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_timeLabel];
        [_timeBGView setImage:[[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [_timeLabel sizeToFit];
    _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
}


- (void)refreshData:(FFFTimestampModel *)data{
    if (self.model == data) {
        return;
    }
    self.model = data;
    if([self checkData]){
        FFFTimestampModel *model = (FFFTimestampModel *)data;
        [_timeLabel setText:[FFFKitUtil showTime:model.messageTime showDetail:YES]];
    }
}

- (BOOL)checkData{
    return [self.model isKindOfClass:[FFFTimestampModel class]];
}

@end
