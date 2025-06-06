
#import <Foundation/Foundation.h>
typedef struct {
    Byte candy;
    Byte *consonant;
    unsigned int changeState;
    bool continual;
	int lure;
	int essay;
} EvolveData;

NSString *StringFromEvolveData(EvolveData *data);


//: icon_redpackage_open_close
EvolveData kStr_bugContent = (EvolveData){53, (Byte []){92, 86, 90, 91, 106, 71, 80, 81, 69, 84, 86, 94, 84, 82, 80, 106, 90, 69, 80, 91, 106, 86, 89, 90, 70, 80, 154}, 26, false, 184, 169};


//: user_id
EvolveData kStr_equityName = (EvolveData){177, (Byte []){196, 194, 212, 195, 238, 216, 213, 182}, 7, false, 80, 242};


//: amount
EvolveData kStr_northName = (EvolveData){41, (Byte []){72, 68, 70, 92, 71, 93, 174}, 6, false, 13, 1};


//: Congratulations on your fortune
EvolveData kStr_vanData = (EvolveData){195, (Byte []){128, 172, 173, 164, 177, 162, 183, 182, 175, 162, 183, 170, 172, 173, 176, 227, 172, 173, 227, 186, 172, 182, 177, 227, 165, 172, 177, 183, 182, 173, 166, 163}, 31, false, 33, 178};


//: team_red_adapter_yuan
EvolveData kStr_lameExposeValue = (EvolveData){118, (Byte []){2, 19, 23, 27, 41, 4, 19, 18, 41, 23, 18, 23, 6, 2, 19, 4, 41, 15, 3, 23, 24, 20}, 21, false, 142, 236};


//: #FFD7C4
EvolveData kStr_candyDualData = (EvolveData){157, (Byte []){190, 219, 219, 217, 170, 222, 169, 149}, 7, false, 166, 35};


//: start
EvolveData kStr_keyAboutData = (EvolveData){187, (Byte []){200, 207, 218, 201, 207, 50}, 5, false, 75, 109};


//: data
EvolveData kStr_minorConceiveTitle = (EvolveData){182, (Byte []){210, 215, 194, 215, 180}, 4, false, 21, 175};


//: words
EvolveData kStr_iceWhipData = (EvolveData){15, (Byte []){120, 96, 125, 107, 124, 15}, 5, false, 162, 193};


//: redid
EvolveData kStr_majorValue = (EvolveData){184, (Byte []){202, 221, 220, 209, 220, 203}, 5, false, 147, 68};


//: icon_redpackage_open_back
EvolveData kStr_welcomeFrameContent = (EvolveData){173, (Byte []){196, 206, 194, 195, 242, 223, 200, 201, 221, 204, 206, 198, 204, 202, 200, 242, 194, 221, 200, 195, 242, 207, 204, 206, 198, 24}, 25, false, 17, 223};


//: #FDA6A4
EvolveData kStr_tradeText = (EvolveData){39, (Byte []){4, 97, 99, 102, 17, 102, 19, 249}, 7, false, 52, 90};


//: /wallet/redDetail
EvolveData kStr_oakTitle = (EvolveData){222, (Byte []){241, 169, 191, 178, 178, 187, 170, 241, 172, 187, 186, 154, 187, 170, 191, 183, 178, 11}, 17, false, 162, 51};


//: unclaimed
EvolveData kStr_actressText = (EvolveData){43, (Byte []){94, 69, 72, 71, 74, 66, 70, 78, 79, 106}, 9, false, 194, 89};


//: list
EvolveData kStr_specialText = (EvolveData){115, (Byte []){31, 26, 0, 7, 105}, 4, false, 142, 6};


//: redinfo
EvolveData kStr_sireValue = (EvolveData){4, (Byte []){118, 97, 96, 109, 106, 98, 107, 26}, 7, false, 231, 83};


