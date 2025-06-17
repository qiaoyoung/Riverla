
#import <Foundation/Foundation.h>

NSString *StringFromHeaderData(Byte *data);        


//: icon_cell_red_normal
Byte kStr_paleMicaTitle[] = {83, 20, 19, 9, 250, 178, 167, 54, 12, 86, 80, 92, 91, 76, 80, 82, 89, 89, 76, 95, 82, 81, 76, 91, 92, 95, 90, 78, 89, 182};


//: #A148FF
Byte kStr_approveText[] = {44, 7, 75, 10, 75, 225, 179, 222, 142, 160, 216, 246, 230, 233, 237, 251, 251, 86};


//: icon_cell_blue_normal
Byte kStr_lengthPaleFrequentData[] = {46, 21, 34, 12, 16, 142, 95, 183, 16, 212, 82, 54, 71, 65, 77, 76, 61, 65, 67, 74, 74, 61, 64, 74, 83, 67, 61, 76, 77, 80, 75, 63, 74, 229};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObstructView.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitColorButtonCell.h"
#import "ObstructView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"

//: @interface FFFKitColorButtonCell()
@interface ObstructView()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) ColorContentRow *rowData;

//: @end
@end

//: @implementation FFFKitColorButtonCell
@implementation ObstructView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NIMKitColorButton alloc] initWithFrame:CGRectZero];
        _button = [[ButtonRecentView alloc] initWithFrame:CGRectZero];
        //: _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: [self.contentView addSubview:_button];
        [self.contentView addSubview:_button];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)view:(ColorContentRow *)rowData title:(UITableView *)tableView{
    //: self.rowData = rowData;
    self.rowData = rowData;
    //: [self.button setTitle:rowData.title forState:UIControlStateNormal];
    [self.button setTitle:rowData.title forState:UIControlStateNormal];
    //: FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    FFFKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.nim_viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.pressed action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.nim_viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.pressed action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect buttonRect = self.button.frame;
    CGRect buttonRect = self.button.frame;
    //: if(CGRectContainsPoint(buttonRect, point)){
    if(CGRectContainsPoint(buttonRect, point)){
        //: return self;
        return self;
    }
    //: return [super hitTest:point withEvent:event];
    return [super hitTest:point withEvent:event];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.nim_centerX = self.nim_width * .5f;
    _button.nim_centerX = self.nim_width * .5f;
    //: _button.nim_centerY = self.nim_height * .5f;
    _button.nim_centerY = self.nim_height * .5f;
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    //: [_button setSelected:selected];
    [_button setSelected:selected];
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [_button setHighlighted:highlighted];
    [_button setHighlighted:highlighted];
}

//: @end
@end


//: @implementation NIMKitColorButton : UIButton
@implementation ButtonRecentView : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self saveReset];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(FFFKitColorButtonCellStyle)style{
- (void)setStyle:(FFFKitColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self saveReset];
}

//: - (void)reset{
- (void)saveReset{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case FFFKitColorButtonCellStyleRed:{
        case FFFKitColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = StringFromHeaderData(kStr_paleMicaTitle);
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: case FFFKitColorButtonCellStyleBlue:
        case FFFKitColorButtonCellStyleBlue:
        {
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = StringFromHeaderData(kStr_lengthPaleFrequentData);
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage option:imageNormalName greenish_strong:[UIColor withMax:StringFromHeaderData(kStr_approveText)]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: @end
@end

Byte * HeaderDataToCache(Byte *data) {
    int primMessage = data[0];
    int retreatUntil = data[1];
    Byte toLute = data[2];
    int maxRetreat = data[3];
    if (!primMessage) return data + maxRetreat;
    for (int i = maxRetreat; i < maxRetreat + retreatUntil; i++) {
        int value = data[i] + toLute;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[maxRetreat + retreatUntil] = 0;
    return data + maxRetreat;
}

NSString *StringFromHeaderData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HeaderDataToCache(data)];
}
