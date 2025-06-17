
#import <Foundation/Foundation.h>
typedef struct {
    Byte tingTime;
    Byte *way;
    unsigned int scaleDisable;
    bool mediaChange;
	int timeObjectTitleBubble;
	int changeDisableAreaView;
	int cellView;
} SocialStationData;

NSString *StringFromSocialStationData(SocialStationData *data);


//: ic_like
SocialStationData kStr_sessionName = (SocialStationData){7, (Byte []){110, 100, 88, 107, 110, 108, 98, 7}, 7, false, 226, 154, 65};


//: head_default
SocialStationData kStr_disableMobileTitle = (SocialStationData){191, (Byte []){215, 218, 222, 219, 224, 219, 218, 217, 222, 202, 211, 203, 85}, 12, false, 247, 43, 154};


//: discovery_delete_ic
SocialStationData kStr_textViewName = (SocialStationData){213, (Byte []){177, 188, 166, 182, 186, 163, 176, 167, 172, 138, 177, 176, 185, 176, 161, 176, 138, 188, 182, 214}, 19, false, 48, 62, 22};


//: covery_ic_more
SocialStationData kStr_highlightContent = (SocialStationData){100, (Byte []){7, 11, 18, 1, 22, 29, 59, 13, 7, 59, 9, 11, 22, 1, 43}, 14, false, 82, 7, 1};


//: ic_unlike
SocialStationData kStr_collectionTextWeakValue = (SocialStationData){188, (Byte []){213, 223, 227, 201, 210, 208, 213, 215, 217, 237}, 9, false, 248, 37, 97};


//: #333333
SocialStationData kStr_videoShowValue = (SocialStationData){205, (Byte []){238, 254, 254, 254, 254, 254, 254, 2}, 7, false, 38, 50, 80};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OrientationViewCell.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyTableViewCell.h"
#import "OrientationViewCell.h"

//: @implementation DisCorveyTableViewCell
@implementation OrientationViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"DisCorveyTableViewCell"]) {
    if ([self.reuseIdentifier isEqualToString:@"OrientationViewCell"]) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.layer.borderWidth = 1;
        self.layer.borderWidth = 1;
        //: self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,1);
        self.layer.shadowOffset = CGSizeMake(0,1);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 3;
        self.layer.shadowRadius = 3;

        //: [self loadSubView];
        [self event];
    }
    //: return self;
    return self;
}

//: -(void)loadSubView
-(void)event
{
    //: self.picView = [[UIView alloc]init];
    self.picView = [[UIView alloc]init];
    //: [self.contentView addSubview:self.picView];
    [self.contentView addSubview:self.picView];

    //: self.avater = [[UIImageView alloc]init];
    self.avater = [[UIImageView alloc]init];
//    self.avater.image = [UIImage imageNamed:@"safe_success_step"];
    //: self.avater.layer.cornerRadius = 16;
    self.avater.layer.cornerRadius = 16;
    //: self.avater.layer.masksToBounds = YES;
    self.avater.layer.masksToBounds = YES;
    //: [self.contentView addSubview:self.avater];
    [self.contentView addSubview:self.avater];

    //: self.labName = [[UILabel alloc] initWithFrame:CGRectZero];
    self.labName = [[UILabel alloc] initWithFrame:CGRectZero];
    //: self.labName.font = [UIFont systemFontOfSize:16.f];
    self.labName.font = [UIFont systemFontOfSize:16.f];
    //: self.labName.textColor = [UIColor colorWithHexString:@"#333333"];
    self.labName.textColor = [UIColor withMax:StringFromSocialStationData(&kStr_videoShowValue)];
    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];

