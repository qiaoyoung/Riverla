
#import <Foundation/Foundation.h>

NSString *StringFromPatronData(Byte *data);


//: null
Byte kStr_gentlemanValue[] = {81, 4, 12, 179, 7, 187, 64, 196, 149, 36, 159, 66, 108, 108, 117, 110, 153};


//: messageAbstract
Byte kStr_intentionTitle[] = {37, 15, 8, 45, 68, 34, 168, 101, 116, 99, 97, 114, 116, 115, 98, 65, 101, 103, 97, 115, 115, 101, 109, 125};


//: md5
Byte kStr_fitnessAssistantData[] = {41, 3, 10, 84, 193, 28, 198, 113, 155, 71, 53, 100, 109, 243};


//: url
Byte kStr_hangValue[] = {63, 3, 9, 9, 122, 1, 240, 116, 207, 108, 114, 117, 234};


//: encrypted
Byte kStr_leapTitle[] = {56, 9, 7, 109, 36, 20, 247, 100, 101, 116, 112, 121, 114, 99, 110, 101, 47};


//: compressed
Byte kStr_pdaName[] = {97, 10, 5, 185, 30, 100, 101, 115, 115, 101, 114, 112, 109, 111, 99, 169};


//: password
Byte kStr_aheadName[] = {35, 8, 3, 100, 114, 111, 119, 115, 115, 97, 112, 228};


//: sessionId
Byte kStr_holidayData[] = {23, 9, 7, 40, 24, 126, 220, 100, 73, 110, 111, 105, 115, 115, 101, 115, 1};


//: sender
Byte kStr_hamGasolineData[] = {45, 6, 3, 114, 101, 100, 110, 101, 115, 5};


//: sessionName
Byte kStr_commonName[] = {41, 11, 5, 15, 120, 101, 109, 97, 78, 110, 111, 105, 115, 115, 101, 115, 9};


//: 聊天记录
Byte kStr_goingContent[] = {20, 12, 8, 177, 187, 135, 95, 126, 149, 189, 229, 176, 174, 232, 169, 164, 229, 138, 129, 232, 164};


//: data
Byte kStr_pressGuarPauseValue[] = {51, 4, 11, 108, 64, 54, 153, 51, 36, 37, 178, 97, 116, 97, 100, 89};


//: fileName
Byte kStr_iceName[] = {44, 8, 12, 21, 9, 141, 235, 13, 74, 255, 47, 170, 101, 109, 97, 78, 101, 108, 105, 102, 73};


//: message
Byte kStr_tractionDateData[] = {47, 7, 5, 237, 93, 101, 103, 97, 115, 115, 101, 109, 86};


//: type
Byte kStr_themTitle[] = {6, 4, 8, 134, 231, 100, 145, 21, 101, 112, 121, 116, 175};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConstituentAttachment.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "ConstituentAttachment.h"
//: #import "NTESFileLocationHelper.h"
#import "TrademarkByScaleHelper.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Enable.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "PopScrollView+Notice.h"
//: #import "NTESMessageUtil.h"
#import "LatchkeyChange.h"
//: #import "FFFInputEmoticonParser.h"
#import "EmoticonParser.h"

//: @interface NTESMultiRetweetAttachment ()
@interface ConstituentAttachment ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) PopScrollView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation ConstituentAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[StringFromPatronData(kStr_hangValue)] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[StringFromPatronData(kStr_fitnessAssistantData)] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[StringFromPatronData(kStr_iceName)] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[StringFromPatronData(kStr_pdaName)] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[StringFromPatronData(kStr_leapTitle)] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[StringFromPatronData(kStr_aheadName)] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[StringFromPatronData(kStr_intentionTitle)] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[StringFromPatronData(kStr_commonName)] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[StringFromPatronData(kStr_holidayData)] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{StringFromPatronData(kStr_themTitle) : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           StringFromPatronData(kStr_pressGuarPauseValue) : dataDic};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }


    //: return content;
    return content;
}

//: - (void)setAbstracts:(NSMutableArray<NTESMessageAbstract *> *)abstracts {
- (void)setAbstracts:(NSMutableArray<PinLengthAbstract *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (PinLengthAbstract *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj item];
        //: if (objDic) {
        if (objDic) {
            //: [abstractDics addObject:objDic];
            [abstractDics addObject:objDic];
        }
    }
    //: _messageAbstract = abstractDics;
    _messageAbstract = abstractDics;
}

//: - (void)setMessageAbstract:(NSArray *)messageAbstract {
- (void)setMessageAbstract:(NSArray *)messageAbstract {
    //: _messageAbstract = messageAbstract;
    _messageAbstract = messageAbstract;
    //: if (!messageAbstract) {
    if (!messageAbstract) {
        //: _abstracts = nil;
        _abstracts = nil;
    //: } else {
    } else {
        //: _abstracts = [NSMutableArray array];
        _abstracts = [NSMutableArray array];
        //: for (id obj in messageAbstract) {
        for (id obj in messageAbstract) {
            //: if ([obj isKindOfClass:[NSDictionary class]]) {
            if ([obj isKindOfClass:[NSDictionary class]]) {
                //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithDictionary:obj];
                PinLengthAbstract *abstract = [PinLengthAbstract tingView:obj];
                //: if (abstract) {
                if (abstract) {
                    //: [_abstracts addObject:abstract];
                    [_abstracts addObject:abstract];
                }
            }
        }
    }
}

