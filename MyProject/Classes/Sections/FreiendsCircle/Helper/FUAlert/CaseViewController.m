// __DEBUG__
// __CLOSE_PRINT__
//
//  CaseViewController.m
//
//  Created by 项林平 on 2019/6/21.
//

// __M_A_C_R_O__
//: #import "FUAlertController.h"
#import "CaseViewController.h"

//: @implementation FUAlertModel
@implementation FlushModel

//: - (instancetype)initWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style {
- (instancetype)initWithScaleOf:(NSString *)title image:(NSString *)message should:(UIAlertControllerStyle)style {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.alertTitle = title;
        self.alertTitle = title;
        //: self.alertMessage = message;
        self.alertMessage = message;
        //: self.preferredStyle = style;
        self.preferredStyle = style;
    }
    //: return self;
    return self;
}
//: @end
@end

//: @implementation FUAlertController
@implementation CaseViewController
//: +(FUAlertController *)makeAlert:(FUAlert)block alertModel:(FUAlertModel *)model {
+(CaseViewController *)dedication:(FUAlert)block sessionModel:(FlushModel *)model {
    //: FUAlertController *alert = [FUAlertController alertControllerWithTitle:model.alertTitle message:model.alertMessage preferredStyle:model.preferredStyle];
    CaseViewController *alert = [CaseViewController alertControllerWithTitle:model.alertTitle message:model.alertMessage preferredStyle:model.preferredStyle];
    //: block(alert);
    block(alert);
    //: return alert;
    return alert;
}
//: - (FUActions)actionItems {
- (FUActions)subItems {
    //: FUActions actionsBlock = ^(NSArray<UIAlertAction *> *actions) {
    FUActions actionsBlock = ^(NSArray<UIAlertAction *> *actions) {
        //: [actions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [actions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [self addAction:obj];
            [self addAction:obj];
        //: }];
        }];
        //: return self;
        return self;
    //: };
    };
    //: return actionsBlock;
    return actionsBlock;
}
//: - (FUShowAlert)showAlert {
- (FUShowAlert)outsideImage {
    //: FUShowAlert showBlock = ^(UIViewController *controller) {
    FUShowAlert showBlock = ^(UIViewController *controller) {
        //: [controller presentViewController:self animated:YES completion:nil];
        [controller presentViewController:self animated:YES completion:nil];
        //: return self;
        return self;
    //: };
    };
    //: return showBlock;
    return showBlock;
}
//: - (FUSourceView)sourceView {
- (FUSourceView)option {
    //: FUSourceView sourceViewBlock = ^(UIView *sourceView) {
    FUSourceView sourceViewBlock = ^(UIView *sourceView) {
        //: if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad && sourceView) {
        if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad && sourceView) {
            //: self.popoverPresentationController.sourceView = sourceView;
            self.popoverPresentationController.sourceView = sourceView;
            //: self.popoverPresentationController.sourceRect = sourceView.bounds;
            self.popoverPresentationController.sourceRect = sourceView.bounds;
            //: self.popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionAny;
            self.popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionAny;
        }
        //: return self;
        return self;
    //: };
    };
    //: return sourceViewBlock;
    return sourceViewBlock;
}


//: @end
@end