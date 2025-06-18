
#import <Foundation/Foundation.h>

NSString *StringFromFleshBiasData(Byte *data);


//: path
Byte kStr_harshTextDeviceContent[] = {46, 4, 3, 104, 116, 97, 112, 39};


//: bounds
Byte kStr_cruConfirmTitle[] = {48, 6, 6, 168, 110, 114, 115, 100, 110, 117, 111, 98, 135};


//: bounds.size
Byte kStr_ireNoteValue[] = {67, 11, 11, 238, 170, 8, 228, 229, 209, 37, 244, 101, 122, 105, 115, 46, 115, 100, 110, 117, 111, 98, 156};


//: frame
Byte kStr_grossName[] = {26, 5, 13, 233, 235, 74, 248, 231, 228, 158, 253, 123, 79, 101, 109, 97, 114, 102, 45};


//: lee_alert_button_
Byte kStr_pinionContentData[] = {17, 17, 13, 240, 45, 160, 88, 229, 174, 25, 181, 161, 173, 95, 110, 111, 116, 116, 117, 98, 95, 116, 114, 101, 108, 97, 95, 101, 101, 108, 232};


//: windowLevel == %ld AND hidden == 0 
Byte kStr_blueHarshData[] = {77, 35, 8, 198, 131, 195, 86, 33, 32, 48, 32, 61, 61, 32, 110, 101, 100, 100, 105, 104, 32, 68, 78, 65, 32, 100, 108, 37, 32, 61, 61, 32, 108, 101, 118, 101, 76, 119, 111, 100, 110, 105, 119, 159};


//: layoutSubviews
Byte kStr_withinLevelText[] = {48, 14, 3, 115, 119, 101, 105, 118, 98, 117, 83, 116, 117, 111, 121, 97, 108, 34};


//: lee_alert_view_
Byte kStr_significanceSexData[] = {29, 15, 7, 160, 185, 168, 200, 95, 119, 101, 105, 118, 95, 116, 114, 101, 108, 97, 95, 101, 101, 108, 109};


//: 请在添加的某一项后面设置间距
Byte kStr_destructText[] = {76, 42, 10, 242, 252, 101, 186, 45, 190, 214, 157, 183, 232, 180, 151, 233, 174, 189, 231, 190, 174, 232, 162, 157, 233, 142, 144, 229, 185, 161, 233, 128, 184, 228, 144, 159, 230, 132, 154, 231, 160, 138, 229, 187, 183, 230, 168, 156, 229, 183, 175, 232, 243};


//: keyboardWillChangeFrame
Byte kStr_grocerText[] = {39, 23, 10, 164, 239, 202, 87, 46, 52, 38, 101, 109, 97, 114, 70, 101, 103, 110, 97, 104, 67, 108, 108, 105, 87, 100, 114, 97, 111, 98, 121, 101, 107, 108};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "LEEAlert.h"
#import "GraduateTemp.h"
//: #import <Accelerate/Accelerate.h>
#import <Accelerate/Accelerate.h>
//: #import <objc/runtime.h>
#import <objc/runtime.h>

/*
 *  @header GraduateTemp.m
 *
 *  ┌─┐      ┌───────┐ ┌───────┐ 帅™
 *  │ │      │ ┌─────┘ │ ┌─────┘
 *  │ │      │ └─────┐ │ └─────┐
 *  │ │      │ ┌─────┘ │ ┌─────┘
 *  │ └─────┐│ └─────┐ │ └─────┐
 *  └───────┘└───────┘ └───────┘
 *
 *  @brief  GraduateTemp
 *
 *  @author LEE
 *  @copyright    Copyright © 2016 - 2020年 lee. All rights reserved.
 *  @version    V1.6.1
 */
//: #pragma mark - ===================配置模型===================
#pragma mark - ===================配置模型===================

//: typedef NS_ENUM(NSInteger, LEEBackgroundStyle) {
typedef NS_ENUM(NSInteger, LEEBackgroundStyle) {
    /** 背景样式 模糊 */
    //: LEEBackgroundStyleBlur,
    LEEBackgroundStyleBlur,
    /** 背景样式 半透明 */
    //: LEEBackgroundStyleTranslucent,
    LEEBackgroundStyleTranslucent,
//: };
};

//: @interface LEEBaseConfigModel ()
@interface MessageMargin ()

//: @property (nonatomic, strong) NSMutableArray *modelActionArray;
@property (nonatomic, strong) NSMutableArray *modelActionArray;
//: @property (nonatomic, strong) NSMutableArray *modelItemArray;
@property (nonatomic, strong) NSMutableArray *modelItemArray;
//: @property (nonatomic, strong) NSMutableDictionary *modelItemInsetsInfo;
@property (nonatomic, strong) NSMutableDictionary *modelItemInsetsInfo;

//: @property (nonatomic, assign) CGFloat modelShadowOpacity;
@property (nonatomic, assign) CGFloat modelShadowOpacity;
//: @property (nonatomic, assign) CGFloat modelShadowRadius;
@property (nonatomic, assign) CGFloat modelShadowRadius;
//: @property (nonatomic, assign) CGFloat modelOpenAnimationDuration;
@property (nonatomic, assign) CGFloat modelOpenAnimationDuration;
//: @property (nonatomic, assign) CGFloat modelCloseAnimationDuration;
@property (nonatomic, assign) CGFloat modelCloseAnimationDuration;
//: @property (nonatomic, assign) CGFloat modelBackgroundStyleColorAlpha;
@property (nonatomic, assign) CGFloat modelBackgroundStyleColorAlpha;
//: @property (nonatomic, assign) NSInteger modelQueuePriority;
@property (nonatomic, assign) NSInteger modelQueuePriority;

//: @property (nonatomic, assign) UIColor *modelShadowColor;
@property (nonatomic, assign) UIColor *modelShadowColor;
//: @property (nonatomic, strong) UIColor *modelHeaderColor;
@property (nonatomic, strong) UIColor *modelHeaderColor;
//: @property (nonatomic, strong) UIColor *modelBackgroundColor;
@property (nonatomic, strong) UIColor *modelBackgroundColor;

//: @property (nonatomic, assign) BOOL modelIsClickHeaderClose;
@property (nonatomic, assign) BOOL modelIsClickHeaderClose;
//: @property (nonatomic, assign) BOOL modelIsClickBackgroundClose;
@property (nonatomic, assign) BOOL modelIsClickBackgroundClose;
//: @property (nonatomic, assign) BOOL modelIsShouldAutorotate;
@property (nonatomic, assign) BOOL modelIsShouldAutorotate;
//: @property (nonatomic, assign) BOOL modelIsQueue;
@property (nonatomic, assign) BOOL modelIsQueue;
//: @property (nonatomic, assign) BOOL modelIsContinueQueueDisplay;
@property (nonatomic, assign) BOOL modelIsContinueQueueDisplay;
//: @property (nonatomic, assign) BOOL modelIsAvoidKeyboard;
@property (nonatomic, assign) BOOL modelIsAvoidKeyboard;
//: @property (nonatomic, assign) BOOL modelIsScrollEnabled;
@property (nonatomic, assign) BOOL modelIsScrollEnabled;

//: @property (nonatomic, assign) BOOL modelIsActionFollowScrollEnabled;
@property (nonatomic, assign) BOOL modelIsActionFollowScrollEnabled;

//: @property (nonatomic, assign) CGSize modelShadowOffset;
@property (nonatomic, assign) CGSize modelShadowOffset;
//: @property (nonatomic, assign) CGPoint modelAlertCenterOffset;
@property (nonatomic, assign) CGPoint modelAlertCenterOffset;
//: @property (nonatomic, assign) UIEdgeInsets modelHeaderInsets;
@property (nonatomic, assign) UIEdgeInsets modelHeaderInsets;

//: @property (nonatomic, copy) NSString *modelIdentifier;
@property (nonatomic, copy) NSString *modelIdentifier;

//: @property (nonatomic, copy) CGFloat (^modelMaxWidthBlock)(LEEScreenOrientationType, CGSize);
@property (nonatomic, copy) CGFloat (^modelMaxWidthBlock)(LEEScreenOrientationType, CGSize);
//: @property (nonatomic, copy) CGFloat (^modelMaxHeightBlock)(LEEScreenOrientationType, CGSize);
@property (nonatomic, copy) CGFloat (^modelMaxHeightBlock)(LEEScreenOrientationType, CGSize);

//: @property (nonatomic, copy) void(^modelOpenAnimationConfigBlock)(void (^animatingBlock)(void), void (^animatedBlock)(void));
@property (nonatomic, copy) void(^modelOpenAnimationConfigBlock)(void (^animatingBlock)(void), void (^animatedBlock)(void));
//: @property (nonatomic, copy) void(^modelCloseAnimationConfigBlock)(void (^animatingBlock)(void), void (^animatedBlock)(void));
@property (nonatomic, copy) void(^modelCloseAnimationConfigBlock)(void (^animatingBlock)(void), void (^animatedBlock)(void));
//: @property (nonatomic, copy) void (^modelFinishConfig)(void);
@property (nonatomic, copy) void (^modelFinishConfig)(void);
//: @property (nonatomic, copy) BOOL (^modelShouldClose)(void);
@property (nonatomic, copy) BOOL (^modelShouldClose)(void);
//: @property (nonatomic, copy) BOOL (^modelShouldActionClickClose)(NSInteger);
@property (nonatomic, copy) BOOL (^modelShouldActionClickClose)(NSInteger);
//: @property (nonatomic, copy) void (^modelCloseComplete)(void);
@property (nonatomic, copy) void (^modelCloseComplete)(void);

//: @property (nonatomic, assign) LEEBackgroundStyle modelBackgroundStyle;
@property (nonatomic, assign) LEEBackgroundStyle modelBackgroundStyle;
//: @property (nonatomic, assign) LEEAnimationStyle modelOpenAnimationStyle;
@property (nonatomic, assign) LEEAnimationStyle modelOpenAnimationStyle;
//: @property (nonatomic, assign) LEEAnimationStyle modelCloseAnimationStyle;
@property (nonatomic, assign) LEEAnimationStyle modelCloseAnimationStyle;

//: @property (nonatomic, assign) UIStatusBarStyle modelStatusBarStyle;
@property (nonatomic, assign) UIStatusBarStyle modelStatusBarStyle;
//: @property (nonatomic, assign) UIBlurEffectStyle modelBackgroundBlurEffectStyle;
@property (nonatomic, assign) UIBlurEffectStyle modelBackgroundBlurEffectStyle;
//: @property (nonatomic, assign) UIInterfaceOrientationMask modelSupportedInterfaceOrientations;
@property (nonatomic, assign) UIInterfaceOrientationMask modelSupportedInterfaceOrientations;
//: @property (nonatomic, assign) UIUserInterfaceStyle modelUserInterfaceStyle API_AVAILABLE(ios(13.0), tvos(13.0));
@property (nonatomic, assign) UIUserInterfaceStyle modelUserInterfaceStyle API_AVAILABLE(ios(13.0), tvos(13.0));

//: @property (nonatomic, assign) CornerRadii modelCornerRadii;
@property (nonatomic, assign) Dedication modelCornerRadii;
//: @property (nonatomic, assign) CornerRadii modelActionSheetHeaderCornerRadii;
@property (nonatomic, assign) Dedication modelActionSheetHeaderCornerRadii;
//: @property (nonatomic, assign) CornerRadii modelActionSheetCancelActionCornerRadii;
@property (nonatomic, assign) Dedication modelActionSheetCancelActionCornerRadii;

//: @property (nonatomic, strong) UIColor *modelActionSheetBackgroundColor;
@property (nonatomic, strong) UIColor *modelActionSheetBackgroundColor;
//: @property (nonatomic, strong) UIColor *modelActionSheetCancelActionSpaceColor;
@property (nonatomic, strong) UIColor *modelActionSheetCancelActionSpaceColor;
//: @property (nonatomic, assign) CGFloat modelActionSheetCancelActionSpaceWidth;
@property (nonatomic, assign) CGFloat modelActionSheetCancelActionSpaceWidth;
//: @property (nonatomic, assign) CGFloat modelActionSheetBottomMargin;
@property (nonatomic, assign) CGFloat modelActionSheetBottomMargin;

//: @property (nonatomic, strong) LEEPresentation* modelPresentation;
@property (nonatomic, strong) ImageMessage* modelPresentation;

//: @end
@end

//: @implementation LEEBaseConfigModel
@implementation MessageMargin

//: - (void)dealloc{
- (void)dealloc{

    //: _modelActionArray = nil;
    _modelActionArray = nil;
    //: _modelItemArray = nil;
    _modelItemArray = nil;
    //: _modelItemInsetsInfo = nil;
    _modelItemInsetsInfo = nil;
}

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

        // 初始化默认值
        //: _modelShadowOpacity = 0.3f; 
        _modelShadowOpacity = 0.3f; //默认阴影不透明度
        //: _modelShadowRadius = 5.0f; 
        _modelShadowRadius = 5.0f; //默认阴影半径
        //: _modelShadowOffset = CGSizeMake(0.0f, 2.0f); 
        _modelShadowOffset = CGSizeMake(0.0f, 2.0f); //默认阴影偏移
        //: _modelHeaderInsets = UIEdgeInsetsMake(20.0f, 20.0f, 20.0f, 20.0f); 
        _modelHeaderInsets = UIEdgeInsetsMake(20.0f, 20.0f, 20.0f, 20.0f); //默认间距
        //: _modelOpenAnimationDuration = 0.3f; 
        _modelOpenAnimationDuration = 0.3f; //默认打开动画时长
        //: _modelCloseAnimationDuration = 0.2f; 
        _modelCloseAnimationDuration = 0.2f; //默认关闭动画时长
        //: _modelBackgroundStyleColorAlpha = 0.45f; 
        _modelBackgroundStyleColorAlpha = 0.45f; //自定义背景样式颜色透明度 默认为半透明背景样式 透明度为0.45f
        //: _modelQueuePriority = 0; 
        _modelQueuePriority = 0; //默认队列优先级 (大于0时才会加入队列)


        //: _modelActionSheetBackgroundColor = [UIColor clearColor]; 
        _modelActionSheetBackgroundColor = [UIColor clearColor]; //默认actionsheet背景颜色
        //: _modelActionSheetCancelActionSpaceColor = [UIColor clearColor]; 
        _modelActionSheetCancelActionSpaceColor = [UIColor clearColor]; //默认actionsheet取消按钮间隔颜色
        //: _modelActionSheetCancelActionSpaceWidth = 10.0f; 
        _modelActionSheetCancelActionSpaceWidth = 10.0f; //默认actionsheet取消按钮间隔宽度
        //: _modelActionSheetBottomMargin = 10.0f; 
        _modelActionSheetBottomMargin = 10.0f; //默认actionsheet距离屏幕底部距离

        //: _modelShadowColor = [UIColor blackColor]; 
        _modelShadowColor = [UIColor blackColor]; //默认阴影颜色
        //: if (@available(iOS 13.0, *)) {
        if (@available(iOS 13.0, *)) {
            //: _modelHeaderColor = [UIColor tertiarySystemBackgroundColor]; 
            _modelHeaderColor = [UIColor tertiarySystemBackgroundColor]; //默认颜色

        //: } else {
        } else {
            //: _modelHeaderColor = [UIColor whiteColor]; 
            _modelHeaderColor = [UIColor whiteColor]; //默认颜色
        }
        //: _modelBackgroundColor = [UIColor blackColor]; 
        _modelBackgroundColor = [UIColor blackColor]; //默认背景半透明颜色

        //: _modelIsClickBackgroundClose = NO; 
        _modelIsClickBackgroundClose = NO; //默认点击背景不关闭
        //: _modelIsShouldAutorotate = YES; 
        _modelIsShouldAutorotate = YES; //默认支持自动旋转
        //: _modelIsQueue = NO; 
        _modelIsQueue = NO; //默认不加入队列
        //: _modelIsContinueQueueDisplay = YES; 
        _modelIsContinueQueueDisplay = YES; //默认继续队列显示
        //: _modelIsAvoidKeyboard = YES; 
        _modelIsAvoidKeyboard = YES; //默认闪避键盘
        //: _modelIsScrollEnabled = YES; 
        _modelIsScrollEnabled = YES; //默认可以滑动

        //: _modelIsActionFollowScrollEnabled = YES; 
        _modelIsActionFollowScrollEnabled = YES; //默认 Action 跟随 Item 滚动

        //: _modelBackgroundStyle = LEEBackgroundStyleTranslucent; 
        _modelBackgroundStyle = LEEBackgroundStyleTranslucent; //默认为半透明背景样式
        //: _modelBackgroundBlurEffectStyle = UIBlurEffectStyleDark; 
        _modelBackgroundBlurEffectStyle = UIBlurEffectStyleDark; //默认模糊效果类型Dark
        //: _modelSupportedInterfaceOrientations = UIInterfaceOrientationMaskAll; 
        _modelSupportedInterfaceOrientations = UIInterfaceOrientationMaskAll; //默认支持所有方向

        //: _modelCornerRadii = CornerRadiiMake(13.0f, 13.0f, 13.0f, 13.0f); 
        _modelCornerRadii = CornerRadiiMake(13.0f, 13.0f, 13.0f, 13.0f); //默认圆角半径
        //: _modelActionSheetHeaderCornerRadii = CornerRadiiMake(13.0f, 13.0f, 13.0f, 13.0f); 
        _modelActionSheetHeaderCornerRadii = CornerRadiiMake(13.0f, 13.0f, 13.0f, 13.0f); //默认圆角半径
        //: _modelActionSheetCancelActionCornerRadii = CornerRadiiMake(13.0f, 13.0f, 13.0f, 13.0f); 
        _modelActionSheetCancelActionCornerRadii = CornerRadiiMake(13.0f, 13.0f, 13.0f, 13.0f); //默认圆角半径


        //: if (@available(iOS 13.0, *)) {
        if (@available(iOS 13.0, *)) {
            //: _modelUserInterfaceStyle = UIUserInterfaceStyleUnspecified; 
            _modelUserInterfaceStyle = UIUserInterfaceStyleUnspecified; //默认支持全部样式
        }

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;

        //: _modelOpenAnimationConfigBlock = ^(void (^animatingBlock)(void), void (^animatedBlock)(void)) {
        _modelOpenAnimationConfigBlock = ^(void (^animatingBlock)(void), void (^animatedBlock)(void)) {

            //: [UIView animateWithDuration:weakSelf.modelOpenAnimationDuration delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            [UIView animateWithDuration:weakSelf.modelOpenAnimationDuration delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{

                //: if (animatingBlock) animatingBlock();
                if (animatingBlock) animatingBlock();

            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {

                //: if (animatedBlock) animatedBlock();
                if (animatedBlock) animatedBlock();
            //: }];
            }];

        //: };
        };

        //: _modelCloseAnimationConfigBlock = ^(void (^animatingBlock)(void), void (^animatedBlock)(void)) {
        _modelCloseAnimationConfigBlock = ^(void (^animatingBlock)(void), void (^animatedBlock)(void)) {

            //: [UIView animateWithDuration:weakSelf.modelCloseAnimationDuration delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            [UIView animateWithDuration:weakSelf.modelCloseAnimationDuration delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{

                //: if (animatingBlock) animatingBlock();
                if (animatingBlock) animatingBlock();

            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {

                //: if (animatedBlock) animatedBlock();
                if (animatedBlock) animatedBlock();
            //: }];
            }];

        //: };
        };

        //: _modelShouldClose = ^{
        _modelShouldClose = ^{
            //: return YES;
            return YES;
        //: };
        };

        //: _modelShouldActionClickClose = ^(NSInteger index){
        _modelShouldActionClickClose = ^(NSInteger index){
            //: return YES;
            return YES;
        //: };
        };

        //: _modelPresentation = [LEEPresentation windowLevel:UIWindowLevelAlert];
        _modelPresentation = [ImageMessage mild:UIWindowLevelAlert];
    }
    //: return self;
    return self;
}

//: - (LEEConfigToString)LeeTitle{
- (LEEConfigToString)LeeTitle{

    //: return ^(NSString *str){
    return ^(NSString *str){

        //: return self.LeeAddTitle(^(UILabel *label) {
        return self.LeeAddTitle(^(UILabel *label) {

            //: label.text = str;
            label.text = str;
        //: });
        });

    //: };
    };

}


