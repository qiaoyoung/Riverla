
#import <Foundation/Foundation.h>

NSString *StringFromCircumferenceData(Byte *data);        


//: View pick-up details>>
Byte kStr_requestTitle[] = {30, 22, 84, 13, 208, 147, 43, 223, 201, 63, 61, 23, 47, 2, 21, 17, 35, 204, 28, 21, 15, 23, 217, 33, 28, 204, 16, 17, 32, 13, 21, 24, 31, 234, 234, 57};


//: #FFD7C4
Byte kStr_userViewContent[] = {49, 7, 61, 6, 82, 118, 230, 9, 9, 7, 250, 6, 247, 218};


//: start
Byte kStr_endContent[] = {98, 5, 23, 5, 231, 92, 93, 74, 91, 93, 138};


//: icon_redpackage_open_back
Byte kStr_dateContent[] = {88, 25, 18, 8, 179, 80, 90, 108, 87, 81, 93, 92, 77, 96, 83, 82, 94, 79, 81, 89, 79, 85, 83, 77, 93, 94, 83, 92, 77, 80, 79, 81, 89, 208};


//: Congratulations on your fortune
Byte kStr_sharedName[] = {11, 31, 96, 9, 67, 23, 64, 1, 78, 227, 15, 14, 7, 18, 1, 20, 21, 12, 1, 20, 9, 15, 14, 19, 192, 15, 14, 192, 25, 15, 21, 18, 192, 6, 15, 18, 20, 21, 14, 5, 39};


//: #FE9FA8
Byte kStr_dateValueData[] = {9, 7, 26, 12, 4, 159, 19, 246, 168, 88, 20, 140, 9, 44, 43, 31, 44, 39, 30, 173};


//: list
Byte kStr_sharedBlueValue[] = {89, 4, 10, 14, 61, 199, 135, 27, 250, 226, 68, 151, 42, 32, 98, 95, 105, 106, 14};


//: data
Byte kStr_sizeQuickText[] = {82, 4, 48, 6, 242, 134, 52, 49, 68, 49, 53};


//: team_red_adapter_yuan
Byte kStr_referName[] = {34, 21, 38, 9, 142, 80, 52, 55, 102, 78, 63, 59, 71, 57, 76, 63, 62, 57, 59, 62, 59, 74, 78, 63, 76, 57, 83, 79, 59, 72, 140};


//: icon_redpackage_open_close
Byte kStr_blueViewName[] = {98, 26, 55, 11, 74, 232, 79, 4, 3, 208, 165, 50, 44, 56, 55, 40, 59, 46, 45, 57, 42, 44, 52, 42, 48, 46, 40, 56, 57, 46, 55, 40, 44, 53, 56, 60, 46, 147};


//: user_id
Byte kStr_windowValue[] = {41, 7, 10, 11, 193, 208, 89, 41, 41, 2, 155, 107, 105, 91, 104, 85, 95, 90, 129};


//: The balance has been deposited and can be withdrawn directly>>
Byte kStr_nimContent[] = {25, 62, 53, 13, 74, 78, 207, 20, 36, 65, 124, 45, 234, 31, 51, 48, 235, 45, 44, 55, 44, 57, 46, 48, 235, 51, 44, 62, 235, 45, 48, 48, 57, 235, 47, 48, 59, 58, 62, 52, 63, 48, 47, 235, 44, 57, 47, 235, 46, 44, 57, 235, 45, 48, 235, 66, 52, 63, 51, 47, 61, 44, 66, 57, 235, 47, 52, 61, 48, 46, 63, 55, 68, 9, 9, 25};


//: #FDA6A4
Byte kStr_recentMaxValue[] = {30, 7, 60, 9, 165, 233, 180, 206, 174, 231, 10, 8, 5, 250, 5, 248, 22};


//: redid
Byte kStr_quickGroupValue[] = {27, 5, 84, 7, 66, 93, 169, 30, 17, 16, 21, 16, 125};


//: words
Byte kStr_selectedFileText[] = {80, 5, 44, 5, 166, 75, 67, 70, 56, 71, 25};


//: redinfo
Byte kStr_currentName[] = {51, 7, 83, 7, 162, 82, 71, 31, 18, 17, 22, 27, 19, 28, 44};


//: amount
Byte kStr_barMaxName[] = {84, 6, 95, 5, 204, 2, 14, 16, 22, 15, 21, 187};


//: unclaimed
Byte kStr_redTitle[] = {76, 9, 49, 7, 245, 26, 223, 68, 61, 50, 59, 48, 56, 60, 52, 51, 94};


//: /wallet/redDetail
Byte kStr_deviceText[] = {51, 17, 36, 5, 46, 11, 83, 61, 72, 72, 65, 80, 11, 78, 65, 64, 32, 65, 80, 61, 69, 72, 129};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CorrelationTableView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpenRedPackageSheet.h"
#import "CorrelationTableView.h"

