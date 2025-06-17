// __DEBUG__
// __CLOSE_PRINT__
//
//  TableViewController.m
//
//  Created by 项林平 on 2019/6/21.
//

// __M_A_C_R_O__
//: #import "FUAlertController.h"
#import "TableViewController.h"

//: @implementation FUAlertModel
@implementation ShowSupport

//: - (instancetype)initWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style {
- (instancetype)initWithStatuteNameMedia:(NSString *)title container:(NSString *)message pastControllerStyle:(UIAlertControllerStyle)style {
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
@implementation TableViewController
//: +(FUAlertController *)makeAlert:(FUAlert)block alertModel:(FUAlertModel *)model {
+(TableViewController *)buttonAlert:(FUAlert)block add:(ShowSupport *)model {
    //: FUAlertController *alert = [FUAlertController alertControllerWithTitle:model.alertTitle message:model.alertMessage preferredStyle:model.preferredStyle];
    TableViewController *alert = [TableViewController alertControllerWithTitle:model.alertTitle message:model.alertMessage preferredStyle:model.preferredStyle];
    //: block(alert);
    block(alert);
    //: return alert;
    return alert;
}
//: - (FUActions)actionItems {
- (FUActions)slightItems {
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
- (FUShowAlert)alert {
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
- (FUSourceView)leafImage {
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