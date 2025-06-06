
#import <Foundation/Foundation.h>

NSString *StringFromDateData(Byte *data);


//: ic_unlike
Byte kStr_userColorData[] = {49, 9, 10, 202, 106, 252, 97, 235, 108, 82, 101, 107, 105, 108, 110, 117, 95, 99, 105, 21};


//: head_default
Byte kStr_languageName[] = {8, 12, 11, 198, 132, 88, 15, 134, 155, 82, 187, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 149};


//: #333333
Byte kStr_imageDoingData[] = {28, 7, 7, 186, 229, 29, 49, 51, 51, 51, 51, 51, 51, 35, 10};


//: ic_like
Byte kStr_barDateValue[] = {60, 7, 3, 101, 107, 105, 108, 95, 99, 105, 122};


//: covery_ic_more
Byte kStr_withTitleValue[] = {50, 14, 4, 4, 101, 114, 111, 109, 95, 99, 105, 95, 121, 114, 101, 118, 111, 99, 39};


//: discovery_delete_ic
Byte kStr_itemGreenValue[] = {22, 19, 4, 45, 99, 105, 95, 101, 116, 101, 108, 101, 100, 95, 121, 114, 101, 118, 111, 99, 115, 105, 100, 173};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowLayerViewCell.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyTableViewCell.h"
#import "ShowLayerViewCell.h"

//: @implementation DisCorveyTableViewCell
@implementation ShowLayerViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"DisCorveyTableViewCell"]) {
    if ([self.reuseIdentifier isEqualToString:@"ShowLayerViewCell"]) {

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
        [self view];
    }
    //: return self;
    return self;
}

//: -(void)loadSubView
-(void)view
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
    self.labName.textColor = [UIColor isView:StringFromDateData(kStr_imageDoingData)];
    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];

//    self.sex = [[UIImageView alloc]init];
//    self.sex.image = [UIImage imageNamed:@"ic_sex_woman"];
//    [self.contentView addSubview:self.sex];

    //: self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self.btnLike addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnLike addTarget:self action:@selector(noticeButton:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.btnLike setImage:[UIImage imageNamed:@"ic_unlike"] forState:UIControlStateNormal];
    [self.btnLike setImage:[UIImage imageNamed:StringFromDateData(kStr_userColorData)] forState:UIControlStateNormal];
    //: [self.btnLike setImage:[UIImage imageNamed:@"ic_like"] forState:UIControlStateSelected];
    [self.btnLike setImage:[UIImage imageNamed:StringFromDateData(kStr_barDateValue)] forState:UIControlStateSelected];
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
    [self.btnMore addTarget:self action:@selector(construes:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.btnMore setImage:[UIImage imageNamed:@"covery_ic_more"] forState:UIControlStateNormal];
    [self.btnMore setImage:[UIImage imageNamed:StringFromDateData(kStr_withTitleValue)] forState:UIControlStateNormal];
     //: [self.contentView addSubview:self.btnMore];
     [self.contentView addSubview:self.btnMore];
    //: self.btnMore.hidden = YES;
    self.btnMore.hidden = YES;

    //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self.btnDelete addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnDelete addTarget:self action:@selector(noticeButton:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.btnDelete setImage:[UIImage imageNamed:@"discovery_delete_ic"] forState:UIControlStateNormal];
    [self.btnDelete setImage:[UIImage imageNamed:StringFromDateData(kStr_itemGreenValue)] forState:UIControlStateNormal];
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
- (void)title:(disCorveyListModel *)model human:(BOOL)isMy
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
    [self.avater sd_setImageWithURL:[NSURL URLWithString:model.headsmall] placeholderImage:[UIImage imageNamed:StringFromDateData(kStr_languageName)]];

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
-(void)noticeButton:(UIButton*)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
    //: if ([self.delegate respondsToSelector:@selector(didTouchButton:)]) {
    if ([self.delegate respondsToSelector:@selector(touchWith:)]) {
        //: [self.delegate didTouchButton:self.model];
        [self.delegate touchWith:self.model];
    }
}

//: - (void)onTouchMoreButton:(UIButton*)sender
- (void)construes:(UIButton*)sender
{

    //: if ([self.delegate respondsToSelector:@selector(didTouchMoreButton:modle:)]) {
    if ([self.delegate respondsToSelector:@selector(circleModle:max:)]) {
        //: [self.delegate didTouchMoreButton:sender modle:self.model];
        [self.delegate circleModle:sender max:self.model];
    }
}

//: @end
@end

Byte * DateDataToCache(Byte *data) {
    int memberLink = data[0];
    int cut = data[1];
    int screenMax = data[2];
    if (!memberLink) return data + screenMax;
    for (int i = 0; i < cut / 2; i++) {
        int begin = screenMax + i;
        int end = screenMax + cut - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[screenMax + cut] = 0;
    return data + screenMax;
}

NSString *StringFromDateData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DateDataToCache(data)];
}  
