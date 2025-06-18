//
//  FFFSessionShareCardContentView.m
// MyUserKit
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 NetEase. All rights reserved.
//

#import "FFFSessionShareCardContentView.h"
#import "FFFMessageModel.h"
#import "UIViewNimKit.h"
#import "FFFLoadProgressView.h"
#import "FFFKitDependency.h"
#import <YYImage/YYImage.h>
#import "MyUserKit.h"
#import "FFFKitDataProviderImpl.h"
#import "FFFKitInfoFetchOption.h"
#import "UIImage+MyUserKit.h"
#import "NSString+MyUserKit.h"
#import <SDWebImage/SDWebImage.h>
#import <objc/runtime.h>
#import <objc/message.h>

@interface FFFSessionShareCardContentView()

@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *accountLabel;

@end

@implementation FFFSessionShareCardContentView

- (instancetype)initSessionMessageContentView{
    self = [super initSessionMessageContentView];
    if (self) {
        self.opaque = YES;
        _imageView  = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView.backgroundColor = [UIColor whiteColor];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.layer.cornerRadius = 18;
        _imageView.layer.masksToBounds = YES;
        [self addSubview:_imageView];
        
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.textColor = [UIColor blackColor];
        [self addSubview:_nameLabel];
    }
    return self;
}

- (void)refresh:(FFFMessageModel *)data
{
    [super refresh:data];
    _imageView.image = nil;
    self.nameLabel.text = @"";
    NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;
    
    NSString *content = [cardObject.attachment encodeAttachment];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    if (dataaaaa) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             options:0
                                                               error:nil];
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSDictionary *datatyl = [dict objectForKey:@"data"];
            if (type == 105) {
                                
                NSString *cardid = [datatyl stringValueForKey:CMPersonCardId defaultValue:@""];
                
                if ([[datatyl stringValueForKey:CMPersonCardtype defaultValue:kConstant_0] boolValue]) {
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    if (team.teamName.length>0) {
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                        self.nameLabel.text = team.teamName;
                    }else{
                        [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                            [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                            self.nameLabel.text = team.teamName;
                        }];
                    }
                } else {
                    @weakify(self);
                    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    if (user.userInfo.nickName) {
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                        self.nameLabel.text = user.userInfo.nickName;
                    }else{
                        [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                            if (users.count) {
                                @strongify(self);
                                NIMUser *user = users.firstObject;
                                [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                                self.nameLabel.text = user.userInfo.nickName;
                            }
                        }];
                    }
                    
                    
                }
            }
        }
    }
}

- (void)layoutSubviews{
    [super layoutSubviews];
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    self.imageView.frame  = imageViewFrame;
    self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
}


- (void)onTouchUpInside:(id)sender
{
    FFFKitEvent *event = [[FFFKitEvent alloc] init];
    event.eventName = FFFKitEventNameTapContent;
    event.messageModel = self.model;
    [self.delegate onCatchEvent:event];
}

@end
