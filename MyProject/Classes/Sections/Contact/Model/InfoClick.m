
#import <Foundation/Foundation.h>
typedef struct {
    Byte video;
    Byte *dateInfo;
    unsigned int text;
    bool replyTap;
	int color;
	int travelKit;
	int titleBlue;
} ShowData;

NSString *StringFromShowData(ShowData *data);


//: NTESContactDataItem
ShowData kStr_shouldValue = (ShowData){174, (Byte []){224, 250, 235, 253, 237, 193, 192, 218, 207, 205, 218, 234, 207, 218, 207, 231, 218, 203, 195, 197}, 19, false, 190, 43, 166};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoClick.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "InfoClick.h"
//: #import "NTESSpellingCenter.h"
#import "PinCenter.h"

//: @implementation NTESContactDataMember
@implementation InfoClick

//: - (CGFloat)uiHeight{
- (CGFloat)view{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)compound{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)bodyMassIndex{
    //: return @"NTESContactDataItem";
    return StringFromShowData(&kStr_shouldValue);
}

//: - (NSString *)cellName{
- (NSString *)contentAnonym{
    //: return @"NTESContactDataCell";
    return @"PinCellView";
}

//: - (NSString *)badge{
- (NSString *)conference{
    //: return @"";
    return @"";
}

//: - (NSString *)groupTitle {
- (NSString *)groupTitle {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[PinCenter count] frameDoing:self.info.showName].capitalizedString;
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
- (NSString *)userId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)step{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)bubble{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)domain{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)sortKey {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[PinCenter count] keepName:self.info.showName].shortSpelling;
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

Byte *ShowDataToByte(ShowData *data) {
    if (data->replyTap) return data->dateInfo;
    for (int i = 0; i < data->text; i++) {
        data->dateInfo[i] ^= data->video;
    }
    data->dateInfo[data->text] = 0;
    data->replyTap = true;
	if (data->text >= 3) {
		data->color = data->dateInfo[0];
		data->travelKit = data->dateInfo[1];
		data->titleBlue = data->dateInfo[2];
	}
    return data->dateInfo;
}

NSString *StringFromShowData(ShowData *data) {
    return [NSString stringWithUTF8String:(char *)ShowDataToByte(data)];
}
