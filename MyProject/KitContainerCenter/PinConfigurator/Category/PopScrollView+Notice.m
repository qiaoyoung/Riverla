// __DEBUG__
// __CLOSE_PRINT__
//
//  PopScrollView+NIMKit
//  NIM
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "M80AttributedLabel+MyUserKit.h"
#import "PopScrollView+Notice.h"
//: #import "FFFInputEmoticonParser.h"
#import "EmoticonParser.h"
//: #import "FFFInputEmoticonManager.h"
#import "AppManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation M80AttributedLabel (MyUserKit)
@implementation PopScrollView (Notice)
//: - (void)nim_setText:(NSString *)text
- (void)pose:(NSString *)text
{
    //: [self setText:@""];
    [self setText:@""];

    //: text = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    text = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: text = [text stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];
    text = [text stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];
    //: if (text.length) {
    if (text.length) {
        //: [self setText:text];
        [self setText:text];
    }

}

//: - (void)setOriLineBreakMode:(NSLineBreakMode)lineBreakModel{
- (void)setAreaMore:(NSLineBreakMode)lineBreakModel{
    //: objc_setAssociatedObject(self, @selector(oriLineBreakMode), @(lineBreakModel), OBJC_ASSOCIATION_ASSIGN);
    objc_setAssociatedObject(self, @selector(areaMore), @(lineBreakModel), OBJC_ASSOCIATION_ASSIGN);
}

//: - (CTLineBreakMode)oriLineBreakMode{
- (CTLineBreakMode)areaMore{
    //: return (NSLineBreakMode)[objc_getAssociatedObject(self, @selector(oriLineBreakMode))integerValue];
    return (NSLineBreakMode)[objc_getAssociatedObject(self, @selector(areaMore))integerValue];
}



//: @end
@end