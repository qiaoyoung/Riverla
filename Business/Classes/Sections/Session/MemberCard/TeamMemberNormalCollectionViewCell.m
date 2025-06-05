//
//  TeamMemberNormalCollectionViewCell.m
//  Neeyo
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "TeamMemberNormalCollectionViewCell.h"

@implementation TeamMemberNormalCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    
    }
    return self;
}

- (void)setUp
{
    CGFloat width = (SCREEN_WIDTH-30)/3;
    self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    self.ImageView.layer.cornerRadius = 24;
    self.ImageView.layer.masksToBounds = YES;
    [self.contentView addSubview:self.ImageView];

    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    self.titleLabel.textColor = TextColor_0;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:self.titleLabel];
    
}

- (void)refreshWithModel:(NIMTeamMember *)member
{
    FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    self.titleLabel.text = info.showName;
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
}


-(void)prepareForReuse
{
    [super prepareForReuse];
//    [self.logoImageView sd_cancelCurrentAnimationImagesLoad];
    self.ImageView.image = nil;
}


@end