//    self.sex = [[UIImageView alloc]init];
//    self.sex.image = [UIImage imageNamed:@"ic_sex_woman"];
//    [self.contentView addSubview:self.sex];

    //: self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self.btnLike addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnLike addTarget:self action:@selector(upses:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.btnLike setImage:[UIImage imageNamed:@"ic_unlike"] forState:UIControlStateNormal];
    [self.btnLike setImage:[UIImage imageNamed:StringFromSocialStationData(&kStr_collectionTextWeakValue)] forState:UIControlStateNormal];
    //: [self.btnLike setImage:[UIImage imageNamed:@"ic_like"] forState:UIControlStateSelected];
    [self.btnLike setImage:[UIImage imageNamed:StringFromSocialStationData(&kStr_sessionName)] forState:UIControlStateSelected];
//    self.btnLike.titleLabel.font   = [UIFont systemFontOfSize:12];
//    [self.btnLike setTitleColor:RGB_COLOR_String(@"#A3A3A3") forState:UIControlStateNormal];
//    [self.btnLike setTitle:@"30" forState:UIControlStateNormal];
//    [self.btnLike layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleRight) imageTitleSpace:25];
     //: [self.contentView addSubview:self.btnLike];
     [self.contentView addSubview:self.btnLike];
    //: self.btnLike.hidden = YES;
    self.btnLike.hidden = YES;

    //: self.btnMore = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnMore = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self.btnMore addTarget:self action:@selector(onTouchMoreButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnMore addTarget:self action:@selector(colors:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.btnMore setImage:[UIImage imageNamed:@"covery_ic_more"] forState:UIControlStateNormal];
    [self.btnMore setImage:[UIImage imageNamed:StringFromSocialStationData(&kStr_highlightContent)] forState:UIControlStateNormal];
     //: [self.contentView addSubview:self.btnMore];
     [self.contentView addSubview:self.btnMore];
    //: self.btnMore.hidden = YES;
    self.btnMore.hidden = YES;

    //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self.btnDelete addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnDelete addTarget:self action:@selector(upses:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.btnDelete setImage:[UIImage imageNamed:@"discovery_delete_ic"] forState:UIControlStateNormal];
    [self.btnDelete setImage:[UIImage imageNamed:StringFromSocialStationData(&kStr_textViewName)] forState:UIControlStateNormal];
     //: [self.contentView addSubview:self.btnDelete];
     [self.contentView addSubview:self.btnDelete];
    //: self.btnDelete.hidden = YES;
    self.btnDelete.hidden = YES;

