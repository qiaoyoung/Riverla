
#import <Foundation/Foundation.h>
typedef struct {
    Byte master;
    Byte *titleShow;
    unsigned int enableBuild;
    bool table;
	int canBlue;
} PinData;

NSString *StringFromPinData(PinData *data);


//: NTESContactDataItem
PinData kStr_intervalData = (PinData){189, (Byte []){243, 233, 248, 238, 254, 210, 211, 201, 220, 222, 201, 249, 220, 201, 220, 244, 201, 216, 208, 26}, 19, false, 36};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SupportMember.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "SupportMember.h"
//: #import "NTESSpellingCenter.h"
#import "CommentCenter.h"

//: @implementation NTESContactDataMember
@implementation SupportMember

//: - (CGFloat)uiHeight{
- (CGFloat)overMax{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)statusDataText{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)session{
    //: return @"NTESContactDataItem";
    return StringFromPinData(&kStr_intervalData);
}

//: - (NSString *)cellName{
- (NSString *)button{
    //: return @"NTESContactDataCell";
    return @"VoidView";
}

//: - (NSString *)badge{
- (NSString *)value{
    //: return @"";
    return @"";
}

//: - (NSString *)groupTitle {
- (NSString *)groupTitle {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[CommentCenter find] itemKey:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (NSString *)userId{
- (NSString *)timeWith{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)request{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)title{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)attach{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)buttonTing{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)month{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)keyAt {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[CommentCenter find] chalkLineText:self.info.showName].shortSpelling;
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[self class]]) {
    if (![object isKindOfClass:[self class]]) {
        //: return NO;
        return NO;
    }
    //: return [self.info.infoId isEqualToString:[[object info] infoId]];
    return [self.info.infoId isEqualToString:[[object info] infoId]];
}


//: @end
@end

Byte *PinDataToByte(PinData *data) {
    if (data->table) return data->titleShow;
    for (int i = 0; i < data->enableBuild; i++) {
        data->titleShow[i] ^= data->master;
    }
    data->titleShow[data->enableBuild] = 0;
    data->table = true;
	if (data->enableBuild >= 1) {
		data->canBlue = data->titleShow[0];
	}
    return data->titleShow;
}

NSString *StringFromPinData(PinData *data) {
    return [NSString stringWithUTF8String:(char *)PinDataToByte(data)];
}
