//
//  RecommendfriendTableViewCell.m
//  Neeyo
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "RecommendfriendTableViewCell.h"

@implementation RecommendfriendTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = RGB_COLOR_String(@"#FAF8FD");
        self.layer.cornerRadius = 16;
        
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews
{
    [self.contentView addSubview:self.avaterImg];
    self.avaterImg.frame = CGRectMake(15, 12, 48, 48);
    
    [self.contentView addSubview:self.labName];
    self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, SCREEN_WIDTH-100, 48);
    
    [self.contentView addSubview:self.btnAdd];
    self.btnAdd.frame = CGRectMake(SCREEN_WIDTH-80, 20, 32, 32);
}

- (void)refreshWithModel:(NSDictionary *)userItem
{
    self.userId = [userItem newStringValueForKey:@"id"];
    NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *nickname = [userItem newStringValueForKey:@"nickname"];
  
    [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    self.labName.text = nickname;
    
}

- (UILabel *)labName {
    if (!_labName) {
        _labName = [[UILabel alloc] init];
        _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.textColor = [UIColor blackColor];
        _labName.textAlignment = NSTextAlignmentLeft;
        _labName.text = @"Tamma Kirtner";
    }
    return _labName;
}

- (UIImageView *)avaterImg
{
    if (!_avaterImg) {
        _avaterImg = [[UIImageView alloc] init];
        _avaterImg.layer.cornerRadius = 24;
        _avaterImg.layer.masksToBounds = YES;
        _avaterImg.image = [UIImage imageNamed:@"contact_user_default_header"];
    }
    return _avaterImg;
}

- (UIButton *)btnAdd
{
    if (!_btnAdd) {
        _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btnAdd addTarget:self action:@selector(handleAdd) forControlEvents:UIControlEventTouchUpInside];
        [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
    }
    return _btnAdd;
}

- (void)handleAdd{
    if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
        [self.delegate didTouchAdddButton:self.userId];
    }
}

@end
