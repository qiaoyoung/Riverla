// __DEBUG__
// __CLOSE_PRINT__
//
//  UserThanObject.m
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSearchLocalHistoryObject.h"
#import "UserThanObject.h"
//: #import "NTESSearchCellLayoutConstant.h"
#import "NTESSearchCellLayoutConstant.h"

//: @implementation NTESSearchLocalHistoryObject
@implementation UserThanObject

//: - (instancetype)initWithMessage:(NIMMessage *)message{
- (instancetype)initWithLoad:(NIMMessage *)message{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _message = message;
        _message = message;
        //: [self calculateHistoryItemHeight];
        [self press];
    }
    //: return self;
    return self;
}


//: - (void)calculateHistoryItemHeight{
- (void)press{
    //: NSString *content = _message.text;
    NSString *content = _message.text;
    //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: label.font = [UIFont systemFontOfSize:SearchCellContentFontSize];
    label.font = [UIFont systemFontOfSize:kLet_kitValue];
    //: label.text = content;
    label.text = content;
    //: CGSize labelSize = [label sizeThatFits:CGSizeMake(SearchCellContentMaxWidth * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    CGSize labelSize = [label sizeThatFits:CGSizeMake(kLet_meTitle * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    //: CGFloat labelHeight = ((SearchCellContentMinHeight) > (labelSize.height) ? (SearchCellContentMinHeight) : (labelSize.height));
    CGFloat labelHeight = ((kLet_pageData) > (labelSize.height) ? (kLet_pageData) : (labelSize.height));
    //: CGFloat height = labelHeight + SearchCellContentTop + SearchCellContentBottom;
    CGFloat height = labelHeight + kLet_eventData + kLet_fillTitle;
    //: _uiHeight = height;
    _uiHeight = height;
}

//: @end
@end