
#import <Foundation/Foundation.h>

NSString *StringFromMansfieldData(Byte *data);


//: name
Byte kStr_herAleValue[] = {44, 4, 13, 90, 138, 40, 163, 80, 55, 26, 206, 104, 247, 101, 109, 97, 110, 183};


//: string
Byte kStr_whoeverRoseValue[] = {11, 6, 7, 195, 139, 50, 150, 103, 110, 105, 114, 116, 115, 235};


//: en_US
Byte kStr_exhibitionPrisonPressValue[] = {97, 5, 6, 13, 154, 133, 83, 85, 95, 110, 101, 226};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthBackground.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "LengthBackground.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface LengthBackground ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation LengthBackground

//: static NTESLanguageManager *shareInstance = nil;
static LengthBackground *let_runData = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (LengthBackground *)handle{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            let_runData = [[LengthBackground alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return let_runData;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)size:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [LengthBackground shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setText:(NSString *)langType{
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
- (void)change:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)size:(NSXMLParser *)parser subjectMatter:(NSString *)elementName languageId:(NSString *)namespaceURI withAttributes:(NSString *)qName shouldEnable:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:StringFromMansfieldData(kStr_whoeverRoseValue)]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[StringFromMansfieldData(kStr_herAleValue)];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)elite:(NSXMLParser *)parser message:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)hypocorismEndTitleElementTingWith:(NSXMLParser *)parser date:(NSString *)elementName color:(NSString *)namespaceURI theMedia:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)tap:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)clean{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return StringFromMansfieldData(kStr_exhibitionPrisonPressValue);
    }
    //: return locale;
    return locale;
}


//: @end
@end

Byte * MansfieldDataToCache(Byte *data) {
    int colonia = data[0];
    int rag = data[1];
    int highway = data[2];
    if (!colonia) return data + highway;
    for (int i = 0; i < rag / 2; i++) {
        int begin = highway + i;
        int end = highway + rag - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[highway + rag] = 0;
    return data + highway;
}

NSString *StringFromMansfieldData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MansfieldDataToCache(data)];
}  
