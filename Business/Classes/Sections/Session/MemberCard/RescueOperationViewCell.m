
#import <Foundation/Foundation.h>

NSString *StringFromShouldWithData(Byte *data);


//: #000000
Byte kStr_withRecordValue[] = {15, 7, 5, 47, 8, 48, 48, 48, 48, 48, 48, 35, 186};


//: head_default
Byte kStr_chainStyleName[] = {4, 12, 9, 147, 219, 151, 43, 152, 75, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 188};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RescueOperationViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "RescueOperationViewCell.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation RescueOperationViewCell

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self color];

    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)color
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
    self.titleLabel.textColor = [UIColor withMax:StringFromShouldWithData(kStr_withRecordValue)];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)eigenvalue:(NIMTeamMember *)member
{
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:member.userId button:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:StringFromShouldWithData(kStr_chainStyleName)]];
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

Byte * ShouldWithDataToCache(Byte *data) {
    int command = data[0];
    int transplant = data[1];
    int eticColorIncluding = data[2];
    if (!command) return data + eticColorIncluding;
    for (int i = 0; i < transplant / 2; i++) {
        int begin = eticColorIncluding + i;
        int end = eticColorIncluding + transplant - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[eticColorIncluding + transplant] = 0;
    return data + eticColorIncluding;
}

NSString *StringFromShouldWithData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ShouldWithDataToCache(data)];
}  