//: - (NSString *)formatTitleMessage {
- (NSString *)cipher {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            StringFromPatronData(kStr_goingContent).titleLocalized];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)at:(PinLengthAbstract *)abstract {
    //: return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
    return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
}

//: #pragma mark - 上传接口
#pragma mark - 上传接口
//: - (BOOL)attachmentNeedsUpload {
- (BOOL)attachmentNeedsUpload {
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading {
- (NSString *)attachmentPathForUploading {
    //: return self.filePath;
    return self.filePath;
}

//: - (void)updateAttachmentURL:(NSString *)urlString {
- (void)updateAttachmentURL:(NSString *)urlString {
    //: self.url = urlString;
    self.url = urlString;
}

//: #pragma mark - 下载相关接口
#pragma mark - 下载相关接口
//: - (BOOL)attachmentNeedsDownload {
- (BOOL)attachmentNeedsDownload {
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
    BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
                      //: && !isDir);
                      && !isDir);
    //: return !fileExist;
    return !fileExist;
}

//: - (NSString *)attachmentURLStringForDownloading {
- (NSString *)attachmentURLStringForDownloading {
    //: return _url;
    return _url;
}

//: - (NSString *)attachmentPathForDownloading {
- (NSString *)attachmentPathForDownloading {
    //: return self.filePath;
    return self.filePath;
}

//: #pragma mark - cell相关
#pragma mark - cell相关
//: - (NSString *)cellContent:(NIMMessage *)message {
- (NSString *)videoContent:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"NameControl";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)dataPriority:(NIMMessage *)message numericalTotal:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self cipher];
    //: NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    //: CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    //: NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    //: CGSize titleSize = [titleString boundingRectWithSize:bounding
    CGSize titleSize = [titleString boundingRectWithSize:bounding
                                                 //: options:options
                                                 options:options
                                              //: attributes:attribute
                                              attributes:attribute
                                                 //: context:nil].size;
                                                 context:nil].size;

    //: attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    //: CGSize subTitleSize = [@"聊天记录".ntes_localized boundingRectWithSize:bounding
    CGSize subTitleSize = [StringFromPatronData(kStr_goingContent).titleLocalized boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (PinLengthAbstract *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label pose:[self at:abs]];
        //: CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: abstractHeight += (size.height + padding);
        abstractHeight += (size.height + padding);
    }

    //: CGFloat height = titleSize.height +
    CGFloat height = titleSize.height +
                    //: abstractHeight + 1.0 +
                    abstractHeight + 1.0 +
                    //: padding + subTitleSize.height;
                    padding + subTitleSize.height;

    //: return CGSizeMake(msgBubbleMaxWidth, height);
    return CGSizeMake(msgBubbleMaxWidth, height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)max:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)sendItem {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)eliteRecord {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [TrademarkByScaleHelper phoneFile:self.fileName] : nil;
    //: return filePath;
    return filePath;
}

//: - (NSString *)fileName
- (NSString *)fileName
{
    //: if (!_fileName) {
    if (!_fileName) {
        //: _fileName = self.url.lastPathComponent;
        _fileName = self.url.lastPathComponent;
    }
    //: return _fileName;
    return _fileName;
}

//: - (M80AttributedLabel *)label {
- (PopScrollView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[PopScrollView alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor lightGrayColor];
        _label.textColor = [UIColor lightGrayColor];
        //: _label.font = [UIFont systemFontOfSize:11];
        _label.font = [UIFont systemFontOfSize:11];
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
    }
    //: return _label;
    return _label;
}

//: @end
@end

//: #pragma mark - NTESMessageAbstract
#pragma mark - PinLengthAbstract


//: @implementation NTESMessageAbstract
@implementation PinLengthAbstract

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)item {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[StringFromPatronData(kStr_hamGasolineData)] = _sender;
        //: dic[@"message"] = _message;
        dic[StringFromPatronData(kStr_tractionDateData)] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)resolutionMessage:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    PinLengthAbstract *ret = [[PinLengthAbstract alloc] init];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    OriginBy *info = [[Notice fullKit].provider value:message.from manager:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: StringFromPatronData(kStr_gentlemanValue);
    //: ret.message = [ret abstract:message];
    ret.message = [ret on:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)tingView:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    PinLengthAbstract *ret = [[PinLengthAbstract alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content provider:StringFromPatronData(kStr_hamGasolineData)];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content provider:StringFromPatronData(kStr_tractionDateData)];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)on:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [LatchkeyChange at:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[FFFInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[EmoticonParser scale] color:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (ShouldScale *token in tokens) { //防止emoji表情被截断
            //: if (ret.length > (32)) {
            if (ret.length > (32)) {
                //: break;
                break;
            }
            //: [ret appendString:token.text];
            [ret appendString:token.text];
        }
    //: } else {
    } else {
        //: [ret appendString:msg];
        [ret appendString:msg];
    }
    //: return ret;
    return ret;
}

//: @end
@end

Byte * PatronDataToCache(Byte *data) {
    int planetary = data[0];
    int airBubbleArcher = data[1];
    int evolveOil = data[2];
    if (!planetary) return data + evolveOil;
    for (int i = 0; i < airBubbleArcher / 2; i++) {
        int begin = evolveOil + i;
        int end = evolveOil + airBubbleArcher - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[evolveOil + airBubbleArcher] = 0;
    return data + evolveOil;
}

NSString *StringFromPatronData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PatronDataToCache(data)];
}  
