// __DEBUG__
// __CLOSE_PRINT__
//
//  AchromaticColorViewController.h
// Afterwards
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UserCardDataSourceProtocol.h"
#import "UserCardDataSourceProtocol.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <FFFKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <FFFKitSelectCardData> item);

//: @interface FFFTeamCardSelectedViewController : UIViewController
@interface AchromaticColorViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)itemsIndex:(NSString *)title
                            //: items:(NSMutableArray <id <FFFKitSelectCardData>> *)items
                            flip:(NSMutableArray <id <FFFKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           countQueryedCompletion:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
