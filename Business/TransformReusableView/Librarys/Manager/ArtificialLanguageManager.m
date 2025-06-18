
#import <Foundation/Foundation.h>

NSString *StringFromNoteData(Byte *data);        


//: en_US
Byte kStr_promName[] = {65, 5, 39, 8, 227, 170, 126, 217, 62, 71, 56, 46, 44, 47};


//: string
Byte kStr_imageTitleContent[] = {20, 6, 56, 12, 180, 200, 46, 163, 56, 13, 222, 238, 59, 60, 58, 49, 54, 47, 56};


//: name
Byte kStr_flueUserBarValue[] = {24, 4, 20, 7, 219, 156, 161, 90, 77, 89, 81, 108};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArtificialLanguageManager.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "ArtificialLanguageManager.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface ArtificialLanguageManager ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation ArtificialLanguageManager

//: static NTESLanguageManager *shareInstance = nil;
static ArtificialLanguageManager *kLet_dotData = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (ArtificialLanguageManager *)touch{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            kLet_dotData = [[ArtificialLanguageManager alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return kLet_dotData;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)page:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [ArtificialLanguageManager shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setIndex:(NSString *)langType{
    //: NSString *resourceType = @"strings";
    NSString *resourceType = @"strings";
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"strings_en";
        resourceType = @"strings_en";
    }
    //: NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    //: xmlParser.delegate = self;
    xmlParser.delegate = self;
    //: [xmlParser parse];
    [xmlParser parse];
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)red:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)roundLabel:(NSXMLParser *)parser willShow:(NSString *)elementName color:(NSString *)namespaceURI addAttributes:(NSString *)qName cell:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:StringFromNoteData(kStr_imageTitleContent)]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[StringFromNoteData(kStr_flueUserBarValue)];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)row:(NSXMLParser *)parser result:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)straightTitle:(NSXMLParser *)parser sharedName:(NSString *)elementName max:(NSString *)namespaceURI afterFrameTop:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)indexDocument:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)groupActionData{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return StringFromNoteData(kStr_promName);
    }
    //: return locale;
    return locale;
}


//: @end
@end

Byte * NoteDataToCache(Byte *data) {
    int middleBar = data[0];
    int logName = data[1];
    Byte fileColor = data[2];
    int totalerrupt = data[3];
    if (!middleBar) return data + totalerrupt;
    for (int i = totalerrupt; i < totalerrupt + logName; i++) {
        int value = data[i] + fileColor;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[totalerrupt + logName] = 0;
    return data + totalerrupt;
}

NSString *StringFromNoteData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NoteDataToCache(data)];
}
