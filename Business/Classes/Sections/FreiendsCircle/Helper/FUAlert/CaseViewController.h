// __DEBUG__
// __CLOSE_PRINT__
//
//  CaseViewController.h
//
//  Created by 项林平 on 2019/6/21.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @class FUAlertController;
@class CaseViewController;

//: @interface FUAlertModel : NSObject
@interface FlushModel : NSObject
//: @property (nonatomic, copy) NSString *alertTitle;
@property (nonatomic, copy) NSString *alertTitle;
//: @property (nonatomic, copy) NSString *alertMessage;
@property (nonatomic, copy) NSString *alertMessage;
//: @property (nonatomic, assign) UIAlertControllerStyle preferredStyle;
@property (nonatomic, assign) UIAlertControllerStyle preferredStyle;

//: - (instancetype) initWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style;
- (instancetype) initWithScaleOf:(NSString *)title image:(NSString *)message should:(UIAlertControllerStyle)style;

//: @end
@end

//: typedef void (^FUAlert)(FUAlertController *controller);
typedef void (^FUAlert)(CaseViewController *controller);
//: typedef FUAlertController * _Nonnull (^FUShowAlert)(UIViewController *controller);
typedef CaseViewController * _Nonnull (^FUShowAlert)(UIViewController *controller);
//: typedef FUAlertController * _Nonnull (^FUActions)(NSArray<UIAlertAction *> *actions);
typedef CaseViewController * _Nonnull (^FUActions)(NSArray<UIAlertAction *> *actions);
//: typedef FUAlertController * _Nullable (^FUSourceView)(UIView *sourceView);
typedef CaseViewController * _Nullable (^FUSourceView)(UIView *sourceView);

//: @interface FUAlertController : UIAlertController
@interface CaseViewController : UIAlertController

//: + (FUAlertController *)makeAlert:(FUAlert)block alertModel:(FUAlertModel *)model;
+ (CaseViewController *)dedication:(FUAlert)block sessionModel:(FlushModel *)model;

/**
 设置Actions

 @return Self
 */
//: - (FUActions)actionItems;
- (FUActions)subItems;

/**
 当设备为iPad时设置SourceView

 @return Self
 */
//: - (FUSourceView)sourceView;
- (FUSourceView)option;

/**
 显示Alert

 @return Self
 */
//: - (FUShowAlert)showAlert;
- (FUShowAlert)outsideImage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END