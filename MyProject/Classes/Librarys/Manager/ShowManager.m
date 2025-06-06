
#import <Foundation/Foundation.h>

NSString *StringFromAnteriorData(Byte *data);        


//: code
Byte kStr_debtValue[] = {67, 4, 52, 12, 10, 254, 102, 177, 207, 147, 80, 79, 47, 59, 48, 49, 92};


//: /wallet/questionList
Byte kStr_churchContent[] = {66, 20, 84, 5, 124, 219, 35, 13, 24, 24, 17, 32, 219, 29, 33, 17, 31, 32, 21, 27, 26, 248, 21, 31, 32, 137};


//: data
Byte kStr_discoName[] = {27, 4, 23, 14, 180, 94, 106, 201, 144, 1, 230, 232, 1, 59, 77, 74, 93, 74, 17};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "ShowManager.h"

//: @interface NTESGlobalConfigManager ()
@interface ShowManager ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation ShowManager

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static ShowManager *let_stretchName = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (ShowManager *)sheet{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (let_stretchName == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            let_stretchName = [[ShowManager alloc] init];
        }
        //: return shareConfigManager;
        return let_stretchName;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)bottomList{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [ShowManager sheet].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)searched{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromAnteriorData(kStr_churchContent)] sub:nil record:NO tapGetFailed:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict speedy:StringFromAnteriorData(kStr_debtValue)];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [ShowManager sheet].secretQuestionArray = [resultDict straddle:StringFromAnteriorData(kStr_discoName)];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end

Byte * AnteriorDataToCache(Byte *data) {
    int confirmFlood = data[0];
    int childAdd = data[1];
    Byte drinkingChocolate = data[2];
    int nameShow = data[3];
    if (!confirmFlood) return data + nameShow;
    for (int i = nameShow; i < nameShow + childAdd; i++) {
        int value = data[i] + drinkingChocolate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[nameShow + childAdd] = 0;
    return data + nameShow;
}

NSString *StringFromAnteriorData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AnteriorDataToCache(data)];
}
