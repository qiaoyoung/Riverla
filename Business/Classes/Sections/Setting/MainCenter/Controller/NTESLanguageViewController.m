//
//  NTESLanguageViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "NTESLanguageViewController.h"
#import "NTESLanguageTableViewCell.h"


@interface NTESLanguageViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,copy  ) NSArray                 *tData;
@property (nonatomic,copy  ) NSArray                 *data;

@property (nonatomic,copy  ) NSMutableArray *MuttableData;

@property (nonatomic,strong) UIButton *btnClose;

@end

@implementation NTESLanguageViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CommonBGView_Color;
        
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(5, SCREEN_STATUS_HEIGHT+4, 40, 40);
    [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT+4, SCREEN_WIDTH, 40)];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.textColor = TextColor_0;
    labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.text = LangKey(@"system_change_language");
    [self.view addSubview:labtitle];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+15, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-15) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
//    self.tableView.scrollEnabled = NO;
//    self.tableView.layer.cornerRadius = 12;
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[NTESLanguageTableViewCell class] forCellReuseIdentifier:@"lang"];
    
    
    self.tData = @[
   
    @{
        @"Title"         : @"English",
        @"selectLang"      : @"en",
        @"Language"      : @"en",
        @"flag"      : @"flag_en",
    },
    @{
        @"Title" : @"中文",
        @"selectLang"      : @"zh",
        @"Language"      : @"zh",
        @"flag"      : @"flag_zh",
    },
    @{
        @"Title" : @"中文繁体（新加坡）",
        @"Language"      : @"hant",
        @"selectLang"      : @"hant",
        @"flag"      : @"flag_zh",
    },
    @{
        @"Title"         : @"Việt nam", // 越南
        @"selectLang"      : @"vi",
        @"Language"      : @"vi",
        @"flag"      : @"flag_vi",
    },
    @{
        @"Title"         : @"ภาษาไทย ", // 泰语
        @"selectLang"      : @"th",
        @"Language"      : @"th",
        @"flag"      : @"flag_th",
    },
    @{
        @"Title"         : @"हिंदी", // 印度
        @"selectLang"      : @"hi",
        @"Language"      : @"hi",
        @"flag"      : @"flag_hi",
    },
    @{
        @"Title"         : @"にほんご", // 日语
        @"selectLang"      : @"ja",
        @"Language"      : @"ja",
        @"flag"      : @"flag_ja",
    },
    @{
        @"Title"         : @"한국어", //韩语
        @"selectLang"      : @"ko",
        @"Language"      : @"ko",
        @"flag"      : @"flag_ko",
    },
    @{
        @"Title"         : @"العربية", // 阿拉伯语-沙特
        @"selectLang"      : @"sa",
        @"Language"      : @"sa",
        @"flag"      : @"flag_sa",
    },
//    @{
//        @"Title"         : @"বাঙ্গালি",// 孟加拉语
//        @"selectLang"      : @"bd",
//        @"Language"      : @"en",
//        @"flag"      : @"flag_bd",
//    },
//    @{
//        @"Title"         : @"русск",// 俄语
//        @"selectLang"      : @"ru",
//        @"Language"      : @"ru",
//        @"flag"      : @"flag_ru",
//    },
//    @{
//        @"Title"         : @"‎اردو",// 乌尔都语-巴基斯坦
//        @"selectLang"      : @"pk",
//        @"Language"      : @"pk",
//        @"flag"      : @"flag_pk",
//    },
//    @{
//        @"Title"         : @"Kiswahili",// 斯瓦希里语  - 乌干达
//        @"selectLang"      : @"ug",
//        @"Language"      : @"ug",
//        @"flag"      : @"flag_ug",
//    },
    @{
        @"Title"         : @"Türkçe",// 土耳其语
        @"selectLang"      : @"tr",
        @"Language"      : @"tr",
        @"flag"      : @"flag_tr",
    },
//    @{
//        @"Title"         : @"العربية المصرية",// 埃及阿拉伯语
//        @"selectLang"      : @"eg",
//        @"Language"      : @"eg",
//        @"flag"      : @"flag_eg",
//    },
    @{
        @"Title"         : @"Austria",// 奥地利语
        @"selectLang"      : @"Au",
        @"Language"      : @"de",
        @"flag"      : @"flag_Au",
    },
    @{
        @"Title"         : @"Belgium-fr",// 比利时法语
        @"selectLang"      : @"fr",
        @"Language"      : @"fr",
        @"flag"      : @"flag_Be",
    },
    @{
        @"Title"         : @"Belgium-nl",// 比利时荷兰语
        @"selectLang"      : @"nl",
        @"Language"      : @"nl",
        @"flag"      : @"flag_Be",
    },
    @{
        @"Title"         : @"Bulgaria",// 保加利亚语
        @"selectLang"      : @"bg",
        @"Language"      : @"bg",
        @"flag"      : @"flag_bg",
    },
    @{
        @"Title"         : @"Croatia",// 克罗地亚语
        @"selectLang"      : @"hr",
        @"Language"      : @"hr",
        @"flag"      : @"flag_hr",
    },
    @{
        @"Title"         : @"Cyprus-tr",// 塞浦路斯-土耳其语
        @"selectLang"      : @"tr",
        @"Language"      : @"tr",
        @"flag"      : @"flag_cy",
    },
    @{
        @"Title"         : @"Cyprus-el",// 塞浦路斯-希腊语
        @"selectLang"      : @"el",
        @"Language"      : @"el",
        @"flag"      : @"flag_cy",
    },
    @{
        @"Title"         : @"Czech Republic",// 捷克语
        @"selectLang"      : @"cs",
        @"Language"      : @"cs",
        @"flag"      : @"flag_cs",
    },
    @{
        @"Title"         : @"Denmark",// 丹麦
        @"selectLang"      : @"da",
        @"Language"      : @"da",
        @"flag"      : @"flag_da",
    },
    @{
        @"Title"         : @"Estonia",// 爱沙尼亚
        @"selectLang"      : @"et",
        @"Language"      : @"et",
        @"flag"      : @"flag_et",
    },
    @{
        @"Title"         : @"Finland",// 芬兰
        @"selectLang"      : @"fi",
        @"Language"      : @"fi",
        @"flag"      : @"flag_fi",
    },
    @{
        @"Title"         : @"En français", // 法语
        @"selectLang"      : @"fr",
        @"Language"      : @"fr",
        @"flag"      : @"flag_fr",
    },
    @{
        @"Title"         : @"Das ist Deutsch.",// 德语
        @"selectLang"      : @"de",
        @"Language"      : @"de",
        @"flag"      : @"flag_de",
    },
    @{
        @"Title"         : @"Greece",// 希腊
        @"selectLang"      : @"el",
        @"Language"      : @"el",
        @"flag"      : @"flag_el",
    },
    @{
        @"Title"         : @"Hungary",// 匈牙利
        @"selectLang"      : @"hu",
        @"Language"      : @"hu",
        @"flag"      : @"flag_hu",
    },
    @{
        @"Title"         : @"Ireland",// 爱尔兰
        @"selectLang"      : @"ga",
        @"Language"      : @"ga",
        @"flag"      : @"flag_ga",
    },
    @{
        @"Title"         : @"Italy",// 意大利语
        @"selectLang"      : @"it",
        @"Language"      : @"it",
        @"flag"      : @"flag_it",
    },
    @{
        @"Title"         : @"Latvia",// 拉脱维亚
        @"selectLang"      : @"lv",
        @"Language"      : @"lv",
        @"flag"      : @"flag_lv",
    },
    @{
        @"Title"         : @"Lithuania",// 立陶宛
        @"selectLang"      : @"lt",
        @"Language"      : @"lt",
        @"flag"      : @"flag_lt",
    },
    @{
        @"Title"         : @"Luxembourg",// 卢森堡
        @"selectLang"      : @"lb",
        @"Language"      : @"lb",
        @"flag"      : @"flag_lb",
    },
    @{
        @"Title"         : @"Malta",// 马耳他
        @"selectLang"      : @"mt",
        @"Language"      : @"mt",
        @"flag"      : @"flag_mt",
    },
    @{
        @"Title"         : @"Netherlands",// 荷兰
        @"selectLang"      : @"nl",
        @"Language"      : @"nl",
        @"flag"      : @"flag_nl",
    },
    @{
        @"Title"         : @"Poland",// 波兰
        @"selectLang"      : @"pl",
        @"Language"      : @"pl",
        @"flag"      : @"flag_pl",
    },
    @{
        @"Title"         : @"Língua portuguesa", // 葡萄牙
        @"selectLang"      : @"pt",
        @"Language"      : @"pt",
        @"flag"      : @"flag_pt",
    },
    @{
        @"Title"         : @"Romania",// 罗马尼亚
        @"selectLang"      : @"ro",
        @"Language"      : @"ro",
        @"flag"      : @"flag_ro",
    },
    @{
        @"Title"         : @"Slovakia",// 斯洛伐克
        @"selectLang"      : @"sk",
        @"Language"      : @"sk",
        @"flag"      : @"flag_sk",
    },
    @{
        @"Title"         : @"Slovenia",// 斯洛文尼亚
        @"selectLang"      : @"sl",
        @"Language"      : @"sl",
        @"flag"      : @"flag_sl",
    },
    @{
        @"Title"         : @"Español", // 西班牙
        @"selectLang"      : @"spa",
        @"Language"      : @"spa",
        @"flag"      : @"flag_spa",
    },
    @{
        @"Title"         : @"Sweden",// 瑞典
        @"selectLang"      : @"sv",
        @"Language"      : @"sv",
        @"flag"      : @"flag_sv",
    }
    ];
    
    self.data = [NSArray arrayWithArray:self.tData];
    
    self.MuttableData = [NSMutableArray array];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 56;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NTESLanguageTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"lang" forIndexPath:indexPath];
      //MyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft"];
      //if(cell == nil) {
      //    cell = [[MyTableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:@"ft"];
      //}
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    NSDictionary *dic = self.data[indexPath.section];
    cell.labTitle.text = dic[@"Title"];
    cell.countyImg.image = [UIImage imageNamed:dic[@"flag"]];
    
    NSString *lang = dic[@"selectLang"];
    NSString *language = [NIMUserDefaults standardUserDefaults].language;
    if([lang isEqualToString:language]){
        cell.layer.borderWidth = 2;
        cell.layer.borderColor = ThemeColor.CGColor;
    }else{
        cell.layer.borderWidth = 0;
    }

      return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
   
    [self changedLanguages:self.data[indexPath.section][@"Language"]];

}

- (void)changedLanguages:(NSString *)lang {
    
    
    [[NIMUserDefaults standardUserDefaults] updateLanguageWith:lang];
    
    [self.navigationController popToRootViewControllerAnimated:NO];
    


}



@end
