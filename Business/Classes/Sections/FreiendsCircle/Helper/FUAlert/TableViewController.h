// __DEBUG__
// __CLOSE_PRINT__
//
//  TableViewController.h
//
//  Created by 项林平 on 2019/6/21.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @class FUAlertController;
@class TableViewController;

//: @interface FUAlertModel : NSObject
@interface ShowSupport : NSObject
//: @property (nonatomic, copy) NSString *alertTitle;
@property (nonatomic, copy) NSString *alertTitle;
//: @property (nonatomic, copy) NSString *alertMessage;
@property (nonatomic, copy) NSString *alertMessage;
//: @property (nonatomic, assign) UIAlertControllerStyle preferredStyle;
@property (nonatomic, assign) UIAlertControllerStyle preferredStyle;

//: - (instancetype) initWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style;
- (instancetype) initWithStatuteNameMedia:(NSString *)title container:(NSString *)message pastControllerStyle:(UIAlertControllerStyle)style;

//: @end
@end

//: typedef void (^FUAlert)(FUAlertController *controller);
typedef void (^FUAlert)(TableViewController *controller);
//: typedef FUAlertController * _Nonnull (^FUShowAlert)(UIViewController *controller);
typedef TableViewController * _Nonnull (^FUShowAlert)(UIViewController *controller);
//: typedef FUAlertController * _Nonnull (^FUActions)(NSArray<UIAlertAction *> *actions);
typedef TableViewController * _Nonnull (^FUActions)(NSArray<UIAlertAction *> *actions);
//: typedef FUAlertController * _Nullable (^FUSourceView)(UIView *sourceView);
typedef TableViewController * _Nullable (^FUSourceView)(UIView *sourceView);

//: @interface FUAlertController : UIAlertController
@interface TableViewController : UIAlertController

//: + (FUAlertController *)makeAlert:(FUAlert)block alertModel:(FUAlertModel *)model;
+ (TableViewController *)buttonAlert:(FUAlert)block add:(ShowSupport *)model;

/**
 设置Actions

 @return Self
 */
//: - (FUActions)actionItems;
- (FUActions)slightItems;

/**
 当设备为iPad时设置SourceView

 @return Self
 */
//: - (FUSourceView)sourceView;
- (FUSourceView)leafImage;

/**
 显示Alert

 @return Self
 */
//: - (FUShowAlert)showAlert;
- (FUShowAlert)alert;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END