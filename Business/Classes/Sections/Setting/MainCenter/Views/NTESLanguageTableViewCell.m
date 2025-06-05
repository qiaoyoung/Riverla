//
//  NTESLanguageTableViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "NTESLanguageTableViewCell.h"

@implementation NTESLanguageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"lang"]) {
     
        [self.contentView addSubview:self.countyImg];
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        
        [self.contentView addSubview:self.labTitle];
        self.labTitle.frame = CGRectMake(40+32, 0, SCREEN_WIDTH-80, 56);
       
        self.backgroundColor = RGB_COLOR_String(@"#ffffff");
        self.layer.cornerRadius = 12;
    }
    return self;
}


- (UILabel *)labTitle {
    if (!_labTitle) {
        _labTitle = [[UILabel alloc] init];
        _labTitle.font = [UIFont systemFontOfSize:14.f];
        _labTitle.textColor = RGB_COLOR_String(@"#27303F");
        _labTitle.textAlignment = NSTextAlignmentLeft;
    }
    return _labTitle;
}

- (UIView *)lineView {
    if (!_lineView) {
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = CommonBGView_Color;
    }
    return _lineView;
}

- (UIImageView *)countyImg
{
    if (!_countyImg) {
        _countyImg = [[UIImageView alloc] init];
    }
    return _countyImg;
}

@end
