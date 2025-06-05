//
//  DisCorveyTableViewCell.m
//  Neeyo
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "DisCorveyTableViewCell.h"

@implementation DisCorveyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"DisCorveyTableViewCell"]) {
     
        self.backgroundColor = [UIColor whiteColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        self.layer.borderWidth = 1;
        self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        self.layer.cornerRadius = 16;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        self.layer.shadowOffset = CGSizeMake(0,1);
        self.layer.shadowOpacity = 1;
        self.layer.shadowRadius = 3;
        
        [self loadSubView];
    }
    return self;
}

-(void)loadSubView
{
    self.picView = [[UIView alloc]init];
    [self.contentView addSubview:self.picView];
    
    self.avater = [[UIImageView alloc]init];
//    self.avater.image = [UIImage imageNamed:@"safe_success_step"];
    self.avater.layer.cornerRadius = 16;
    self.avater.layer.masksToBounds = YES;
    [self.contentView addSubview:self.avater];
    
    self.labName = [[UILabel alloc] initWithFrame:CGRectZero];
    self.labName.font = [UIFont systemFontOfSize:16.f];
    self.labName.textColor = RGB_COLOR_String(@"#333333");
    [self.contentView addSubview:self.labName];
    
//    self.sex = [[UIImageView alloc]init];
//    self.sex.image = [UIImage imageNamed:@"ic_sex_woman"];
//    [self.contentView addSubview:self.sex];
    
    self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.btnLike addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnLike setImage:[UIImage imageNamed:@"ic_unlike"] forState:UIControlStateNormal];
    [self.btnLike setImage:[UIImage imageNamed:@"ic_like"] forState:UIControlStateSelected];
//    self.btnLike.titleLabel.font   = [UIFont systemFontOfSize:12];
//    [self.btnLike setTitleColor:RGB_COLOR_String(@"#A3A3A3") forState:UIControlStateNormal];
//    [self.btnLike setTitle:@"30" forState:UIControlStateNormal];
//    [self.btnLike layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleRight) imageTitleSpace:25];
     [self.contentView addSubview:self.btnLike];
    self.btnLike.hidden = YES;
    
    self.btnMore = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.btnMore addTarget:self action:@selector(onTouchMoreButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnMore setImage:[UIImage imageNamed:@"covery_ic_more"] forState:UIControlStateNormal];
     [self.contentView addSubview:self.btnMore];
    self.btnMore.hidden = YES;
    
    self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.btnDelete addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnDelete setImage:[UIImage imageNamed:@"discovery_delete_ic"] forState:UIControlStateNormal];
     [self.contentView addSubview:self.btnDelete];
    self.btnDelete.hidden = YES;
    