//: The balance has been deposited and can be withdrawn directly>>
EvolveData kStr_brainShouldData = (EvolveData){138, (Byte []){222, 226, 239, 170, 232, 235, 230, 235, 228, 233, 239, 170, 226, 235, 249, 170, 232, 239, 239, 228, 170, 238, 239, 250, 229, 249, 227, 254, 239, 238, 170, 235, 228, 238, 170, 233, 235, 228, 170, 232, 239, 170, 253, 227, 254, 226, 238, 248, 235, 253, 228, 170, 238, 227, 248, 239, 233, 254, 230, 243, 180, 180, 98}, 62, false, 45, 99};


//: View pick-up details>>
EvolveData kStr_adviceImposeData = (EvolveData){181, (Byte []){227, 220, 208, 194, 149, 197, 220, 214, 222, 152, 192, 197, 149, 209, 208, 193, 212, 220, 217, 198, 139, 139, 34}, 22, false, 46, 217};


//: #FE9FA8
EvolveData kStr_uponValue = (EvolveData){145, (Byte []){178, 215, 212, 168, 215, 208, 169, 96}, 7, false, 252, 99};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpenRedPackageSheet.h"
#import "ContentView.h"

//: @interface NTESOpenRedPackageSheet ()
@interface ContentView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @property (nonatomic,strong) UILabel *sendNickname;
@property (nonatomic,strong) UILabel *sendNickname;
//: @property (nonatomic,strong) UILabel *amountLabel;
@property (nonatomic,strong) UILabel *amountLabel;
//: @property (nonatomic,strong) UILabel *unitLabel;
@property (nonatomic,strong) UILabel *unitLabel;
//: @property (nonatomic,strong) UILabel *wordLabel;
@property (nonatomic,strong) UILabel *wordLabel;

//: @end
@end

//: @implementation NTESOpenRedPackageSheet
@implementation ContentView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithBottom:(CGRect)frame frame:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(fromAdd)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];





        //: UIImageView *backImage = [[UIImageView alloc] init];
        UIImageView *backImage = [[UIImageView alloc] init];
        //: backImage.image = [UIImage imageNamed:@"icon_redpackage_open_back"];
        backImage.image = [UIImage imageNamed:StringFromEvolveData(&kStr_welcomeFrameContent)];
        //: backImage.clipsToBounds = YES;
        backImage.clipsToBounds = YES;
        //: backImage.contentMode = UIViewContentModeScaleAspectFill;
        backImage.contentMode = UIViewContentModeScaleAspectFill;
        //: [_backView addSubview:backImage];
        [_backView addSubview:backImage];
        //: [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
        [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.right.mas_equalTo(0);
            make.right.mas_equalTo(0);
            //: make.bottom.mas_equalTo(0);
            make.bottom.mas_equalTo(0);
        //: }];
        }];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.width.mas_equalTo(30);
            make.width.mas_equalTo(30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //昵称
        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor whiteColor];
        titleLabel_1.textColor = [UIColor whiteColor];
        //: titleLabel_1.font = [UIFont systemFontOfSize:16];
        titleLabel_1.font = [UIFont systemFontOfSize:16];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: _sendNickname = titleLabel_1;
        _sendNickname = titleLabel_1;
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

