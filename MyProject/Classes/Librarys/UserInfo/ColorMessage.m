// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorMessage.m
//  fanxingxue
//
//  Created by 曹宇 on 2018/3/28.
//  Copyright © 2018年 caoyu. All rights reserved.
//
//#import "JPushManager.h"

// __M_A_C_R_O__
//: #import "UserManager.h"
#import "ColorMessage.h"

//: @implementation UserManager
@implementation ColorMessage

//判断是否登录
//: +(BOOL)isLogin
+(BOOL)betweenMark
{
//    if ([BlondeDefaults standardUserDefaults].user_id.length>0) {
//        return YES;
//    }else{
//        return NO;
//    }
    //: return YES;
    return YES;
}


//: + (void)refrushNewData{
+ (void)magnitude{

}

//: + (void)saveUserInfo:(id)responseObject{
+ (void)information:(id)responseObject{

    //: NSDictionary *resultListDict = (NSDictionary *)responseObject;
    NSDictionary *resultListDict = (NSDictionary *)responseObject;
    //NSLog(@"%@", [NSString changeToJsonWithDictionary:responseObject]);

    //: NSDictionary *data = (NSDictionary *)responseObject;
    NSDictionary *data = (NSDictionary *)responseObject;
    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    BlondeDefaults *userDefaults = [BlondeDefaults phone];
//    userDefaults.user_id         = [data newStringValueForKey:@"id"];
//    userDefaults.mobile          = [data newStringValueForKey:@"mobile"];
//    userDefaults.user_name       = [data newStringValueForKey:@"user_name"];
//    userDefaults.user_nickname   = [data newStringValueForKey:@"user_nickname"];
//    userDefaults.head_img        = [data newStringValueForKey:@"head_img"];
//    userDefaults.city_id         = [data newStringValueForKey:@"city_id"];
//    userDefaults.token           = [data newStringValueForKey:@"token"];
//    userDefaults.deposit_money   = [data newStringValueForKey:@"deposit_money"];
//    userDefaults.guarantee_money    = [data newStringValueForKey:@"guarantee_money"];
//    userDefaults.freeze_deposit_money = [data newStringValueForKey:@"freeze_deposit_money"];
//    userDefaults.freeze_guarantee_money = [data newStringValueForKey:@"freeze_guarantee_money"];
//    userDefaults.auction_number         = [data newStringValueForKey:@"auction_number"];




//    AppDelegate *delegate =  (AppDelegate*)[[UIApplication sharedApplication]delegate];
//    [delegate setRootControllerWithLoginStatus];

//    [[JPushManager shareManager]bindJpushId];
//
//    [[NSNotificationCenter defaultCenter]postNotificationName:BYLoginSucceedNotification object:nil];
//
//    SK_MAIN_THREAD_START{
//
//        //[BYPLVVodSDK setCacheDir];
//
//    }SK_MAIN_THREAD_END
}




//: + (void)logout{
+ (void)array{

//    userDefaults.user_id         = @"";
//    userDefaults.mobile          = @"";
//    userDefaults.user_name       = @"";
//    userDefaults.user_nickname   = @"";
//    userDefaults.head_img        = @"";
//    userDefaults.city_id         = @"";
//    userDefaults.token           = @"";
//    userDefaults.favorites_num   = @"";
//    userDefaults.order_num       = @"";
//    userDefaults.coupon_num      = @"";
//    userDefaults.deposit_money   = @"";
//    userDefaults.guarantee_money    = @"";
//    userDefaults.freeze_deposit_money = @"";
//    userDefaults.freeze_guarantee_money = @"";
//    userDefaults.auction_number = @"";


//    userDefaults.headPortrait = @"";
//    userDefaults.mobile       = @"";
//    userDefaults.realName     = @"";
//    userDefaults.sex          = @"";
//    userDefaults.userId       = @"";
    //userDefaults.UserNo       = @"";
//    userDefaults.UserPassword = @"";
//    userDefaults.apikey       = @"";
//    userDefaults.apisecret    = @"";

//    AppDelegate *delegate =  (AppDelegate*)[[UIApplication sharedApplication]delegate];
//    [delegate setRootControllerWithLoginStatus];

//    [[NSNotificationCenter defaultCenter]postNotificationName:BYLoginSucceedNotification object:nil];

//    SK_MAIN_THREAD_START{
//        //[BYPLVVodSDK setCacheDir];
//
//        [HHttpManager removeAllHttpCache];
//        //Noti_Post(UserLogout, nil);
//    }SK_MAIN_THREAD_END
}

//: + (NSString *)getUserId{
+ (NSString *)rangeRegain{
    //: NSString *userId = [NIMUserDefaults standardUserDefaults].accid;
    NSString *userId = [BlondeDefaults phone].accid;
    //: return userId;
    return userId;
}