//: - (LEEConfigToString)LeeContent{
- (LEEConfigToString)LeeContent{

    //: return ^(NSString *str){
    return ^(NSString *str){

        //: return self.LeeAddContent(^(UILabel *label) {
        return self.LeeAddContent(^(UILabel *label) {

            //: label.text = str;
            label.text = str;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToView)LeeCustomView{
- (LEEConfigToView)LeeCustomView{

    //: return ^(UIView *view){
    return ^(UIView *view){

        //: return self.LeeAddCustomView(^(LEECustomView *custom) {
        return self.LeeAddCustomView(^(ViewColor *custom) {

            //: custom.view = view;
            custom.view = view;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToStringAndBlock)LeeAction{
- (LEEConfigToStringAndBlock)LeeAction{

    //: return ^(NSString *title, void(^block)(void)){
    return ^(NSString *title, void(^block)(void)){

        //: return self.LeeAddAction(^(LEEAction *action) {
        return self.LeeAddAction(^(TempAction *action) {

            //: action.type = LEEActionTypeDefault;
            action.type = LEEActionTypeDefault;

            //: action.title = title;
            action.title = title;

            //: action.clickBlock = block;
            action.clickBlock = block;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToStringAndBlock)LeeCancelAction{
- (LEEConfigToStringAndBlock)LeeCancelAction{

    //: return ^(NSString *title, void(^block)(void)){
    return ^(NSString *title, void(^block)(void)){

        //: return self.LeeAddAction(^(LEEAction *action) {
        return self.LeeAddAction(^(TempAction *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;

            //: action.title = title;
            action.title = title;

            //: action.font = [UIFont boldSystemFontOfSize:18.0f];
            action.font = [UIFont boldSystemFontOfSize:18.0f];

            //: action.clickBlock = block;
            action.clickBlock = block;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToStringAndBlock)LeeDestructiveAction{
- (LEEConfigToStringAndBlock)LeeDestructiveAction{

    //: return ^(NSString *title, void(^block)(void)){
    return ^(NSString *title, void(^block)(void)){

        //: return self.LeeAddAction(^(LEEAction *action) {
        return self.LeeAddAction(^(TempAction *action) {

            //: action.type = LEEActionTypeDestructive;
            action.type = LEEActionTypeDestructive;

            //: action.title = title;
            action.title = title;

            //: action.titleColor = [UIColor systemRedColor];
            action.titleColor = [UIColor systemRedColor];

            //: action.clickBlock = block;
            action.clickBlock = block;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToConfigLabel)LeeAddTitle{
- (LEEConfigToConfigLabel)LeeAddTitle{

    //: return ^(void(^block)(UILabel *)){
    return ^(void(^block)(UILabel *)){

        //: return self.LeeAddItem(^(LEEItem *item) {
        return self.LeeAddItem(^(DetailImage *item) {

            //: item.type = LEEItemTypeTitle;
            item.type = LEEItemTypeTitle;

            //: item.insets = UIEdgeInsetsMake(5, 0, 5, 0);
            item.insets = UIEdgeInsetsMake(5, 0, 5, 0);

            //: item.block = block;
            item.block = block;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToConfigLabel)LeeAddContent{
- (LEEConfigToConfigLabel)LeeAddContent{

    //: return ^(void(^block)(UILabel *)){
    return ^(void(^block)(UILabel *)){

        //: return self.LeeAddItem(^(LEEItem *item) {
        return self.LeeAddItem(^(DetailImage *item) {

            //: item.type = LEEItemTypeContent;
            item.type = LEEItemTypeContent;

            //: item.insets = UIEdgeInsetsMake(5, 0, 5, 0);
            item.insets = UIEdgeInsetsMake(5, 0, 5, 0);

            //: item.block = block;
            item.block = block;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToCustomView)LeeAddCustomView{
- (LEEConfigToCustomView)LeeAddCustomView{

    //: return ^(void(^block)(LEECustomView *custom)){
    return ^(void(^block)(ViewColor *custom)){

        //: return self.LeeAddItem(^(LEEItem *item) {
        return self.LeeAddItem(^(DetailImage *item) {

            //: item.type = LEEItemTypeCustomView;
            item.type = LEEItemTypeCustomView;

            //: item.insets = UIEdgeInsetsMake(5, 0, 5, 0);
            item.insets = UIEdgeInsetsMake(5, 0, 5, 0);

            //: item.block = block;
            item.block = block;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToItem)LeeAddItem{
- (LEEConfigToItem)LeeAddItem{

    //: return ^(void(^block)(LEEItem *)){
    return ^(void(^block)(DetailImage *)){

        //: if (block) [self.modelItemArray addObject:block];
        if (block) [self.modelItemArray addObject:block];

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToAction)LeeAddAction{
- (LEEConfigToAction)LeeAddAction{

    //: return ^(void(^block)(LEEAction *)){
    return ^(void(^block)(TempAction *)){

        //: if (block) [self.modelActionArray addObject:block];
        if (block) [self.modelActionArray addObject:block];

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToEdgeInsets)LeeHeaderInsets{
- (LEEConfigToEdgeInsets)LeeHeaderInsets{

    //: return ^(UIEdgeInsets insets){
    return ^(UIEdgeInsets insets){

        //: if (insets.top < 0) insets.top = 0;
        if (insets.top < 0) insets.top = 0;

        //: if (insets.left < 0) insets.left = 0;
        if (insets.left < 0) insets.left = 0;

        //: if (insets.bottom < 0) insets.bottom = 0;
        if (insets.bottom < 0) insets.bottom = 0;

        //: if (insets.right < 0) insets.right = 0;
        if (insets.right < 0) insets.right = 0;

        //: self.modelHeaderInsets = insets;
        self.modelHeaderInsets = insets;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToEdgeInsets)LeeItemInsets{
- (LEEConfigToEdgeInsets)LeeItemInsets{

    //: return ^(UIEdgeInsets insets){
    return ^(UIEdgeInsets insets){

        //: if (self.modelItemArray.count) {
        if (self.modelItemArray.count) {

            //: if (insets.top < 0) insets.top = 0;
            if (insets.top < 0) insets.top = 0;

            //: if (insets.left < 0) insets.left = 0;
            if (insets.left < 0) insets.left = 0;

            //: if (insets.bottom < 0) insets.bottom = 0;
            if (insets.bottom < 0) insets.bottom = 0;

            //: if (insets.right < 0) insets.right = 0;
            if (insets.right < 0) insets.right = 0;

            //: [self.modelItemInsetsInfo setObject: [NSValue valueWithUIEdgeInsets:insets]
            [self.modelItemInsetsInfo setObject: [NSValue valueWithUIEdgeInsets:insets]
                                         //: forKey:@(self.modelItemArray.count - 1)];
                                         forKey:@(self.modelItemArray.count - 1)];

        //: } else {
        } else {

            //: NSAssert(YES, @"请在添加的某一项后面设置间距");
            NSAssert(YES, StringFromFleshBiasData(kStr_destructText));
        }

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToFloat)LeeMaxWidth{
- (LEEConfigToFloat)LeeMaxWidth{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: return self.LeeConfigMaxWidth(^CGFloat(LEEScreenOrientationType type, CGSize size) {
        return self.LeeConfigMaxWidth(^CGFloat(LEEScreenOrientationType type, CGSize size) {

            //: return number;
            return number;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToFloat)LeeMaxHeight{
- (LEEConfigToFloat)LeeMaxHeight{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: return self.LeeConfigMaxHeight(^CGFloat(LEEScreenOrientationType type, CGSize size) {
        return self.LeeConfigMaxHeight(^CGFloat(LEEScreenOrientationType type, CGSize size) {

            //: return number;
            return number;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToReturnMaxSize)LeeConfigMaxWidth{
- (LEEConfigToReturnMaxSize)LeeConfigMaxWidth{

    //: return ^(CGFloat(^block)(LEEScreenOrientationType type, CGSize size)){
    return ^(CGFloat(^block)(LEEScreenOrientationType type, CGSize size)){

        //: if (block) self.modelMaxWidthBlock = block;
        if (block) self.modelMaxWidthBlock = block;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToReturnMaxSize)LeeConfigMaxHeight{
- (LEEConfigToReturnMaxSize)LeeConfigMaxHeight{

    //: return ^(CGFloat(^block)(LEEScreenOrientationType type, CGSize size)){
    return ^(CGFloat(^block)(LEEScreenOrientationType type, CGSize size)){

        //: if (block) self.modelMaxHeightBlock = block;
        if (block) self.modelMaxHeightBlock = block;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToFloat)LeeCornerRadius{
- (LEEConfigToFloat)LeeCornerRadius{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelCornerRadii = CornerRadiiMake(number, number, number, number);
        self.modelCornerRadii = CornerRadiiMake(number, number, number, number);

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToCornerRadii)LeeCornerRadii{
- (LEEConfigToCornerRadii)LeeCornerRadii{

    //: return ^(CornerRadii radii){
    return ^(Dedication radii){

        //: self.modelCornerRadii = radii;
        self.modelCornerRadii = radii;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToFloat)LeeOpenAnimationDuration{
- (LEEConfigToFloat)LeeOpenAnimationDuration{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelOpenAnimationDuration = number;
        self.modelOpenAnimationDuration = number;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToFloat)LeeCloseAnimationDuration{
- (LEEConfigToFloat)LeeCloseAnimationDuration{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelCloseAnimationDuration = number;
        self.modelCloseAnimationDuration = number;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToColor)LeeHeaderColor{
- (LEEConfigToColor)LeeHeaderColor{

    //: return ^(UIColor *color){
    return ^(UIColor *color){

        //: self.modelHeaderColor = color;
        self.modelHeaderColor = color;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToColor)LeeBackGroundColor{
- (LEEConfigToColor)LeeBackGroundColor{

    //: return ^(UIColor *color){
    return ^(UIColor *color){

        //: self.modelBackgroundColor = color;
        self.modelBackgroundColor = color;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToFloat)LeeBackgroundStyleTranslucent{
- (LEEConfigToFloat)LeeBackgroundStyleTranslucent{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelBackgroundStyle = LEEBackgroundStyleTranslucent;
        self.modelBackgroundStyle = LEEBackgroundStyleTranslucent;

        //: self.modelBackgroundStyleColorAlpha = number;
        self.modelBackgroundStyleColorAlpha = number;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBlurEffectStyle)LeeBackgroundStyleBlur{
- (LEEConfigToBlurEffectStyle)LeeBackgroundStyleBlur{

    //: return ^(UIBlurEffectStyle style){
    return ^(UIBlurEffectStyle style){

        //: self.modelBackgroundStyle = LEEBackgroundStyleBlur;
        self.modelBackgroundStyle = LEEBackgroundStyleBlur;

        //: self.modelBackgroundBlurEffectStyle = style;
        self.modelBackgroundBlurEffectStyle = style;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeClickHeaderClose{
- (LEEConfigToBool)LeeClickHeaderClose{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsClickHeaderClose = is;
        self.modelIsClickHeaderClose = is;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeClickBackgroundClose{
- (LEEConfigToBool)LeeClickBackgroundClose{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsClickBackgroundClose = is;
        self.modelIsClickBackgroundClose = is;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeIsScrollEnabled{
- (LEEConfigToBool)LeeIsScrollEnabled{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsScrollEnabled = is;
        self.modelIsScrollEnabled = is;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeIsActionFollowScrollEnabled{
- (LEEConfigToBool)LeeIsActionFollowScrollEnabled{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsActionFollowScrollEnabled = is;
        self.modelIsActionFollowScrollEnabled = is;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToSize)LeeShadowOffset{
- (LEEConfigToSize)LeeShadowOffset{

    //: return ^(CGSize size){
    return ^(CGSize size){

        //: self.modelShadowOffset = size;
        self.modelShadowOffset = size;

        //: return self;
        return self;
    //: };
    };
}

//: - (LEEConfigToFloat)LeeShadowOpacity{
- (LEEConfigToFloat)LeeShadowOpacity{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelShadowOpacity = number;
        self.modelShadowOpacity = number;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToFloat)LeeShadowRadius{
- (LEEConfigToFloat)LeeShadowRadius{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelShadowRadius = number;
        self.modelShadowRadius = number;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToColor)LeeShadowColor{
- (LEEConfigToColor)LeeShadowColor{

    //: return ^(UIColor *color){
    return ^(UIColor *color){

        //: self.modelShadowColor = color;
        self.modelShadowColor = color;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToString)LeeIdentifier{
- (LEEConfigToString)LeeIdentifier{

    //: return ^(NSString *string){
    return ^(NSString *string){

        //: self.modelIdentifier = string;
        self.modelIdentifier = string;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeQueue{
- (LEEConfigToBool)LeeQueue{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsQueue = is;
        self.modelIsQueue = is;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToInteger)LeePriority{
- (LEEConfigToInteger)LeePriority{

    //: return ^(NSInteger number){
    return ^(NSInteger number){

        //: self.modelQueuePriority = number > 0 ? number : 0;
        self.modelQueuePriority = number > 0 ? number : 0;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeContinueQueueDisplay{
- (LEEConfigToBool)LeeContinueQueueDisplay{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsContinueQueueDisplay = is;
        self.modelIsContinueQueueDisplay = is;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToPresentation)LeePresentation{
- (LEEConfigToPresentation)LeePresentation{

    //: return ^(LEEPresentation *presentation){
    return ^(ImageMessage *presentation){

        //: self.modelPresentation = presentation;
        self.modelPresentation = presentation;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeShouldAutorotate{
- (LEEConfigToBool)LeeShouldAutorotate{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsShouldAutorotate = is;
        self.modelIsShouldAutorotate = is;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToInterfaceOrientationMask)LeeSupportedInterfaceOrientations{
- (LEEConfigToInterfaceOrientationMask)LeeSupportedInterfaceOrientations{

    //: return ^(UIInterfaceOrientationMask mask){
    return ^(UIInterfaceOrientationMask mask){

        //: self.modelSupportedInterfaceOrientations = mask;
        self.modelSupportedInterfaceOrientations = mask;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBlockAndBlock)LeeOpenAnimationConfig{
- (LEEConfigToBlockAndBlock)LeeOpenAnimationConfig{

    //: return ^(void(^block)(void (^animatingBlock)(void), void (^animatedBlock)(void))){
    return ^(void(^block)(void (^animatingBlock)(void), void (^animatedBlock)(void))){

        //: self.modelOpenAnimationConfigBlock = block;
        self.modelOpenAnimationConfigBlock = block;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBlockAndBlock)LeeCloseAnimationConfig{
- (LEEConfigToBlockAndBlock)LeeCloseAnimationConfig{

    //: return ^(void(^block)(void (^animatingBlock)(void), void (^animatedBlock)(void))){
    return ^(void(^block)(void (^animatingBlock)(void), void (^animatedBlock)(void))){

        //: self.modelCloseAnimationConfigBlock = block;
        self.modelCloseAnimationConfigBlock = block;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToAnimationStyle)LeeOpenAnimationStyle{
- (LEEConfigToAnimationStyle)LeeOpenAnimationStyle{

    //: return ^(LEEAnimationStyle style){
    return ^(LEEAnimationStyle style){

        //: self.modelOpenAnimationStyle = style;
        self.modelOpenAnimationStyle = style;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToAnimationStyle)LeeCloseAnimationStyle{
- (LEEConfigToAnimationStyle)LeeCloseAnimationStyle{

    //: return ^(LEEAnimationStyle style){
    return ^(LEEAnimationStyle style){

        //: self.modelCloseAnimationStyle = style;
        self.modelCloseAnimationStyle = style;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToStatusBarStyle)LeeStatusBarStyle{
- (LEEConfigToStatusBarStyle)LeeStatusBarStyle{

    //: return ^(UIStatusBarStyle style){
    return ^(UIStatusBarStyle style){

        //: self.modelStatusBarStyle = style;
        self.modelStatusBarStyle = style;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToUserInterfaceStyle)LeeUserInterfaceStyle {
- (LEEConfigToUserInterfaceStyle)LeeUserInterfaceStyle {

    //: return ^(UIUserInterfaceStyle style){
    return ^(UIUserInterfaceStyle style){

        //: self.modelUserInterfaceStyle = style;
        self.modelUserInterfaceStyle = style;

        //: return self;
        return self;
    //: };
    };
}


//: - (LEEConfig)LeeShow{
- (LEEConfig)LeeShow{

    //: return ^{
    return ^{

        //: if (self.modelFinishConfig) self.modelFinishConfig();
        if (self.modelFinishConfig) self.modelFinishConfig();

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBlockReturnBool)leeShouldClose{
- (LEEConfigToBlockReturnBool)leeShouldClose{

    //: return ^(BOOL (^block)(void)){
    return ^(BOOL (^block)(void)){

        //: self.modelShouldClose = block;
        self.modelShouldClose = block;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBlockIntegerReturnBool)leeShouldActionClickClose{
- (LEEConfigToBlockIntegerReturnBool)leeShouldActionClickClose{

    //: return ^(BOOL (^block)(NSInteger index)){
    return ^(BOOL (^block)(NSInteger index)){

        //: self.modelShouldActionClickClose = block;
        self.modelShouldActionClickClose = block;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBlock)LeeCloseComplete{
- (LEEConfigToBlock)LeeCloseComplete{

    //: return ^(void (^block)(void)){
    return ^(void (^block)(void)){

        //: self.modelCloseComplete = block;
        self.modelCloseComplete = block;

        //: return self;
        return self;
    //: };
    };

}

//: #pragma mark LazyLoading
#pragma mark LazyLoading

//: - (NSMutableArray *)modelActionArray{
- (NSMutableArray *)modelActionArray{

    //: if (!_modelActionArray) _modelActionArray = [NSMutableArray array];
    if (!_modelActionArray) _modelActionArray = [NSMutableArray array];

    //: return _modelActionArray;
    return _modelActionArray;
}

//: - (NSMutableArray *)modelItemArray{
- (NSMutableArray *)modelItemArray{

    //: if (!_modelItemArray) _modelItemArray = [NSMutableArray array];
    if (!_modelItemArray) _modelItemArray = [NSMutableArray array];

    //: return _modelItemArray;
    return _modelItemArray;
}

//: - (NSMutableDictionary *)modelItemInsetsInfo{
- (NSMutableDictionary *)modelItemInsetsInfo{

    //: if (!_modelItemInsetsInfo) _modelItemInsetsInfo = [NSMutableDictionary dictionary];
    if (!_modelItemInsetsInfo) _modelItemInsetsInfo = [NSMutableDictionary dictionary];

    //: return _modelItemInsetsInfo;
    return _modelItemInsetsInfo;
}

//: @end
@end

//: @implementation LEEBaseConfigModel (Alert)
@implementation MessageMargin (ButtonRecent)

//: - (LEEConfigToConfigTextField)LeeAddTextField{
- (LEEConfigToConfigTextField)LeeAddTextField{

    //: return ^(void (^block)(UITextField *)){
    return ^(void (^block)(UITextField *)){

        //: return self.LeeAddItem(^(LEEItem *item) {
        return self.LeeAddItem(^(DetailImage *item) {

            //: item.type = LEEItemTypeTextField;
            item.type = LEEItemTypeTextField;

            //: item.insets = UIEdgeInsetsMake(10, 0, 10, 0);
            item.insets = UIEdgeInsetsMake(10, 0, 10, 0);

            //: item.block = block;
            item.block = block;
        //: });
        });

    //: };
    };

}

//: - (LEEConfigToPoint)LeeAlertCenterOffset {
- (LEEConfigToPoint)LeeAlertCenterOffset {

    //: return ^(CGPoint offset){
    return ^(CGPoint offset){

        //: self.modelAlertCenterOffset = offset;
        self.modelAlertCenterOffset = offset;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToBool)LeeAvoidKeyboard{
- (LEEConfigToBool)LeeAvoidKeyboard{

    //: return ^(BOOL is){
    return ^(BOOL is){

        //: self.modelIsAvoidKeyboard = is;
        self.modelIsAvoidKeyboard = is;

        //: return self;
        return self;
    //: };
    };

}

//: @end
@end

//: @implementation LEEBaseConfigModel (ActionSheet)
@implementation MessageMargin (Photo)

//: - (LEEConfigToFloat)LeeActionSheetCancelActionSpaceWidth{
- (LEEConfigToFloat)LeeActionSheetCancelActionSpaceWidth{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelActionSheetCancelActionSpaceWidth = number;
        self.modelActionSheetCancelActionSpaceWidth = number;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToColor)LeeActionSheetCancelActionSpaceColor{
- (LEEConfigToColor)LeeActionSheetCancelActionSpaceColor{

    //: return ^(UIColor *color){
    return ^(UIColor *color){

        //: self.modelActionSheetCancelActionSpaceColor = color;
        self.modelActionSheetCancelActionSpaceColor = color;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToFloat)LeeActionSheetBottomMargin{
- (LEEConfigToFloat)LeeActionSheetBottomMargin{

    //: return ^(CGFloat number){
    return ^(CGFloat number){

        //: self.modelActionSheetBottomMargin = number;
        self.modelActionSheetBottomMargin = number;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToColor)LeeActionSheetBackgroundColor{
- (LEEConfigToColor)LeeActionSheetBackgroundColor{

    //: return ^(UIColor *color){
    return ^(UIColor *color){

        //: self.modelActionSheetBackgroundColor = color;
        self.modelActionSheetBackgroundColor = color;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToCornerRadii)LeeActionSheetHeaderCornerRadii{
- (LEEConfigToCornerRadii)LeeActionSheetHeaderCornerRadii{

    //: return ^(CornerRadii radii){
    return ^(Dedication radii){

        //: self.modelActionSheetHeaderCornerRadii = radii;
        self.modelActionSheetHeaderCornerRadii = radii;

        //: return self;
        return self;
    //: };
    };

}

//: - (LEEConfigToCornerRadii)LeeActionSheetCancelActionCornerRadii{
- (LEEConfigToCornerRadii)LeeActionSheetCancelActionCornerRadii{

    //: return ^(CornerRadii radii){
    return ^(Dedication radii){

        //: self.modelActionSheetCancelActionCornerRadii = radii;
        self.modelActionSheetCancelActionCornerRadii = radii;

        //: return self;
        return self;
    //: };
    };

}

//: @end
@end

//: @interface LEEAlert ()
@interface GraduateTemp ()

//: @property (nonatomic, strong) UIWindow *mainWindow;
@property (nonatomic, strong) UIWindow *mainWindow;

//: @property (nonatomic, strong) LEEAlertWindow *leeWindow;
@property (nonatomic, strong) ColorWindow *leeWindow;

//: @property (nonatomic, strong) NSMutableArray <LEEBaseConfig *>*queueArray;
@property (nonatomic, strong) NSMutableArray <IndependentTitle *>*queueArray;

//: @property (nonatomic, strong) LEEBaseViewController *viewController;
@property (nonatomic, strong) SelectedViewController *viewController;

//: @end
@end

//: @protocol LEEAlertProtocol <NSObject>
@protocol ColorImage <NSObject>

//: - (void)closeWithCompletionBlock:(void (^)(void))completionBlock;
- (void)commenting:(void (^)(void))completionBlock;

//: @end
@end

//: @implementation LEEAlert
@implementation GraduateTemp

//: + (LEEAlert *)shareManager{
+ (GraduateTemp *)video{

    //: static LEEAlert *alertManager;
    static GraduateTemp *alertManager;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{

        //: alertManager = [[LEEAlert alloc] init];
        alertManager = [[GraduateTemp alloc] init];
    //: });
    });

    //: return alertManager;
    return alertManager;
}

//: + (LEEAlertConfig *)alert{
+ (TeamBaseConfig *)container{

    //: return [[LEEAlertConfig alloc] init];
    return [[TeamBaseConfig alloc] init];
}

//: + (LEEActionSheetConfig *)actionsheet{
+ (AircraftBaseConfig *)skullSessionPin{

    //: return [[LEEActionSheetConfig alloc] init];
    return [[AircraftBaseConfig alloc] init];
}

//: + (LEEAlertWindow *)getAlertWindow{
+ (ColorWindow *)maxAcross{

    //: return [LEEAlert shareManager].leeWindow;
    return [GraduateTemp video].leeWindow;
}

//: + (void)configMainWindow:(UIWindow *)window{
+ (void)atColor:(UIWindow *)window{

    //: if (window) [LEEAlert shareManager].mainWindow = window;
    if (window) [GraduateTemp video].mainWindow = window;
}

//: + (void)continueQueueDisplay{
+ (void)team{

    //: if ([LEEAlert shareManager].queueArray.count) [LEEAlert shareManager].queueArray.lastObject.config.modelFinishConfig();
    if ([GraduateTemp video].queueArray.count) [GraduateTemp video].queueArray.lastObject.config.modelFinishConfig();
}

//: + (void)clearQueue{
+ (void)will{
    //: if ([self isQueueEmpty]) return;
    if ([self barView]) return;

    //: LEEBaseConfig * _Nullable last = [LEEAlert shareManager].queueArray.lastObject;
    IndependentTitle * _Nullable last = [GraduateTemp video].queueArray.lastObject;

    //: [[LEEAlert shareManager].queueArray removeAllObjects];
    [[GraduateTemp video].queueArray removeAllObjects];

    //: if ([last respondsToSelector:@selector(close)]) [last performSelector:@selector(close)];
    if ([last respondsToSelector:@selector(samplingSend)]) [last performSelector:@selector(samplingSend)];
}

//: + (BOOL)isQueueEmpty{
+ (BOOL)barView{

    //: return [LEEAlert shareManager].queueArray.count == 0;
    return [GraduateTemp video].queueArray.count == 0;
}

//: + (BOOL)containsQueueWithIdentifier:(NSString *)identifier {
+ (BOOL)emptyByIdentifier:(NSString *)identifier {

    //: for (LEEBaseConfig *config in [LEEAlert shareManager].queueArray) {
    for (IndependentTitle *config in [GraduateTemp video].queueArray) {
        //: if ([config.config.modelIdentifier isEqualToString:identifier]) return YES;
        if ([config.config.modelIdentifier isEqualToString:identifier]) return YES;
    }

    //: return NO;
    return NO;
}

//: + (void)closeWithIdentifier:(NSString *)identifier completionBlock:(void (^ _Nullable)(void))completionBlock{
+ (void)with:(NSString *)identifier can:(void (^ _Nullable)(void))completionBlock{

    //: [self closeWithIdentifier:identifier force:NO completionBlock:completionBlock];
    [self circleEnable:identifier threadBy:NO tap:completionBlock];
}

//: + (void)closeWithIdentifier:(NSString *)identifier force:(BOOL)force completionBlock:(void (^)(void))completionBlock{
+ (void)circleEnable:(NSString *)identifier threadBy:(BOOL)force tap:(void (^)(void))completionBlock{

    //: if ([LEEAlert shareManager].queueArray.count) {
    if ([GraduateTemp video].queueArray.count) {

        //: BOOL isLast = false;
        BOOL isLast = false;

        //: NSUInteger count = [LEEAlert shareManager].queueArray.count;
        NSUInteger count = [GraduateTemp video].queueArray.count;

        //: NSMutableIndexSet *indexs = [[NSMutableIndexSet alloc] init];
        NSMutableIndexSet *indexs = [[NSMutableIndexSet alloc] init];

        //: for (NSUInteger i = 0; i < count; i++) {
        for (NSUInteger i = 0; i < count; i++) {

            //: LEEBaseConfig *config = [LEEAlert shareManager].queueArray[i];
            IndependentTitle *config = [GraduateTemp video].queueArray[i];

            //: LEEBaseConfigModel *model = config.config;
            MessageMargin *model = config.config;

            //: if (model.modelIdentifier != nil && [identifier isEqualToString: model.modelIdentifier]) {
            if (model.modelIdentifier != nil && [identifier isEqualToString: model.modelIdentifier]) {

                //: if (i == count - 1 && [[LEEAlert shareManager] viewController]) {
                if (i == count - 1 && [[GraduateTemp video] viewController]) {
                    //: if (force) {
                    if (force) {
                        //: model.modelShouldClose = ^{ return YES; };
                        model.modelShouldClose = ^{ return YES; };
                    }

                    //: isLast = true;
                    isLast = true;

                //: } else {
                } else {

                    //: [indexs addIndex:i];
                    [indexs addIndex:i];
                }
            }
        }

        //: [[LEEAlert shareManager].queueArray removeObjectsAtIndexes:indexs];
        [[GraduateTemp video].queueArray removeObjectsAtIndexes:indexs];

        //: if (isLast) {
        if (isLast) {

            //: [LEEAlert closeWithCompletionBlock:completionBlock];
            [GraduateTemp commenting:completionBlock];

        //: } else {
        } else {

            //: if (completionBlock) completionBlock();
            if (completionBlock) completionBlock();
        }

    //: } else {
    } else {

        //: if (completionBlock) completionBlock();
        if (completionBlock) completionBlock();
    }
}

//: + (void)closeWithCompletionBlock:(void (^)(void))completionBlock{
+ (void)commenting:(void (^)(void))completionBlock{

    //: if ([LEEAlert shareManager].queueArray.count) {
    if ([GraduateTemp video].queueArray.count) {

        //: LEEBaseConfig *item = [LEEAlert shareManager].queueArray.lastObject;
        IndependentTitle *item = [GraduateTemp video].queueArray.lastObject;

        //: if ([item respondsToSelector:@selector(closeWithCompletionBlock:)]) [item performSelector:@selector(closeWithCompletionBlock:) withObject:completionBlock];
        if ([item respondsToSelector:@selector(commenting:)]) [item performSelector:@selector(commenting:) withObject:completionBlock];

    //: } else {
    } else {

        //: if (completionBlock) completionBlock();
        if (completionBlock) completionBlock();
    }
}

//: #pragma mark LazyLoading
#pragma mark LazyLoading

//: - (void)setMainWindow:(UIWindow *)mainWindow {
- (void)setMainWindow:(UIWindow *)mainWindow {
    //: _mainWindow = mainWindow;
    _mainWindow = mainWindow;

    //: if (@available(iOS 13.0, *)) {
    if (@available(iOS 13.0, *)) {

        //: if (mainWindow.windowScene && _leeWindow) {
        if (mainWindow.windowScene && _leeWindow) {

            //: _leeWindow.windowScene = mainWindow.windowScene;
            _leeWindow.windowScene = mainWindow.windowScene;
        }
    }
}

//: - (NSMutableArray <LEEBaseConfig *>*)queueArray{
- (NSMutableArray <IndependentTitle *>*)queueArray{

    //: if (!_queueArray) _queueArray = [NSMutableArray array];
    if (!_queueArray) _queueArray = [NSMutableArray array];

    //: return _queueArray;
    return _queueArray;
}

//: - (LEEAlertWindow *)leeWindow{
- (ColorWindow *)leeWindow{

    //: if (!_leeWindow) {
    if (!_leeWindow) {

        //: if (@available(iOS 13.0, *)) {
        if (@available(iOS 13.0, *)) {

            //: if (_mainWindow.windowScene) {
            if (_mainWindow.windowScene) {

                //: _leeWindow = [[LEEAlertWindow alloc] initWithWindowScene: _mainWindow.windowScene];
                _leeWindow = [[ColorWindow alloc] initWithWindowScene: _mainWindow.windowScene];

            //: } else {
            } else {
                //: _leeWindow = [[LEEAlertWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
                _leeWindow = [[ColorWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
            }

        //: } else {
        } else {
            //: _leeWindow = [[LEEAlertWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
            _leeWindow = [[ColorWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        }

        //: _leeWindow.rootViewController = [[UIViewController alloc] init];
        _leeWindow.rootViewController = [[UIViewController alloc] init];

        //: _leeWindow.backgroundColor = [UIColor clearColor];
        _leeWindow.backgroundColor = [UIColor clearColor];

        //: _leeWindow.windowLevel = UIWindowLevelAlert;
        _leeWindow.windowLevel = UIWindowLevelAlert;

        //: _leeWindow.hidden = YES;
        _leeWindow.hidden = YES;
    }

    //: return _leeWindow;
    return _leeWindow;
}

//: @end
@end

//: @interface UIView (LEEAlertExtension)
@interface UIView (SizeExtension)

//: @property (nonatomic, assign) CornerRadii lee_alert_cornerRadii;
@property (nonatomic, assign) Dedication lee_alert_cornerRadii;

//: @end
@end

//: @implementation UIView (LEEAlertExtension)
@implementation UIView (SizeExtension)

//: CornerRadii CornerRadiiMake(CGFloat topLeft, CGFloat topRight, CGFloat bottomLeft, CGFloat bottomRight) {
Dedication CornerRadiiMake(CGFloat topLeft, CGFloat topRight, CGFloat bottomLeft, CGFloat bottomRight) {
    //: return (CornerRadii){
    return (Dedication){
        //: topLeft,
        topLeft,
        //: topRight,
        topRight,
        //: bottomLeft,
        bottomLeft,
        //: bottomRight,
        bottomRight,
    //: };
    };
}

//: CornerRadii CornerRadiiZero() {
Dedication CornerRadiiZero() {
    //: return (CornerRadii){0, 0, 0, 0};
    return (Dedication){0, 0, 0, 0};
}

//: CornerRadii CornerRadiiNull() {
Dedication CornerRadiiNull() {
    //: return (CornerRadii){-1, -1, -1, -1};
    return (Dedication){-1, -1, -1, -1};
}

//: BOOL CornerRadiiEqualTo(CornerRadii lhs, CornerRadii rhs) {
BOOL CornerRadiiEqualTo(Dedication lhs, Dedication rhs) {
    //: return lhs.topLeft == rhs.topRight
    return lhs.topLeft == rhs.topRight
    //: && lhs.topRight == rhs.topRight
    && lhs.topRight == rhs.topRight
    //: && lhs.bottomLeft == rhs.bottomLeft
    && lhs.bottomLeft == rhs.bottomLeft
    //: && lhs.bottomRight == lhs.bottomRight;
    && lhs.bottomRight == lhs.bottomRight;
}

// 切圆角函数
//: CGPathRef _Nullable LEECGPathCreateWithRoundedRect(CGRect bounds, CornerRadii cornerRadii) {
CGPathRef _Nullable LEECGPathCreateWithRoundedRect(CGRect bounds, Dedication cornerRadii) {
    //: const CGFloat minX = CGRectGetMinX(bounds);
    const CGFloat minX = CGRectGetMinX(bounds);
    //: const CGFloat minY = CGRectGetMinY(bounds);
    const CGFloat minY = CGRectGetMinY(bounds);
    //: const CGFloat maxX = CGRectGetMaxX(bounds);
    const CGFloat maxX = CGRectGetMaxX(bounds);
    //: const CGFloat maxY = CGRectGetMaxY(bounds);
    const CGFloat maxY = CGRectGetMaxY(bounds);

    //: const CGFloat topLeftCenterX = minX + cornerRadii.topLeft;
    const CGFloat topLeftCenterX = minX + cornerRadii.topLeft;
    //: const CGFloat topLeftCenterY = minY + cornerRadii.topLeft;
    const CGFloat topLeftCenterY = minY + cornerRadii.topLeft;

    //: const CGFloat topRightCenterX = maxX - cornerRadii.topRight;
    const CGFloat topRightCenterX = maxX - cornerRadii.topRight;
    //: const CGFloat topRightCenterY = minY + cornerRadii.topRight;
    const CGFloat topRightCenterY = minY + cornerRadii.topRight;

    //: const CGFloat bottomLeftCenterX = minX + cornerRadii.bottomLeft;
    const CGFloat bottomLeftCenterX = minX + cornerRadii.bottomLeft;
    //: const CGFloat bottomLeftCenterY = maxY - cornerRadii.bottomLeft;
    const CGFloat bottomLeftCenterY = maxY - cornerRadii.bottomLeft;

    //: const CGFloat bottomRightCenterX = maxX - cornerRadii.bottomRight;
    const CGFloat bottomRightCenterX = maxX - cornerRadii.bottomRight;
    //: const CGFloat bottomRightCenterY = maxY - cornerRadii.bottomRight;
    const CGFloat bottomRightCenterY = maxY - cornerRadii.bottomRight;
    // 虽然顺时针参数是YES，在iOS中的UIView中，这里实际是逆时针

    //: CGMutablePathRef path = CGPathCreateMutable();
    CGMutablePathRef path = CGPathCreateMutable();
    // 顶 左
    //: CGPathAddArc(path, NULL, topLeftCenterX, topLeftCenterY, cornerRadii.topLeft, 3.14159265358979323846264338327950288, 3 * 1.57079632679489661923132169163975144, NO);
    CGPathAddArc(path, NULL, topLeftCenterX, topLeftCenterY, cornerRadii.topLeft, 3.14159265358979323846264338327950288, 3 * 1.57079632679489661923132169163975144, NO);
    // 顶 右
    //: CGPathAddArc(path, NULL, topRightCenterX, topRightCenterY, cornerRadii.topRight, 3 * 1.57079632679489661923132169163975144, 0, NO);
    CGPathAddArc(path, NULL, topRightCenterX, topRightCenterY, cornerRadii.topRight, 3 * 1.57079632679489661923132169163975144, 0, NO);
    // 底 右
    //: CGPathAddArc(path, NULL, bottomRightCenterX, bottomRightCenterY, cornerRadii.bottomRight, 0, 1.57079632679489661923132169163975144, NO);
    CGPathAddArc(path, NULL, bottomRightCenterX, bottomRightCenterY, cornerRadii.bottomRight, 0, 1.57079632679489661923132169163975144, NO);
    // 底 左
    //: CGPathAddArc(path, NULL, bottomLeftCenterX, bottomLeftCenterY, cornerRadii.bottomLeft, 1.57079632679489661923132169163975144,3.14159265358979323846264338327950288, NO);
    CGPathAddArc(path, NULL, bottomLeftCenterX, bottomLeftCenterY, cornerRadii.bottomLeft, 1.57079632679489661923132169163975144,3.14159265358979323846264338327950288, NO);
    //: CGPathCloseSubpath(path);
    CGPathCloseSubpath(path);
    //: return path;
    return path;
}

//: + (void)load{
+ (void)load{

    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{

        //: NSArray *selStringsArray = @[@"layoutSubviews"];
        NSArray *selStringsArray = @[StringFromFleshBiasData(kStr_withinLevelText)];

        //: [selStringsArray enumerateObjectsUsingBlock:^(NSString *selString, NSUInteger idx, BOOL *stop) {
        [selStringsArray enumerateObjectsUsingBlock:^(NSString *selString, NSUInteger idx, BOOL *stop) {

            //: NSString *leeSelString = [@"lee_alert_view_" stringByAppendingString:selString];
            NSString *leeSelString = [StringFromFleshBiasData(kStr_significanceSexData) stringByAppendingString:selString];

            //: Method originalMethod = class_getInstanceMethod(self, NSSelectorFromString(selString));
            Method originalMethod = class_getInstanceMethod(self, NSSelectorFromString(selString));

            //: Method leeMethod = class_getInstanceMethod(self, NSSelectorFromString(leeSelString));
            Method leeMethod = class_getInstanceMethod(self, NSSelectorFromString(leeSelString));

            //: BOOL isAddedMethod = class_addMethod(self, NSSelectorFromString(selString), method_getImplementation(leeMethod), method_getTypeEncoding(leeMethod));
            BOOL isAddedMethod = class_addMethod(self, NSSelectorFromString(selString), method_getImplementation(leeMethod), method_getTypeEncoding(leeMethod));

            //: if (isAddedMethod) {
            if (isAddedMethod) {

                //: class_replaceMethod(self, NSSelectorFromString(leeSelString), method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
                class_replaceMethod(self, NSSelectorFromString(leeSelString), method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));

            //: } else {
            } else {

                //: method_exchangeImplementations(originalMethod, leeMethod);
                method_exchangeImplementations(originalMethod, leeMethod);
            }

        //: }];
        }];

    //: });
    });

}

//: - (void)lee_alert_updateCornerRadii{
- (void)to{

    //: if (!CornerRadiiEqualTo([self lee_alert_cornerRadii], CornerRadiiNull())) {
    if (!CornerRadiiEqualTo([self lee_alert_cornerRadii], CornerRadiiNull())) {

        //: CAShapeLayer *lastLayer = (CAShapeLayer *)self.layer.mask;
        CAShapeLayer *lastLayer = (CAShapeLayer *)self.layer.mask;
        //: CGPathRef lastPath = CGPathCreateCopy(lastLayer.path);
        CGPathRef lastPath = CGPathCreateCopy(lastLayer.path);
        //: CGPathRef path = LEECGPathCreateWithRoundedRect(self.bounds, [self lee_alert_cornerRadii]);
        CGPathRef path = LEECGPathCreateWithRoundedRect(self.bounds, [self lee_alert_cornerRadii]);

        // 防止相同路径多次设置
        //: if (!CGPathEqualToPath(lastPath, path)) {
        if (!CGPathEqualToPath(lastPath, path)) {
            // 移除原有路径动画
            //: [lastLayer removeAnimationForKey:@"path"];
            [lastLayer removeAnimationForKey:StringFromFleshBiasData(kStr_harshTextDeviceContent)];
            // 重置新路径mask
            //: CAShapeLayer *maskLayer = [CAShapeLayer layer];
            CAShapeLayer *maskLayer = [CAShapeLayer layer];
            //: maskLayer.path = path;
            maskLayer.path = path;
            //: self.layer.mask = maskLayer;
            self.layer.mask = maskLayer;
            // 同步视图大小变更动画
            //: CAAnimation *temp = [self.layer animationForKey:@"bounds.size"];
            CAAnimation *temp = [self.layer animationForKey:StringFromFleshBiasData(kStr_ireNoteValue)];
            //: if (temp) {
            if (temp) {
                //: CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"path"];
                CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:StringFromFleshBiasData(kStr_harshTextDeviceContent)];
                //: animation.duration = temp.duration;
                animation.duration = temp.duration;
                //: animation.fillMode = temp.fillMode;
                animation.fillMode = temp.fillMode;
                //: animation.timingFunction = temp.timingFunction;
                animation.timingFunction = temp.timingFunction;
                //: animation.fromValue = (__bridge id _Nullable)(lastPath);
                animation.fromValue = (__bridge id _Nullable)(lastPath);
                //: animation.toValue = (__bridge id _Nullable)(path);
                animation.toValue = (__bridge id _Nullable)(path);
                //: [maskLayer addAnimation:animation forKey:@"path"];
                [maskLayer addAnimation:animation forKey:StringFromFleshBiasData(kStr_harshTextDeviceContent)];
            }

        }

        //: CGPathRelease(lastPath);
        CGPathRelease(lastPath);

        //: CGPathRelease(path);
        CGPathRelease(path);
    }
}

//: - (void)lee_alert_view_layoutSubviews{
- (void)pin{

    //: [self lee_alert_view_layoutSubviews];
    [self pin];

    //: [self lee_alert_updateCornerRadii];
    [self to];
}

//: - (CornerRadii)lee_alert_cornerRadii{
- (Dedication)lee_alert_cornerRadii{

    //: NSValue *value = objc_getAssociatedObject(self, _cmd);
    NSValue *value = objc_getAssociatedObject(self, _cmd);

    //: CornerRadii cornerRadii;
    Dedication cornerRadii;

    //: if (value) {
    if (value) {

        //: [value getValue:&cornerRadii];
        [value getValue:&cornerRadii];

    //: } else {
    } else {

        //: cornerRadii = CornerRadiiNull();
        cornerRadii = CornerRadiiNull();
    }

    //: return cornerRadii;
    return cornerRadii;
}

//: - (void)setLee_alert_cornerRadii:(CornerRadii)cornerRadii{
- (void)setLee_alert_cornerRadii:(Dedication)cornerRadii{

    //: NSValue *value = [NSValue valueWithBytes:&cornerRadii objCType:@encode(CornerRadii)];
    NSValue *value = [NSValue valueWithBytes:&cornerRadii objCType:@encode(Dedication)];

    //: objc_setAssociatedObject(self, @selector(lee_alert_cornerRadii), value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, @selector(lee_alert_cornerRadii), value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: @end
@end

//: @interface UIButton (LEEAlertExtension)
@interface UIButton (SizeExtension)

//: @end
@end

//: @implementation UIButton (LEEAlertExtension)
@implementation UIButton (SizeExtension)

//: + (void)load{
+ (void)load{

    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{

        //: NSArray *selStringsArray = @[@"layoutSubviews"];
        NSArray *selStringsArray = @[StringFromFleshBiasData(kStr_withinLevelText)];

        //: [selStringsArray enumerateObjectsUsingBlock:^(NSString *selString, NSUInteger idx, BOOL *stop) {
        [selStringsArray enumerateObjectsUsingBlock:^(NSString *selString, NSUInteger idx, BOOL *stop) {

            //: NSString *leeSelString = [@"lee_alert_button_" stringByAppendingString:selString];
            NSString *leeSelString = [StringFromFleshBiasData(kStr_pinionContentData) stringByAppendingString:selString];

            //: Method originalMethod = class_getInstanceMethod(self, NSSelectorFromString(selString));
            Method originalMethod = class_getInstanceMethod(self, NSSelectorFromString(selString));

            //: Method leeMethod = class_getInstanceMethod(self, NSSelectorFromString(leeSelString));
            Method leeMethod = class_getInstanceMethod(self, NSSelectorFromString(leeSelString));

            //: BOOL isAddedMethod = class_addMethod(self, NSSelectorFromString(selString), method_getImplementation(leeMethod), method_getTypeEncoding(leeMethod));
            BOOL isAddedMethod = class_addMethod(self, NSSelectorFromString(selString), method_getImplementation(leeMethod), method_getTypeEncoding(leeMethod));

            //: if (isAddedMethod) {
            if (isAddedMethod) {

                //: class_replaceMethod(self, NSSelectorFromString(leeSelString), method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
                class_replaceMethod(self, NSSelectorFromString(leeSelString), method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));

            //: } else {
            } else {

                //: method_exchangeImplementations(originalMethod, leeMethod);
                method_exchangeImplementations(originalMethod, leeMethod);
            }

        //: }];
        }];

    //: });
    });

}

//: - (void)lee_alert_button_layoutSubviews{
- (void)communication{

    //: [self lee_alert_button_layoutSubviews];
    [self communication];

    //: [self lee_alert_updateCornerRadii];
    [self to];
}

//: @end
@end

//: @implementation LEEAlertWindow
@implementation ColorWindow

//: @end
@end

//: @interface LEEItem ()
@interface DetailImage ()

//: @property (nonatomic, copy) void (^updateBlock)(LEEItem *);
@property (nonatomic, copy) void (^updateBlock)(DetailImage *);

//: @end
@end

//: @implementation LEEItem
@implementation DetailImage

//: - (void)update{
- (void)title{

    //: if (self.updateBlock) self.updateBlock(self);
    if (self.updateBlock) self.updateBlock(self);
}

//: @end
@end

//: @interface LEEAction ()
@interface TempAction ()

//: @property (nonatomic, copy) void (^updateBlock)(LEEAction *);
@property (nonatomic, copy) void (^updateBlock)(TempAction *);

//: @end
@end

//: @implementation LEEAction
@implementation TempAction

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _numberOfLines = 1;
        _numberOfLines = 1;
        //: _textAlignment = NSTextAlignmentLeft;
        _textAlignment = NSTextAlignmentLeft;
        //: _adjustsFontSizeToFitWidth = NO;
        _adjustsFontSizeToFitWidth = NO;
        //: _lineBreakMode = NSLineBreakByTruncatingMiddle;
        _lineBreakMode = NSLineBreakByTruncatingMiddle;
    }
    //: return self;
    return self;
}

//: - (void)update{
- (void)label{

    //: if (self.updateBlock) self.updateBlock(self);
    if (self.updateBlock) self.updateBlock(self);
}

//: @end
@end

//: @interface LEEItemView : UIView
@interface ContentView : UIView

//: @property (nonatomic, strong) LEEItem *item;
@property (nonatomic, strong) DetailImage *item;

//: + (LEEItemView *)view;
+ (ContentView *)teamToAdd;

//: @end
@end

//: @implementation LEEItemView
@implementation ContentView

//: + (LEEItemView *)view{
+ (ContentView *)teamToAdd{

    //: return [[LEEItemView alloc] init];
    return [[ContentView alloc] init];
}

//: @end
@end

//: @interface LEEItemLabel : UILabel
@interface DisablePointView : UILabel

//: @property (nonatomic, strong) LEEItem *item;
@property (nonatomic, strong) DetailImage *item;

//: @property (nonatomic, copy) void (^textChangedBlock)(void);
@property (nonatomic, copy) void (^textChangedBlock)(void);

//: + (LEEItemLabel *)label;
+ (DisablePointView *)cut;

//: @end
@end

//: @implementation LEEItemLabel
@implementation DisablePointView

//: + (LEEItemLabel *)label{
+ (DisablePointView *)cut{

    //: return [[LEEItemLabel alloc] init];
    return [[DisablePointView alloc] init];
}

//: - (void)setText:(NSString *)text{
- (void)setText:(NSString *)text{

    //: [super setText:text];
    [super setText:text];

    //: if (self.textChangedBlock) self.textChangedBlock();
    if (self.textChangedBlock) self.textChangedBlock();
}

//: - (void)setAttributedText:(NSAttributedString *)attributedText{
- (void)setAttributedText:(NSAttributedString *)attributedText{

    //: [super setAttributedText:attributedText];
    [super setAttributedText:attributedText];

    //: if (self.textChangedBlock) self.textChangedBlock();
    if (self.textChangedBlock) self.textChangedBlock();
}

//: - (void)setFont:(UIFont *)font{
- (void)setFont:(UIFont *)font{

    //: [super setFont:font];
    [super setFont:font];

    //: if (self.textChangedBlock) self.textChangedBlock();
    if (self.textChangedBlock) self.textChangedBlock();
}

//: - (void)setNumberOfLines:(NSInteger)numberOfLines{
- (void)setNumberOfLines:(NSInteger)numberOfLines{

    //: [super setNumberOfLines:numberOfLines];
    [super setNumberOfLines:numberOfLines];

    //: if (self.textChangedBlock) self.textChangedBlock();
    if (self.textChangedBlock) self.textChangedBlock();
}

//: @end
@end

//: @interface LEEItemTextField : UITextField
@interface IncidentalControl : UITextField

//: @property (nonatomic, strong) LEEItem *item;
@property (nonatomic, strong) DetailImage *item;

//: + (LEEItemTextField *)textField;
+ (IncidentalControl *)computerFilenameField;

//: @end
@end

//: @implementation LEEItemTextField
@implementation IncidentalControl

//: + (LEEItemTextField *)textField{
+ (IncidentalControl *)computerFilenameField{

    //: return [[LEEItemTextField alloc] init];
    return [[IncidentalControl alloc] init];
}

//: @end
@end

//: @interface LEEActionButton : UIButton
@interface AggressionControl : UIButton

//: @property (nonatomic, strong) LEEAction *action;
@property (nonatomic, strong) TempAction *action;

//: @property (nonatomic, copy) void (^heightChangedBlock)(void);
@property (nonatomic, copy) void (^heightChangedBlock)(void);

//: + (LEEActionButton *)button;
+ (AggressionControl *)session;

//: @end
@end

//: @interface LEEActionButton ()
@interface AggressionControl ()

//: @property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic, strong) UIColor *borderColor;

//: @property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, assign) CGFloat borderWidth;

//: @property (nonatomic, strong) CALayer *topLayer;
@property (nonatomic, strong) CALayer *topLayer;

//: @property (nonatomic, strong) CALayer *bottomLayer;
@property (nonatomic, strong) CALayer *bottomLayer;

//: @property (nonatomic, strong) CALayer *leftLayer;
@property (nonatomic, strong) CALayer *leftLayer;

//: @property (nonatomic, strong) CALayer *rightLayer;
@property (nonatomic, strong) CALayer *rightLayer;

//: @end
@end

//: @implementation LEEActionButton
@implementation AggressionControl

//: - (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    //: [super traitCollectionDidChange:previousTraitCollection];
    [super traitCollectionDidChange:previousTraitCollection];
    /// 刷新Action设置
    //: self.action = self.action;
    self.action = self.action;
}

//: + (LEEActionButton *)button{
+ (AggressionControl *)session{

    //: return [LEEActionButton buttonWithType:UIButtonTypeCustom];;
    return [AggressionControl buttonWithType:UIButtonTypeCustom];;
}

//: - (void)setAction:(LEEAction *)action{
- (void)setAction:(TempAction *)action{

    //: _action = action;
    _action = action;

    //: self.clipsToBounds = YES;
    self.clipsToBounds = YES;

    //: if (action.title) [self setTitle:action.title forState:UIControlStateNormal];
    if (action.title) [self setTitle:action.title forState:UIControlStateNormal];

    //: if (action.highlight) [self setTitle:action.highlight forState:UIControlStateHighlighted];
    if (action.highlight) [self setTitle:action.highlight forState:UIControlStateHighlighted];

    //: if (action.attributedTitle) [self setAttributedTitle:action.attributedTitle forState:UIControlStateNormal];
    if (action.attributedTitle) [self setAttributedTitle:action.attributedTitle forState:UIControlStateNormal];

    //: if (action.attributedHighlight) [self setAttributedTitle:action.attributedHighlight forState:UIControlStateHighlighted];
    if (action.attributedHighlight) [self setAttributedTitle:action.attributedHighlight forState:UIControlStateHighlighted];

    //: [self.titleLabel setNumberOfLines:action.numberOfLines];
    [self.titleLabel setNumberOfLines:action.numberOfLines];

    //: [self.titleLabel setTextAlignment:action.textAlignment];
    [self.titleLabel setTextAlignment:action.textAlignment];

    //: if (action.font) [self.titleLabel setFont:action.font];
    if (action.font) [self.titleLabel setFont:action.font];

    //: [self.titleLabel setAdjustsFontSizeToFitWidth:action.adjustsFontSizeToFitWidth];
    [self.titleLabel setAdjustsFontSizeToFitWidth:action.adjustsFontSizeToFitWidth];

    //: [self.titleLabel setLineBreakMode:action.lineBreakMode];
    [self.titleLabel setLineBreakMode:action.lineBreakMode];

    //: if (action.titleColor) [self setTitleColor:action.titleColor forState:UIControlStateNormal];
    if (action.titleColor) [self setTitleColor:action.titleColor forState:UIControlStateNormal];

    //: if (action.highlightColor) [self setTitleColor:action.highlightColor forState:UIControlStateHighlighted];
    if (action.highlightColor) [self setTitleColor:action.highlightColor forState:UIControlStateHighlighted];

    //: if (action.backgroundColor) [self setBackgroundImage:[self getImageWithColor:action.backgroundColor] forState:UIControlStateNormal];
    if (action.backgroundColor) [self setBackgroundImage:[self ergodic:action.backgroundColor] forState:UIControlStateNormal];

    //: if (action.backgroundHighlightColor) [self setBackgroundImage:[self getImageWithColor:action.backgroundHighlightColor] forState:UIControlStateHighlighted];
    if (action.backgroundHighlightColor) [self setBackgroundImage:[self ergodic:action.backgroundHighlightColor] forState:UIControlStateHighlighted];

    //: if (action.backgroundImage) [self setBackgroundImage:action.backgroundImage forState:UIControlStateNormal];
    if (action.backgroundImage) [self setBackgroundImage:action.backgroundImage forState:UIControlStateNormal];

    //: if (action.backgroundHighlightImage) [self setBackgroundImage:action.backgroundHighlightImage forState:UIControlStateHighlighted];
    if (action.backgroundHighlightImage) [self setBackgroundImage:action.backgroundHighlightImage forState:UIControlStateHighlighted];

    //: if (action.borderColor) [self setBorderColor:action.borderColor];
    if (action.borderColor) [self setBorderColor:action.borderColor];

    //: if (action.borderWidth > 0) [self setBorderWidth:action.borderWidth < (1.0f / [[UIScreen mainScreen] scale] + 0.02f) ? (1.0f / [[UIScreen mainScreen] scale] + 0.02f) : action.borderWidth]; else [self setBorderWidth:0.0f];
    if (action.borderWidth > 0) [self setBorderWidth:action.borderWidth < (1.0f / [[UIScreen mainScreen] scale] + 0.02f) ? (1.0f / [[UIScreen mainScreen] scale] + 0.02f) : action.borderWidth]; else [self setBorderWidth:0.0f];

    //: if (action.image) [self setImage:action.image forState:UIControlStateNormal];
    if (action.image) [self setImage:action.image forState:UIControlStateNormal];

    //: if (action.highlightImage) [self setImage:action.highlightImage forState:UIControlStateHighlighted];
    if (action.highlightImage) [self setImage:action.highlightImage forState:UIControlStateHighlighted];

    //: if (action.height) [self setActionHeight:action.height];
    if (action.height) [self setTallness:action.height];

    //: if (action.cornerRadius) [self.layer setCornerRadius:action.cornerRadius];
    if (action.cornerRadius) [self.layer setCornerRadius:action.cornerRadius];

    //: [self setImageEdgeInsets:action.imageEdgeInsets];
    [self setImageEdgeInsets:action.imageEdgeInsets];

    //: [self setTitleEdgeInsets:action.titleEdgeInsets];
    [self setTitleEdgeInsets:action.titleEdgeInsets];

    //: if (action.borderPosition & LEEActionBorderPositionTop &&
    if (action.borderPosition & LEEActionBorderPositionTop &&
        //: action.borderPosition & LEEActionBorderPositionBottom &&
        action.borderPosition & LEEActionBorderPositionBottom &&
        //: action.borderPosition & LEEActionBorderPositionLeft &&
        action.borderPosition & LEEActionBorderPositionLeft &&
        //: action.borderPosition & LEEActionBorderPositionRight) {
        action.borderPosition & LEEActionBorderPositionRight) {

        //: self.layer.borderWidth = action.borderWidth;
        self.layer.borderWidth = action.borderWidth;

        //: self.layer.borderColor = action.borderColor.CGColor;
        self.layer.borderColor = action.borderColor.CGColor;

        //: [self removeTopBorder];
        [self with];

        //: [self removeBottomBorder];
        [self pictureRefer];

        //: [self removeLeftBorder];
        [self soapBubbleFile];

        //: [self removeRightBorder];
        [self cur];

    //: } else {
    } else {

        //: self.layer.borderWidth = 0.0f;
        self.layer.borderWidth = 0.0f;

        //: self.layer.borderColor = [UIColor clearColor].CGColor;
        self.layer.borderColor = [UIColor clearColor].CGColor;

        //: if (action.borderPosition & LEEActionBorderPositionTop) [self addTopBorder]; else [self removeTopBorder];
        if (action.borderPosition & LEEActionBorderPositionTop) [self messageAt]; else [self with];

        //: if (action.borderPosition & LEEActionBorderPositionBottom) [self addBottomBorder]; else [self removeBottomBorder];
        if (action.borderPosition & LEEActionBorderPositionBottom) [self option]; else [self pictureRefer];

        //: if (action.borderPosition & LEEActionBorderPositionLeft) [self addLeftBorder]; else [self removeLeftBorder];
        if (action.borderPosition & LEEActionBorderPositionLeft) [self bar]; else [self soapBubbleFile];

        //: if (action.borderPosition & LEEActionBorderPositionRight) [self addRightBorder]; else [self removeRightBorder];
        if (action.borderPosition & LEEActionBorderPositionRight) [self maxBorder]; else [self cur];
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: action.updateBlock = ^(LEEAction *act) {
    action.updateBlock = ^(TempAction *act) {

        //: if (weakSelf) weakSelf.action = act;
        if (weakSelf) weakSelf.action = act;
    //: };
    };

}

//: - (void)setActionHeight:(CGFloat)height{
- (void)setTallness:(CGFloat)height{

    //: BOOL isChange = self.frame.size.height == height ? NO : YES;
    BOOL isChange = self.frame.size.height == height ? NO : YES;

    //: CGRect buttonFrame = self.frame;
    CGRect buttonFrame = self.frame;

    //: buttonFrame.size.height = height;
    buttonFrame.size.height = height;

    //: self.frame = buttonFrame;
    self.frame = buttonFrame;

    //: if (isChange) {
    if (isChange) {

        //: if (self.heightChangedBlock) self.heightChangedBlock();
        if (self.heightChangedBlock) self.heightChangedBlock();
    }

}

//: - (void)layoutSubviews{
- (void)layoutSubviews{

    //: [super layoutSubviews];
    [super layoutSubviews];

    //: if (_topLayer) _topLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.borderWidth);
    if (_topLayer) _topLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.borderWidth);

    //: if (_bottomLayer) _bottomLayer.frame = CGRectMake(0, self.frame.size.height - self.borderWidth, self.frame.size.width, self.borderWidth);
    if (_bottomLayer) _bottomLayer.frame = CGRectMake(0, self.frame.size.height - self.borderWidth, self.frame.size.width, self.borderWidth);

    //: if (_leftLayer) _leftLayer.frame = CGRectMake(0, 0, self.borderWidth, self.frame.size.height);
    if (_leftLayer) _leftLayer.frame = CGRectMake(0, 0, self.borderWidth, self.frame.size.height);

    //: if (_rightLayer) _rightLayer.frame = CGRectMake(self.frame.size.width - self.borderWidth, 0, self.borderWidth, self.frame.size.height);
    if (_rightLayer) _rightLayer.frame = CGRectMake(self.frame.size.width - self.borderWidth, 0, self.borderWidth, self.frame.size.height);
}

//: - (void)addTopBorder{
- (void)messageAt{
    //: [self removeTopBorder];
    [self with];
    //: [self.layer addSublayer:self.topLayer];
    [self.layer addSublayer:self.topLayer];
}

//: - (void)addBottomBorder{
- (void)option{
    //: [self removeBottomBorder];
    [self pictureRefer];
    //: [self.layer addSublayer:self.bottomLayer];
    [self.layer addSublayer:self.bottomLayer];
}

//: - (void)addLeftBorder{
- (void)bar{
    //: [self removeLeftBorder];
    [self soapBubbleFile];
    //: [self.layer addSublayer:self.leftLayer];
    [self.layer addSublayer:self.leftLayer];
}

//: - (void)addRightBorder{
- (void)maxBorder{
    //: [self removeRightBorder];
    [self cur];
    //: [self.layer addSublayer:self.rightLayer];
    [self.layer addSublayer:self.rightLayer];
}

//: - (void)removeTopBorder{
- (void)with{

    //: if (_topLayer) [_topLayer removeFromSuperlayer]; _topLayer = nil;
    if (_topLayer) [_topLayer removeFromSuperlayer]; _topLayer = nil;
}

//: - (void)removeBottomBorder{
- (void)pictureRefer{

    //: if (_bottomLayer) [_bottomLayer removeFromSuperlayer]; _bottomLayer = nil;
    if (_bottomLayer) [_bottomLayer removeFromSuperlayer]; _bottomLayer = nil;
}

//: - (void)removeLeftBorder{
- (void)soapBubbleFile{

    //: if (_leftLayer) [_leftLayer removeFromSuperlayer]; _leftLayer = nil;
    if (_leftLayer) [_leftLayer removeFromSuperlayer]; _leftLayer = nil;
}

//: - (void)removeRightBorder{
- (void)cur{

    //: if (_rightLayer) [_rightLayer removeFromSuperlayer]; _rightLayer = nil;
    if (_rightLayer) [_rightLayer removeFromSuperlayer]; _rightLayer = nil;
}

//: - (CALayer *)createLayer{
- (CALayer *)range{

    //: CALayer *layer = [CALayer layer];
    CALayer *layer = [CALayer layer];

    //: layer.backgroundColor = self.borderColor.CGColor;
    layer.backgroundColor = self.borderColor.CGColor;

    //: return layer;
    return layer;
}

//: - (CALayer *)topLayer{
- (CALayer *)topLayer{

    //: if (!_topLayer) _topLayer = [self createLayer];
    if (!_topLayer) _topLayer = [self range];

    //: return _topLayer;
    return _topLayer;
}

//: - (CALayer *)bottomLayer{
- (CALayer *)bottomLayer{

    //: if (!_bottomLayer) _bottomLayer = [self createLayer];
    if (!_bottomLayer) _bottomLayer = [self range];

    //: return _bottomLayer;
    return _bottomLayer;
}

//: - (CALayer *)leftLayer{
- (CALayer *)leftLayer{

    //: if (!_leftLayer) _leftLayer = [self createLayer];
    if (!_leftLayer) _leftLayer = [self range];

    //: return _leftLayer;
    return _leftLayer;
}

//: - (CALayer *)rightLayer{
- (CALayer *)rightLayer{

    //: if (!_rightLayer) _rightLayer = [self createLayer];
    if (!_rightLayer) _rightLayer = [self range];

    //: return _rightLayer;
    return _rightLayer;
}

//: - (UIImage *)getImageWithColor:(UIColor *)color {
- (UIImage *)ergodic:(UIColor *)color {

    //: CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);

    //: UIGraphicsBeginImageContext(rect.size);
    UIGraphicsBeginImageContext(rect.size);

    //: CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextRef context = UIGraphicsGetCurrentContext();

    //: CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextSetFillColorWithColor(context, [color CGColor]);

    //: CGContextFillRect(context, rect);
    CGContextFillRect(context, rect);

    //: UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();

    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return image;
    return image;
}

//: @end
@end

//: @interface LEECustomView ()
@interface ViewColor ()

//: @property (nonatomic, strong) LEEItem *item;
@property (nonatomic, strong) DetailImage *item;

//: @property (nonatomic, strong) UIView *container;
@property (nonatomic, strong) UIView *container;

//: @property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGSize size;

//: @property (nonatomic, copy) void (^sizeChangedBlock)(void);
@property (nonatomic, copy) void (^sizeChangedBlock)(void);

//: @end
@end

//: @implementation LEECustomView
@implementation ViewColor

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _positionType = LEECustomViewPositionTypeCenter;
        _positionType = LEECustomViewPositionTypeCenter;
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: self.view = nil;
    self.view = nil;

    //: if (_container) {
    if (_container) {

        //: [_container removeObserver:self forKeyPath:@"frame"];
        [_container removeObserver:self forKeyPath:StringFromFleshBiasData(kStr_grossName)];
        //: [_container removeObserver:self forKeyPath:@"bounds"];
        [_container removeObserver:self forKeyPath:StringFromFleshBiasData(kStr_cruConfirmTitle)];
    }
}

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{

    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];

    //: UIView *view = (UIView *)object;
    UIView *view = (UIView *)object;

    //: if ([view isEqual:self.container] && self.isAutoWidth) {
    if ([view isEqual:self.container] && self.isAutoWidth) {

        //: if ([keyPath isEqualToString:@"frame"] || [keyPath isEqualToString:@"bounds"]) {
        if ([keyPath isEqualToString:StringFromFleshBiasData(kStr_grossName)] || [keyPath isEqualToString:StringFromFleshBiasData(kStr_cruConfirmTitle)]) {

            //: for (UIView *subView in view.subviews) {
            for (UIView *subView in view.subviews) {
                //: CGRect temp = subView.frame;
                CGRect temp = subView.frame;
                //: temp.size.width = view.bounds.size.width;
                temp.size.width = view.bounds.size.width;
                //: subView.frame = temp;
                subView.frame = temp;
            }
        }
    }

    //: if ([view isEqual:self.view]) {
    if ([view isEqual:self.view]) {

        //: if ([keyPath isEqualToString:@"frame"]) {
        if ([keyPath isEqualToString:StringFromFleshBiasData(kStr_grossName)]) {

            //: if (self.isAutoWidth) {
            if (self.isAutoWidth) {
                //: self.size = CGSizeMake(view.frame.size.width, self.size.height);
                self.size = CGSizeMake(view.frame.size.width, self.size.height);
            }

            //: if (!__CGSizeEqualToSize(self.size, view.frame.size)) {
            if (!__CGSizeEqualToSize(self.size, view.frame.size)) {

                //: self.size = view.frame.size;
                self.size = view.frame.size;

                //: [self updateContainerFrame:view];
                [self user:view];

                //: if (self.sizeChangedBlock) self.sizeChangedBlock();
                if (self.sizeChangedBlock) self.sizeChangedBlock();
            }
        }

        //: if ([keyPath isEqualToString:@"bounds"]) {
        if ([keyPath isEqualToString:StringFromFleshBiasData(kStr_cruConfirmTitle)]) {

            //: if (self.isAutoWidth) {
            if (self.isAutoWidth) {
                //: self.size = CGSizeMake(view.bounds.size.width, self.size.height);
                self.size = CGSizeMake(view.bounds.size.width, self.size.height);
            }

            //: if (!__CGSizeEqualToSize(self.size, view.bounds.size)) {
            if (!__CGSizeEqualToSize(self.size, view.bounds.size)) {

                //: self.size = view.bounds.size;
                self.size = view.bounds.size;

                //: [self updateContainerFrame:view];
                [self user:view];

                //: if (self.sizeChangedBlock) self.sizeChangedBlock();
                if (self.sizeChangedBlock) self.sizeChangedBlock();
            }
        }
    }

    //: [CATransaction commit];
    [CATransaction commit];
}

//: - (void)updateContainerFrame:(UIView *)view {
- (void)user:(UIView *)view {

    //: view.frame = view.bounds;
    view.frame = view.bounds;

    //: self.container.bounds = view.bounds;
    self.container.bounds = view.bounds;
}

//: - (UIView *)container{
- (UIView *)container{

    //: if (!_container) {
    if (!_container) {

        //: _container = [[UIView alloc] initWithFrame:CGRectZero];
        _container = [[UIView alloc] initWithFrame:CGRectZero];

        //: _container.backgroundColor = UIColor.clearColor;
        _container.backgroundColor = UIColor.clearColor;

        //: _container.clipsToBounds = true;
        _container.clipsToBounds = true;

        //: [_container addObserver: self forKeyPath: @"frame" options: NSKeyValueObservingOptionNew context: nil];
        [_container addObserver: self forKeyPath: StringFromFleshBiasData(kStr_grossName) options: NSKeyValueObservingOptionNew context: nil];
        //: [_container addObserver: self forKeyPath: @"bounds" options: NSKeyValueObservingOptionNew context: nil];
        [_container addObserver: self forKeyPath: StringFromFleshBiasData(kStr_cruConfirmTitle) options: NSKeyValueObservingOptionNew context: nil];
    }

    //: return _container;
    return _container;
}

//: - (void)setView:(UIView *)view{
- (void)setView:(UIView *)view{

    //: if (_view) {
    if (_view) {
        //: [_view removeFromSuperview];
        [_view removeFromSuperview];

        //: [_view removeObserver:self forKeyPath:@"frame"];
        [_view removeObserver:self forKeyPath:StringFromFleshBiasData(kStr_grossName)];
        //: [_view removeObserver:self forKeyPath:@"bounds"];
        [_view removeObserver:self forKeyPath:StringFromFleshBiasData(kStr_cruConfirmTitle)];
    }

    //: _view = view;
    _view = view;

    //: if (_view) {
    if (_view) {
        //: [view addObserver: self forKeyPath: @"frame" options: NSKeyValueObservingOptionNew context: nil];
        [view addObserver: self forKeyPath: StringFromFleshBiasData(kStr_grossName) options: NSKeyValueObservingOptionNew context: nil];
        //: [view addObserver: self forKeyPath: @"bounds" options: NSKeyValueObservingOptionNew context: nil];
        [view addObserver: self forKeyPath: StringFromFleshBiasData(kStr_cruConfirmTitle) options: NSKeyValueObservingOptionNew context: nil];

        //: [view layoutIfNeeded];
        [view layoutIfNeeded];
        //: [view layoutSubviews];
        [view layoutSubviews];

        //: _size = view.frame.size;
        _size = view.frame.size;

        //: [self updateContainerFrame:view];
        [self user:view];

        //: [self.container addSubview:view];
        [self.container addSubview:view];

        // 保证使用AutoLayout的自定义视图在容器视图内的位置正确
        //: if (view.translatesAutoresizingMaskIntoConstraints == NO) {
        if (view.translatesAutoresizingMaskIntoConstraints == NO) {
            {
                //: NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view
                NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view
                                                                              //: attribute:NSLayoutAttributeCenterX
                                                                              attribute:NSLayoutAttributeCenterX
                                                                              //: relatedBy:NSLayoutRelationEqual
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 //: toItem:self.container
                                                                                 toItem:self.container
                                                                              //: attribute:NSLayoutAttributeCenterX
                                                                              attribute:NSLayoutAttributeCenterX
                                                                             //: multiplier:1
                                                                             multiplier:1
                                                                               //: constant:0];
                                                                               constant:0];
                //: [self.container addConstraint: constraint];
                [self.container addConstraint: constraint];
            }
            {
                //: NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view
                NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:view
                                                                              //: attribute:NSLayoutAttributeCenterY
                                                                              attribute:NSLayoutAttributeCenterY
                                                                              //: relatedBy:NSLayoutRelationEqual
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 //: toItem:self.container
                                                                                 toItem:self.container
                                                                              //: attribute:NSLayoutAttributeCenterY
                                                                              attribute:NSLayoutAttributeCenterY
                                                                             //: multiplier:1
                                                                             multiplier:1
                                                                               //: constant:0];
                                                                               constant:0];
                //: [self.container addConstraint: constraint];
                [self.container addConstraint: constraint];
            }
        }
    }
}

//: @end
@end

//: @interface LEEPresentationWindow: LEEPresentation
@interface BottomPresentation: ImageMessage

//: @property (nonatomic, assign) UIWindowLevel windowLevel;
@property (nonatomic, assign) UIWindowLevel windowLevel;

//: @end
@end

//: @interface LEEPresentationViewController: LEEPresentation
@interface EmptyPresentation: ImageMessage

//: @property (nonatomic, weak) UIViewController *viewController;
@property (nonatomic, weak) UIViewController *viewController;

//: @end
@end

//: @implementation LEEPresentation
@implementation ImageMessage

//: + (LEEPresentationWindow *)windowLevel:(UIWindowLevel)level {
+ (BottomPresentation *)mild:(UIWindowLevel)level {
    //: LEEPresentationWindow *presentation = [[LEEPresentationWindow alloc] init];
    BottomPresentation *presentation = [[BottomPresentation alloc] init];
    //: presentation.windowLevel = level;
    presentation.windowLevel = level;
    //: return presentation;
    return presentation;
}

//: + (LEEPresentationViewController *)viewController:(UIViewController *)controller {
+ (EmptyPresentation *)view:(UIViewController *)controller {
    //: LEEPresentationViewController *presentation = [[LEEPresentationViewController alloc] init];
    EmptyPresentation *presentation = [[EmptyPresentation alloc] init];
    //: presentation.viewController = controller;
    presentation.viewController = controller;
    //: return presentation;
    return presentation;
}

//: @end
@end

//: @implementation LEEPresentationWindow
@implementation BottomPresentation

//: @end
@end

//: @implementation LEEPresentationViewController
@implementation EmptyPresentation

//: @end
@end


//: @interface LEEBaseViewController ()<UIGestureRecognizerDelegate>
@interface SelectedViewController ()<UIGestureRecognizerDelegate>

//: @property (nonatomic, strong) LEEBaseConfigModel *config;
@property (nonatomic, strong) MessageMargin *config;

//: @property (nonatomic, strong) UIWindow *currentKeyWindow;
@property (nonatomic, strong) UIWindow *currentKeyWindow;

//: @property (nonatomic, strong) UIVisualEffectView *backgroundVisualEffectView;
@property (nonatomic, strong) UIVisualEffectView *backgroundVisualEffectView;

//: @property (nonatomic, assign) LEEScreenOrientationType orientationType;
@property (nonatomic, assign) LEEScreenOrientationType orientationType;

//: @property (nonatomic, assign) BOOL isShowing;
@property (nonatomic, assign) BOOL isShowing;

//: @property (nonatomic, assign) BOOL isClosing;
@property (nonatomic, assign) BOOL isClosing;

//: @property (nonatomic, copy) void (^openFinishBlock)(void);
@property (nonatomic, copy) void (^openFinishBlock)(void);

//: @property (nonatomic, copy) void (^closeFinishBlock)(void);
@property (nonatomic, copy) void (^closeFinishBlock)(void);

//: @end
@end

//: @implementation LEEBaseViewController
@implementation SelectedViewController

//: - (void)dealloc{
- (void)dealloc{

    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: _config = nil;
    _config = nil;

    //: _currentKeyWindow = nil;
    _currentKeyWindow = nil;

    //: _backgroundVisualEffectView = nil;
    _backgroundVisualEffectView = nil;
}

//: - (void)viewDidLoad{
- (void)viewDidLoad{

    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.edgesForExtendedLayout = UIRectEdgeNone;
    self.edgesForExtendedLayout = UIRectEdgeNone;

    //: self.extendedLayoutIncludesOpaqueBars = NO;
    self.extendedLayoutIncludesOpaqueBars = NO;

    //: if (self.config.modelBackgroundStyle == LEEBackgroundStyleBlur) {
    if (self.config.modelBackgroundStyle == LEEBackgroundStyleBlur) {

        //: self.backgroundVisualEffectView = [[UIVisualEffectView alloc] initWithEffect:nil];
        self.backgroundVisualEffectView = [[UIVisualEffectView alloc] initWithEffect:nil];

        //: self.backgroundVisualEffectView.frame = self.view.frame;
        self.backgroundVisualEffectView.frame = self.view.frame;

        //: [self.view addSubview:self.backgroundVisualEffectView];
        [self.view addSubview:self.backgroundVisualEffectView];
    }

    //: self.view.backgroundColor = [self.config.modelBackgroundColor colorWithAlphaComponent:0.0f];
    self.view.backgroundColor = [self.config.modelBackgroundColor colorWithAlphaComponent:0.0f];

    //: self.orientationType = CGRectGetHeight(self.view.frame) > CGRectGetWidth(self.view.frame) ? LEEScreenOrientationTypeVertical : LEEScreenOrientationTypeHorizontal;
    self.orientationType = CGRectGetHeight(self.view.frame) > CGRectGetWidth(self.view.frame) ? LEEScreenOrientationTypeVertical : LEEScreenOrientationTypeHorizontal;
}

//: - (void)viewWillLayoutSubviews{
- (void)viewWillLayoutSubviews{

    //: [super viewWillLayoutSubviews];
    [super viewWillLayoutSubviews];

    //: if (self.backgroundVisualEffectView) self.backgroundVisualEffectView.frame = self.view.frame;
    if (self.backgroundVisualEffectView) self.backgroundVisualEffectView.frame = self.view.frame;
}

//: - (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{

    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];

    //: self.orientationType = size.height > size.width ? LEEScreenOrientationTypeVertical : LEEScreenOrientationTypeHorizontal;
    self.orientationType = size.height > size.width ? LEEScreenOrientationTypeVertical : LEEScreenOrientationTypeHorizontal;
}

//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];

    //: if (self.config.modelIsClickBackgroundClose) [self closeAnimationsWithCompletionBlock:nil];
    if (self.config.modelIsClickBackgroundClose) [self imageInput:nil];
}

//: #pragma mark start animations
#pragma mark start animations

//: - (void)showAnimationsWithCompletionBlock:(void (^)(void))completionBlock{
- (void)arrayAt:(void (^)(void))completionBlock{

    //: [self.currentKeyWindow endEditing:YES];
    [self.currentKeyWindow endEditing:YES];

    //: [self.view setUserInteractionEnabled:NO];
    [self.view setUserInteractionEnabled:NO];

    //: [self.view layoutIfNeeded];
    [self.view layoutIfNeeded];
}

//: #pragma mark close animations
#pragma mark close animations

//: - (void)closeAnimationsWithCompletionBlock:(void (^)(void))completionBlock{
- (void)imageInput:(void (^)(void))completionBlock{

    //: [[LEEAlert shareManager].leeWindow endEditing:YES];
    [[GraduateTemp video].leeWindow endEditing:YES];
}

//: #pragma mark LazyLoading
#pragma mark LazyLoading

//: - (UIWindow *)currentKeyWindow{
- (UIWindow *)currentKeyWindow{

    //: if (!_currentKeyWindow) _currentKeyWindow = [LEEAlert shareManager].mainWindow;
    if (!_currentKeyWindow) _currentKeyWindow = [GraduateTemp video].mainWindow;

    //: if (!_currentKeyWindow) _currentKeyWindow = [UIApplication sharedApplication].windows.firstObject;
    if (!_currentKeyWindow) _currentKeyWindow = [UIApplication sharedApplication].windows.firstObject;

    //: if (_currentKeyWindow.windowLevel != UIWindowLevelNormal) {
    if (_currentKeyWindow.windowLevel != UIWindowLevelNormal) {

        //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"windowLevel == %ld AND hidden == 0 ", UIWindowLevelNormal];
        NSPredicate *predicate = [NSPredicate predicateWithFormat:StringFromFleshBiasData(kStr_blueHarshData), UIWindowLevelNormal];

        //: _currentKeyWindow = [[UIApplication sharedApplication].windows filteredArrayUsingPredicate:predicate].firstObject;
        _currentKeyWindow = [[UIApplication sharedApplication].windows filteredArrayUsingPredicate:predicate].firstObject;
    }

    //: if (_currentKeyWindow) if (![LEEAlert shareManager].mainWindow) [LEEAlert shareManager].mainWindow = _currentKeyWindow;
    if (_currentKeyWindow) if (![GraduateTemp video].mainWindow) [GraduateTemp video].mainWindow = _currentKeyWindow;

    //: return _currentKeyWindow;
    return _currentKeyWindow;
}

//: #pragma mark - 旋转
#pragma mark - 旋转

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{

    //: return self.config.modelIsShouldAutorotate;
    return self.config.modelIsShouldAutorotate;
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{

    //: return self.config.modelSupportedInterfaceOrientations;
    return self.config.modelSupportedInterfaceOrientations;
}

//: #pragma mark - 状态栏
#pragma mark - 状态栏

//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {

    //: return self.config.modelStatusBarStyle;
    return self.config.modelStatusBarStyle;
}

//: @end
@end

//: #pragma mark - Alert
#pragma mark - ButtonRecent

//: @interface LEEAlertViewController ()
@interface ThanFrameViewController ()

//: @property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UIView *containerView;

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;

//: @property (nonatomic, strong) UIScrollView *itemsScrollView;
@property (nonatomic, strong) UIScrollView *itemsScrollView;

//: @property (nonatomic, strong) UIScrollView *actionsScrollView;
@property (nonatomic, strong) UIScrollView *actionsScrollView;

//: @property (nonatomic, strong) NSMutableArray <id>*alertItemArray;
@property (nonatomic, strong) NSMutableArray <id>*alertItemArray;

//: @property (nonatomic, strong) NSMutableArray <LEEActionButton *>*alertActionArray;
@property (nonatomic, strong) NSMutableArray <AggressionControl *>*alertActionArray;

//: @end
@end

//: @implementation LEEAlertViewController
@implementation ThanFrameViewController
{
    //: CGRect keyboardFrame;
    CGRect keyboardFrame;
    //: BOOL isShowingKeyboard;
    BOOL isShowingKeyboard;
}

//: - (void)dealloc{
- (void)dealloc{

    //: _containerView = nil;
    _containerView = nil;

    //: _contentView = nil;
    _contentView = nil;

    //: _itemsScrollView = nil;
    _itemsScrollView = nil;

    //: _actionsScrollView = nil;
    _actionsScrollView = nil;

    //: _alertItemArray = nil;
    _alertItemArray = nil;

    //: _alertActionArray = nil;
    _alertActionArray = nil;
}

//: - (void)viewDidLoad{
- (void)viewDidLoad{

    //: [super viewDidLoad];
    [super viewDidLoad];

    //: [self configNotification];
    [self actionNotification];

    //: [self configAlert];
    [self frameAlert];
}

//: - (void)configNotification{
- (void)actionNotification{

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChangeFrame:) name:UIKeyboardWillChangeFrameNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(colorLab:) name:UIKeyboardWillChangeFrameNotification object:nil];
}

//: - (void)keyboardWillChangeFrame:(NSNotification *)notify{
- (void)colorLab:(NSNotification *)notify{

    //: BOOL local = YES;
    BOOL local = YES;

    //: if (@available(iOS 9.0, *)) {
    if (@available(iOS 9.0, *)) {

        //: local = [[[notify userInfo] objectForKey:UIKeyboardIsLocalUserInfoKey] boolValue];
        local = [[[notify userInfo] objectForKey:UIKeyboardIsLocalUserInfoKey] boolValue];
    }

    //: if (self.config.modelIsAvoidKeyboard && local) {
    if (self.config.modelIsAvoidKeyboard && local) {

        //: double duration = [[[notify userInfo] objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
        double duration = [[[notify userInfo] objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];

        //: UIViewAnimationCurve curve = [[[notify userInfo] objectForKey:UIKeyboardAnimationCurveUserInfoKey] intValue];
        UIViewAnimationCurve curve = [[[notify userInfo] objectForKey:UIKeyboardAnimationCurveUserInfoKey] intValue];

        //: keyboardFrame = [[[notify userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
        keyboardFrame = [[[notify userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];

        //: isShowingKeyboard = roundf(keyboardFrame.origin.y) < [[UIScreen mainScreen] bounds].size.height;
        isShowingKeyboard = roundf(keyboardFrame.origin.y) < [[UIScreen mainScreen] bounds].size.height;

        //: [UIView beginAnimations:@"keyboardWillChangeFrame" context:NULL];
        [UIView beginAnimations:StringFromFleshBiasData(kStr_grocerText) context:NULL];

        //: [UIView setAnimationDuration:duration];
        [UIView setAnimationDuration:duration];

        //: [UIView setAnimationCurve:curve];
        [UIView setAnimationCurve:curve];

        //: [self updateAlertLayout];
        [self add];

        //: [UIView commitAnimations];
        [UIView commitAnimations];
    }

}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{

    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: [self updateAlertLayout];
    [self add];
}

//: - (void)viewSafeAreaInsetsDidChange{
- (void)viewSafeAreaInsetsDidChange{

    //: [super viewSafeAreaInsetsDidChange];
    [super viewSafeAreaInsetsDidChange];

    //: [self updateAlertLayout];
    [self add];
}

//: - (void)updateAlertLayout{
- (void)add{

    //: [self updateAlertLayoutWithViewWidth:CGRectGetWidth(self.view.frame) ViewHeight:CGRectGetHeight(self.view.frame)];
    [self tag:CGRectGetWidth(self.view.frame) part:CGRectGetHeight(self.view.frame)];
}

//: - (void)updateAlertLayoutWithViewWidth:(CGFloat)viewWidth ViewHeight:(CGFloat)viewHeight{
- (void)tag:(CGFloat)viewWidth part:(CGFloat)viewHeight{

    //: CGFloat alertViewMaxWidth = self.config.modelMaxWidthBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));
    CGFloat alertViewMaxWidth = self.config.modelMaxWidthBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));

    //: CGFloat alertViewMaxHeight = self.config.modelMaxHeightBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));
    CGFloat alertViewMaxHeight = self.config.modelMaxHeightBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));

    //: CGPoint offset = self.config.modelAlertCenterOffset;
    CGPoint offset = self.config.modelAlertCenterOffset;

    // 解决设置 transform 导致触发layoutsubviews的问题 (动画效果异常)
    //: CGAffineTransform transform = self.containerView.transform;
    CGAffineTransform transform = self.containerView.transform;

    //: self.containerView.transform = CGAffineTransformIdentity;
    self.containerView.transform = CGAffineTransformIdentity;

    //: if (isShowingKeyboard) {
    if (isShowingKeyboard) {

        //: if (keyboardFrame.size.height) {
        if (keyboardFrame.size.height) {

            // 处理非全屏时当前视图在窗口中的位置 解决键盘遮挡范围计算问题
            //: CGRect current = [self.view convertRect:self.view.bounds toView:self.view.window];
            CGRect current = [self.view convertRect:self.view.bounds toView:self.view.window];

            //: CGFloat keyboardY = keyboardFrame.origin.y - current.origin.y;
            CGFloat keyboardY = keyboardFrame.origin.y - current.origin.y;

            //: alertViewMaxHeight = keyboardY - 20;
            alertViewMaxHeight = keyboardY - 20;

            //: if (@available(iOS 11.0, *)) {
            if (@available(iOS 11.0, *)) {
                //: alertViewMaxHeight -= self.view.safeAreaInsets.top;
                alertViewMaxHeight -= self.view.safeAreaInsets.top;
            }

            //: CGRect contentViewFrame = self.contentView.frame;
            CGRect contentViewFrame = self.contentView.frame;

            //: contentViewFrame.size.width = alertViewMaxWidth;
            contentViewFrame.size.width = alertViewMaxWidth;

            //: if (self.config.modelIsActionFollowScrollEnabled) {
            if (self.config.modelIsActionFollowScrollEnabled) {

                //: CGFloat itemsHeight = [self updateItemsLayoutWithMaxWidth:alertViewMaxWidth];
                CGFloat itemsHeight = [self blue:alertViewMaxWidth];

                //: contentViewFrame.size.height = itemsHeight > alertViewMaxHeight ? alertViewMaxHeight : itemsHeight;
                contentViewFrame.size.height = itemsHeight > alertViewMaxHeight ? alertViewMaxHeight : itemsHeight;

                //: self.itemsScrollView.frame = contentViewFrame;
                self.itemsScrollView.frame = contentViewFrame;

                //: self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);
                self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);

                //: self.actionsScrollView.frame = CGRectMake(0, contentViewFrame.size.height, alertViewMaxWidth, 0);
                self.actionsScrollView.frame = CGRectMake(0, contentViewFrame.size.height, alertViewMaxWidth, 0);

                //: self.actionsScrollView.contentSize = CGSizeZero;
                self.actionsScrollView.contentSize = CGSizeZero;

            //: } else {
            } else {

                //: CGFloat itemsHeight = [self updateItemsLayoutWithMaxWidth:alertViewMaxWidth];
                CGFloat itemsHeight = [self blue:alertViewMaxWidth];

                //: CGFloat actionsHeight = [self updateActionsLayoutWithInitialPosition:0 MaxWidth:alertViewMaxWidth];
                CGFloat actionsHeight = [self connect:0 tableWith:alertViewMaxWidth];

                //: self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);
                self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);

                //: self.actionsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, actionsHeight);
                self.actionsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, actionsHeight);

                //: if ((itemsHeight + actionsHeight) > alertViewMaxHeight) {
                if ((itemsHeight + actionsHeight) > alertViewMaxHeight) {

                    //: contentViewFrame.size.height = alertViewMaxHeight;
                    contentViewFrame.size.height = alertViewMaxHeight;

                    //: CGFloat maxActionsHeight = alertViewMaxHeight * 0.5;
                    CGFloat maxActionsHeight = alertViewMaxHeight * 0.5;

                    //: actionsHeight = actionsHeight < maxActionsHeight ? actionsHeight : maxActionsHeight;
                    actionsHeight = actionsHeight < maxActionsHeight ? actionsHeight : maxActionsHeight;

                    //: CGFloat maxItemsHeight = alertViewMaxHeight - actionsHeight;
                    CGFloat maxItemsHeight = alertViewMaxHeight - actionsHeight;

                    //: itemsHeight = itemsHeight < maxItemsHeight ? itemsHeight : maxItemsHeight;
                    itemsHeight = itemsHeight < maxItemsHeight ? itemsHeight : maxItemsHeight;

                    //: actionsHeight = alertViewMaxHeight - itemsHeight;
                    actionsHeight = alertViewMaxHeight - itemsHeight;

                    //: self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);
                    self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);

                    //: self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);
                    self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);

                //: } else {
                } else {

                    //: contentViewFrame.size.height = itemsHeight + actionsHeight;
                    contentViewFrame.size.height = itemsHeight + actionsHeight;

                    //: self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);
                    self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);

                    //: self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);
                    self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);
                }
            }

            //: [self.itemsScrollView layoutIfNeeded];
            [self.itemsScrollView layoutIfNeeded];

            //: [self.actionsScrollView layoutIfNeeded];
            [self.actionsScrollView layoutIfNeeded];

            //: self.contentView.frame = contentViewFrame;
            self.contentView.frame = contentViewFrame;

            //: CGFloat tempAlertViewY = keyboardY - contentViewFrame.size.height - 10;
            CGFloat tempAlertViewY = keyboardY - contentViewFrame.size.height - 10;

            //: CGFloat originalAlertViewY = (viewHeight - contentViewFrame.size.height) * 0.5f + offset.y;
            CGFloat originalAlertViewY = (viewHeight - contentViewFrame.size.height) * 0.5f + offset.y;

            //: CGRect containerFrame = self.containerView.frame;
            CGRect containerFrame = self.containerView.frame;

            //: containerFrame.size.width = contentViewFrame.size.width;
            containerFrame.size.width = contentViewFrame.size.width;

            //: containerFrame.size.height = contentViewFrame.size.height;
            containerFrame.size.height = contentViewFrame.size.height;

            //: containerFrame.origin.x = (viewWidth - contentViewFrame.size.width) * 0.5f + offset.x;
            containerFrame.origin.x = (viewWidth - contentViewFrame.size.width) * 0.5f + offset.x;

            //: containerFrame.origin.y = tempAlertViewY < originalAlertViewY ? tempAlertViewY : originalAlertViewY;
            containerFrame.origin.y = tempAlertViewY < originalAlertViewY ? tempAlertViewY : originalAlertViewY;

            //: self.containerView.frame = containerFrame;
            self.containerView.frame = containerFrame;

            //: [self.itemsScrollView scrollRectToVisible:[self findFirstResponder:self.itemsScrollView].frame animated:YES];
            [self.itemsScrollView scrollRectToVisible:[self outMax:self.itemsScrollView].frame animated:YES];
        }

    //: } else {
    } else {

        //: alertViewMaxHeight -= ((offset.y) < 0 ? (-(offset.y)) : (offset.y));
        alertViewMaxHeight -= ((offset.y) < 0 ? (-(offset.y)) : (offset.y));

        //: CGRect contentViewFrame = self.contentView.frame;
        CGRect contentViewFrame = self.contentView.frame;

        //: contentViewFrame.size.width = alertViewMaxWidth;
        contentViewFrame.size.width = alertViewMaxWidth;

        //: if (self.config.modelIsActionFollowScrollEnabled) {
        if (self.config.modelIsActionFollowScrollEnabled) {

            //: CGFloat itemsHeight = [self updateItemsLayoutWithMaxWidth:alertViewMaxWidth];
            CGFloat itemsHeight = [self blue:alertViewMaxWidth];

            //: contentViewFrame.size.height = itemsHeight > alertViewMaxHeight ? alertViewMaxHeight : itemsHeight;
            contentViewFrame.size.height = itemsHeight > alertViewMaxHeight ? alertViewMaxHeight : itemsHeight;

            //: self.itemsScrollView.frame = contentViewFrame;
            self.itemsScrollView.frame = contentViewFrame;

            //: self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);
            self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);

            //: self.actionsScrollView.frame = CGRectMake(0, contentViewFrame.size.height, alertViewMaxWidth, 0);
            self.actionsScrollView.frame = CGRectMake(0, contentViewFrame.size.height, alertViewMaxWidth, 0);

            //: self.actionsScrollView.contentSize = CGSizeZero;
            self.actionsScrollView.contentSize = CGSizeZero;

        //: } else {
        } else {

            //: CGFloat itemsHeight = [self updateItemsLayoutWithMaxWidth:alertViewMaxWidth];
            CGFloat itemsHeight = [self blue:alertViewMaxWidth];

            //: CGFloat actionsHeight = [self updateActionsLayoutWithInitialPosition:0 MaxWidth:alertViewMaxWidth];
            CGFloat actionsHeight = [self connect:0 tableWith:alertViewMaxWidth];

            //: self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);
            self.itemsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, itemsHeight);

            //: self.actionsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, actionsHeight);
            self.actionsScrollView.contentSize = CGSizeMake(alertViewMaxWidth, actionsHeight);

            //: if ((itemsHeight + actionsHeight) > alertViewMaxHeight) {
            if ((itemsHeight + actionsHeight) > alertViewMaxHeight) {

                //: contentViewFrame.size.height = alertViewMaxHeight;
                contentViewFrame.size.height = alertViewMaxHeight;

                //: CGFloat maxActionsHeight = alertViewMaxHeight * 0.5;
                CGFloat maxActionsHeight = alertViewMaxHeight * 0.5;

                //: actionsHeight = actionsHeight < maxActionsHeight ? actionsHeight : maxActionsHeight;
                actionsHeight = actionsHeight < maxActionsHeight ? actionsHeight : maxActionsHeight;

                //: CGFloat maxItemsHeight = alertViewMaxHeight - actionsHeight;
                CGFloat maxItemsHeight = alertViewMaxHeight - actionsHeight;

                //: itemsHeight = itemsHeight < maxItemsHeight ? itemsHeight : maxItemsHeight;
                itemsHeight = itemsHeight < maxItemsHeight ? itemsHeight : maxItemsHeight;

                //: actionsHeight = alertViewMaxHeight - itemsHeight;
                actionsHeight = alertViewMaxHeight - itemsHeight;

                //: self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);
                self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);

                //: self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);
                self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);

            //: } else {
            } else {

                //: contentViewFrame.size.height = itemsHeight + actionsHeight;
                contentViewFrame.size.height = itemsHeight + actionsHeight;

                //: self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);
                self.itemsScrollView.frame = CGRectMake(0, 0, alertViewMaxWidth, itemsHeight);

                //: self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);
                self.actionsScrollView.frame = CGRectMake(0, itemsHeight, alertViewMaxWidth, actionsHeight);
            }
        }

        //: [self.itemsScrollView layoutIfNeeded];
        [self.itemsScrollView layoutIfNeeded];

        //: [self.actionsScrollView layoutIfNeeded];
        [self.actionsScrollView layoutIfNeeded];

        //: self.contentView.frame = contentViewFrame;
        self.contentView.frame = contentViewFrame;

        //: CGRect containerFrame = self.containerView.frame;
        CGRect containerFrame = self.containerView.frame;

        //: containerFrame.size.width = contentViewFrame.size.width;
        containerFrame.size.width = contentViewFrame.size.width;

        //: containerFrame.size.height = contentViewFrame.size.height;
        containerFrame.size.height = contentViewFrame.size.height;

        //: containerFrame.origin.x = (viewWidth - alertViewMaxWidth) * 0.5f + offset.x;
        containerFrame.origin.x = (viewWidth - alertViewMaxWidth) * 0.5f + offset.x;

        //: containerFrame.origin.y = (viewHeight - contentViewFrame.size.height) * 0.5f + offset.y;
        containerFrame.origin.y = (viewHeight - contentViewFrame.size.height) * 0.5f + offset.y;

        //: self.containerView.frame = containerFrame;
        self.containerView.frame = containerFrame;
    }

    //: self.containerView.transform = transform;
    self.containerView.transform = transform;
}

//: - (CGFloat)updateItemsLayoutWithMaxWidth:(CGFloat)maxWidth{
- (CGFloat)blue:(CGFloat)maxWidth{

    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];

    //: __block CGFloat finalHeight = 0.0f;
    __block CGFloat finalHeight = 0.0f;

    //: [self.alertItemArray enumerateObjectsUsingBlock:^(id _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.alertItemArray enumerateObjectsUsingBlock:^(id _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {

        //: if (idx == 0) finalHeight += self.config.modelHeaderInsets.top;
        if (idx == 0) finalHeight += self.config.modelHeaderInsets.top;

        //: if ([item isKindOfClass:[UIView class]]) {
        if ([item isKindOfClass:[UIView class]]) {

            //: LEEItemView *view = (LEEItemView *)item;
            ContentView *view = (ContentView *)item;

            //: CGRect viewFrame = view.frame;
            CGRect viewFrame = view.frame;

            //: viewFrame.origin.x = self.config.modelHeaderInsets.left + view.item.insets.left + ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left;
            viewFrame.origin.x = self.config.modelHeaderInsets.left + view.item.insets.left + ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left;

            //: viewFrame.origin.y = finalHeight + view.item.insets.top;
            viewFrame.origin.y = finalHeight + view.item.insets.top;

            //: viewFrame.size.width = maxWidth - viewFrame.origin.x - self.config.modelHeaderInsets.right - view.item.insets.right - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).right;
            viewFrame.size.width = maxWidth - viewFrame.origin.x - self.config.modelHeaderInsets.right - view.item.insets.right - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).right;

            //: if ([item isKindOfClass:UILabel.class]) viewFrame.size.height = [item sizeThatFits:CGSizeMake(viewFrame.size.width, 0x1.fffffep+127f)].height;
            if ([item isKindOfClass:UILabel.class]) viewFrame.size.height = [item sizeThatFits:CGSizeMake(viewFrame.size.width, 0x1.fffffep+127f)].height;

            //: view.frame = viewFrame;
            view.frame = viewFrame;

            //: finalHeight += view.frame.size.height + view.item.insets.top + view.item.insets.bottom;
            finalHeight += view.frame.size.height + view.item.insets.top + view.item.insets.bottom;

        //: } else if ([item isKindOfClass:[LEECustomView class]]) {
        } else if ([item isKindOfClass:[ViewColor class]]) {

            //: LEECustomView *custom = (LEECustomView *)item;
            ViewColor *custom = (ViewColor *)item;

            //: CGRect viewFrame = custom.container.frame;
            CGRect viewFrame = custom.container.frame;

            //: if (custom.isAutoWidth) {
            if (custom.isAutoWidth) {

                //: custom.positionType = LEECustomViewPositionTypeCenter;
                custom.positionType = LEECustomViewPositionTypeCenter;

                //: viewFrame.size.width = maxWidth - self.config.modelHeaderInsets.left - custom.item.insets.left - self.config.modelHeaderInsets.right - custom.item.insets.right;
                viewFrame.size.width = maxWidth - self.config.modelHeaderInsets.left - custom.item.insets.left - self.config.modelHeaderInsets.right - custom.item.insets.right;
            }

            //: switch (custom.positionType) {
            switch (custom.positionType) {
                //: case LEECustomViewPositionTypeCenter:
                case LEECustomViewPositionTypeCenter:
                    //: viewFrame.origin.x = (maxWidth - viewFrame.size.width) * 0.5f;
                    viewFrame.origin.x = (maxWidth - viewFrame.size.width) * 0.5f;
                    //: break;
                    break;

                //: case LEECustomViewPositionTypeLeft:
                case LEECustomViewPositionTypeLeft:
                    //: viewFrame.origin.x = self.config.modelHeaderInsets.left + custom.item.insets.left;
                    viewFrame.origin.x = self.config.modelHeaderInsets.left + custom.item.insets.left;
                    //: break;
                    break;

                //: case LEECustomViewPositionTypeRight:
                case LEECustomViewPositionTypeRight:
                    //: viewFrame.origin.x = maxWidth - self.config.modelHeaderInsets.right - custom.item.insets.right - viewFrame.size.width;
                    viewFrame.origin.x = maxWidth - self.config.modelHeaderInsets.right - custom.item.insets.right - viewFrame.size.width;
                    //: break;
                    break;

                //: default:
                default:
                    //: break;
                    break;
            }

            //: viewFrame.origin.y = finalHeight + custom.item.insets.top;
            viewFrame.origin.y = finalHeight + custom.item.insets.top;

            //: custom.container.frame = viewFrame;
            custom.container.frame = viewFrame;

            //: finalHeight += viewFrame.size.height + custom.item.insets.top + custom.item.insets.bottom;
            finalHeight += viewFrame.size.height + custom.item.insets.top + custom.item.insets.bottom;
        }

        //: if (item == self.alertItemArray.lastObject) finalHeight += self.config.modelHeaderInsets.bottom;
        if (item == self.alertItemArray.lastObject) finalHeight += self.config.modelHeaderInsets.bottom;
    //: }];
    }];

    //: if (self.config.modelIsActionFollowScrollEnabled) {
    if (self.config.modelIsActionFollowScrollEnabled) {

        //: finalHeight += [self updateActionsLayoutWithInitialPosition:finalHeight MaxWidth:maxWidth];
        finalHeight += [self connect:finalHeight tableWith:maxWidth];
    }

    //: [CATransaction commit];
    [CATransaction commit];

    //: return finalHeight;
    return finalHeight;
}

//: - (CGFloat)updateActionsLayoutWithInitialPosition:(CGFloat)initialPosition MaxWidth:(CGFloat)maxWidth{
- (CGFloat)connect:(CGFloat)initialPosition tableWith:(CGFloat)maxWidth{

    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];

    //: CGFloat finalHeight = initialPosition;
    CGFloat finalHeight = initialPosition;

    //: for (LEEActionButton *button in self.alertActionArray) {
    for (AggressionControl *button in self.alertActionArray) {

        //: CGRect buttonFrame = button.frame;
        CGRect buttonFrame = button.frame;

        //: buttonFrame.origin.x = button.action.insets.left;
        buttonFrame.origin.x = button.action.insets.left;

        //: buttonFrame.origin.y = finalHeight + button.action.insets.top;
        buttonFrame.origin.y = finalHeight + button.action.insets.top;

        //: buttonFrame.size.width = maxWidth - button.action.insets.left - button.action.insets.right;
        buttonFrame.size.width = maxWidth - button.action.insets.left - button.action.insets.right;

        //: button.frame = buttonFrame;
        button.frame = buttonFrame;

        //: finalHeight += buttonFrame.size.height + button.action.insets.top + button.action.insets.bottom;
        finalHeight += buttonFrame.size.height + button.action.insets.top + button.action.insets.bottom;
    }

    //: if (self.alertActionArray.count == 2) {
    if (self.alertActionArray.count == 2) {

        //: LEEActionButton *buttonA = self.alertActionArray.count == self.config.modelActionArray.count ? self.alertActionArray.firstObject : self.alertActionArray.lastObject;
        AggressionControl *buttonA = self.alertActionArray.count == self.config.modelActionArray.count ? self.alertActionArray.firstObject : self.alertActionArray.lastObject;

        //: LEEActionButton *buttonB = self.alertActionArray.count == self.config.modelActionArray.count ? self.alertActionArray.lastObject : self.alertActionArray.firstObject;
        AggressionControl *buttonB = self.alertActionArray.count == self.config.modelActionArray.count ? self.alertActionArray.lastObject : self.alertActionArray.firstObject;

        //: UIEdgeInsets buttonAInsets = buttonA.action.insets;
        UIEdgeInsets buttonAInsets = buttonA.action.insets;

        //: UIEdgeInsets buttonBInsets = buttonB.action.insets;
        UIEdgeInsets buttonBInsets = buttonB.action.insets;

        //: CGFloat buttonAHeight = CGRectGetHeight(buttonA.frame) + buttonAInsets.top + buttonAInsets.bottom;
        CGFloat buttonAHeight = CGRectGetHeight(buttonA.frame) + buttonAInsets.top + buttonAInsets.bottom;

        //: CGFloat buttonBHeight = CGRectGetHeight(buttonB.frame) + buttonBInsets.top + buttonBInsets.bottom;
        CGFloat buttonBHeight = CGRectGetHeight(buttonB.frame) + buttonBInsets.top + buttonBInsets.bottom;

        //CGFloat maxHeight = buttonAHeight > buttonBHeight ? buttonAHeight : buttonBHeight;

        //: CGFloat minHeight = buttonAHeight < buttonBHeight ? buttonAHeight : buttonBHeight;
        CGFloat minHeight = buttonAHeight < buttonBHeight ? buttonAHeight : buttonBHeight;

        //: CGFloat minY = (buttonA.frame.origin.y - buttonAInsets.top) > (buttonB.frame.origin.y - buttonBInsets.top) ? (buttonB.frame.origin.y - buttonBInsets.top) : (buttonA.frame.origin.y - buttonAInsets.top);
        CGFloat minY = (buttonA.frame.origin.y - buttonAInsets.top) > (buttonB.frame.origin.y - buttonBInsets.top) ? (buttonB.frame.origin.y - buttonBInsets.top) : (buttonA.frame.origin.y - buttonAInsets.top);

        //: buttonA.frame = CGRectMake(buttonAInsets.left, minY + buttonAInsets.top, (maxWidth / 2) - buttonAInsets.left - buttonAInsets.right, buttonA.frame.size.height);
        buttonA.frame = CGRectMake(buttonAInsets.left, minY + buttonAInsets.top, (maxWidth / 2) - buttonAInsets.left - buttonAInsets.right, buttonA.frame.size.height);

        //: buttonB.frame = CGRectMake((maxWidth / 2) + buttonBInsets.left, minY + buttonBInsets.top, (maxWidth / 2) - buttonBInsets.left - buttonBInsets.right, buttonB.frame.size.height);
        buttonB.frame = CGRectMake((maxWidth / 2) + buttonBInsets.left, minY + buttonBInsets.top, (maxWidth / 2) - buttonBInsets.left - buttonBInsets.right, buttonB.frame.size.height);

        //: finalHeight -= minHeight;
        finalHeight -= minHeight;
    }

    //: [CATransaction commit];
    [CATransaction commit];

    //: return finalHeight - initialPosition;
    return finalHeight - initialPosition;
}

//: - (void)configAlert{
- (void)frameAlert{

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: _containerView = [UIView new];
    _containerView = [UIView new];

    //: [self.view addSubview: _containerView];
    [self.view addSubview: _containerView];

    //: _contentView = [UIView new];
    _contentView = [UIView new];

    //: [self.contentView addSubview: self.itemsScrollView];
    [self.contentView addSubview: self.itemsScrollView];

    //: [self.contentView addSubview: self.actionsScrollView];
    [self.contentView addSubview: self.actionsScrollView];

    //: [self.containerView addSubview: self.contentView];
    [self.containerView addSubview: self.contentView];

    //: self.containerView.layer.shadowOffset = self.config.modelShadowOffset;
    self.containerView.layer.shadowOffset = self.config.modelShadowOffset;

    //: self.containerView.layer.shadowRadius = self.config.modelShadowRadius;
    self.containerView.layer.shadowRadius = self.config.modelShadowRadius;

    //: self.containerView.layer.shadowOpacity = self.config.modelShadowOpacity;
    self.containerView.layer.shadowOpacity = self.config.modelShadowOpacity;

    //: self.containerView.layer.shadowColor = self.config.modelShadowColor.CGColor;
    self.containerView.layer.shadowColor = self.config.modelShadowColor.CGColor;

    //: self.contentView.lee_alert_cornerRadii = self.config.modelCornerRadii;
    self.contentView.lee_alert_cornerRadii = self.config.modelCornerRadii;

    //: self.contentView.backgroundColor = self.config.modelHeaderColor;
    self.contentView.backgroundColor = self.config.modelHeaderColor;

    //: self.itemsScrollView.scrollEnabled = self.config.modelIsScrollEnabled;
    self.itemsScrollView.scrollEnabled = self.config.modelIsScrollEnabled;

    //: [self.config.modelItemArray enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.config.modelItemArray enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {

        //: void (^itemBlock)(LEEItem *) = obj;
        void (^itemBlock)(DetailImage *) = obj;

        //: LEEItem *item = [[LEEItem alloc] init];
        DetailImage *item = [[DetailImage alloc] init];

        //: if (itemBlock) itemBlock(item);
        if (itemBlock) itemBlock(item);

        //: NSValue *insetValue = [self.config.modelItemInsetsInfo objectForKey:@(idx)];
        NSValue *insetValue = [self.config.modelItemInsetsInfo objectForKey:@(idx)];

        //: if (insetValue) item.insets = insetValue.UIEdgeInsetsValue;
        if (insetValue) item.insets = insetValue.UIEdgeInsetsValue;

        //: switch (item.type) {
        switch (item.type) {

            //: case LEEItemTypeTitle:
            case LEEItemTypeTitle:
            {
                //: void(^block)(UILabel *label) = item.block;
                void(^block)(UILabel *label) = item.block;

                //: LEEItemLabel *label = [LEEItemLabel label];
                DisablePointView *label = [DisablePointView cut];

                //: [self.itemsScrollView addSubview:label];
                [self.itemsScrollView addSubview:label];

                //: [self.alertItemArray addObject:label];
                [self.alertItemArray addObject:label];

                //: label.textAlignment = NSTextAlignmentCenter;
                label.textAlignment = NSTextAlignmentCenter;

                //: label.font = [UIFont boldSystemFontOfSize:18.0f];
                label.font = [UIFont boldSystemFontOfSize:18.0f];

                //: if (@available(iOS 13.0, *)) {
                if (@available(iOS 13.0, *)) {
                    //: label.textColor = [UIColor labelColor];
                    label.textColor = [UIColor labelColor];

                //: } else {
                } else {
                    //: label.textColor = [UIColor blackColor];
                    label.textColor = [UIColor blackColor];
                }

                //: label.numberOfLines = 0;
                label.numberOfLines = 0;

                //: if (block) block(label);
                if (block) block(label);

                //: label.item = item;
                label.item = item;

                //: label.textChangedBlock = ^{
                label.textChangedBlock = ^{

                    //: if (weakSelf) [weakSelf updateAlertLayout];
                    if (weakSelf) [weakSelf add];
                //: };
                };
            }
                //: break;
                break;

            //: case LEEItemTypeContent:
            case LEEItemTypeContent:
            {
                //: void(^block)(UILabel *label) = item.block;
                void(^block)(UILabel *label) = item.block;

                //: LEEItemLabel *label = [LEEItemLabel label];
                DisablePointView *label = [DisablePointView cut];

                //: [self.itemsScrollView addSubview:label];
                [self.itemsScrollView addSubview:label];

                //: [self.alertItemArray addObject:label];
                [self.alertItemArray addObject:label];

                //: label.textAlignment = NSTextAlignmentCenter;
                label.textAlignment = NSTextAlignmentCenter;

                //: label.font = [UIFont systemFontOfSize:14.0f];
                label.font = [UIFont systemFontOfSize:14.0f];

                //: if (@available(iOS 13.0, *)) {
                if (@available(iOS 13.0, *)) {
                    //: label.textColor = [UIColor labelColor];
                    label.textColor = [UIColor labelColor];

                //: } else {
                } else {
                    //: label.textColor = [UIColor blackColor];
                    label.textColor = [UIColor blackColor];
                }

                //: label.numberOfLines = 0;
                label.numberOfLines = 0;

                //: if (block) block(label);
                if (block) block(label);

                //: label.item = item;
                label.item = item;

                //: label.textChangedBlock = ^{
                label.textChangedBlock = ^{

                    //: if (weakSelf) [weakSelf updateAlertLayout];
                    if (weakSelf) [weakSelf add];
                //: };
                };
            }
                //: break;
                break;

            //: case LEEItemTypeCustomView:
            case LEEItemTypeCustomView:
            {
                //: void(^block)(LEECustomView *) = item.block;
                void(^block)(ViewColor *) = item.block;

                //: LEECustomView *custom = [[LEECustomView alloc] init];
                ViewColor *custom = [[ViewColor alloc] init];

                //: block(custom);
                block(custom);

                //: [self.itemsScrollView addSubview:custom.container];
                [self.itemsScrollView addSubview:custom.container];

                //: [self.alertItemArray addObject:custom];
                [self.alertItemArray addObject:custom];

                //: custom.item = item;
                custom.item = item;

                //: custom.sizeChangedBlock = ^{
                custom.sizeChangedBlock = ^{

                    //: if (weakSelf) [weakSelf updateAlertLayout];
                    if (weakSelf) [weakSelf add];
                //: };
                };
            }
                //: break;
                break;

            //: case LEEItemTypeTextField:
            case LEEItemTypeTextField:
            {
                //: LEEItemTextField *textField = [LEEItemTextField textField];
                IncidentalControl *textField = [IncidentalControl computerFilenameField];
                //: textField.layer.masksToBounds = YES;
                textField.layer.masksToBounds = YES;
                //: textField.layer.cornerRadius = 20.f;
                textField.layer.cornerRadius = 20.f;
                //: textField.frame = CGRectMake(0, 0, 0, 40.0f);
                textField.frame = CGRectMake(0, 0, 0, 40.0f);

                //: [self.itemsScrollView addSubview:textField];
                [self.itemsScrollView addSubview:textField];

                //: [self.alertItemArray addObject:textField];
                [self.alertItemArray addObject:textField];

                //: textField.borderStyle = UITextBorderStyleRoundedRect;
                textField.borderStyle = UITextBorderStyleRoundedRect;

                //: void(^block)(UITextField *textField) = item.block;
                void(^block)(UITextField *textField) = item.block;

                //: if (block) block(textField);
                if (block) block(textField);

                //: textField.item = item;
                textField.item = item;
            }
                //: break;
                break;

            //: default:
            default:
                //: break;
                break;
        }

    //: }];
    }];

    // 根据 modelIsActionFollowScrollEnabled 属性控制Action添加到哪个父视图
    //: UIView *actionContainerView = self.config.modelIsActionFollowScrollEnabled ? self.itemsScrollView : self.actionsScrollView;
    UIView *actionContainerView = self.config.modelIsActionFollowScrollEnabled ? self.itemsScrollView : self.actionsScrollView;

    //: [self.config.modelActionArray enumerateObjectsUsingBlock:^(id item, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.config.modelActionArray enumerateObjectsUsingBlock:^(id item, NSUInteger idx, BOOL * _Nonnull stop) {

        //: void (^block)(LEEAction *action) = item;
        void (^block)(TempAction *action) = item;

        //: LEEAction *action = [[LEEAction alloc] init];
        TempAction *action = [[TempAction alloc] init];

        //: if (block) block(action);
        if (block) block(action);

        //: if (!action.font) action.font = [UIFont systemFontOfSize:18.0f];
        if (!action.font) action.font = [UIFont systemFontOfSize:18.0f];

        //: if (!action.title) action.title = @"按钮";
        if (!action.title) action.title = @"按钮";

        //: if (!action.titleColor) {
        if (!action.titleColor) {
            //: if (@available(iOS 13.0, *)) {
            if (@available(iOS 13.0, *)) {
                //: action.titleColor = [UIColor systemBlueColor];
                action.titleColor = [UIColor systemBlueColor];

            //: } else {
            } else {
                //: action.titleColor = [UIColor colorWithRed:21/255.0f green:123/255.0f blue:245/255.0f alpha:1.0f];
                action.titleColor = [UIColor colorWithRed:21/255.0f green:123/255.0f blue:245/255.0f alpha:1.0f];
            }
        }

        //: if (!action.backgroundColor) action.backgroundColor = self.config.modelHeaderColor;
        if (!action.backgroundColor) action.backgroundColor = self.config.modelHeaderColor;

        //: if (!action.backgroundHighlightColor) {
        if (!action.backgroundHighlightColor) {
            //: if (@available(iOS 13.0, *)) {
            if (@available(iOS 13.0, *)) {
                //: action.backgroundHighlightColor = [UIColor systemGray6Color];
                action.backgroundHighlightColor = [UIColor systemGray6Color];

            //: } else {
            } else {
                //: action.backgroundHighlightColor = [UIColor colorWithWhite:0.97 alpha:1.0f];
                action.backgroundHighlightColor = [UIColor colorWithWhite:0.97 alpha:1.0f];
            }
        }

        //: if (!action.borderColor) {
        if (!action.borderColor) {
            //: if (@available(iOS 13.0, *)) {
            if (@available(iOS 13.0, *)) {
                //: action.borderColor = [UIColor systemGray3Color];
                action.borderColor = [UIColor systemGray3Color];

            //: } else {
            } else {
                //: action.borderColor = [UIColor colorWithWhite:0.84 alpha:1.0f];
                action.borderColor = [UIColor colorWithWhite:0.84 alpha:1.0f];
            }
        }

        //: if (!action.borderWidth) action.borderWidth = (1.0f / [[UIScreen mainScreen] scale] + 0.02f);
        if (!action.borderWidth) action.borderWidth = (1.0f / [[UIScreen mainScreen] scale] + 0.02f);

        //: if (!action.borderPosition) action.borderPosition = (self.config.modelActionArray.count == 2 && idx == 0) ? LEEActionBorderPositionTop | LEEActionBorderPositionRight : LEEActionBorderPositionTop;
        if (!action.borderPosition) action.borderPosition = (self.config.modelActionArray.count == 2 && idx == 0) ? LEEActionBorderPositionTop | LEEActionBorderPositionRight : LEEActionBorderPositionTop;

        //: if (!action.height) action.height = 45.0f;
        if (!action.height) action.height = 45.0f;

        //: LEEActionButton *button = [LEEActionButton button];
        AggressionControl *button = [AggressionControl session];

        //: button.action = action;
        button.action = action;

        //: [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(sizing:) forControlEvents:UIControlEventTouchUpInside];

        //: [actionContainerView addSubview:button];
        [actionContainerView addSubview:button];

        //: [self.alertActionArray addObject:button];
        [self.alertActionArray addObject:button];

        //: button.heightChangedBlock = ^{
        button.heightChangedBlock = ^{

            //: if (weakSelf) [weakSelf updateAlertLayout];
            if (weakSelf) [weakSelf add];
        //: };
        };

    //: }];
    }];

    // 更新布局

    //: [self updateAlertLayout];
    [self add];

    //: [self showAnimationsWithCompletionBlock:^{
    [self arrayAt:^{

        //: if (weakSelf) [weakSelf updateAlertLayout];
        if (weakSelf) [weakSelf add];
    //: }];
    }];

}

//: - (void)buttonAction:(LEEActionButton *)sender{
- (void)sizing:(AggressionControl *)sender{

    //: BOOL isClose = NO;
    BOOL isClose = NO;

    //: void (^clickBlock)(void) = nil;
    void (^clickBlock)(void) = nil;

    //: switch (sender.action.type) {
    switch (sender.action.type) {

        //: case LEEActionTypeDefault:
        case LEEActionTypeDefault:

            //: isClose = sender.action.isClickNotClose ? NO : YES;
            isClose = sender.action.isClickNotClose ? NO : YES;

            //: break;
            break;

        //: case LEEActionTypeCancel:
        case LEEActionTypeCancel:

            //: isClose = YES;
            isClose = YES;

            //: break;
            break;

        //: case LEEActionTypeDestructive:
        case LEEActionTypeDestructive:

            //: isClose = YES;
            isClose = YES;

            //: break;
            break;

        //: default:
        default:
            //: break;
            break;
    }

    //: clickBlock = sender.action.clickBlock;
    clickBlock = sender.action.clickBlock;

    //: NSInteger index = [self.alertActionArray indexOfObject:sender];
    NSInteger index = [self.alertActionArray indexOfObject:sender];

    //: if (isClose) {
    if (isClose) {

        //: if (self.config.modelShouldActionClickClose && !self.config.modelShouldActionClickClose(index)) return;
        if (self.config.modelShouldActionClickClose && !self.config.modelShouldActionClickClose(index)) return;

        //: [self closeAnimationsWithCompletionBlock:^{
        [self imageInput:^{

            //: if (clickBlock) clickBlock();
            if (clickBlock) clickBlock();
        //: }];
        }];

    //: } else {
    } else {

        //: if (clickBlock) clickBlock();
        if (clickBlock) clickBlock();
    }

}

//: - (void)headerTapAction:(UITapGestureRecognizer *)tap{
- (void)moding:(UITapGestureRecognizer *)tap{

    //: if (self.config.modelIsClickHeaderClose) [self closeAnimationsWithCompletionBlock:nil];
    if (self.config.modelIsClickHeaderClose) [self imageInput:nil];
}

//: #pragma mark start animations
#pragma mark start animations

//: - (void)showAnimationsWithCompletionBlock:(void (^)(void))completionBlock{
- (void)arrayAt:(void (^)(void))completionBlock{

    //: [super showAnimationsWithCompletionBlock:completionBlock];
    [super arrayAt:completionBlock];

    //: if (self.isShowing) return;
    if (self.isShowing) return;

    //: self.isShowing = YES;
    self.isShowing = YES;

    //: CGFloat viewWidth = CGRectGetWidth(self.view.frame);
    CGFloat viewWidth = CGRectGetWidth(self.view.frame);

    //: CGFloat viewHeight = CGRectGetHeight(self.view.frame);
    CGFloat viewHeight = CGRectGetHeight(self.view.frame);

    //: CGRect containerFrame = self.containerView.frame;
    CGRect containerFrame = self.containerView.frame;

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationNone) {
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationNone) {

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
        containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationTop) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationTop) {

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = 0 - containerFrame.size.height;
        containerFrame.origin.y = 0 - containerFrame.size.height;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationBottom) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationBottom) {

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = viewHeight;
        containerFrame.origin.y = viewHeight;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationLeft) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationLeft) {

        //: containerFrame.origin.x = 0 - containerFrame.size.width;
        containerFrame.origin.x = 0 - containerFrame.size.width;

        //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
        containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationRight) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationRight) {

        //: containerFrame.origin.x = viewWidth;
        containerFrame.origin.x = viewWidth;

        //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
        containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
    }

    //: self.containerView.frame = containerFrame;
    self.containerView.frame = containerFrame;

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleFade) self.containerView.alpha = 0.0f;
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleFade) self.containerView.alpha = 0.0f;

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomEnlarge) self.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomEnlarge) self.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomShrink) self.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomShrink) self.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (self.config.modelOpenAnimationConfigBlock) self.config.modelOpenAnimationConfigBlock(^{
    if (self.config.modelOpenAnimationConfigBlock) self.config.modelOpenAnimationConfigBlock(^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleTranslucent) {
        if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleTranslucent) {

            //: weakSelf.view.backgroundColor = [weakSelf.view.backgroundColor colorWithAlphaComponent:weakSelf.config.modelBackgroundStyleColorAlpha];
            weakSelf.view.backgroundColor = [weakSelf.view.backgroundColor colorWithAlphaComponent:weakSelf.config.modelBackgroundStyleColorAlpha];

        //: } else if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleBlur) {
        } else if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleBlur) {

            //: weakSelf.backgroundVisualEffectView.effect = [UIBlurEffect effectWithStyle:weakSelf.config.modelBackgroundBlurEffectStyle];
            weakSelf.backgroundVisualEffectView.effect = [UIBlurEffect effectWithStyle:weakSelf.config.modelBackgroundBlurEffectStyle];
        }

        //: CGRect containerFrame = weakSelf.containerView.frame;
        CGRect containerFrame = weakSelf.containerView.frame;

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
        containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;

        //: weakSelf.containerView.frame = containerFrame;
        weakSelf.containerView.frame = containerFrame;

        //: weakSelf.containerView.alpha = 1.0f;
        weakSelf.containerView.alpha = 1.0f;

        //: weakSelf.containerView.transform = CGAffineTransformIdentity;
        weakSelf.containerView.transform = CGAffineTransformIdentity;

    //: }, ^{
    }, ^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: weakSelf.isShowing = NO;
        weakSelf.isShowing = NO;

        //: [weakSelf.view setUserInteractionEnabled:YES];
        [weakSelf.view setUserInteractionEnabled:YES];

        //: if (weakSelf.openFinishBlock) weakSelf.openFinishBlock();
        if (weakSelf.openFinishBlock) weakSelf.openFinishBlock();

        //: if (completionBlock) completionBlock();
        if (completionBlock) completionBlock();
    //: });
    });

}

//: #pragma mark close animations
#pragma mark close animations

//: - (void)closeAnimationsWithCompletionBlock:(void (^)(void))completionBlock{
- (void)imageInput:(void (^)(void))completionBlock{

    //: [super closeAnimationsWithCompletionBlock:completionBlock];
    [super imageInput:completionBlock];

    //: if (self.isClosing) return;
    if (self.isClosing) return;
    //: if (self.config.modelShouldClose && !self.config.modelShouldClose()) return;
    if (self.config.modelShouldClose && !self.config.modelShouldClose()) return;

    //: self.isClosing = YES;
    self.isClosing = YES;

    //: CGFloat viewWidth = CGRectGetWidth(self.view.frame);
    CGFloat viewWidth = CGRectGetWidth(self.view.frame);

    //: CGFloat viewHeight = CGRectGetHeight(self.view.frame);
    CGFloat viewHeight = CGRectGetHeight(self.view.frame);

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (self.config.modelCloseAnimationConfigBlock) self.config.modelCloseAnimationConfigBlock(^{
    if (self.config.modelCloseAnimationConfigBlock) self.config.modelCloseAnimationConfigBlock(^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleTranslucent) {
        if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleTranslucent) {

            //: weakSelf.view.backgroundColor = [weakSelf.view.backgroundColor colorWithAlphaComponent:0.0f];
            weakSelf.view.backgroundColor = [weakSelf.view.backgroundColor colorWithAlphaComponent:0.0f];

        //: } else if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleBlur) {
        } else if (weakSelf.config.modelBackgroundStyle == LEEBackgroundStyleBlur) {

            //: weakSelf.backgroundVisualEffectView.alpha = 0.0f;
            weakSelf.backgroundVisualEffectView.alpha = 0.0f;
        }

        //: CGRect containerFrame = weakSelf.containerView.frame;
        CGRect containerFrame = weakSelf.containerView.frame;

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationNone) {
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationNone) {

            //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
            containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

            //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
            containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationTop) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationTop) {

            //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
            containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

            //: containerFrame.origin.y = 0 - containerFrame.size.height;
            containerFrame.origin.y = 0 - containerFrame.size.height;

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationBottom) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationBottom) {

            //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
            containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

            //: containerFrame.origin.y = viewHeight;
            containerFrame.origin.y = viewHeight;

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationLeft) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationLeft) {

            //: containerFrame.origin.x = 0 - containerFrame.size.width;
            containerFrame.origin.x = 0 - containerFrame.size.width;

            //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
            containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationRight) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationRight) {

            //: containerFrame.origin.x = viewWidth;
            containerFrame.origin.x = viewWidth;

            //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
            containerFrame.origin.y = (viewHeight - containerFrame.size.height) * 0.5f;
        }

        //: weakSelf.containerView.frame = containerFrame;
        weakSelf.containerView.frame = containerFrame;

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleFade) weakSelf.containerView.alpha = 0.0f;
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleFade) weakSelf.containerView.alpha = 0.0f;

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomEnlarge) weakSelf.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomEnlarge) weakSelf.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomShrink) weakSelf.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomShrink) weakSelf.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);

    //: }, ^{
    }, ^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: weakSelf.isClosing = NO;
        weakSelf.isClosing = NO;

        //: if (weakSelf.closeFinishBlock) weakSelf.closeFinishBlock();
        if (weakSelf.closeFinishBlock) weakSelf.closeFinishBlock();

        //: if (completionBlock) completionBlock();
        if (completionBlock) completionBlock();
    //: });
    });

}

//: #pragma mark Tool
#pragma mark Tool

//: - (UIView *)findFirstResponder:(UIView *)view{
- (UIView *)outMax:(UIView *)view{

    //: if (view.isFirstResponder) return view;
    if (view.isFirstResponder) return view;

    //: for (UIView *subView in view.subviews) {
    for (UIView *subView in view.subviews) {

        //: UIView *firstResponder = [self findFirstResponder:subView];
        UIView *firstResponder = [self outMax:subView];

        //: if (firstResponder) return firstResponder;
        if (firstResponder) return firstResponder;
    }

    //: return nil;
    return nil;
}

//: #pragma mark delegate
#pragma mark delegate

//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{

    //: return (touch.view == self.itemsScrollView) ? YES : NO;
    return (touch.view == self.itemsScrollView) ? YES : NO;
}

//: #pragma mark LazyLoading
#pragma mark LazyLoading

//: - (UIScrollView *)itemsScrollView{
- (UIScrollView *)itemsScrollView{

    //: if (!_itemsScrollView) {
    if (!_itemsScrollView) {

        //: _itemsScrollView = [[UIScrollView alloc] init];
        _itemsScrollView = [[UIScrollView alloc] init];

        //: _itemsScrollView.backgroundColor = [UIColor clearColor];
        _itemsScrollView.backgroundColor = [UIColor clearColor];

        //: _itemsScrollView.directionalLockEnabled = YES;
        _itemsScrollView.directionalLockEnabled = YES;

        //: _itemsScrollView.bounces = NO;
        _itemsScrollView.bounces = NO;

        //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(headerTapAction:)];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(moding:)];

        //: tap.numberOfTapsRequired = 1;
        tap.numberOfTapsRequired = 1;

        //: tap.numberOfTouchesRequired = 1;
        tap.numberOfTouchesRequired = 1;

        //: tap.delegate = self;
        tap.delegate = self;

        //: [_itemsScrollView addGestureRecognizer:tap];
        [_itemsScrollView addGestureRecognizer:tap];
    }

    //: return _itemsScrollView;
    return _itemsScrollView;
}

//: - (UIScrollView *)actionsScrollView{
- (UIScrollView *)actionsScrollView{

    //: if (!_actionsScrollView) {
    if (!_actionsScrollView) {

        //: _actionsScrollView = [[UIScrollView alloc] init];
        _actionsScrollView = [[UIScrollView alloc] init];

        //: _actionsScrollView.backgroundColor = [UIColor clearColor];
        _actionsScrollView.backgroundColor = [UIColor clearColor];

        //: _actionsScrollView.directionalLockEnabled = YES;
        _actionsScrollView.directionalLockEnabled = YES;

        //: _actionsScrollView.bounces = NO;
        _actionsScrollView.bounces = NO;
    }

    //: return _actionsScrollView;
    return _actionsScrollView;
}

//: - (NSMutableArray *)alertItemArray{
- (NSMutableArray *)alertItemArray{

    //: if (!_alertItemArray) _alertItemArray = [NSMutableArray array];
    if (!_alertItemArray) _alertItemArray = [NSMutableArray array];

    //: return _alertItemArray;
    return _alertItemArray;
}

//: - (NSMutableArray <LEEActionButton *>*)alertActionArray{
- (NSMutableArray <AggressionControl *>*)alertActionArray{

    //: if (!_alertActionArray) _alertActionArray = [NSMutableArray array];
    if (!_alertActionArray) _alertActionArray = [NSMutableArray array];

    //: return _alertActionArray;
    return _alertActionArray;
}

//: @end
@end

//: #pragma mark - ActionSheet
#pragma mark - Photo

//: @interface LEEActionSheetViewController ()
@interface AlongViewController ()

//: @property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UIView *containerView;

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;

//: @property (nonatomic, strong) UIScrollView *itemsScrollView;
@property (nonatomic, strong) UIScrollView *itemsScrollView;

//: @property (nonatomic, strong) UIScrollView *actionsScrollView;
@property (nonatomic, strong) UIScrollView *actionsScrollView;

//: @property (nonatomic, strong) NSMutableArray <id>*actionSheetItemArray;
@property (nonatomic, strong) NSMutableArray <id>*actionSheetItemArray;

//: @property (nonatomic, strong) NSMutableArray <LEEActionButton *>*actionSheetActionArray;
@property (nonatomic, strong) NSMutableArray <AggressionControl *>*actionSheetActionArray;

//: @property (nonatomic, strong) UIView *actionSheetCancelActionSpaceView;
@property (nonatomic, strong) UIView *actionSheetCancelActionSpaceView;

//: @property (nonatomic, strong) LEEActionButton *actionSheetCancelAction;
@property (nonatomic, strong) AggressionControl *actionSheetCancelAction;

//: @end
@end

//: @implementation LEEActionSheetViewController
@implementation AlongViewController
{
    //: BOOL isShowed;
    BOOL isShowed;
}

//: - (void)dealloc{
- (void)dealloc{

    //: _containerView = nil;
    _containerView = nil;

    //: _itemsScrollView = nil;
    _itemsScrollView = nil;

    //: _actionsScrollView = nil;
    _actionsScrollView = nil;

    //: _actionSheetItemArray = nil;
    _actionSheetItemArray = nil;

    //: _actionSheetCancelActionSpaceView = nil;
    _actionSheetCancelActionSpaceView = nil;

    //: _actionSheetCancelAction = nil;
    _actionSheetCancelAction = nil;

    //: _actionSheetActionArray = nil;
    _actionSheetActionArray = nil;
}

//: - (void)viewDidLoad{
- (void)viewDidLoad{

    //: [super viewDidLoad];
    [super viewDidLoad];

    //: [self configActionSheet];
    [self configDevice];
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{

    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: [self updateActionSheetLayout];
    [self find];
}

//: - (void)viewSafeAreaInsetsDidChange{
- (void)viewSafeAreaInsetsDidChange{

    //: [super viewSafeAreaInsetsDidChange];
    [super viewSafeAreaInsetsDidChange];

    //: [self updateActionSheetLayout];
    [self find];
}

//: - (void)updateActionSheetLayout{
- (void)find{

    //: [self updateActionSheetLayoutWithViewWidth:CGRectGetWidth(self.view.frame) ViewHeight:CGRectGetHeight(self.view.frame)];
    [self streetSmartExist:CGRectGetWidth(self.view.frame) activity:CGRectGetHeight(self.view.frame)];
}

//: - (void)updateActionSheetLayoutWithViewWidth:(CGFloat)viewWidth ViewHeight:(CGFloat)viewHeight{
- (void)streetSmartExist:(CGFloat)viewWidth activity:(CGFloat)viewHeight{

    //: CGFloat actionSheetViewMaxWidth = self.config.modelMaxWidthBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));
    CGFloat actionSheetViewMaxWidth = self.config.modelMaxWidthBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));

    //: CGFloat actionSheetViewMaxHeight = self.config.modelMaxHeightBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));
    CGFloat actionSheetViewMaxHeight = self.config.modelMaxHeightBlock(self.orientationType, CGSizeMake(viewWidth, viewHeight));

    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];

    //: CGFloat cancelActionTotalHeight = self.actionSheetCancelAction ? self.actionSheetCancelAction.frame.size.height + self.config.modelActionSheetCancelActionSpaceWidth : 0.0f;
    CGFloat cancelActionTotalHeight = self.actionSheetCancelAction ? self.actionSheetCancelAction.frame.size.height + self.config.modelActionSheetCancelActionSpaceWidth : 0.0f;

    //: CGRect contentViewFrame = self.contentView.frame;
    CGRect contentViewFrame = self.contentView.frame;

    //: contentViewFrame.size.width = actionSheetViewMaxWidth;
    contentViewFrame.size.width = actionSheetViewMaxWidth;

    //: if (self.config.modelIsActionFollowScrollEnabled) {
    if (self.config.modelIsActionFollowScrollEnabled) {

        //: CGFloat itemsHeight = [self updateItemsLayoutWithMaxWidth:actionSheetViewMaxWidth];
        CGFloat itemsHeight = [self withHolder:actionSheetViewMaxWidth];

        //: contentViewFrame.size.height = itemsHeight > actionSheetViewMaxHeight - cancelActionTotalHeight ? actionSheetViewMaxHeight - cancelActionTotalHeight : itemsHeight;
        contentViewFrame.size.height = itemsHeight > actionSheetViewMaxHeight - cancelActionTotalHeight ? actionSheetViewMaxHeight - cancelActionTotalHeight : itemsHeight;

        //: self.itemsScrollView.frame = contentViewFrame;
        self.itemsScrollView.frame = contentViewFrame;

        //: self.itemsScrollView.contentSize = CGSizeMake(actionSheetViewMaxWidth, itemsHeight);
        self.itemsScrollView.contentSize = CGSizeMake(actionSheetViewMaxWidth, itemsHeight);

        //: self.actionsScrollView.frame = CGRectMake(0, contentViewFrame.size.height, actionSheetViewMaxWidth, 0);
        self.actionsScrollView.frame = CGRectMake(0, contentViewFrame.size.height, actionSheetViewMaxWidth, 0);

        //: self.actionsScrollView.contentSize = CGSizeZero;
        self.actionsScrollView.contentSize = CGSizeZero;

    //: } else {
    } else {

        //: CGFloat itemsHeight = [self updateItemsLayoutWithMaxWidth:actionSheetViewMaxWidth];
        CGFloat itemsHeight = [self withHolder:actionSheetViewMaxWidth];

        //: CGFloat actionsHeight = [self updateActionsLayoutWithInitialPosition:0 MaxWidth:actionSheetViewMaxWidth];
        CGFloat actionsHeight = [self gen:0 empty:actionSheetViewMaxWidth];

        //: self.itemsScrollView.contentSize = CGSizeMake(actionSheetViewMaxWidth, itemsHeight);
        self.itemsScrollView.contentSize = CGSizeMake(actionSheetViewMaxWidth, itemsHeight);

        //: self.actionsScrollView.contentSize = CGSizeMake(actionSheetViewMaxWidth, actionsHeight);
        self.actionsScrollView.contentSize = CGSizeMake(actionSheetViewMaxWidth, actionsHeight);

        //: CGFloat availableHeight = actionSheetViewMaxHeight - cancelActionTotalHeight;
        CGFloat availableHeight = actionSheetViewMaxHeight - cancelActionTotalHeight;

        //: if ((itemsHeight + actionsHeight) > availableHeight) {
        if ((itemsHeight + actionsHeight) > availableHeight) {

            //: contentViewFrame.size.height = availableHeight;
            contentViewFrame.size.height = availableHeight;

            //: CGFloat maxActionsHeight = availableHeight * 0.5;
            CGFloat maxActionsHeight = availableHeight * 0.5;

            //: actionsHeight = actionsHeight < maxActionsHeight ? actionsHeight : maxActionsHeight;
            actionsHeight = actionsHeight < maxActionsHeight ? actionsHeight : maxActionsHeight;

            //: CGFloat maxItemsHeight = availableHeight - actionsHeight;
            CGFloat maxItemsHeight = availableHeight - actionsHeight;

            //: itemsHeight = itemsHeight < maxItemsHeight ? itemsHeight : maxItemsHeight;
            itemsHeight = itemsHeight < maxItemsHeight ? itemsHeight : maxItemsHeight;

            //: actionsHeight = availableHeight - itemsHeight;
            actionsHeight = availableHeight - itemsHeight;

            //: self.itemsScrollView.frame = CGRectMake(0, 0, actionSheetViewMaxWidth, itemsHeight);
            self.itemsScrollView.frame = CGRectMake(0, 0, actionSheetViewMaxWidth, itemsHeight);

            //: self.actionsScrollView.frame = CGRectMake(0, itemsHeight, actionSheetViewMaxWidth, actionsHeight);
            self.actionsScrollView.frame = CGRectMake(0, itemsHeight, actionSheetViewMaxWidth, actionsHeight);

        //: } else {
        } else {

            //: contentViewFrame.size.height = itemsHeight + actionsHeight;
            contentViewFrame.size.height = itemsHeight + actionsHeight;

            //: self.itemsScrollView.frame = CGRectMake(0, 0, actionSheetViewMaxWidth, itemsHeight);
            self.itemsScrollView.frame = CGRectMake(0, 0, actionSheetViewMaxWidth, itemsHeight);

            //: self.actionsScrollView.frame = CGRectMake(0, itemsHeight, actionSheetViewMaxWidth, actionsHeight);
            self.actionsScrollView.frame = CGRectMake(0, itemsHeight, actionSheetViewMaxWidth, actionsHeight);
        }
    }

    //: [self.itemsScrollView layoutIfNeeded];
    [self.itemsScrollView layoutIfNeeded];

    //: [self.actionsScrollView layoutIfNeeded];
    [self.actionsScrollView layoutIfNeeded];

    //: self.contentView.frame = contentViewFrame;
    self.contentView.frame = contentViewFrame;

    //: if (self.actionSheetCancelAction) {
    if (self.actionSheetCancelAction) {

        //: CGRect spaceFrame = self.actionSheetCancelActionSpaceView.frame;
        CGRect spaceFrame = self.actionSheetCancelActionSpaceView.frame;

        //: spaceFrame.origin.x = contentViewFrame.origin.x;
        spaceFrame.origin.x = contentViewFrame.origin.x;

        //: spaceFrame.origin.y = contentViewFrame.origin.y + contentViewFrame.size.height;
        spaceFrame.origin.y = contentViewFrame.origin.y + contentViewFrame.size.height;

        //: spaceFrame.size.width = actionSheetViewMaxWidth;
        spaceFrame.size.width = actionSheetViewMaxWidth;

        //: spaceFrame.size.height = self.config.modelActionSheetCancelActionSpaceWidth;
        spaceFrame.size.height = self.config.modelActionSheetCancelActionSpaceWidth;

        //: self.actionSheetCancelActionSpaceView.frame = spaceFrame;
        self.actionSheetCancelActionSpaceView.frame = spaceFrame;

        //: CGRect buttonFrame = self.actionSheetCancelAction.frame;
        CGRect buttonFrame = self.actionSheetCancelAction.frame;

        //: buttonFrame.origin.x = contentViewFrame.origin.x;
        buttonFrame.origin.x = contentViewFrame.origin.x;

        //: buttonFrame.origin.y = contentViewFrame.origin.y + contentViewFrame.size.height + spaceFrame.size.height;
        buttonFrame.origin.y = contentViewFrame.origin.y + contentViewFrame.size.height + spaceFrame.size.height;

        //: buttonFrame.size.width = actionSheetViewMaxWidth;
        buttonFrame.size.width = actionSheetViewMaxWidth;

        //: self.actionSheetCancelAction.frame = buttonFrame;
        self.actionSheetCancelAction.frame = buttonFrame;
    }

    //: [CATransaction commit];
    [CATransaction commit];

    //: CGRect containerFrame = self.containerView.frame;
    CGRect containerFrame = self.containerView.frame;

    //: containerFrame.size.width = actionSheetViewMaxWidth;
    containerFrame.size.width = actionSheetViewMaxWidth;

    //: containerFrame.size.height = contentViewFrame.size.height + cancelActionTotalHeight + ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = self.view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom + self.config.modelActionSheetBottomMargin;
    containerFrame.size.height = contentViewFrame.size.height + cancelActionTotalHeight + ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = self.view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom + self.config.modelActionSheetBottomMargin;

    //: containerFrame.origin.x = (viewWidth - actionSheetViewMaxWidth) * 0.5f;
    containerFrame.origin.x = (viewWidth - actionSheetViewMaxWidth) * 0.5f;

    //: if (isShowed) {
    if (isShowed) {

        //: containerFrame.origin.y = viewHeight - containerFrame.size.height;
        containerFrame.origin.y = viewHeight - containerFrame.size.height;

    //: } else {
    } else {

        //: containerFrame.origin.y = viewHeight;
        containerFrame.origin.y = viewHeight;
    }

    //: self.containerView.frame = containerFrame;
    self.containerView.frame = containerFrame;
}

//: - (CGFloat)updateItemsLayoutWithMaxWidth:(CGFloat)maxWidth{
- (CGFloat)withHolder:(CGFloat)maxWidth{

    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];

    //: __block CGFloat finalHeight = 0.0f;
    __block CGFloat finalHeight = 0.0f;

    //: [self.actionSheetItemArray enumerateObjectsUsingBlock:^(id _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.actionSheetItemArray enumerateObjectsUsingBlock:^(id _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {

        //: if (idx == 0) finalHeight += self.config.modelHeaderInsets.top;
        if (idx == 0) finalHeight += self.config.modelHeaderInsets.top;

        //: if ([item isKindOfClass:[UIView class]]) {
        if ([item isKindOfClass:[UIView class]]) {

            //: LEEItemView *view = (LEEItemView *)item;
            ContentView *view = (ContentView *)item;

            //: CGRect viewFrame = view.frame;
            CGRect viewFrame = view.frame;

            //: viewFrame.origin.x = self.config.modelHeaderInsets.left + view.item.insets.left + ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left;
            viewFrame.origin.x = self.config.modelHeaderInsets.left + view.item.insets.left + ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left;

            //: viewFrame.origin.y = finalHeight + view.item.insets.top;
            viewFrame.origin.y = finalHeight + view.item.insets.top;

            //: viewFrame.size.width = maxWidth - viewFrame.origin.x - self.config.modelHeaderInsets.right - view.item.insets.right - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).right;
            viewFrame.size.width = maxWidth - viewFrame.origin.x - self.config.modelHeaderInsets.right - view.item.insets.right - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = view.safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).right;

            //: if ([item isKindOfClass:UILabel.class]) viewFrame.size.height = [item sizeThatFits:CGSizeMake(viewFrame.size.width, 0x1.fffffep+127f)].height;
            if ([item isKindOfClass:UILabel.class]) viewFrame.size.height = [item sizeThatFits:CGSizeMake(viewFrame.size.width, 0x1.fffffep+127f)].height;

            //: view.frame = viewFrame;
            view.frame = viewFrame;

            //: finalHeight += view.frame.size.height + view.item.insets.top + view.item.insets.bottom;
            finalHeight += view.frame.size.height + view.item.insets.top + view.item.insets.bottom;

        //: } else if ([item isKindOfClass:[LEECustomView class]]) {
        } else if ([item isKindOfClass:[ViewColor class]]) {

            //: LEECustomView *custom = (LEECustomView *)item;
            ViewColor *custom = (ViewColor *)item;

            //: CGRect viewFrame = custom.container.frame;
            CGRect viewFrame = custom.container.frame;

            //: if (custom.isAutoWidth) {
            if (custom.isAutoWidth) {

                //: custom.positionType = LEECustomViewPositionTypeCenter;
                custom.positionType = LEECustomViewPositionTypeCenter;

                //: viewFrame.size.width = maxWidth - self.config.modelHeaderInsets.left - custom.item.insets.left - self.config.modelHeaderInsets.right - custom.item.insets.right;
                viewFrame.size.width = maxWidth - self.config.modelHeaderInsets.left - custom.item.insets.left - self.config.modelHeaderInsets.right - custom.item.insets.right;
            }

            //: switch (custom.positionType) {
            switch (custom.positionType) {

                //: case LEECustomViewPositionTypeCenter:
                case LEECustomViewPositionTypeCenter:

                    //: viewFrame.origin.x = (maxWidth - viewFrame.size.width) * 0.5f;
                    viewFrame.origin.x = (maxWidth - viewFrame.size.width) * 0.5f;

                    //: break;
                    break;

                //: case LEECustomViewPositionTypeLeft:
                case LEECustomViewPositionTypeLeft:

                    //: viewFrame.origin.x = self.config.modelHeaderInsets.left + custom.item.insets.left;
                    viewFrame.origin.x = self.config.modelHeaderInsets.left + custom.item.insets.left;

                    //: break;
                    break;

                //: case LEECustomViewPositionTypeRight:
                case LEECustomViewPositionTypeRight:

                    //: viewFrame.origin.x = maxWidth - self.config.modelHeaderInsets.right - custom.item.insets.right - viewFrame.size.width;
                    viewFrame.origin.x = maxWidth - self.config.modelHeaderInsets.right - custom.item.insets.right - viewFrame.size.width;

                    //: break;
                    break;

                //: default:
                default:
                    //: break;
                    break;
            }

            //: viewFrame.origin.y = finalHeight + custom.item.insets.top;
            viewFrame.origin.y = finalHeight + custom.item.insets.top;

            //: custom.container.frame = viewFrame;
            custom.container.frame = viewFrame;

            //: finalHeight += viewFrame.size.height + custom.item.insets.top + custom.item.insets.bottom;
            finalHeight += viewFrame.size.height + custom.item.insets.top + custom.item.insets.bottom;
        }

        //: if (item == self.actionSheetItemArray.lastObject) finalHeight += self.config.modelHeaderInsets.bottom;
        if (item == self.actionSheetItemArray.lastObject) finalHeight += self.config.modelHeaderInsets.bottom;
    //: }];
    }];

    //: if (self.config.modelIsActionFollowScrollEnabled) {
    if (self.config.modelIsActionFollowScrollEnabled) {

        //: finalHeight += [self updateActionsLayoutWithInitialPosition:finalHeight MaxWidth:maxWidth];
        finalHeight += [self gen:finalHeight empty:maxWidth];
    }

    //: [CATransaction commit];
    [CATransaction commit];

    //: return finalHeight;
    return finalHeight;
}

//: - (CGFloat)updateActionsLayoutWithInitialPosition:(CGFloat)initialPosition MaxWidth:(CGFloat)maxWidth{
- (CGFloat)gen:(CGFloat)initialPosition empty:(CGFloat)maxWidth{

    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];

    //: CGFloat finalHeight = initialPosition;
    CGFloat finalHeight = initialPosition;

    //: for (LEEActionButton *button in self.actionSheetActionArray) {
    for (AggressionControl *button in self.actionSheetActionArray) {

        //: CGRect buttonFrame = button.frame;
        CGRect buttonFrame = button.frame;

        //: buttonFrame.origin.x = button.action.insets.left;
        buttonFrame.origin.x = button.action.insets.left;

        //: buttonFrame.origin.y = finalHeight + button.action.insets.top;
        buttonFrame.origin.y = finalHeight + button.action.insets.top;

        //: buttonFrame.size.width = maxWidth - button.action.insets.left - button.action.insets.right;
        buttonFrame.size.width = maxWidth - button.action.insets.left - button.action.insets.right;

        //: button.frame = buttonFrame;
        button.frame = buttonFrame;

        //: finalHeight += buttonFrame.size.height + button.action.insets.top + button.action.insets.bottom;
        finalHeight += buttonFrame.size.height + button.action.insets.top + button.action.insets.bottom;
    }

    //: [CATransaction commit];
    [CATransaction commit];

    //: return finalHeight - initialPosition;
    return finalHeight - initialPosition;
}

//: - (void)configActionSheet{
- (void)configDevice{

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: UIView *shadowView = [UIView new];
    UIView *shadowView = [UIView new];

    //: shadowView.frame = self.view.bounds;
    shadowView.frame = self.view.bounds;

    //: shadowView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    shadowView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    //: shadowView.backgroundColor = [UIColor clearColor];
    shadowView.backgroundColor = [UIColor clearColor];

    //: shadowView.layer.shadowOffset = self.config.modelShadowOffset;
    shadowView.layer.shadowOffset = self.config.modelShadowOffset;

    //: shadowView.layer.shadowRadius = self.config.modelShadowRadius;
    shadowView.layer.shadowRadius = self.config.modelShadowRadius;

    //: shadowView.layer.shadowOpacity = self.config.modelShadowOpacity;
    shadowView.layer.shadowOpacity = self.config.modelShadowOpacity;

    //: shadowView.layer.shadowColor = self.config.modelShadowColor.CGColor;
    shadowView.layer.shadowColor = self.config.modelShadowColor.CGColor;

    //: [self.view addSubview: shadowView];
    [self.view addSubview: shadowView];

    //: _containerView = [UIView new];
    _containerView = [UIView new];

    //: [shadowView addSubview: _containerView];
    [shadowView addSubview: _containerView];

    //: _contentView = [UIView new];
    _contentView = [UIView new];

    //: [self.contentView addSubview: self.itemsScrollView];
    [self.contentView addSubview: self.itemsScrollView];

    //: [self.contentView addSubview: self.actionsScrollView];
    [self.contentView addSubview: self.actionsScrollView];

    //: [self.containerView addSubview: self.contentView];
    [self.containerView addSubview: self.contentView];

    //: self.contentView.backgroundColor = self.config.modelHeaderColor;
    self.contentView.backgroundColor = self.config.modelHeaderColor;

    //: self.containerView.backgroundColor = self.config.modelActionSheetBackgroundColor;
    self.containerView.backgroundColor = self.config.modelActionSheetBackgroundColor;

    //: self.containerView.lee_alert_cornerRadii = self.config.modelCornerRadii;
    self.containerView.lee_alert_cornerRadii = self.config.modelCornerRadii;

    //: self.contentView.lee_alert_cornerRadii = self.config.modelActionSheetHeaderCornerRadii;
    self.contentView.lee_alert_cornerRadii = self.config.modelActionSheetHeaderCornerRadii;

    //: self.itemsScrollView.scrollEnabled = self.config.modelIsScrollEnabled;
    self.itemsScrollView.scrollEnabled = self.config.modelIsScrollEnabled;

    //: [self.config.modelItemArray enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.config.modelItemArray enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {

        //: void (^itemBlock)(LEEItem *) = obj;
        void (^itemBlock)(DetailImage *) = obj;

        //: LEEItem *item = [[LEEItem alloc] init];
        DetailImage *item = [[DetailImage alloc] init];

        //: if (itemBlock) itemBlock(item);
        if (itemBlock) itemBlock(item);

        //: NSValue *insetValue = [self.config.modelItemInsetsInfo objectForKey:@(idx)];
        NSValue *insetValue = [self.config.modelItemInsetsInfo objectForKey:@(idx)];

        //: if (insetValue) item.insets = insetValue.UIEdgeInsetsValue;
        if (insetValue) item.insets = insetValue.UIEdgeInsetsValue;

        //: switch (item.type) {
        switch (item.type) {
            //: case LEEItemTypeTitle:
            case LEEItemTypeTitle:
            {
                //: void(^block)(UILabel *label) = item.block;
                void(^block)(UILabel *label) = item.block;

                //: LEEItemLabel *label = [LEEItemLabel label];
                DisablePointView *label = [DisablePointView cut];

                //: [self.itemsScrollView addSubview:label];
                [self.itemsScrollView addSubview:label];

                //: [self.actionSheetItemArray addObject:label];
                [self.actionSheetItemArray addObject:label];

                //: label.textAlignment = NSTextAlignmentCenter;
                label.textAlignment = NSTextAlignmentCenter;

                //: label.font = [UIFont boldSystemFontOfSize:16.0f];
                label.font = [UIFont boldSystemFontOfSize:16.0f];

                //: if (@available(iOS 13.0, *)) {
                if (@available(iOS 13.0, *)) {
                    //: label.textColor = [UIColor secondaryLabelColor];
                    label.textColor = [UIColor secondaryLabelColor];

                //: } else {
                } else {
                    //: label.textColor = [UIColor darkGrayColor];
                    label.textColor = [UIColor darkGrayColor];
                }

                //: label.numberOfLines = 0;
                label.numberOfLines = 0;

                //: if (block) block(label);
                if (block) block(label);

                //: label.item = item;
                label.item = item;

                //: label.textChangedBlock = ^{
                label.textChangedBlock = ^{

                    //: if (weakSelf) [weakSelf updateActionSheetLayout];
                    if (weakSelf) [weakSelf find];
                //: };
                };
            }
                //: break;
                break;

            //: case LEEItemTypeContent:
            case LEEItemTypeContent:
            {
                //: void(^block)(UILabel *label) = item.block;
                void(^block)(UILabel *label) = item.block;

                //: LEEItemLabel *label = [LEEItemLabel label];
                DisablePointView *label = [DisablePointView cut];

                //: [self.itemsScrollView addSubview:label];
                [self.itemsScrollView addSubview:label];

                //: [self.actionSheetItemArray addObject:label];
                [self.actionSheetItemArray addObject:label];

                //: label.textAlignment = NSTextAlignmentCenter;
                label.textAlignment = NSTextAlignmentCenter;

                //: label.font = [UIFont systemFontOfSize:14.0f];
                label.font = [UIFont systemFontOfSize:14.0f];

                //: if (@available(iOS 13.0, *)) {
                if (@available(iOS 13.0, *)) {
                    //: label.textColor = [UIColor tertiaryLabelColor];
                    label.textColor = [UIColor tertiaryLabelColor];

                //: } else {
                } else {
                    //: label.textColor = [UIColor grayColor];
                    label.textColor = [UIColor grayColor];
                }

                //: label.numberOfLines = 0;
                label.numberOfLines = 0;

                //: if (block) block(label);
                if (block) block(label);

                //: label.item = item;
                label.item = item;

                //: label.textChangedBlock = ^{
                label.textChangedBlock = ^{

                    //: if (weakSelf) [weakSelf updateActionSheetLayout];
                    if (weakSelf) [weakSelf find];
                //: };
                };
            }
                //: break;
                break;

            //: case LEEItemTypeCustomView:
            case LEEItemTypeCustomView:
            {
                //: void(^block)(LEECustomView *) = item.block;
                void(^block)(ViewColor *) = item.block;

                //: LEECustomView *custom = [[LEECustomView alloc] init];
                ViewColor *custom = [[ViewColor alloc] init];

                //: block(custom);
                block(custom);

                //: [self.itemsScrollView addSubview:custom.container];
                [self.itemsScrollView addSubview:custom.container];

                //: [self.actionSheetItemArray addObject:custom];
                [self.actionSheetItemArray addObject:custom];

                //: custom.item = item;
                custom.item = item;

                //: custom.sizeChangedBlock = ^{
                custom.sizeChangedBlock = ^{

                    //: if (weakSelf) [weakSelf updateActionSheetLayout];
                    if (weakSelf) [weakSelf find];
                //: };
                };
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }

    //: }];
    }];

    // 根据 modelIsActionFollowScrollEnabled 属性控制Action添加到哪个父视图
    //: UIView *actionContainerView = self.config.modelIsActionFollowScrollEnabled ? self.itemsScrollView : self.actionsScrollView;
    UIView *actionContainerView = self.config.modelIsActionFollowScrollEnabled ? self.itemsScrollView : self.actionsScrollView;

    //: for (id item in self.config.modelActionArray) {
    for (id item in self.config.modelActionArray) {

        //: void (^block)(LEEAction *action) = item;
        void (^block)(TempAction *action) = item;

        //: LEEAction *action = [[LEEAction alloc] init];
        TempAction *action = [[TempAction alloc] init];

        //: if (block) block(action);
        if (block) block(action);

        //: if (!action.font) action.font = [UIFont systemFontOfSize:18.0f];
        if (!action.font) action.font = [UIFont systemFontOfSize:18.0f];

        //: if (!action.title) action.title = @"按钮";
        if (!action.title) action.title = @"按钮";

        //: if (!action.titleColor) {
        if (!action.titleColor) {
            //: if (@available(iOS 13.0, *)) {
            if (@available(iOS 13.0, *)) {
                //: action.titleColor = [UIColor systemBlueColor];
                action.titleColor = [UIColor systemBlueColor];

            //: } else {
            } else {
                //: action.titleColor = [UIColor colorWithRed:21/255.0f green:123/255.0f blue:245/255.0f alpha:1.0f];
                action.titleColor = [UIColor colorWithRed:21/255.0f green:123/255.0f blue:245/255.0f alpha:1.0f];
            }
        }

        //: if (!action.backgroundColor) action.backgroundColor = self.config.modelHeaderColor;
        if (!action.backgroundColor) action.backgroundColor = self.config.modelHeaderColor;

        //: if (!action.backgroundHighlightColor) {
        if (!action.backgroundHighlightColor) {
            //: if (@available(iOS 13.0, *)) {
            if (@available(iOS 13.0, *)) {
                //: action.backgroundHighlightColor = [UIColor systemGray6Color];
                action.backgroundHighlightColor = [UIColor systemGray6Color];

            //: } else {
            } else {
                //: action.backgroundHighlightColor = [UIColor colorWithWhite:0.97 alpha:1.0f];
                action.backgroundHighlightColor = [UIColor colorWithWhite:0.97 alpha:1.0f];
            }
        }

        //: if (!action.borderColor) {
        if (!action.borderColor) {
            //: if (@available(iOS 13.0, *)) {
            if (@available(iOS 13.0, *)) {
                //: action.borderColor = [UIColor systemGray3Color];
                action.borderColor = [UIColor systemGray3Color];

            //: } else {
            } else {
                //: action.borderColor = [UIColor colorWithWhite:0.84 alpha:1.0f];
                action.borderColor = [UIColor colorWithWhite:0.84 alpha:1.0f];
            }
        }

        //: if (!action.borderWidth) action.borderWidth = (1.0f / [[UIScreen mainScreen] scale] + 0.02f);
        if (!action.borderWidth) action.borderWidth = (1.0f / [[UIScreen mainScreen] scale] + 0.02f);

        //: if (!action.height) action.height = 57.0f;
        if (!action.height) action.height = 57.0f;

        //: LEEActionButton *button = [LEEActionButton button];
        AggressionControl *button = [AggressionControl session];

        //: switch (action.type) {
        switch (action.type) {
            //: case LEEActionTypeCancel:
            case LEEActionTypeCancel:
            {
                //: [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
                [button addTarget:self action:@selector(sizing:) forControlEvents:UIControlEventTouchUpInside];

                //: button.lee_alert_cornerRadii = self.config.modelActionSheetCancelActionCornerRadii;
                button.lee_alert_cornerRadii = self.config.modelActionSheetCancelActionCornerRadii;

                //: button.backgroundColor = action.backgroundColor;
                button.backgroundColor = action.backgroundColor;

                //: [self.containerView addSubview:button];
                [self.containerView addSubview:button];

                //: self.actionSheetCancelAction = button;
                self.actionSheetCancelAction = button;

                //: self.actionSheetCancelActionSpaceView = [[UIView alloc] init];
                self.actionSheetCancelActionSpaceView = [[UIView alloc] init];

                //: self.actionSheetCancelActionSpaceView.backgroundColor = self.config.modelActionSheetCancelActionSpaceColor;
                self.actionSheetCancelActionSpaceView.backgroundColor = self.config.modelActionSheetCancelActionSpaceColor;

                //: [self.containerView addSubview:self.actionSheetCancelActionSpaceView];
                [self.containerView addSubview:self.actionSheetCancelActionSpaceView];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: if (!action.borderPosition) action.borderPosition = LEEActionBorderPositionTop;
                if (!action.borderPosition) action.borderPosition = LEEActionBorderPositionTop;

                //: [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
                [button addTarget:self action:@selector(sizing:) forControlEvents:UIControlEventTouchUpInside];

                //: [actionContainerView addSubview:button];
                [actionContainerView addSubview:button];

                //: [self.actionSheetActionArray addObject:button];
                [self.actionSheetActionArray addObject:button];
            }
                //: break;
                break;
        }

        //: button.action = action;
        button.action = action;

        //: button.heightChangedBlock = ^{
        button.heightChangedBlock = ^{

            //: if (weakSelf) [weakSelf updateActionSheetLayout];
            if (weakSelf) [weakSelf find];
        //: };
        };
    }

    // 更新布局

    //: [self updateActionSheetLayout];
    [self find];

    //: [self showAnimationsWithCompletionBlock:^{
    [self arrayAt:^{

        //: if (weakSelf) [weakSelf updateActionSheetLayout];
        if (weakSelf) [weakSelf find];
    //: }];
    }];

}

//: - (void)buttonAction:(LEEActionButton *)sender{
- (void)sizing:(AggressionControl *)sender{

    //: BOOL isClose = NO;
    BOOL isClose = NO;
    //: NSInteger index = 0;
    NSInteger index = 0;
    //: void (^clickBlock)(void) = nil;
    void (^clickBlock)(void) = nil;

    //: switch (sender.action.type) {
    switch (sender.action.type) {
        //: case LEEActionTypeDefault:
        case LEEActionTypeDefault:

            //: isClose = sender.action.isClickNotClose ? NO : YES;
            isClose = sender.action.isClickNotClose ? NO : YES;

            //: index = [self.actionSheetActionArray indexOfObject:sender];
            index = [self.actionSheetActionArray indexOfObject:sender];

            //: break;
            break;

        //: case LEEActionTypeCancel:
        case LEEActionTypeCancel:

            //: isClose = YES;
            isClose = YES;

            //: index = self.actionSheetActionArray.count;
            index = self.actionSheetActionArray.count;

            //: break;
            break;

        //: case LEEActionTypeDestructive:
        case LEEActionTypeDestructive:

            //: isClose = YES;
            isClose = YES;

            //: index = [self.actionSheetActionArray indexOfObject:sender];
            index = [self.actionSheetActionArray indexOfObject:sender];

            //: break;
            break;

        //: default:
        default:
            //: break;
            break;
    }

    //: clickBlock = sender.action.clickBlock;
    clickBlock = sender.action.clickBlock;

    //: if (isClose) {
    if (isClose) {

        //: if (self.config.modelShouldActionClickClose && !self.config.modelShouldActionClickClose(index)) return;
        if (self.config.modelShouldActionClickClose && !self.config.modelShouldActionClickClose(index)) return;

        //: [self closeAnimationsWithCompletionBlock:^{
        [self imageInput:^{

            //: if (clickBlock) clickBlock();
            if (clickBlock) clickBlock();
        //: }];
        }];

    //: } else {
    } else {

        //: if (clickBlock) clickBlock();
        if (clickBlock) clickBlock();
    }

}

//: - (void)headerTapAction:(UITapGestureRecognizer *)tap{
- (void)moding:(UITapGestureRecognizer *)tap{

    //: if (self.config.modelIsClickHeaderClose) [self closeAnimationsWithCompletionBlock:nil];
    if (self.config.modelIsClickHeaderClose) [self imageInput:nil];
}

//: #pragma mark start animations
#pragma mark start animations

//: - (void)showAnimationsWithCompletionBlock:(void (^)(void))completionBlock{
- (void)arrayAt:(void (^)(void))completionBlock{

    //: [super showAnimationsWithCompletionBlock:completionBlock];
    [super arrayAt:completionBlock];

    //: if (self.isShowing) return;
    if (self.isShowing) return;

    //: self.isShowing = YES;
    self.isShowing = YES;

    //: isShowed = YES;
    isShowed = YES;

    //: CGFloat viewWidth = CGRectGetWidth(self.view.frame);
    CGFloat viewWidth = CGRectGetWidth(self.view.frame);

    //: CGFloat viewHeight = CGRectGetHeight(self.view.frame);
    CGFloat viewHeight = CGRectGetHeight(self.view.frame);

    //: CGRect containerFrame = self.containerView.frame;
    CGRect containerFrame = self.containerView.frame;

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationNone) {
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationNone) {

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) - self.config.modelActionSheetBottomMargin;
        containerFrame.origin.y = (viewHeight - containerFrame.size.height) - self.config.modelActionSheetBottomMargin;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationTop) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationTop) {

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = 0 - containerFrame.size.height;
        containerFrame.origin.y = 0 - containerFrame.size.height;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationBottom) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationBottom) {

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = viewHeight;
        containerFrame.origin.y = viewHeight;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationLeft) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationLeft) {

        //: containerFrame.origin.x = 0 - containerFrame.size.width;
        containerFrame.origin.x = 0 - containerFrame.size.width;

        //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) - self.config.modelActionSheetBottomMargin;
        containerFrame.origin.y = (viewHeight - containerFrame.size.height) - self.config.modelActionSheetBottomMargin;

    //: } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationRight) {
    } else if (self.config.modelOpenAnimationStyle & LEEAnimationStyleOrientationRight) {

        //: containerFrame.origin.x = viewWidth;
        containerFrame.origin.x = viewWidth;

        //: containerFrame.origin.y = (viewHeight - containerFrame.size.height) - self.config.modelActionSheetBottomMargin;
        containerFrame.origin.y = (viewHeight - containerFrame.size.height) - self.config.modelActionSheetBottomMargin;
    }

    //: self.containerView.frame = containerFrame;
    self.containerView.frame = containerFrame;

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleFade) self.containerView.alpha = 0.0f;
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleFade) self.containerView.alpha = 0.0f;

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomEnlarge) self.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomEnlarge) self.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);

    //: if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomShrink) self.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
    if (self.config.modelOpenAnimationStyle & LEEAnimationStyleZoomShrink) self.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (self.config.modelOpenAnimationConfigBlock) self.config.modelOpenAnimationConfigBlock(^{
    if (self.config.modelOpenAnimationConfigBlock) self.config.modelOpenAnimationConfigBlock(^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: switch (weakSelf.config.modelBackgroundStyle) {
        switch (weakSelf.config.modelBackgroundStyle) {

            //: case LEEBackgroundStyleBlur:
            case LEEBackgroundStyleBlur:
            {
                //: weakSelf.backgroundVisualEffectView.effect = [UIBlurEffect effectWithStyle:weakSelf.config.modelBackgroundBlurEffectStyle];
                weakSelf.backgroundVisualEffectView.effect = [UIBlurEffect effectWithStyle:weakSelf.config.modelBackgroundBlurEffectStyle];
            }
                //: break;
                break;

            //: case LEEBackgroundStyleTranslucent:
            case LEEBackgroundStyleTranslucent:
            {
                //: weakSelf.view.backgroundColor = [weakSelf.config.modelBackgroundColor colorWithAlphaComponent:weakSelf.config.modelBackgroundStyleColorAlpha];
                weakSelf.view.backgroundColor = [weakSelf.config.modelBackgroundColor colorWithAlphaComponent:weakSelf.config.modelBackgroundStyleColorAlpha];
            }
                //: break;
                break;

            //: default:
            default:
                //: break;
                break;
        }

        //: CGRect containerFrame = weakSelf.containerView.frame;
        CGRect containerFrame = weakSelf.containerView.frame;

        //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
        containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

        //: containerFrame.origin.y = viewHeight - containerFrame.size.height;
        containerFrame.origin.y = viewHeight - containerFrame.size.height;

        //: weakSelf.containerView.frame = containerFrame;
        weakSelf.containerView.frame = containerFrame;

        //: weakSelf.containerView.alpha = 1.0f;
        weakSelf.containerView.alpha = 1.0f;

        //: weakSelf.containerView.transform = CGAffineTransformIdentity;
        weakSelf.containerView.transform = CGAffineTransformIdentity;

    //: }, ^{
    }, ^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: weakSelf.isShowing = NO;
        weakSelf.isShowing = NO;

        //: [weakSelf.view setUserInteractionEnabled:YES];
        [weakSelf.view setUserInteractionEnabled:YES];

        //: if (weakSelf.openFinishBlock) weakSelf.openFinishBlock();
        if (weakSelf.openFinishBlock) weakSelf.openFinishBlock();

        //: if (completionBlock) completionBlock();
        if (completionBlock) completionBlock();
    //: });
    });

}

//: #pragma mark close animations
#pragma mark close animations

//: - (void)closeAnimationsWithCompletionBlock:(void (^)(void))completionBlock{
- (void)imageInput:(void (^)(void))completionBlock{

    //: [super closeAnimationsWithCompletionBlock:completionBlock];
    [super imageInput:completionBlock];

    //: if (self.isClosing) return;
    if (self.isClosing) return;
    //: if (self.config.modelShouldClose && !self.config.modelShouldClose()) return;
    if (self.config.modelShouldClose && !self.config.modelShouldClose()) return;

    //: self.isClosing = YES;
    self.isClosing = YES;

    //: isShowed = NO;
    isShowed = NO;

    //: CGFloat viewWidth = CGRectGetWidth(self.view.frame);
    CGFloat viewWidth = CGRectGetWidth(self.view.frame);

    //: CGFloat viewHeight = CGRectGetHeight(self.view.frame);
    CGFloat viewHeight = CGRectGetHeight(self.view.frame);

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (self.config.modelCloseAnimationConfigBlock) self.config.modelCloseAnimationConfigBlock(^{
    if (self.config.modelCloseAnimationConfigBlock) self.config.modelCloseAnimationConfigBlock(^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: switch (weakSelf.config.modelBackgroundStyle) {
        switch (weakSelf.config.modelBackgroundStyle) {

            //: case LEEBackgroundStyleBlur:
            case LEEBackgroundStyleBlur:
            {
                //: weakSelf.backgroundVisualEffectView.alpha = 0.0f;
                weakSelf.backgroundVisualEffectView.alpha = 0.0f;
            }
                //: break;
                break;

            //: case LEEBackgroundStyleTranslucent:
            case LEEBackgroundStyleTranslucent:
            {
                //: weakSelf.view.backgroundColor = [weakSelf.view.backgroundColor colorWithAlphaComponent:0.0f];
                weakSelf.view.backgroundColor = [weakSelf.view.backgroundColor colorWithAlphaComponent:0.0f];
            }
                //: break;
                break;

            //: default:
            default:
                //: break;
                break;
        }

        //: CGRect containerFrame = weakSelf.containerView.frame;
        CGRect containerFrame = weakSelf.containerView.frame;

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationNone) {
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationNone) {

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationTop) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationTop) {

            //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
            containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

            //: containerFrame.origin.y = 0 - containerFrame.size.height;
            containerFrame.origin.y = 0 - containerFrame.size.height;

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationBottom) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationBottom) {

            //: containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;
            containerFrame.origin.x = (viewWidth - containerFrame.size.width) * 0.5f;

            //: containerFrame.origin.y = viewHeight;
            containerFrame.origin.y = viewHeight;

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationLeft) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationLeft) {

            //: containerFrame.origin.x = 0 - containerFrame.size.width;
            containerFrame.origin.x = 0 - containerFrame.size.width;

        //: } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationRight) {
        } else if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleOrientationRight) {

            //: containerFrame.origin.x = viewWidth;
            containerFrame.origin.x = viewWidth;
        }

        //: weakSelf.containerView.frame = containerFrame;
        weakSelf.containerView.frame = containerFrame;

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleFade) weakSelf.containerView.alpha = 0.0f;
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleFade) weakSelf.containerView.alpha = 0.0f;

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomEnlarge) weakSelf.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomEnlarge) weakSelf.containerView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);

        //: if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomShrink) weakSelf.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);
        if (weakSelf.config.modelCloseAnimationStyle & LEEAnimationStyleZoomShrink) weakSelf.containerView.transform = CGAffineTransformMakeScale(0.6f, 0.6f);

    //: }, ^{
    }, ^{

        //: if (!weakSelf) return ;
        if (!weakSelf) return ;

        //: weakSelf.isClosing = NO;
        weakSelf.isClosing = NO;

        //: if (weakSelf.closeFinishBlock) weakSelf.closeFinishBlock();
        if (weakSelf.closeFinishBlock) weakSelf.closeFinishBlock();

        //: if (completionBlock) completionBlock();
        if (completionBlock) completionBlock();
    //: });
    });

}

//: #pragma mark delegate
#pragma mark delegate

//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{

    //: return (touch.view == self.itemsScrollView) ? YES : NO;
    return (touch.view == self.itemsScrollView) ? YES : NO;
}

//: #pragma mark LazyLoading
#pragma mark LazyLoading

//: - (UIView *)itemsScrollView{
- (UIView *)itemsScrollView{

    //: if (!_itemsScrollView) {
    if (!_itemsScrollView) {

        //: _itemsScrollView = [[UIScrollView alloc] init];
        _itemsScrollView = [[UIScrollView alloc] init];

        //: _itemsScrollView.backgroundColor = [UIColor clearColor];
        _itemsScrollView.backgroundColor = [UIColor clearColor];

        //: _itemsScrollView.directionalLockEnabled = YES;
        _itemsScrollView.directionalLockEnabled = YES;

        //: _itemsScrollView.bounces = NO;
        _itemsScrollView.bounces = NO;

        //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(headerTapAction:)];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(moding:)];

        //: tap.numberOfTapsRequired = 1;
        tap.numberOfTapsRequired = 1;

        //: tap.numberOfTouchesRequired = 1;
        tap.numberOfTouchesRequired = 1;

        //: tap.delegate = self;
        tap.delegate = self;

        //: [_itemsScrollView addGestureRecognizer:tap];
        [_itemsScrollView addGestureRecognizer:tap];
    }

    //: return _itemsScrollView;
    return _itemsScrollView;
}

//: - (UIScrollView *)actionsScrollView{
- (UIScrollView *)actionsScrollView{

    //: if (!_actionsScrollView) {
    if (!_actionsScrollView) {

        //: _actionsScrollView = [[UIScrollView alloc] init];
        _actionsScrollView = [[UIScrollView alloc] init];

        //: _actionsScrollView.backgroundColor = [UIColor clearColor];
        _actionsScrollView.backgroundColor = [UIColor clearColor];

        //: _actionsScrollView.directionalLockEnabled = YES;
        _actionsScrollView.directionalLockEnabled = YES;

        //: _actionsScrollView.bounces = NO;
        _actionsScrollView.bounces = NO;
    }

    //: return _actionsScrollView;
    return _actionsScrollView;
}

//: - (NSMutableArray <id>*)actionSheetItemArray{
- (NSMutableArray <id>*)actionSheetItemArray{

    //: if (!_actionSheetItemArray) _actionSheetItemArray = [NSMutableArray array];
    if (!_actionSheetItemArray) _actionSheetItemArray = [NSMutableArray array];

    //: return _actionSheetItemArray;
    return _actionSheetItemArray;
}

//: - (NSMutableArray <LEEActionButton *>*)actionSheetActionArray{
- (NSMutableArray <AggressionControl *>*)actionSheetActionArray{

    //: if (!_actionSheetActionArray) _actionSheetActionArray = [NSMutableArray array];
    if (!_actionSheetActionArray) _actionSheetActionArray = [NSMutableArray array];

    //: return _actionSheetActionArray;
    return _actionSheetActionArray;
}

//: @end
@end

//: @interface LEEBaseConfig ()<LEEAlertProtocol>
@interface IndependentTitle ()<ColorImage>

//: @property (nonatomic, assign) BOOL isShowing;
@property (nonatomic, assign) BOOL isShowing;

//: - (void)show;
- (void)icon;

//: @end
@end

//: @implementation LEEBaseConfig
@implementation IndependentTitle

//: - (void)dealloc{
- (void)dealloc{

    //: _config = nil;
    _config = nil;
}

//: - (nonnull instancetype)init
- (nonnull instancetype)init
{
    //: self = [super init];
    self = [super init];

    //: if (self) {
    if (self) {

        //: self.isShowing = NO;
        self.isShowing = NO;

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;

        //: self.config.modelFinishConfig = ^{
        self.config.modelFinishConfig = ^{

            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;

            //: if (!strongSelf) return;
            if (!strongSelf) return;

            //: if ([LEEAlert shareManager].queueArray.count) {
            if ([GraduateTemp video].queueArray.count) {

                //: LEEBaseConfig *last = [LEEAlert shareManager].queueArray.lastObject;
                IndependentTitle *last = [GraduateTemp video].queueArray.lastObject;

                // 当前未加入队列 同时 已显示的优先级高于当前 跳过
                //: if (!strongSelf.config.modelIsQueue && last.config.modelQueuePriority > strongSelf.config.modelQueuePriority) {
                if (!strongSelf.config.modelIsQueue && last.config.modelQueuePriority > strongSelf.config.modelQueuePriority) {
                    //: return;
                    return;
                }
                // 已显示的未加入队列 同时已显示的优先级小于等于当前 关闭已显示的并移除
                //: if (!last.config.modelIsQueue && last.config.modelQueuePriority <= strongSelf.config.modelQueuePriority) {
                if (!last.config.modelIsQueue && last.config.modelQueuePriority <= strongSelf.config.modelQueuePriority) {

                    //: [last close];
                    [last samplingSend];

                    //: [[LEEAlert shareManager].queueArray removeObject:last];
                    [[GraduateTemp video].queueArray removeObject:last];
                }
                // 已显示的已加入队列 同时已显示的优先级小于等于当前 关闭已显示的不移除
                //: if (last.config.modelIsQueue && last.config.modelQueuePriority <= strongSelf.config.modelQueuePriority) {
                if (last.config.modelIsQueue && last.config.modelQueuePriority <= strongSelf.config.modelQueuePriority) {
                    //: [last close];
                    [last samplingSend];
                }

                //: if (![[LEEAlert shareManager].queueArray containsObject:strongSelf]) {
                if (![[GraduateTemp video].queueArray containsObject:strongSelf]) {

                    //: [[LEEAlert shareManager].queueArray addObject:strongSelf];
                    [[GraduateTemp video].queueArray addObject:strongSelf];

                    //: [[LEEAlert shareManager].queueArray sortUsingComparator:^NSComparisonResult(LEEBaseConfig *configA, LEEBaseConfig *configB) {
                    [[GraduateTemp video].queueArray sortUsingComparator:^NSComparisonResult(IndependentTitle *configA, IndependentTitle *configB) {

                        //: return configA.config.modelQueuePriority > configB.config.modelQueuePriority ? NSOrderedDescending
                        return configA.config.modelQueuePriority > configB.config.modelQueuePriority ? NSOrderedDescending
                        //: : configA.config.modelQueuePriority == configB.config.modelQueuePriority ? NSOrderedSame : NSOrderedAscending;
                        : configA.config.modelQueuePriority == configB.config.modelQueuePriority ? NSOrderedSame : NSOrderedAscending;
                    //: }];
                    }];

                }

                //: if ([LEEAlert shareManager].queueArray.lastObject == strongSelf) [strongSelf show];
                if ([GraduateTemp video].queueArray.lastObject == strongSelf) [strongSelf icon];

            //: } else {
            } else {

                //: [strongSelf show];
                [strongSelf icon];

                //: [[LEEAlert shareManager].queueArray addObject:strongSelf];
                [[GraduateTemp video].queueArray addObject:strongSelf];
            }

        //: };
        };

    }

    //: return self;
    return self;
}

//: - (void)show{
- (void)icon{

    //: if (![LEEAlert shareManager].viewController) return;
    if (![GraduateTemp video].viewController) return;

    //: [LEEAlert shareManager].viewController.config = self.config;
    [GraduateTemp video].viewController.config = self.config;

    //: if ([self.config.modelPresentation isKindOfClass:[LEEPresentationWindow class]]) {
    if ([self.config.modelPresentation isKindOfClass:[BottomPresentation class]]) {

        //: LEEPresentationWindow *presentation = (LEEPresentationWindow *)self.config.modelPresentation;
        BottomPresentation *presentation = (BottomPresentation *)self.config.modelPresentation;

        //: [LEEAlert shareManager].leeWindow.rootViewController = [LEEAlert shareManager].viewController;
        [GraduateTemp video].leeWindow.rootViewController = [GraduateTemp video].viewController;

        //: [LEEAlert shareManager].leeWindow.windowLevel = presentation.windowLevel;
        [GraduateTemp video].leeWindow.windowLevel = presentation.windowLevel;

        //: [LEEAlert shareManager].leeWindow.hidden = NO;
        [GraduateTemp video].leeWindow.hidden = NO;

        //: if (@available(iOS 13.0, *)) {
        if (@available(iOS 13.0, *)) {
            //: [LEEAlert shareManager].leeWindow.overrideUserInterfaceStyle = self.config.modelUserInterfaceStyle;
            [GraduateTemp video].leeWindow.overrideUserInterfaceStyle = self.config.modelUserInterfaceStyle;

        //: } else {
        } else {
            //: [[LEEAlert shareManager].leeWindow makeKeyAndVisible];
            [[GraduateTemp video].leeWindow makeKeyAndVisible];
        }

        //: self.isShowing = YES;
        self.isShowing = YES;
    }

    //: if ([self.config.modelPresentation isKindOfClass:[LEEPresentationViewController class]]) {
    if ([self.config.modelPresentation isKindOfClass:[EmptyPresentation class]]) {

        //: LEEPresentationViewController *presentation = (LEEPresentationViewController *)self.config.modelPresentation;
        EmptyPresentation *presentation = (EmptyPresentation *)self.config.modelPresentation;

        //: if (!presentation.viewController) return;
        if (!presentation.viewController) return;

        //: [presentation.viewController addChildViewController:[LEEAlert shareManager].viewController];
        [presentation.viewController addChildViewController:[GraduateTemp video].viewController];

        //: [presentation.viewController.view addSubview:[LEEAlert shareManager].viewController.view];
        [presentation.viewController.view addSubview:[GraduateTemp video].viewController.view];

        //: if (@available(iOS 13.0, *)) {
        if (@available(iOS 13.0, *)) {
            //: [LEEAlert shareManager].viewController.view.overrideUserInterfaceStyle = self.config.modelUserInterfaceStyle;
            [GraduateTemp video].viewController.view.overrideUserInterfaceStyle = self.config.modelUserInterfaceStyle;
        }

        //: [LEEAlert shareManager].viewController.view.frame = presentation.viewController.view.bounds;
        [GraduateTemp video].viewController.view.frame = presentation.viewController.view.bounds;

        //: [LEEAlert shareManager].viewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [GraduateTemp video].viewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

        //: [[LEEAlert shareManager].viewController didMoveToParentViewController:presentation.viewController];
        [[GraduateTemp video].viewController didMoveToParentViewController:presentation.viewController];

        //: self.isShowing = YES;
        self.isShowing = YES;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: [LEEAlert shareManager].viewController.openFinishBlock = ^{
    [GraduateTemp video].viewController.openFinishBlock = ^{

    //: };
    };

    //: [LEEAlert shareManager].viewController.closeFinishBlock = ^{
    [GraduateTemp video].viewController.closeFinishBlock = ^{

        //: __strong typeof(weakSelf) strongSelf = weakSelf;
        __strong typeof(weakSelf) strongSelf = weakSelf;

        //: if (!strongSelf) return;
        if (!strongSelf) return;

        //: if ([LEEAlert shareManager].queueArray.lastObject == strongSelf) {
        if ([GraduateTemp video].queueArray.lastObject == strongSelf) {

            //: [strongSelf close];
            [strongSelf samplingSend];

            //: [[LEEAlert shareManager].queueArray removeObject:strongSelf];
            [[GraduateTemp video].queueArray removeObject:strongSelf];

            //: if (strongSelf.config.modelIsContinueQueueDisplay) [LEEAlert continueQueueDisplay];
            if (strongSelf.config.modelIsContinueQueueDisplay) [GraduateTemp team];

        //: } else {
        } else {

            //: [[LEEAlert shareManager].queueArray removeObject:strongSelf];
            [[GraduateTemp video].queueArray removeObject:strongSelf];
        }

        //: if (strongSelf.config.modelCloseComplete) strongSelf.config.modelCloseComplete();
        if (strongSelf.config.modelCloseComplete) strongSelf.config.modelCloseComplete();
    //: };
    };

}

//: - (void)close{
- (void)samplingSend{

    //: if (!self.isShowing) return;
    if (!self.isShowing) return;

    //: if ([self.config.modelPresentation isKindOfClass:[LEEPresentationWindow class]]) {
    if ([self.config.modelPresentation isKindOfClass:[BottomPresentation class]]) {

        //: [LEEAlert shareManager].leeWindow.hidden = YES;
        [GraduateTemp video].leeWindow.hidden = YES;

        //: [[LEEAlert shareManager].leeWindow resignKeyWindow];
        [[GraduateTemp video].leeWindow resignKeyWindow];

        //: [LEEAlert shareManager].leeWindow.rootViewController = nil;
        [GraduateTemp video].leeWindow.rootViewController = nil;
    }

    //: if ([self.config.modelPresentation isKindOfClass:[LEEPresentationViewController class]]) {
    if ([self.config.modelPresentation isKindOfClass:[EmptyPresentation class]]) {

        //: [[LEEAlert shareManager].viewController willMoveToParentViewController:nil];
        [[GraduateTemp video].viewController willMoveToParentViewController:nil];

        //: [[LEEAlert shareManager].viewController.view removeFromSuperview];
        [[GraduateTemp video].viewController.view removeFromSuperview];

        //: [[LEEAlert shareManager].viewController removeFromParentViewController];
        [[GraduateTemp video].viewController removeFromParentViewController];
    }

    //: [LEEAlert shareManager].viewController = nil;
    [GraduateTemp video].viewController = nil;
}

//: - (void)closeWithCompletionBlock:(void (^)(void))completionBlock{
- (void)commenting:(void (^)(void))completionBlock{

    //: if ([LEEAlert shareManager].viewController) [[LEEAlert shareManager].viewController closeAnimationsWithCompletionBlock:completionBlock];
    if ([GraduateTemp video].viewController) [[GraduateTemp video].viewController imageInput:completionBlock];
}

//: #pragma mark - LazyLoading
#pragma mark - LazyLoading

//: - (LEEBaseConfigModel *)config{
- (MessageMargin *)config{

    //: if (!_config) _config = [[LEEBaseConfigModel alloc] init];
    if (!_config) _config = [[MessageMargin alloc] init];

    //: return _config;
    return _config;
}

//: @end
@end

//: @implementation LEEAlertConfig
@implementation TeamBaseConfig

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

        //: self.config
        self.config
        //: .LeeConfigMaxWidth(^CGFloat(LEEScreenOrientationType type, CGSize size) {
        .LeeConfigMaxWidth(^CGFloat(LEEScreenOrientationType type, CGSize size) {

            //: return 280.0f;
            return 280.0f;
        //: })
        })
        //: .LeeConfigMaxHeight(^CGFloat(LEEScreenOrientationType type, CGSize size) {
        .LeeConfigMaxHeight(^CGFloat(LEEScreenOrientationType type, CGSize size) {

            //: return size.height - 40.0f - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).top - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom;
            return size.height - 40.0f - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).top - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom;
        //: })
        })
        //: .LeeOpenAnimationStyle(LEEAnimationStyleOrientationNone | LEEAnimationStyleFade | LEEAnimationStyleZoomEnlarge)
        .LeeOpenAnimationStyle(LEEAnimationStyleOrientationNone | LEEAnimationStyleFade | LEEAnimationStyleZoomEnlarge)
        //: .LeeCloseAnimationStyle(LEEAnimationStyleOrientationNone | LEEAnimationStyleFade | LEEAnimationStyleZoomShrink);
        .LeeCloseAnimationStyle(LEEAnimationStyleOrientationNone | LEEAnimationStyleFade | LEEAnimationStyleZoomShrink);
    }
    //: return self;
    return self;
}

//: - (void)show {
- (void)icon {

    //: [LEEAlert shareManager].viewController = [[LEEAlertViewController alloc] init];
    [GraduateTemp video].viewController = [[ThanFrameViewController alloc] init];

    //: [super show];
    [super icon];
}

//: @end
@end

//: @implementation LEEActionSheetConfig
@implementation AircraftBaseConfig

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.config
        self.config
        //: .LeeConfigMaxWidth(^CGFloat(LEEScreenOrientationType type, CGSize size) {
        .LeeConfigMaxWidth(^CGFloat(LEEScreenOrientationType type, CGSize size) {

            //: return type == LEEScreenOrientationTypeHorizontal ? size.height - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).top - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom - 20.0f : size.width - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).right - 20.0f;
            return type == LEEScreenOrientationTypeHorizontal ? size.height - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).top - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom - 20.0f : size.width - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).left - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).right - 20.0f;
        //: })
        })
        //: .LeeConfigMaxHeight(^CGFloat(LEEScreenOrientationType type, CGSize size) {
        .LeeConfigMaxHeight(^CGFloat(LEEScreenOrientationType type, CGSize size) {

            //: return size.height - 40.0f - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).top - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [LEEAlert getAlertWindow].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom;
            return size.height - 40.0f - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).top - ({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [GraduateTemp maxAcross].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom;
        //: })
        })
        //: .LeeOpenAnimationStyle(LEEAnimationStyleOrientationBottom)
        .LeeOpenAnimationStyle(LEEAnimationStyleOrientationBottom)
        //: .LeeCloseAnimationStyle(LEEAnimationStyleOrientationBottom)
        .LeeCloseAnimationStyle(LEEAnimationStyleOrientationBottom)
        //: .LeeClickBackgroundClose(YES);
        .LeeClickBackgroundClose(YES);
    }
    //: return self;
    return self;
}

//: - (void)show {
- (void)icon {

    //: [LEEAlert shareManager].viewController = [[LEEActionSheetViewController alloc] init];
    [GraduateTemp video].viewController = [[AlongViewController alloc] init];

    //: [super show];
    [super icon];
}

//: @end
@end

Byte * FleshBiasDataToCache(Byte *data) {
    int piper = data[0];
    int dimension = data[1];
    int deleteAlcohol = data[2];
    if (!piper) return data + deleteAlcohol;
    for (int i = 0; i < dimension / 2; i++) {
        int begin = deleteAlcohol + i;
        int end = deleteAlcohol + dimension - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[deleteAlcohol + dimension] = 0;
    return data + deleteAlcohol;
}

NSString *StringFromFleshBiasData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FleshBiasDataToCache(data)];
}  
