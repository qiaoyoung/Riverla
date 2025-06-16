//
//  FFFKitColorButtonCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, FFFKitColorButtonCellStyle){
    FFFKitColorButtonCellStyleRed,
    FFFKitColorButtonCellStyleBlue,
};

@class NIMKitColorButton;

@interface FFFKitColorButtonCell : UITableViewCell

@property (nonatomic,strong) NIMKitColorButton *button;

@end



@interface NIMKitColorButton : UIButton

@property (nonatomic,assign) FFFKitColorButtonCellStyle style;

@end
