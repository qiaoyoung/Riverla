// __DEBUG__
// __CLOSE_PRINT__
//
//  CorrelationTableView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESOpenRedPackageSheet : UIView
@interface CorrelationTableView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithMax:(CGRect)frame voiceOff:(NSDictionary *)dictionary;

//: - (void)show;
- (void)screen;

//: - (void)dismissPicker;
- (void)houseMobile;

//: @end
@end

//: @protocol NTESOpenRedPackageSheetDelegate <NSObject>
@protocol TempTeam <NSObject>

//: -(void)myWalletDelegate;
-(void)objectBox;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)operaing:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END