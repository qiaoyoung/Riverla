
#import <Foundation/Foundation.h>
typedef struct {
    Byte reloadSelect;
    Byte *doingMessage;
    unsigned int textWith;
    bool level;
	int mareColor;
} NoteNameData;

NSString *StringFromNoteNameData(NoteNameData *data);


//: data
NoteNameData kStr_tingMissileData = (NoteNameData){21, (Byte []){113, 116, 97, 116, 103}, 4, false, 128};


//: /wallet/questionList
NoteNameData kStr_harshValue = (NoteNameData){85, (Byte []){122, 34, 52, 57, 57, 48, 33, 122, 36, 32, 48, 38, 33, 60, 58, 59, 25, 60, 38, 33, 4}, 20, false, 252};


//: code
NoteNameData kStr_removeTitle = (NoteNameData){64, (Byte []){35, 47, 36, 37, 26}, 4, false, 80};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "TextManager.h"

//: @interface NTESGlobalConfigManager ()
@interface TextManager ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation TextManager

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static TextManager *kLet_stateCommentValue = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (TextManager *)comeBack{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (kLet_stateCommentValue == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            kLet_stateCommentValue = [[TextManager alloc] init];
        }
        //: return shareConfigManager;
        return kLet_stateCommentValue;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)atConcealed{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [TextManager comeBack].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)progress{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromNoteNameData(&kStr_harshValue)] tool:nil examine:NO titleResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict with:StringFromNoteNameData(&kStr_removeTitle)];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [TextManager comeBack].secretQuestionArray = [resultDict view:StringFromNoteNameData(&kStr_tingMissileData)];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end

Byte *NoteNameDataToByte(NoteNameData *data) {
    if (data->level) return data->doingMessage;
    for (int i = 0; i < data->textWith; i++) {
        data->doingMessage[i] ^= data->reloadSelect;
    }
    data->doingMessage[data->textWith] = 0;
    data->level = true;
	if (data->textWith >= 1) {
		data->mareColor = data->doingMessage[0];
	}
    return data->doingMessage;
}

NSString *StringFromNoteNameData(NoteNameData *data) {
    return [NSString stringWithUTF8String:(char *)NoteNameDataToByte(data)];
}
