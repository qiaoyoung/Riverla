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
@protocol ImageDelegate ;

//: @interface HMDataPicker : UIView{
@interface PickerView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithOfNode:(id<ImageDelegate>)delegate delayContainer:(NSDictionary *)dataDict representation:(NSDictionary *)selectedDict notProgress:(NSString *)jsonNode;

//: - (void)show;
- (void)end;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol ImageDelegate <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)send:(PickerView *)dataPicker inputDict:(NSDictionary *)selectedDict;

//: @end
@end