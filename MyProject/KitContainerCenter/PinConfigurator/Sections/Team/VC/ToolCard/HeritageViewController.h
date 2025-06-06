// __DEBUG__
// __CLOSE_PRINT__
//
//  HeritageViewController.h
// Notice
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ViewCardDataSourceProtocol.h"
#import "ViewCardDataSourceProtocol.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <FFFKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <FFFKitSelectCardData> item);

//: @interface FFFTeamCardSelectedViewController : UIViewController
@interface HeritageViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)net:(NSString *)title
                            //: items:(NSMutableArray <id <FFFKitSelectCardData>> *)items
                            bar:(NSMutableArray <id <FFFKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           withInfo:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
