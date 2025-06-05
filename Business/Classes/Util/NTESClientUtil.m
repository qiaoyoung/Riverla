//
//  NTESClientUtil.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "NTESClientUtil.h"

@implementation NTESClientUtil

+ (NSString *)clientName:(NIMLoginClientType)clientType{
    switch (clientType) {
        case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeWP:
            return LangKey(@"home_fragment_phone");
        case NIMLoginClientTypePC:
        case NIMLoginClientTypemacOS:
            return LangKey(@"home_fragment_pc");
        case NIMLoginClientTypeWeb:
            return LangKey(@"home_fragment_web");
        default:
            return @"";
    }
}

@end
