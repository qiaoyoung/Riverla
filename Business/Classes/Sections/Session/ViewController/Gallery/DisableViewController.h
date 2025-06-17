// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableViewController.h
//  NIM
//
//  Created by Yan Wang on 2024/8/2.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESGalleryItem : NSString
@interface LatchkeyName : NSString
//: @property (nonatomic,copy) NSString *itemId;
@property (nonatomic,copy) NSString *itemId;
//: @property (nonatomic,copy) NSString *thumbPath;
@property (nonatomic,copy) NSString *thumbPath;
//: @property (nonatomic,copy) NSString *imageURL;
@property (nonatomic,copy) NSString *imageURL;
//: @property (nonatomic,copy) NSString *imagePath;
@property (nonatomic,copy) NSString *imagePath;
//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;
//: @property (nonatomic,assign) CGSize size;
@property (nonatomic,assign) CGSize size;
//: @end
@end

//: @interface ZMONGalleryImgViewController : UIViewController
@interface DisableViewController : UIViewController

//: @property (nonatomic,strong) NSString *imageURL;
@property (nonatomic,strong) NSString *imageURL;
//: @property (nonatomic,strong) NSString *imagePath;
@property (nonatomic,strong) NSString *imagePath;
//: @property (nonatomic,strong) NIMMessage *message;
@property (nonatomic,strong) NIMMessage *message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END