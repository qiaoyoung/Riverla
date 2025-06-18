// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentTextView.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"

//: @protocol NTESContactUtilCellDelegate <NSObject>
@protocol PointDelegate <NSObject>

//: - (void)onPressUtilImage:(NSString *)content;
- (void)craunched:(NSString *)content;

//: @end
@end

//: @interface NTESContactUtilCell : UITableViewCell
@interface CompartmentTextView : UITableViewCell

//: @property (nonatomic,weak) id<NTESContactUtilCellDelegate> delegate;
@property (nonatomic,weak) id<PointDelegate> delegate;

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)contact:(id<ImageItem>)item;

//: @end
@end