//+ (NSString *)getMobileNumber{
//    NSString *UserNo = emptyString([BlondeDefaults standardUserDefaults].mobile);
//    return UserNo;
//}
//
//+ (NSString *)getHeaderImageUrl{
//    NSString *headImageUrl = emptyString([BlondeDefaults standardUserDefaults].head_img);
//    return headImageUrl;
//}
//+ (NSString *)getNickName{
//    NSString *headImageUrl = emptyString([BlondeDefaults standardUserDefaults].user_nickname);
//    return headImageUrl;
//}
//
//+ (void)callSevicePhoneNumber{
//    NSMutableString * string = [[ NSMutableString alloc] initWithFormat: @"tel:%@", [BlondeDefaults standardUserDefaults].serverPhoneNumber];
//    [[ UIApplication sharedApplication] openURL:[ NSURL URLWithString:string]];
//}
//+ (NSString *)setPrefixURLWithURL:(NSString *)imageurl{
//    NSString *prefixStr = [BlondeDefaults standardUserDefaults].prefixURL;
//
//    NSString *url = [prefixStr stringByAppendingPathComponent:imageurl];
//
//    return url;
//}
//
//+ (NSString *)setPrefixAndSuffixURLWithURL:(NSString *)imageurl{
//    NSString *prefixStr = [BlondeDefaults standardUserDefaults].prefixURL;
//    NSString *suffixStr = [BlondeDefaults standardUserDefaults].thumbURL;
//    NSString *url = [[prefixStr stringByAppendingPathComponent:imageurl] stringByAppendingString:suffixStr];
//    return url;
//}


//+ (NSString *)getApikey{
//    NSString *apikey = emptyString([BlondeDefaults standardUserDefaults].apikey);
//    return apikey;
//}
//
//+ (NSString *)getApisecret{
//    NSString *apisecret = emptyString([BlondeDefaults standardUserDefaults].apisecret);
//    return apisecret;
//}

//+ (void)saveCompanyInfo:(NSDictionary *)dict{
//    if (dict.count <= 0) {
//        return;
//    }
//    [BlondeDefaults standardUserDefaults].compId = [dict newStringValueForKey:@"compId"];
//    [BlondeDefaults standardUserDefaults].orgId = [dict newStringValueForKey:@"orgId"];
//    [BlondeDefaults standardUserDefaults].orgName = [dict newStringValueForKey:@"orgName"];
//
//
//    [BlondeDefaults standardUserDefaults].longitude = [[dict newStringValueForKey:@"longitude"] doubleValue];
//    [BlondeDefaults standardUserDefaults].latitude  = [[dict newStringValueForKey:@"latitude"] doubleValue];
//
//    [BlondeDefaults standardUserDefaults].company_latitude = [dict newStringValueForKey:@"latitude"];
//    [BlondeDefaults standardUserDefaults].company_longitude = [dict newStringValueForKey:@"longitude"];
//
//    [BlondeDefaults standardUserDefaults].province = [dict newStringValueForKey:@"province"];
//    [BlondeDefaults standardUserDefaults].city     = [dict newStringValueForKey:@"city"];
//    [BlondeDefaults standardUserDefaults].district   = [dict newStringValueForKey:@"county"];
//    [BlondeDefaults standardUserDefaults].address   = [dict newStringValueForKey:@"address"];
//
////    [[UCompamyDataManager sharedConfigManager] reloadPositionData];
//}


////保存公共信息-聊天字段
//+ (void)reloadUserInformation{
//    [HHttpManager POST:Server_userCard_get parameters:nil success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *success = [resultDict newStringValueForKey:@"success"];
//        NSDictionary *data = [resultDict valueForKey:@"data"];
//        if ([success isEqualToString:kConstant_1]) {
//            
//            [BlondeDefaults standardUserDefaults].myName = [data newStringValueForKey:@"realName"];
//            [BlondeDefaults standardUserDefaults].myHeadImg = [data newStringValueForKey:@"headImg"];
//            [BlondeDefaults standardUserDefaults].myPosition = [data newStringValueForKey:@"position"];
//            [BlondeDefaults standardUserDefaults].myCompanyName = [data newStringValueForKey:@"compName"];
//
//        }
//    } failure:^(NSError *error) {
//        
//    }];
//    
//}


//: + (NSString *)getLocaleString {
+ (NSString *)decisionContent {
    //: NSString * preferredLanguage = @"en";
    NSString * preferredLanguage = @"en";
    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    BlondeDefaults *userDefaults = [BlondeDefaults phone];
    //: NSString *langType = userDefaults.language;
    NSString *langType = userDefaults.language;
    //: if (langType.length <= 0) {
    if (langType.length <= 0) {
        //: preferredLanguage = @"en";
        preferredLanguage = @"en";
    //: } else {
    } else {
        //: preferredLanguage = langType;
        preferredLanguage = langType;
    }
    //: return preferredLanguage;
    return preferredLanguage;
}

//: @end
@end