//: @interface NTESOpenRedPackageSheet ()
@interface CorrelationTableView ()
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
@implementation CorrelationTableView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithMax:(CGRect)frame voiceOff:(NSDictionary *)dictionary{

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
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(currentGesture)];
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
        backImage.image = [UIImage imageNamed:StringFromCircumferenceData(kStr_dateContent)];
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
        _unitLabel.text = [ItemManager sessionInformation:StringFromCircumferenceData(kStr_referName)];
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
        [content setTitle:StringFromCircumferenceData(kStr_nimContent) forState:UIControlStateNormal];
        //: [content setTitleColor:[UIColor colorWithHexString:@"#FFD7C4"] forState:UIControlStateNormal];
        [content setTitleColor:[UIColor withMax:StringFromCircumferenceData(kStr_userViewContent)] forState:UIControlStateNormal];
        //: [content addTarget:self action:@selector(walletButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [content addTarget:self action:@selector(applicationInput) forControlEvents:UIControlEventTouchUpInside];
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
        words.textColor = [UIColor withMax:StringFromCircumferenceData(kStr_dateValueData)];
        //: words.font = [UIFont systemFontOfSize:24];
        words.font = [UIFont systemFontOfSize:24];
        //: words.text = @"Congratulations on your fortune";
        words.text = StringFromCircumferenceData(kStr_sharedName);
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
        [moreBtn setTitle:StringFromCircumferenceData(kStr_requestTitle) forState:UIControlStateNormal];
        //: [moreBtn setTitleColor:[UIColor colorWithHexString:@"#FDA6A4"] forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor withMax:StringFromCircumferenceData(kStr_recentMaxValue)] forState:UIControlStateNormal];
        //: [moreBtn addTarget:self action:@selector(redpackageDetail) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(someBlock) forControlEvents:UIControlEventTouchUpInside];
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
        [closeButton setImage:[UIImage imageNamed:StringFromCircumferenceData(kStr_blueViewName)] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(houseMobile) forControlEvents:UIControlEventTouchUpInside];
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
        [self detail];

    }
    //: return self;
    return self;
}


//: -(void)requestRedDetail{
-(void)detail{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: dict[@"redid"] = [_originDict newStringValueForKey:@"redid"];
    dict[StringFromCircumferenceData(kStr_quickGroupValue)] = [_originDict with:StringFromCircumferenceData(kStr_quickGroupValue)];
    //: dict[@"start"] = @"1";
    dict[StringFromCircumferenceData(kStr_endContent)] = @"1";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/redDetail"] params:dict isShow:NO success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromCircumferenceData(kStr_deviceText)] tool:dict examine:NO titleResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict view:StringFromCircumferenceData(kStr_sizeQuickText)];
        //: NSDictionary *redinfo = [data valueObjectForKey:@"redinfo"];
        NSDictionary *redinfo = [data view:StringFromCircumferenceData(kStr_currentName)];
        //: NSArray *list = [data arrayValueForKey:@"list"];
        NSArray *list = [data checked:StringFromCircumferenceData(kStr_sharedBlueValue)];
        //: _wordLabel.text = [redinfo newStringValueForKey:@"words"];
        _wordLabel.text = [redinfo with:StringFromCircumferenceData(kStr_selectedFileText)];
        //: [self reloadHeader:[redinfo newStringValueForKey:@"user_id"]];
        [self refresh:[redinfo with:StringFromCircumferenceData(kStr_windowValue)]];


        //: NSDictionary *getRedDict = nil;
        NSDictionary *getRedDict = nil;
        //: for (NSDictionary *item in list) {
        for (NSDictionary *item in list) {
            //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: if ([[item newStringValueForKey:@"user_id"] isEqualToString:currentAccount]) {
            if ([[item with:StringFromCircumferenceData(kStr_windowValue)] isEqualToString:currentAccount]) {
                //: getRedDict = item;
                getRedDict = item;
                //: break;
                break;
            }
        }

        //: if (getRedDict == nil) {
        if (getRedDict == nil) {

            //: _amountLabel.text = @"unclaimed";
            _amountLabel.text = StringFromCircumferenceData(kStr_redTitle);
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
            NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict with:StringFromCircumferenceData(kStr_barMaxName)]];
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
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)walletButtonClick{
-(void)applicationInput{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWalletDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(objectBox)]) {
        //: [self.delegate myWalletDelegate];
        [self.delegate objectBox];
        //: [self dismissPicker];
        [self houseMobile];
    }
}

//: -(void)redpackageDetail{
-(void)someBlock{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(redpackageDetailWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(operaing:)]) {
        //: [self.delegate redpackageDetailWith:[_originDict newStringValueForKey:@"redid"]];
        [self.delegate operaing:[_originDict with:StringFromCircumferenceData(kStr_quickGroupValue)]];
        //: [self dismissPicker];
        [self houseMobile];

    }
}

//: -(void)reloadHeader:(NSString *)userID{
-(void)refresh:(NSString *)userID{
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:userID button:nil];
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
-(void)currentGesture{
    //: [self dismissPicker];
    [self houseMobile];
}

//: - (void)show{
- (void)screen{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
        [self->_backView setProviderY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice clear]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)houseMobile{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setProviderY:[[UIScreen mainScreen] bounds].size.height];
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

Byte * CircumferenceDataToCache(Byte *data) {
    int passAway = data[0];
    int lengthShared = data[1];
    Byte current = data[2];
    int topRemove = data[3];
    if (!passAway) return data + topRemove;
    for (int i = topRemove; i < topRemove + lengthShared; i++) {
        int value = data[i] + current;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[topRemove + lengthShared] = 0;
    return data + topRemove;
}

NSString *StringFromCircumferenceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CircumferenceDataToCache(data)];
}
