
#import <Foundation/Foundation.h>
typedef struct {
    Byte effectiveness;
    Byte *flour;
    unsigned int weaken;
    bool acknowledge;
	int tapInfo;
	int description;
	int shoutContributor;
} StrengthenData;

NSString *StringFromStrengthenData(StrengthenData *data);


//: #000000
StrengthenData kStr_ventureName = (StrengthenData){36, (Byte []){7, 20, 20, 20, 20, 20, 20, 243}, 7, false, 117, 56, 227};


//: head_default
StrengthenData kStr_twinValue = (StrengthenData){245, (Byte []){157, 144, 148, 145, 170, 145, 144, 147, 148, 128, 153, 129, 130}, 12, false, 236, 179, 187};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FellowReusableView.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "FellowReusableView.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation FellowReusableView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self sub];

    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)sub
{
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    //: self.ImageView.layer.cornerRadius = 24;
    self.ImageView.layer.cornerRadius = 24;
    //: self.ImageView.layer.masksToBounds = YES;
    self.ImageView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:self.ImageView];
    [self.contentView addSubview:self.ImageView];

    //: self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    //: self.titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    self.titleLabel.textColor = [UIColor isView:StringFromStrengthenData(&kStr_ventureName)];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)computerSimulation:(NIMTeamMember *)member
{
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    OriginBy *info = [[Notice fullKit] value:member.userId manager:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:StringFromStrengthenData(&kStr_twinValue)]];
}


//: -(void)prepareForReuse
-(void)prepareForReuse
{
    //: [super prepareForReuse];
    [super prepareForReuse];
//    [self.logoImageView sd_cancelCurrentAnimationImagesLoad];
    //: self.ImageView.image = nil;
    self.ImageView.image = nil;
}


//: @end
@end

Byte *StrengthenDataToByte(StrengthenData *data) {
    if (data->acknowledge) return data->flour;
    for (int i = 0; i < data->weaken; i++) {
        data->flour[i] ^= data->effectiveness;
    }
    data->flour[data->weaken] = 0;
    data->acknowledge = true;
	if (data->weaken >= 3) {
		data->tapInfo = data->flour[0];
		data->description = data->flour[1];
		data->shoutContributor = data->flour[2];
	}
    return data->flour;
}

NSString *StringFromStrengthenData(StrengthenData *data) {
    return [NSString stringWithUTF8String:(char *)StrengthenDataToByte(data)];
}
