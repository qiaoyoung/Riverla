// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentView.h
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
@interface ContentView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithBottom:(CGRect)frame frame:(NSDictionary *)dictionary;

//: - (void)show;
- (void)with;

//: - (void)dismissPicker;
- (void)ofItem;

//: @end
@end

//: @protocol NTESOpenRedPackageSheetDelegate <NSObject>
@protocol AtContainer <NSObject>

//: -(void)myWalletDelegate;
-(void)beggarMyNeighbourPolicyThroughDelegate;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)labels:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END