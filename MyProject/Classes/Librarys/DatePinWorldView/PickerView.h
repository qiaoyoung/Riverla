// __DEBUG__
// __CLOSE_PRINT__
//
//  PickerView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol MarginDoing ;

//: @interface HMDataPicker : UIView{
@interface PickerView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithNode:(id<MarginDoing>)delegate with:(NSDictionary *)dataDict node:(NSDictionary *)selectedDict streetSmart:(NSString *)jsonNode;

//: - (void)show;
- (void)sendSelected;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol MarginDoing <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)at_strong:(PickerView *)dataPicker addMarkShould:(NSDictionary *)selectedDict;

//: @end
@end