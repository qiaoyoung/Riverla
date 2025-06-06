
#import <Foundation/Foundation.h>
typedef struct {
    Byte creditAgency;
    Byte *deeply;
    unsigned int fieldWhip;
    bool candyMake;
} ApparentData;

NSString *StringFromApparentData(ApparentData *data);


//: groupAnimationHide
ApparentData kStr_embarrassedBeyondTitle = (ApparentData){74, (Byte []){45, 56, 37, 63, 58, 11, 36, 35, 39, 43, 62, 35, 37, 36, 2, 35, 46, 47, 215}, 18, false};


//: groupAnimationAlert
ApparentData kStr_lameValue = (ApparentData){7, (Byte []){96, 117, 104, 114, 119, 70, 105, 110, 106, 102, 115, 110, 104, 105, 70, 107, 98, 117, 115, 99}, 19, false};


//: bounds
ApparentData kStr_sireText = (ApparentData){67, (Byte []){33, 44, 54, 45, 39, 48, 6}, 6, false};


//: position
ApparentData kStr_exposeValue = (ApparentData){111, (Byte []){31, 0, 28, 6, 27, 6, 0, 1, 166}, 8, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIView+InfoByMargin.m
//  NIMDemo
//
//  Created by ght on 15-1-31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation UIView (NTES)
@implementation UIView (InfoByMargin)

//: - (CGFloat)left {
- (CGFloat)left {
    //: return self.frame.origin.x;
    return self.frame.origin.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setLeft:(CGFloat)x {
- (void)setLeft:(CGFloat)x {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = x;
    frame.origin.x = x;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)top {
- (CGFloat)top {
    //: return self.frame.origin.y;
    return self.frame.origin.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setTop:(CGFloat)y {
- (void)setTop:(CGFloat)y {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = y;
    frame.origin.y = y;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)right {
- (CGFloat)right {
    //: return self.frame.origin.x + self.frame.size.width;
    return self.frame.origin.x + self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setRight:(CGFloat)right {
- (void)setRight:(CGFloat)right {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = right - frame.size.width;
    frame.origin.x = right - frame.size.width;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)bottom {
- (CGFloat)bottom {
    //: return self.frame.origin.y + self.frame.size.height;
    return self.frame.origin.y + self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setBottom:(CGFloat)bottom {
- (void)setBottom:(CGFloat)bottom {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = bottom - frame.size.height;
    frame.origin.y = bottom - frame.size.height;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)centerX {
- (CGFloat)centerX {
    //: return self.center.x;
    return self.center.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setCenterX:(CGFloat)centerX {
- (void)setCenterX:(CGFloat)centerX {
    //: self.center = CGPointMake(centerX, self.center.y);
    self.center = CGPointMake(centerX, self.center.y);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)centerY {
- (CGFloat)centerY {
    //: return self.center.y;
    return self.center.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setCenterY:(CGFloat)centerY {
- (void)setCenterY:(CGFloat)centerY {
    //: self.center = CGPointMake(self.center.x, centerY);
    self.center = CGPointMake(self.center.x, centerY);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)width {
- (CGFloat)width {
    //: return self.frame.size.width;
    return self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setWidth:(CGFloat)width {
- (void)setWidth:(CGFloat)width {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size.width = width;
    frame.size.width = width;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)height {
- (CGFloat)height {
    //: return self.frame.size.height;
    return self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setHeight:(CGFloat)height {
- (void)setHeight:(CGFloat)height {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size.height = height;
    frame.size.height = height;
    //: self.frame = frame;
    self.frame = frame;
}
///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGPoint)origin {
- (CGPoint)origin {
    //: return self.frame.origin;
    return self.frame.origin;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setOrigin:(CGPoint)origin {
- (void)setOrigin:(CGPoint)origin {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin = origin;
    frame.origin = origin;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGSize)size {
- (CGSize)size {
    //: return self.frame.size;
    return self.frame.size;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setSize:(CGSize)size {
- (void)setSize:(CGSize)size {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size = size;
    frame.size = size;
    //: self.frame = frame;
    self.frame = frame;
}


//: - (UIViewController *)viewController{
- (UIViewController *)perspective{
    //: for (UIView* next = self; next; next = next.superview) {
    for (UIView* next = self; next; next = next.superview) {
        //: UIResponder* nextResponder = [next nextResponder];
        UIResponder* nextResponder = [next nextResponder];
        //: if ([nextResponder isKindOfClass:[UIViewController class]]) {
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            //: return (UIViewController*)nextResponder;
            return (UIViewController*)nextResponder;
        }
    }
    //: return nil;
    return nil;
}

//: @end
@end



//: @implementation UIView(NTESPresent)
@implementation UIView(Tincture)


//: static char PresentedViewAddress; 
static char let_underlyingName; //被Present的View
//: static char PresentingViewAddress; 
static char let_centerName; //正在Present其他视图的view

//: - (void)presentView:(UIView*)view animated:(BOOL)animated complete:(void(^)(void)) complete{
- (void)accountChild:(UIView*)view keyManager:(BOOL)animated accumulation:(void(^)(void)) complete{
    //: if (!self.window) {
    if (!self.window) {
        //: return;
        return;
    }
    //: [self.window addSubview:view];
    [self.window addSubview:view];
    //: objc_setAssociatedObject(self, &PresentedViewAddress, view, OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self, &let_underlyingName, view, OBJC_ASSOCIATION_RETAIN);
    //: objc_setAssociatedObject(view, &PresentingViewAddress, self, OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(view, &let_centerName, self, OBJC_ASSOCIATION_RETAIN);
    //: if (animated) {
    if (animated) {
        //: [self doAlertAnimate:view complete:complete];
        [self message:view file:complete];
    //: }else{
    }else{
        //: view.center = self.window.center;
        view.center = self.window.center;
    }
}

//: - (UIView *)presentedView{
- (UIView *)dedication{
    //: UIView * view = objc_getAssociatedObject(self, &PresentedViewAddress);
    UIView * view = objc_getAssociatedObject(self, &let_underlyingName);
    //: return view;
    return view;
}

//: - (void)dismissPresentedView:(BOOL)animated complete:(void(^)(void)) complete{
- (void)ting:(BOOL)animated blue:(void(^)(void)) complete{
    //: UIView * view = objc_getAssociatedObject(self, &PresentedViewAddress);
    UIView * view = objc_getAssociatedObject(self, &let_underlyingName);
    //: if (animated) {
    if (animated) {
        //: [self doHideAnimate:view complete:complete];
        [self keyShould:view perimeter:complete];
    //: }else{
    }else{
        //: [view removeFromSuperview];
        [view removeFromSuperview];
        //: [self cleanAssocaiteObject];
        [self globule];
    }
}

//: - (void)hideSelf:(BOOL)animated complete:(void(^)(void)) complete{
- (void)completeContainer:(BOOL)animated completeSize:(void(^)(void)) complete{
    //: UIView * baseView = objc_getAssociatedObject(self, &PresentingViewAddress);
    UIView * baseView = objc_getAssociatedObject(self, &let_centerName);
    //: if (!baseView) {
    if (!baseView) {
        //: return;
        return;
    }
    //: [baseView dismissPresentedView:animated complete:complete];
    [baseView ting:animated blue:complete];
    //: [self cleanAssocaiteObject];
    [self globule];
}


//: - (void)onPressBkg:(id)sender{
- (void)childView:(id)sender{
    //: [self dismissPresentedView:YES complete:nil];
    [self ting:YES blue:nil];
}

//: #pragma mark - Animation
#pragma mark - Animation
//: - (void)doAlertAnimate:(UIView*)view complete:(void(^)(void)) complete{
- (void)message:(UIView*)view file:(void(^)(void)) complete{
    //: CGRect bounds = view.bounds;
    CGRect bounds = view.bounds;
    // 放大
    //: CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:StringFromApparentData(&kStr_sireText)];
    //: scaleAnimation.duration = .25f;
    scaleAnimation.duration = .25f;
    //: scaleAnimation.fromValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];
    scaleAnimation.fromValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];
    //: scaleAnimation.toValue = [NSValue valueWithCGRect:bounds];
    scaleAnimation.toValue = [NSValue valueWithCGRect:bounds];

    // 移动
    //: CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:StringFromApparentData(&kStr_exposeValue)];
    //: moveAnimation.duration = .25f;
    moveAnimation.duration = .25f;
    //: moveAnimation.fromValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];
    moveAnimation.fromValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];
    //: moveAnimation.toValue = [NSValue valueWithCGPoint:self.window.center];
    moveAnimation.toValue = [NSValue valueWithCGPoint:self.window.center];

    //: CAAnimationGroup *group = [CAAnimationGroup animation];
    CAAnimationGroup *group = [CAAnimationGroup animation];
    //: group.beginTime = CACurrentMediaTime();
    group.beginTime = CACurrentMediaTime();
    //: group.duration = .25f;
    group.duration = .25f;
    //: group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    //: group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    //: group.fillMode = kCAFillModeForwards;
    group.fillMode = kCAFillModeForwards;
    //: group.removedOnCompletion = NO;
    group.removedOnCompletion = NO;
    //: group.autoreverses = NO;
    group.autoreverses = NO;

    //: [self hideAllSubView:view];
    [self dataName:view];

    //: [view.layer addAnimation:group forKey:@"groupAnimationAlert"];
    [view.layer addAnimation:group forKey:StringFromApparentData(&kStr_lameValue)];

    //: __weak UIView * wself = self;
    __weak UIView * wself = self;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: view.layer.bounds = bounds;
        view.layer.bounds = bounds;
        //: view.layer.position = wself.superview.center;
        view.layer.position = wself.superview.center;
        //: [wself showAllSubView:view];
        [wself layer:view];
        //: if (complete) {
        if (complete) {
            //: complete();
            complete();
        }
    //: });
    });

}

//: - (void)doHideAnimate:(UIView*)alertView complete:(void(^)(void)) complete{
- (void)keyShould:(UIView*)alertView perimeter:(void(^)(void)) complete{
    //: if (!alertView) {
    if (!alertView) {
        //: return;
        return;
    }
    // 缩小
    //: CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:StringFromApparentData(&kStr_sireText)];
    //: scaleAnimation.duration = .25f;
    scaleAnimation.duration = .25f;
    //: scaleAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];
    scaleAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];

    //: CGPoint position = self.center;
    CGPoint position = self.center;
    // 移动
    //: CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:StringFromApparentData(&kStr_exposeValue)];
    //: moveAnimation.duration = .25f;
    moveAnimation.duration = .25f;
    //: moveAnimation.toValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];
    moveAnimation.toValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];

    //: CAAnimationGroup *group = [CAAnimationGroup animation];
    CAAnimationGroup *group = [CAAnimationGroup animation];
    //: group.beginTime = CACurrentMediaTime();
    group.beginTime = CACurrentMediaTime();
    //: group.duration = .25f;
    group.duration = .25f;
    //: group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    //: group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    //: group.fillMode = kCAFillModeForwards;
    group.fillMode = kCAFillModeForwards;
    //: group.removedOnCompletion = NO;
    group.removedOnCompletion = NO;
    //: group.autoreverses = NO;
    group.autoreverses = NO;


    //: alertView.layer.bounds = self.bounds;
    alertView.layer.bounds = self.bounds;
    //: alertView.layer.position = position;
    alertView.layer.position = position;
    //: alertView.layer.needsDisplayOnBoundsChange = YES;
    alertView.layer.needsDisplayOnBoundsChange = YES;

    //: [self hideAllSubView:alertView];
    [self dataName:alertView];
    //: alertView.backgroundColor = [UIColor clearColor];
    alertView.backgroundColor = [UIColor clearColor];

    //: [alertView.layer addAnimation:group forKey:@"groupAnimationHide"];
    [alertView.layer addAnimation:group forKey:StringFromApparentData(&kStr_embarrassedBeyondTitle)];

    //: __weak UIView * wself = self;
    __weak UIView * wself = self;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [alertView removeFromSuperview];
        [alertView removeFromSuperview];
        //: [wself cleanAssocaiteObject];
        [wself globule];
        //: [wself showAllSubView:alertView];
        [wself layer:alertView];
        //: if (complete) {
        if (complete) {
            //: complete();
            complete();
        }
    //: });
    });
}


//: static char *HideViewsAddress = "hideViewsAddress";
static char *let_objectContent = "hideViewsAddress";
//: - (void)hideAllSubView:(UIView*)view{
- (void)dataName:(UIView*)view{
    //: for (UIView * subView in view.subviews) {
    for (UIView * subView in view.subviews) {
        //: NSMutableArray *array = [[NSMutableArray alloc] init];
        NSMutableArray *array = [[NSMutableArray alloc] init];
        //: if (subView.hidden) {
        if (subView.hidden) {
            //: [array addObject:subView];
            [array addObject:subView];
        }
        //: objc_setAssociatedObject(self, &HideViewsAddress, array, OBJC_ASSOCIATION_RETAIN);
        objc_setAssociatedObject(self, &let_objectContent, array, OBJC_ASSOCIATION_RETAIN);
        //: subView.hidden = YES;
        subView.hidden = YES;
    }
}

//: - (void)showAllSubView:(UIView*)view{
- (void)layer:(UIView*)view{
    //: NSMutableArray *array = objc_getAssociatedObject(self,&HideViewsAddress);
    NSMutableArray *array = objc_getAssociatedObject(self,&let_objectContent);
    //: for (UIView * subView in view.subviews) {
    for (UIView * subView in view.subviews) {
        //: subView.hidden = [array containsObject:subView];
        subView.hidden = [array containsObject:subView];
    }
}

//: - (void)cleanAssocaiteObject{
- (void)globule{
    //: objc_setAssociatedObject(self,&PresentedViewAddress,nil,OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self,&let_underlyingName,nil,OBJC_ASSOCIATION_RETAIN);
    //: objc_setAssociatedObject(self,&PresentingViewAddress,nil,OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self,&let_centerName,nil,OBJC_ASSOCIATION_RETAIN);
    //: objc_setAssociatedObject(self,&HideViewsAddress,nil, OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self,&let_objectContent,nil, OBJC_ASSOCIATION_RETAIN);
}

//: @end
@end

Byte *ApparentDataToByte(ApparentData *data) {
    if (data->candyMake) return data->deeply;
    for (int i = 0; i < data->fieldWhip; i++) {
        data->deeply[i] ^= data->creditAgency;
    }
    data->deeply[data->fieldWhip] = 0;
    data->candyMake = true;
    return data->deeply;
}

NSString *StringFromApparentData(ApparentData *data) {
    return [NSString stringWithUTF8String:(char *)ApparentDataToByte(data)];
}
