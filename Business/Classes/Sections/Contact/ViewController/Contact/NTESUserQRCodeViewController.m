//
//  NTESUserQRCodeViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/15.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "NTESUserQRCodeViewController.h"
#import "LCQRCodeUtil.h"
#import <Photos/Photos.h>
#import "NTESShareCardAttachment.h"
#import "ZOMNForwardViewController.h"
#import "NTESSessionMsgConverter.h"

@interface NTESUserQRCodeViewController ()

@property (nonatomic ,strong) UILabel *accountLabel;

@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIButton *downBtn;
@property (nonatomic,strong) UIButton *shareBtn;
@property (nonatomic,strong) UILabel *titleLabel;

@end

@implementation NTESUserQRCodeViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)gotoBack:(id)sender {
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"common_bg"];
    [self.view addSubview:bg];
    
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT)];
    [self.view addSubview:navview];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(15, SCREEN_STATUS_HEIGHT, 40, 40);
    [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [navview addSubview:backBtn];
    
//    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
//    labNavtitle.textColor = [UIColor blackColor];
//    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
//    labNavtitle.text = LangKey(@"qrcode_activity_title");
//    labNavtitle.textAlignment = NSTextAlignmentCenter;
//    [navview addSubview:labNavtitle];
    
    [self initUI];
}

-(void)initUI{
    
    NSString *name = @"";
    NSString *avater = @"";
    UIImage *defImg = [UIImage imageNamed:@"head_default"];
    if (self.isTeam) {
        self.userID = self.team.teamId;
        name = self.team.teamName;
        avater = self.team.avatarUrl;
        defImg = [UIImage imageNamed:@"head_default_group"];
    }else{
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        name = user.userInfo.nickName;
        avater = user.userInfo.avatarUrl;
        
    }
    
    
    
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, SCREEN_TOP_HEIGHT+80, SCREEN_WIDTH-40, 412)];
    contentView.backgroundColor = RGB_COLOR_String(@"#DCCCFF");
    contentView.layer.cornerRadius = 32;
    [self.view addSubview:contentView];
    
    [contentView addSubview:self.iconImageView];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:avater] placeholderImage:defImg];
    self.iconImageView.frame = CGRectMake((SCREEN_WIDTH-140)/2, -40, 100, 100);
    
    [contentView addSubview:self.titleLabel];
    self.titleLabel.text = name;
    self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, SCREEN_WIDTH-40, 20);

    UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-284)/2, self.titleLabel.bottom+20, 244, 244)];
    [contentView addSubview:qrView];
    qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    qrView.layer.borderWidth = 1;
//    qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    qrView.layer.cornerRadius = 32;
//    qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    qrView.layer.shadowOffset = CGSizeMake(0,3);
//    qrView.layer.shadowOpacity = 1;
//    qrView.layer.shadowRadius = 0;
    
    UIImage *qrImage = [LCQRCodeUtil createQRimageString:_userID sizeWidth:220 fillColor:[UIColor blackColor]];
    UIImageView *qrImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12, 12, 220, 220)];
    qrImageView.image = qrImage;
    [qrView addSubview:qrImageView];
    
    UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, qrView.bottom+10, SCREEN_WIDTH-40, 20)];
    contentLabel.font = [UIFont systemFontOfSize:12];
    contentLabel.textColor = TextColor_3;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.text = LangKey(@"activity_qrcode_scan_me");//@"扫描二维码，加我为好友";
    [contentView addSubview:contentLabel];
    
//    CGFloat width = (SCREEN_WIDTH-60)/2;
//    [self.view addSubview:self.shareBtn];
//    self.shareBtn.frame = CGRectMake(20, contentView.bottom+20, width, 48);
    [self.view addSubview:self.downBtn];
    self.downBtn.frame = CGRectMake(20, contentView.bottom+20, SCREEN_WIDTH-40, 48);

}

#pragma mark -- Setter && Getter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.numberOfLines = 1;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    return _titleLabel;
}

- (UIImageView *)iconImageView {
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.cornerRadius = 50;
        _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _iconImageView.layer.borderWidth = 1;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    return _iconImageView;
}



- (UIButton *)downBtn {
    if (!_downBtn) {
        _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_downBtn addTarget:self action:@selector(saveQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_downBtn setImage:[UIImage imageNamed:@"ic_down"] forState:UIControlStateNormal];
        _downBtn.backgroundColor = ThemeColor;
        _downBtn.layer.cornerRadius = 24;
        
    }
    return _downBtn;
}
- (UIButton *)shareBtn {
    if (!_shareBtn) {
        _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_shareBtn addTarget:self action:@selector(shareQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_shareBtn setImage:[UIImage imageNamed:@"ic_share"] forState:UIControlStateNormal];
        _shareBtn.backgroundColor = ThemeColor;
        _shareBtn.layer.cornerRadius = 24;
        
    }
    return _shareBtn;
}

- (void)shareQcImage
{
    NSString *type = @"";
    NSString *name = @"";
    NSString *avater = @"";
    NSString *content = @"";
    if (self.isTeam) {
        self.userID = self.team.teamId;
        name = self.team.teamName;
        avater = self.team.avatarUrl;
        type = @"1";
    }else{
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        name = user.userInfo.nickName;
        avater = user.userInfo.avatarUrl;
        type = @"0";
    }
    
    NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    attachment.title = name;
    attachment.type = type;
    attachment.personCardId = self.userID;
    attachment.content = self.userID;
    NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    
    ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    vc.isCard = YES;
    vc.message = message;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)saveQcImage{
    
    CGFloat f = [UIScreen mainScreen].scale;
    CGRect rect = CGRectMake(0, SCREEN_HEIGHT*0.1*f, SCREEN_WIDTH*f, SCREEN_HEIGHT*0.7*f);
    UIImage *image = [self takeScreenshot:rect];
    
    [[PHPhotoLibrary sharedPhotoLibrary]performChanges:^{
          [PHAssetChangeRequest creationRequestForAssetFromImage:image];
      } completionHandler:^(BOOL success, NSError * _Nullable error) {
          if (error) {
              dispatch_async(dispatch_get_main_queue(), ^{
                  NSString *failed = LangKey(@"group_info_activity_update_failed");//@"保存失败"
                  [SVProgressHUD showMessage:failed];
              });
          } else {
              NSString *success = LangKey(@"group_info_activity_update_success");//保存成功
              dispatch_async(dispatch_get_main_queue(), ^{
                  [SVProgressHUD showMessage:success];
              });
          }
      }];
}

-(UIImage *)takeScreenshot:(CGRect)rect{

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height), YES, 0);
    //设置截屏大小
    [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRef imageRef = viewImage.CGImage;
    //CGRect rect = CGRectMake(0, 0, 300, 300);//这里可以设置想要截图的区域
    CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    CGImageRelease(imageRefRect);
    return sendImage;


}

@end