//    self.btnView = [[UIView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-120-30, self.height-96-40, 120, 96)];
//    self.btnView.backgroundColor = [UIColor whiteColor];
//    self.btnView.layer.cornerRadius = 8;
//    [self.contentView addSubview:self.btnView];
}
- (void)refreshDateModel:(disCorveyListModel *)model isMyLog:(BOOL)isMy
{
    self.model = model;
//    NSString *name = [info newStringValueForKey:@"name"];
//    NSString *sex = [info newStringValueForKey:@"sex"];
//    NSString *islike = [info newStringValueForKey:@"islike"];
//    NSArray *picList = [info valueObjectForKey:@"picArray"];
        for (UIView *subview in [self.picView subviews]) {
            [subview removeFromSuperview];
        }
    
    if(model.pictureArray.count == 1){
        NSString *name = model.pictureArray[0];
        UIImageView *pimges = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH-60, 205)];
        pimges.layer.cornerRadius = 4;
        pimges.layer.masksToBounds = YES;
        pimges.contentMode = UIViewContentModeScaleAspectFill;
        [self.picView addSubview:pimges];
        self.picView.frame = CGRectMake(15, 15, SCREEN_WIDTH-60, 205);
        [pimges sd_setImageWithURL:[NSURL URLWithString:name]];
        
    }else if (model.pictureArray.count == 2){
        CGFloat width = (SCREEN_WIDTH-68)/2;
        for (int i=0; i<model.pictureArray.count; i++) {
            UIImageView *pimges1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, 100)];
            pimges1.layer.cornerRadius = 4;
            pimges1.layer.masksToBounds = YES;
            pimges1.contentMode = UIViewContentModeScaleAspectFill;
            [self.picView addSubview:pimges1];
            [pimges1 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[0]]];
            
            UIImageView *pimges2 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 0, width, 100)];
            pimges2.layer.cornerRadius = 4;
            pimges2.layer.masksToBounds = YES;
            pimges2.contentMode = UIViewContentModeScaleAspectFill;
            [self.picView addSubview:pimges2];
            [pimges2 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[1]]];
        }
        
        self.picView.frame = CGRectMake(15, 15, SCREEN_WIDTH-60, 100);
    }else if (model.pictureArray.count == 3){
        
        CGFloat width = (SCREEN_WIDTH-68)/2;
        for (int i=0; i<model.pictureArray.count; i++) {
            UIImageView *pimges1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, 208)];
            pimges1.layer.cornerRadius = 4;
            pimges1.layer.masksToBounds = YES;
            pimges1.contentMode = UIViewContentModeScaleAspectFill;
            [self.picView addSubview:pimges1];
            [pimges1 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[0]]];
            
            UIImageView *pimges2 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 0, width, 100)];
            pimges2.layer.cornerRadius = 4;
            pimges2.layer.masksToBounds = YES;
            pimges2.contentMode = UIViewContentModeScaleAspectFill;
            [pimges2 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[1]]];
            [self.picView addSubview:pimges2];
            
            UIImageView *pimges3 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 108, width, 100)];
            pimges3.layer.cornerRadius = 4;
            pimges3.layer.masksToBounds = YES;
            pimges3.contentMode = UIViewContentModeScaleAspectFill;
            [pimges3 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[2]]];
            [self.picView addSubview:pimges3];
        }
        
        self.picView.frame = CGRectMake(15, 15, SCREEN_WIDTH-60, 208);
    }
    
    
    
    self.avater.frame = CGRectMake(15, self.picView.bottom+10, 32, 32);
    [self.avater sd_setImageWithURL:[NSURL URLWithString:model.headsmall] placeholderImage:[UIImage imageNamed:@"head_default"]];
    
    self.labName.text = model.nickname;
    [self.labName sizeToFit];
    self.labName.left = self.avater.right+5;
    self.labName.centerY = self.avater.centerY;
    
//    self.sex.frame = CGRectMake(self.labName.right+5, 0, 14, 14);
//    self.sex.centerY = self.avater.centerY;
    
    if (isMy) {
        self.btnLike.hidden = YES;
        self.btnMore.hidden = YES;
        self.btnDelete.hidden = NO;
        self.btnDelete.frame = CGRectMake(SCREEN_WIDTH-20-45, self.picView.bottom+16, 20, 20);
    }else{
        self.btnLike.hidden = NO;
        self.btnMore.hidden = NO;
        self.btnDelete.hidden = YES;
        self.btnLike.selected = model.ispraise.intValue == 1 ?YES :NO;
       
        self.btnLike.frame = CGRectMake(SCREEN_WIDTH-45-20-22-15, self.picView.bottom+15, 22, 22);
        self.btnMore.frame = CGRectMake(SCREEN_WIDTH-20-45, self.picView.bottom+16, 20, 20);
    }
}

-(void)onTouchButton:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if ([self.delegate respondsToSelector:@selector(didTouchButton:)]) {
        [self.delegate didTouchButton:self.model];
    }
}

- (void)onTouchMoreButton:(UIButton*)sender
{
    
    if ([self.delegate respondsToSelector:@selector(didTouchMoreButton:modle:)]) {
        [self.delegate didTouchMoreButton:sender modle:self.model];
    }
}

@end
