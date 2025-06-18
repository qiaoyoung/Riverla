
#import <Foundation/Foundation.h>

NSString *StringFromChromaticData(Byte *data);        


//: #A148FF
Byte kStr_jackText[] = {77, 7, 79, 7, 164, 197, 90, 212, 242, 226, 229, 233, 247, 247, 154};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSettingPushNotifySwitcherCell.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitSwitcherCell.h"
#import "DetailViewCell.h"
//: #import "UserCommonTableData.h"
#import "UserCommonTableData.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFKitSwitcherCell ()
@interface DetailViewCell ()

//: @end
@end

//: @implementation FFFKitSwitcherCell
@implementation DetailViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#A148FF"];
        _switcher.onTintColor = [UIColor withMax:StringFromChromaticData(kStr_jackText)];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)view:(ColorContentRow *)rowData title:(UITableView *)tableView{
    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *actionName = rowData.cellActionName;
    NSString *actionName = rowData.cellActionName;
    //: [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    //: [self.switcher removeTarget:self.nim_viewController action:NULL forControlEvents:UIControlEventValueChanged];
    [self.switcher removeTarget:self.pressed action:NULL forControlEvents:UIControlEventValueChanged];
    //: if (actionName.length) {
    if (actionName.length) {
        //: SEL sel = NSSelectorFromString(actionName);
        SEL sel = NSSelectorFromString(actionName);
        //: [self.switcher addTarget:tableView.nim_viewController action:sel forControlEvents:UIControlEventValueChanged];
        [self.switcher addTarget:tableView.pressed action:sel forControlEvents:UIControlEventValueChanged];
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.switcher.nim_right = self.nim_width - 15;
    self.switcher.nim_right = self.nim_width - 15;
    //: self.switcher.nim_centerY = self.nim_height * .5f;
    self.switcher.nim_centerY = self.nim_height * .5f;
}

//: @end
@end

Byte * ChromaticDataToCache(Byte *data) {
    int retreatErnApology = data[0];
    int languageThorough = data[1];
    Byte waist = data[2];
    int waffle = data[3];
    if (!retreatErnApology) return data + waffle;
    for (int i = waffle; i < waffle + languageThorough; i++) {
        int value = data[i] + waist;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[waffle + languageThorough] = 0;
    return data + waffle;
}

NSString *StringFromChromaticData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ChromaticDataToCache(data)];
}