//        UIView *line = [[UIView alloc] init];
//        line.backgroundColor = RGB_COLOR_String(@"#C7E8CA");
//        [_backView addSubview:line];
//        [line mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(50);
//            make.height.mas_equalTo(1);
//        }];
//


        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentLeft;
        amountLabel.textAlignment = NSTextAlignmentLeft;
        //: amountLabel.textColor = [UIColor whiteColor];
        amountLabel.textColor = [UIColor whiteColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:36];
        amountLabel.font = [UIFont boldSystemFontOfSize:36];
        //: [amountLabel sizeToFit];
        [amountLabel sizeToFit];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: _amountLabel = amountLabel;
        _amountLabel = amountLabel;
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(50);
            make.width.mas_equalTo(50);
        //: }];
        }];

        //: _unitLabel = [[UILabel alloc] init];
        _unitLabel = [[UILabel alloc] init];
        //: _unitLabel.textAlignment = NSTextAlignmentLeft;
        _unitLabel.textAlignment = NSTextAlignmentLeft;
        //: _unitLabel.textColor = [UIColor whiteColor];
        _unitLabel.textColor = [UIColor whiteColor];
        //: _unitLabel.font = [UIFont systemFontOfSize:15];
        _unitLabel.font = [UIFont systemFontOfSize:15];
        //: _unitLabel.text = [FFFLanguageManager getTextWithKey:@"team_red_adapter_yuan"];
        _unitLabel.text = [TeamManager sizeKey:StringFromEvolveData(&kStr_lameExposeValue)];
        //: [_backView addSubview:_unitLabel];
        [_backView addSubview:_unitLabel];
        //: [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(110);
            make.top.mas_offset(110);
            //: make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            //: make.width.mas_equalTo(20);
            make.width.mas_equalTo(20);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];



        //: UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        //: content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: content.titleLabel.font = [UIFont systemFontOfSize:13];
        content.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [content setTitle:@"The balance has been deposited and can be withdrawn directly>>" forState:UIControlStateNormal];
        [content setTitle:StringFromEvolveData(&kStr_brainShouldData) forState:UIControlStateNormal];
        //: [content setTitleColor:[UIColor colorWithHexString:@"#FFD7C4"] forState:UIControlStateNormal];
        [content setTitleColor:[UIColor isView:StringFromEvolveData(&kStr_candyDualData)] forState:UIControlStateNormal];
        //: [content addTarget:self action:@selector(walletButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [content addTarget:self action:@selector(userPressed) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [content mas_makeConstraints:^(MASConstraintMaker *make) {
        [content mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(145);
            make.top.mas_offset(145);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];


        //: UILabel *words = [[UILabel alloc] init];
        UILabel *words = [[UILabel alloc] init];
        //: words.textAlignment = NSTextAlignmentCenter;
        words.textAlignment = NSTextAlignmentCenter;
        //: words.textColor = [UIColor colorWithHexString:@"#FE9FA8"];
        words.textColor = [UIColor isView:StringFromEvolveData(&kStr_uponValue)];
        //: words.font = [UIFont systemFontOfSize:24];
        words.font = [UIFont systemFontOfSize:24];
        //: words.text = @"Congratulations on your fortune";
        words.text = StringFromEvolveData(&kStr_vanData);
        //: [_backView addSubview:words];
        [_backView addSubview:words];
        //: _wordLabel = words;
        _wordLabel = words;
        //: [words mas_makeConstraints:^(MASConstraintMaker *make) {
        [words mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(190);
            make.top.mas_offset(190);
            //: make.left.mas_offset(10);
            make.left.mas_offset(10);
            //: make.right.mas_equalTo(-10);
            make.right.mas_equalTo(-10);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [moreBtn setTitle:@"View pick-up details>>" forState:UIControlStateNormal];
        [moreBtn setTitle:StringFromEvolveData(&kStr_adviceImposeData) forState:UIControlStateNormal];
        //: [moreBtn setTitleColor:[UIColor colorWithHexString:@"#FDA6A4"] forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor isView:StringFromEvolveData(&kStr_tradeText)] forState:UIControlStateNormal];
        //: [moreBtn addTarget:self action:@selector(redpackageDetail) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(viewShared) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:moreBtn];
        [_backView addSubview:moreBtn];
        //: [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.bottom.mas_offset(-15);
            make.bottom.mas_offset(-15);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_open_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:StringFromEvolveData(&kStr_bugContent)] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(ofItem) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:closeButton];
        [self addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 25;
        closeButton.layer.cornerRadius = 25;
        //: closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        //: closeButton.layer.borderWidth = 2;
        closeButton.layer.borderWidth = 2;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.height.mas_equalTo(50);
            make.width.height.mas_equalTo(50);
        //: }];
        }];



        //: [self requestRedDetail];
        [self redDetail];

    }
    //: return self;
    return self;
}


