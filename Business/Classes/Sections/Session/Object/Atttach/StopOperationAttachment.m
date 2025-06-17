
#import <Foundation/Foundation.h>

NSString *StringFromTriggerData(Byte *data);


//: data
Byte kStr_limitedCrawTitle[] = {98, 4, 86, 7, 72, 15, 194, 186, 183, 202, 183, 13};


//: url
Byte kStr_tenderAreaTitle[] = {35, 3, 85, 10, 97, 135, 15, 36, 244, 141, 202, 199, 193, 144};


//: message
Byte kStr_ticTerroristValue[] = {55, 7, 76, 13, 218, 79, 116, 88, 52, 34, 206, 154, 113, 185, 177, 191, 191, 173, 179, 177, 62};


//: fileName
Byte kStr_shouldElectronicsText[] = {90, 8, 55, 6, 165, 101, 157, 160, 163, 156, 133, 152, 164, 156, 177};


//: encrypted
Byte kStr_fileStyleTitle[] = {72, 9, 2, 5, 190, 103, 112, 101, 116, 123, 114, 118, 103, 102, 129};


//: password
Byte kStr_formatPinText[] = {59, 8, 41, 4, 153, 138, 156, 156, 160, 152, 155, 141, 24};


//: md5
Byte kStr_mistakeTeacherData[] = {89, 3, 20, 13, 24, 231, 133, 52, 20, 226, 251, 6, 127, 129, 120, 73, 5};


//: sessionId
Byte kStr_cryValue[] = {16, 9, 21, 13, 15, 234, 21, 228, 76, 113, 160, 177, 80, 136, 122, 136, 136, 126, 132, 131, 94, 121, 63};


//: compressed
Byte kStr_thoroughFactionContent[] = {83, 10, 3, 6, 169, 66, 102, 114, 112, 115, 117, 104, 118, 118, 104, 103, 23};


//: sessionName
Byte kStr_cottaTitle[] = {33, 11, 77, 12, 3, 239, 133, 134, 209, 103, 173, 106, 192, 178, 192, 192, 182, 188, 187, 155, 174, 186, 178, 31};


//: 聊天记录
Byte kStr_civilTitle[] = {56, 12, 14, 12, 5, 43, 109, 178, 177, 207, 154, 71, 246, 143, 152, 243, 178, 183, 246, 188, 190, 243, 203, 163, 26};


//: null
Byte kStr_rateFileData[] = {29, 4, 41, 4, 151, 158, 149, 149, 162};


//: type
Byte kStr_institutionalParkValue[] = {42, 4, 78, 12, 58, 255, 224, 10, 251, 7, 112, 15, 194, 199, 190, 179, 155};


//: sender
Byte kStr_statusPrisonerData[] = {4, 6, 32, 13, 52, 66, 200, 160, 154, 150, 10, 40, 113, 147, 133, 142, 132, 133, 146, 2};


//: messageAbstract
Byte kStr_galaData[] = {92, 15, 52, 9, 106, 61, 135, 195, 227, 161, 153, 167, 167, 149, 155, 153, 117, 150, 167, 168, 166, 149, 151, 168, 21};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StopOperationAttachment.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "StopOperationAttachment.h"
//: #import "NTESFileLocationHelper.h"
#import "MessageSearchedHelper.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+After.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "NTESMessageUtil.h"
#import "IndependentUtil.h"
//: #import "FFFInputEmoticonParser.h"
#import "ButtonItemHigh.h"

//: @interface NTESMultiRetweetAttachment ()
@interface StopOperationAttachment ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) ShowTitleView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation StopOperationAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[StringFromTriggerData(kStr_tenderAreaTitle)] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[StringFromTriggerData(kStr_mistakeTeacherData)] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[StringFromTriggerData(kStr_shouldElectronicsText)] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[StringFromTriggerData(kStr_thoroughFactionContent)] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[StringFromTriggerData(kStr_fileStyleTitle)] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[StringFromTriggerData(kStr_formatPinText)] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[StringFromTriggerData(kStr_galaData)] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[StringFromTriggerData(kStr_cottaTitle)] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[StringFromTriggerData(kStr_cryValue)] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{StringFromTriggerData(kStr_institutionalParkValue) : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           StringFromTriggerData(kStr_limitedCrawTitle) : dataDic};
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
- (void)setAbstracts:(NSMutableArray<ViewThan *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (ViewThan *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj by];
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
                ViewThan *abstract = [ViewThan tinkle:obj];
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
- (NSString *)visualAspectInCipherMessage {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            StringFromTriggerData(kStr_civilTitle).aboveMagnitude];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)model:(ViewThan *)abstract {
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
- (NSString *)compartment:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"IndependentControl";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)with:(NIMMessage *)message viewPerimeter:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self visualAspectInCipherMessage];
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
    CGSize subTitleSize = [StringFromTriggerData(kStr_civilTitle).aboveMagnitude boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (ViewThan *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label time:[self model:abs]];
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
- (UIEdgeInsets)assemblageTitleInsets:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)circleRevoked {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)color {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [MessageSearchedHelper frame:self.fileName] : nil;
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
- (ShowTitleView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[ShowTitleView alloc] initWithFrame:CGRectZero];
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
#pragma mark - ViewThan


//: @implementation NTESMessageAbstract
@implementation ViewThan

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)by {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[StringFromTriggerData(kStr_statusPrisonerData)] = _sender;
        //: dic[@"message"] = _message;
        dic[StringFromTriggerData(kStr_ticTerroristValue)] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)record:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    ViewThan *ret = [[ViewThan alloc] init];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    EmptyKey *option = [[EmptyKey alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    MarginThanInfo *info = [[Afterwards blue].provider put:message.from button:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: StringFromTriggerData(kStr_rateFileData);
    //: ret.message = [ret abstract:message];
    ret.message = [ret writerSTextAbstract:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)tinkle:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    ViewThan *ret = [[ViewThan alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content of:StringFromTriggerData(kStr_statusPrisonerData)];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content of:StringFromTriggerData(kStr_ticTerroristValue)];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)writerSTextAbstract:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [IndependentUtil digitizer:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[FFFInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[ButtonItemHigh file] application:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (MagnitudeLight *token in tokens) { //防止emoji表情被截断
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

Byte * TriggerDataToCache(Byte *data) {
    int mobileHappy = data[0];
    int yardDown = data[1];
    Byte prisonerMuse = data[2];
    int mandateShould = data[3];
    if (!mobileHappy) return data + mandateShould;
    for (int i = mandateShould; i < mandateShould + yardDown; i++) {
        int value = data[i] - prisonerMuse;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mandateShould + yardDown] = 0;
    return data + mandateShould;
}

NSString *StringFromTriggerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TriggerDataToCache(data)];
}