//    self.btnView = [[UIView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-120-30, self.height-96-40, 120, 96)];
//    self.btnView.backgroundColor = [UIColor whiteColor];
//    self.btnView.layer.cornerRadius = 8;
//    [self.contentView addSubview:self.btnView];
}
//: - (void)refreshDateModel:(disCorveyListModel *)model isMyLog:(BOOL)isMy
- (void)restoreModelBeggarMyNeighborPolicyLogDate:(disCorveyListModel *)model pinLog:(BOOL)isMy
{
    //: self.model = model;
    self.model = model;
//    NSString *name = [info newStringValueForKey:@"name"];
//    NSString *sex = [info newStringValueForKey:@"sex"];
//    NSString *islike = [info newStringValueForKey:@"islike"];
//    NSArray *picList = [info valueObjectForKey:@"picArray"];
        //: for (UIView *subview in [self.picView subviews]) {
        for (UIView *subview in [self.picView subviews]) {
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }

    //: if(model.pictureArray.count == 1){
    if(model.pictureArray.count == 1){
        //: NSString *name = model.pictureArray[0];
        NSString *name = model.pictureArray[0];
        //: UIImageView *pimges = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-60, 205)];
        UIImageView *pimges = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-60, 205)];
        //: pimges.layer.cornerRadius = 4;
        pimges.layer.cornerRadius = 4;
        //: pimges.layer.masksToBounds = YES;
        pimges.layer.masksToBounds = YES;
        //: pimges.contentMode = UIViewContentModeScaleAspectFill;
        pimges.contentMode = UIViewContentModeScaleAspectFill;
        //: [self.picView addSubview:pimges];
        [self.picView addSubview:pimges];
        //: self.picView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 205);
        self.picView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 205);
        //: [pimges sd_setImageWithURL:[NSURL URLWithString:name]];
        [pimges sd_setImageWithURL:[NSURL URLWithString:name]];

    //: }else if (model.pictureArray.count == 2){
    }else if (model.pictureArray.count == 2){
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-68)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-68)/2;
        //: for (int i=0; i<model.pictureArray.count; i++) {
        for (int i=0; i<model.pictureArray.count; i++) {
            //: UIImageView *pimges1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, 100)];
            UIImageView *pimges1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, 100)];
            //: pimges1.layer.cornerRadius = 4;
            pimges1.layer.cornerRadius = 4;
            //: pimges1.layer.masksToBounds = YES;
            pimges1.layer.masksToBounds = YES;
            //: pimges1.contentMode = UIViewContentModeScaleAspectFill;
            pimges1.contentMode = UIViewContentModeScaleAspectFill;
            //: [self.picView addSubview:pimges1];
            [self.picView addSubview:pimges1];
            //: [pimges1 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[0]]];
            [pimges1 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[0]]];

            //: UIImageView *pimges2 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 0, width, 100)];
            UIImageView *pimges2 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 0, width, 100)];
            //: pimges2.layer.cornerRadius = 4;
            pimges2.layer.cornerRadius = 4;
            //: pimges2.layer.masksToBounds = YES;
            pimges2.layer.masksToBounds = YES;
            //: pimges2.contentMode = UIViewContentModeScaleAspectFill;
            pimges2.contentMode = UIViewContentModeScaleAspectFill;
            //: [self.picView addSubview:pimges2];
            [self.picView addSubview:pimges2];
            //: [pimges2 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[1]]];
            [pimges2 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[1]]];
        }

        //: self.picView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 100);
        self.picView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 100);
    //: }else if (model.pictureArray.count == 3){
    }else if (model.pictureArray.count == 3){

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-68)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-68)/2;
        //: for (int i=0; i<model.pictureArray.count; i++) {
        for (int i=0; i<model.pictureArray.count; i++) {
            //: UIImageView *pimges1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, 208)];
            UIImageView *pimges1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, 208)];
            //: pimges1.layer.cornerRadius = 4;
            pimges1.layer.cornerRadius = 4;
            //: pimges1.layer.masksToBounds = YES;
            pimges1.layer.masksToBounds = YES;
            //: pimges1.contentMode = UIViewContentModeScaleAspectFill;
            pimges1.contentMode = UIViewContentModeScaleAspectFill;
            //: [self.picView addSubview:pimges1];
            [self.picView addSubview:pimges1];
            //: [pimges1 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[0]]];
            [pimges1 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[0]]];

            //: UIImageView *pimges2 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 0, width, 100)];
            UIImageView *pimges2 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 0, width, 100)];
            //: pimges2.layer.cornerRadius = 4;
            pimges2.layer.cornerRadius = 4;
            //: pimges2.layer.masksToBounds = YES;
            pimges2.layer.masksToBounds = YES;
            //: pimges2.contentMode = UIViewContentModeScaleAspectFill;
            pimges2.contentMode = UIViewContentModeScaleAspectFill;
            //: [pimges2 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[1]]];
            [pimges2 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[1]]];
            //: [self.picView addSubview:pimges2];
            [self.picView addSubview:pimges2];

            //: UIImageView *pimges3 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 108, width, 100)];
            UIImageView *pimges3 = [[UIImageView alloc]initWithFrame:CGRectMake(width+8, 108, width, 100)];
            //: pimges3.layer.cornerRadius = 4;
            pimges3.layer.cornerRadius = 4;
            //: pimges3.layer.masksToBounds = YES;
            pimges3.layer.masksToBounds = YES;
            //: pimges3.contentMode = UIViewContentModeScaleAspectFill;
            pimges3.contentMode = UIViewContentModeScaleAspectFill;
            //: [pimges3 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[2]]];
            [pimges3 sd_setImageWithURL:[NSURL URLWithString:model.pictureArray[2]]];
            //: [self.picView addSubview:pimges3];
            [self.picView addSubview:pimges3];
        }

        //: self.picView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 208);
        self.picView.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 208);
    }



    //: self.avater.frame = CGRectMake(15, self.picView.bottom+10, 32, 32);
    self.avater.frame = CGRectMake(15, self.picView.bottom+10, 32, 32);
    //: [self.avater sd_setImageWithURL:[NSURL URLWithString:model.headsmall] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avater sd_setImageWithURL:[NSURL URLWithString:model.headsmall] placeholderImage:[UIImage imageNamed:StringFromSocialStationData(&kStr_disableMobileTitle)]];

    //: self.labName.text = model.nickname;
    self.labName.text = model.nickname;
    //: [self.labName sizeToFit];
    [self.labName sizeToFit];
    //: self.labName.left = self.avater.right+5;
    self.labName.left = self.avater.right+5;
    //: self.labName.centerY = self.avater.centerY;
    self.labName.centerY = self.avater.centerY;