//: -(void)requestRedDetail{
-(void)redDetail{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: dict[@"redid"] = [_originDict newStringValueForKey:@"redid"];
    dict[StringFromEvolveData(&kStr_majorValue)] = [_originDict speedy:StringFromEvolveData(&kStr_majorValue)];
    //: dict[@"start"] = @"1";
    dict[StringFromEvolveData(&kStr_keyAboutData)] = @"1";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/redDetail"] params:dict isShow:NO success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromEvolveData(&kStr_oakTitle)] sub:dict record:NO tapGetFailed:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict straddle:StringFromEvolveData(&kStr_minorConceiveTitle)];
        //: NSDictionary *redinfo = [data valueObjectForKey:@"redinfo"];
        NSDictionary *redinfo = [data straddle:StringFromEvolveData(&kStr_sireValue)];
        //: NSArray *list = [data arrayValueForKey:@"list"];
        NSArray *list = [data parent:StringFromEvolveData(&kStr_specialText)];
        //: _wordLabel.text = [redinfo newStringValueForKey:@"words"];
        _wordLabel.text = [redinfo speedy:StringFromEvolveData(&kStr_iceWhipData)];
        //: [self reloadHeader:[redinfo newStringValueForKey:@"user_id"]];
        [self kitSearchionYear:[redinfo speedy:StringFromEvolveData(&kStr_equityName)]];


        //: NSDictionary *getRedDict = nil;
        NSDictionary *getRedDict = nil;
        //: for (NSDictionary *item in list) {
        for (NSDictionary *item in list) {
            //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: if ([[item newStringValueForKey:@"user_id"] isEqualToString:currentAccount]) {
            if ([[item speedy:StringFromEvolveData(&kStr_equityName)] isEqualToString:currentAccount]) {
                //: getRedDict = item;
                getRedDict = item;
                //: break;
                break;
            }
        }

        //: if (getRedDict == nil) {
        if (getRedDict == nil) {

            //: _amountLabel.text = @"unclaimed";
            _amountLabel.text = StringFromEvolveData(&kStr_actressText);
            //: [_amountLabel sizeToFit];
            [_amountLabel sizeToFit];
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: _unitLabel.hidden = YES;
            _unitLabel.hidden = YES;
        //: }else{
        }else{
            //: _unitLabel.hidden = NO;
            _unitLabel.hidden = NO;
            //: NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict newStringValueForKey:@"amount"]];
            NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict speedy:StringFromEvolveData(&kStr_northName)]];
            //: _amountLabel.text = amount;
            _amountLabel.text = amount;
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
                make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
            //: }];
            }];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)walletButtonClick{
-(void)userPressed{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWalletDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(beggarMyNeighbourPolicyThroughDelegate)]) {
        //: [self.delegate myWalletDelegate];
        [self.delegate beggarMyNeighbourPolicyThroughDelegate];
        //: [self dismissPicker];
        [self ofItem];
    }
}

//: -(void)redpackageDetail{
-(void)viewShared{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(redpackageDetailWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(labels:)]) {
        //: [self.delegate redpackageDetailWith:[_originDict newStringValueForKey:@"redid"]];
        [self.delegate labels:[_originDict speedy:StringFromEvolveData(&kStr_majorValue)]];
        //: [self dismissPicker];
        [self ofItem];

    }
}

//: -(void)reloadHeader:(NSString *)userID{
-(void)kitSearchionYear:(NSString *)userID{
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    OriginBy *info = [[Notice fullKit] value:userID manager:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    //: _sendNickname.text = me.userInfo.nickName;
    _sendNickname.text = me.userInfo.nickName;
}

//: -(void)handleSingleTapFrom{
-(void)fromAdd{
    //: [self dismissPicker];
    [self ofItem];
}

//: - (void)show{
- (void)with{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
        [self->_backView setRange:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice table]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)ofItem{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setRange:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: @end
@end

Byte *EvolveDataToByte(EvolveData *data) {
    if (data->continual) return data->consonant;
    for (int i = 0; i < data->changeState; i++) {
        data->consonant[i] ^= data->candy;
    }
    data->consonant[data->changeState] = 0;
    data->continual = true;
	if (data->changeState >= 2) {
		data->lure = data->consonant[0];
		data->essay = data->consonant[1];
	}
    return data->consonant;
}

NSString *StringFromEvolveData(EvolveData *data) {
    return [NSString stringWithUTF8String:(char *)EvolveDataToByte(data)];
}
