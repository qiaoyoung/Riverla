
#import <Foundation/Foundation.h>
typedef struct {
    Byte sessionCell;
    Byte *colorStatus;
    unsigned int shouldScale;
    bool empower;
	int canInfo;
	int sizeHide;
} AlbumData;

NSString *StringFromAlbumData(AlbumData *data);


//: icon_cell_blue_normal
AlbumData kStr_tableValue = (AlbumData){140, (Byte []){229, 239, 227, 226, 211, 239, 233, 224, 224, 211, 238, 224, 249, 233, 211, 226, 227, 254, 225, 237, 224, 145}, 21, false, 29, 174};


//: #A148FF
AlbumData kStr_itemTitle = (AlbumData){128, (Byte []){163, 193, 177, 180, 184, 198, 198, 165}, 7, false, 82, 114};


//: icon_cell_red_normal
AlbumData kStr_contentName = (AlbumData){110, (Byte []){7, 13, 1, 0, 49, 13, 11, 2, 2, 49, 28, 11, 10, 49, 0, 1, 28, 3, 15, 2, 84}, 20, false, 160, 10};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StopView.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESColorButtonCell.h"
#import "StopView.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @interface NTESColorButtonCell()
@interface StopView()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) ColorContentRow *rowData;

//: @end
@end

//: @implementation NTESColorButtonCell
@implementation StopView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NTESColorButton alloc] initWithFrame:CGRectZero];
        _button = [[NameView alloc] initWithFrame:CGRectZero];
        //: _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
        _button.size = [_button sizeThatFits:CGSizeMake(self.width, 1.7976931348623157e+308)];
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
    //: ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    ColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.find action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.find action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: if (self.rowData.cellActionName.length) {
    if (self.rowData.cellActionName.length) {
        //: return [super hitTest:point withEvent:event];
        return [super hitTest:point withEvent:event];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.centerX = self.width * .5f;
    _button.centerX = self.width * .5f;
    //: _button.centerY = self.height * .5f;
    _button.centerY = self.height * .5f;
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


//: @implementation NTESColorButton : UIButton
@implementation NameView : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self detect];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(ColorButtonCellStyle)style{
- (void)setStyle:(ColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self detect];
}

//: - (void)reset{
- (void)detect{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case ColorButtonCellStyleRed:{
        case ColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = StringFromAlbumData(&kStr_contentName);
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
        //: case ColorButtonCellStyleBlue:{
        case ColorButtonCellStyleBlue:{
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = StringFromAlbumData(&kStr_tableValue);
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage option:imageNormalName greenish_strong:[UIColor withMax:StringFromAlbumData(&kStr_itemTitle)]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        //: } break;
        } break;
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

Byte *AlbumDataToByte(AlbumData *data) {
    if (data->empower) return data->colorStatus;
    for (int i = 0; i < data->shouldScale; i++) {
        data->colorStatus[i] ^= data->sessionCell;
    }
    data->colorStatus[data->shouldScale] = 0;
    data->empower = true;
	if (data->shouldScale >= 2) {
		data->canInfo = data->colorStatus[0];
		data->sizeHide = data->colorStatus[1];
	}
    return data->colorStatus;
}

NSString *StringFromAlbumData(AlbumData *data) {
    return [NSString stringWithUTF8String:(char *)AlbumDataToByte(data)];
}
