// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.h
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: Class object_getClass(id object);
Class object_getClass(id object);

//: @protocol HMDatePickerViewDelegate;
@protocol PickerBubble;

//: @interface HMDatePickerView : UIView{
@interface DateView : UIView{
    //: UIDatePicker *datePicker;
    UIDatePicker *datePicker;
    //: UIButton *_blackBackgroundButton;
    UIButton *_blackBackgroundButton;

    //: Class delegateClass;
    Class delegateClass;
    //: __unsafe_unretained id<HMDatePickerViewDelegate> _delegate;
    __unsafe_unretained id<PickerBubble> _delegate;
}

//: @property (nonatomic,assign) id<HMDatePickerViewDelegate> delegate;
@property (nonatomic,assign) id<PickerBubble> delegate;
//: @property (nonatomic,retain) UIDatePicker *datePicker;
@property (nonatomic,retain) UIDatePicker *datePicker;
//: @property (nonatomic,retain) UIButton *blackBackgroundButton;
@property (nonatomic,retain) UIButton *blackBackgroundButton;
//: @property (nonatomic, strong) UILabel *titleL;
@property (nonatomic, strong) UILabel *titleL;
//: @property (nonatomic ,strong) NSString *titleString;
@property (nonatomic ,strong) NSString *titleString;

//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (void)quick:(UIView*)view optionDate:(id<PickerBubble>)delegate trackTitle:(NSDate*)minDate text:(NSDate*)maxDate disabled_strong:(NSDate*)showDate;

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (id)bitArray:(id<PickerBubble>)delegate searched:(NSDate*)minDate filter_strong:(NSDate*)maxDate sizeByTip:(NSDate*)showDate;

//: - (void)setDate:(NSDate*)date;
- (void)setSetDownLengthDateRefer:(NSDate*)date;

//: - (void)show;
- (void)sound;

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate;
- (void)empower:(id<PickerBubble>)delegate;

//: @end
@end


//: @protocol HMDatePickerViewDelegate <NSObject>
@protocol PickerBubble <NSObject>
//: @optional
@optional

//: - (void)dismissDataPickerView;
- (void)viewHeight;
//: - (void)datePick:(HMDatePickerView *)pickView doneWithDate:(NSDate *)date;
- (void)done:(DateView *)pickView edge:(NSDate *)date;

//: @end
@end