//    self.sex.frame = CGRectMake(self.labName.right+5, 0, 14, 14);
//    self.sex.centerY = self.avater.centerY;

    //: if (isMy) {
    if (isMy) {
        //: self.btnLike.hidden = YES;
        self.btnLike.hidden = YES;
        //: self.btnMore.hidden = YES;
        self.btnMore.hidden = YES;
        //: self.btnDelete.hidden = NO;
        self.btnDelete.hidden = NO;
        //: self.btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-20-45, self.picView.bottom+16, 20, 20);
        self.btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-20-45, self.picView.bottom+16, 20, 20);
    //: }else{
    }else{
        //: self.btnLike.hidden = NO;
        self.btnLike.hidden = NO;
        //: self.btnMore.hidden = NO;
        self.btnMore.hidden = NO;
        //: self.btnDelete.hidden = YES;
        self.btnDelete.hidden = YES;
        //: self.btnLike.selected = model.ispraise.intValue == 1 ?YES :NO;
        self.btnLike.selected = model.ispraise.intValue == 1 ?YES :NO;

        //: self.btnLike.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-45-20-22-15, self.picView.bottom+15, 22, 22);
        self.btnLike.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-45-20-22-15, self.picView.bottom+15, 22, 22);
        //: self.btnMore.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-20-45, self.picView.bottom+16, 20, 20);
        self.btnMore.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-20-45, self.picView.bottom+16, 20, 20);
    }
}

//: -(void)onTouchButton:(UIButton*)sender
-(void)upses:(UIButton*)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if ([self.delegate respondsToSelector:@selector(didTouchButton:)]) {
    if ([self.delegate respondsToSelector:@selector(fixing:)]) {
        //: [self.delegate didTouchButton:self.model];
        [self.delegate fixing:self.model];
    }
}

//: - (void)onTouchMoreButton:(UIButton*)sender
- (void)colors:(UIButton*)sender
{

    //: if ([self.delegate respondsToSelector:@selector(didTouchMoreButton:modle:)]) {
    if ([self.delegate respondsToSelector:@selector(compartment:topModle:)]) {
        //: [self.delegate didTouchMoreButton:sender modle:self.model];
        [self.delegate compartment:sender topModle:self.model];
    }
}

//: @end
@end

Byte *SocialStationDataToByte(SocialStationData *data) {
    if (data->mediaChange) return data->way;
    for (int i = 0; i < data->scaleDisable; i++) {
        data->way[i] ^= data->tingTime;
    }
    data->way[data->scaleDisable] = 0;
    data->mediaChange = true;
	if (data->scaleDisable >= 3) {
		data->timeObjectTitleBubble = data->way[0];
		data->changeDisableAreaView = data->way[1];
		data->cellView = data->way[2];
	}
    return data->way;
}

NSString *StringFromSocialStationData(SocialStationData *data) {
    return [NSString stringWithUTF8String:(char *)SocialStationDataToByte(data)];
}
