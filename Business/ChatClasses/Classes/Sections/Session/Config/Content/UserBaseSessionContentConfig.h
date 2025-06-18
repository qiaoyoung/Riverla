// __DEBUG__
// __CLOSE_PRINT__
//
//  UserBaseSessionContentConfig.h
// Afterwards
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"

//: @protocol CCCSessionContentConfig <NSObject>
@protocol ItemConfig <NSObject>
//: @required
@required

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message;
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message;

//: - (NSString *)cellContent:(NIMMessage *)message;
- (NSString *)fire:(NIMMessage *)message;

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message;
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message;


//: @optional
@optional
//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message;
- (BOOL)dated:(NIMMessage *)message;

//: @end
@end

//: @interface FFFSessionContentConfigFactory : NSObject
@interface MentalPictureFactory : NSObject
//: + (instancetype)sharedFacotry;
+ (instancetype)on;
//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message;
- (id<ItemConfig>)configBy:(NIMMessage *)message;
//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message;
- (id<ItemConfig>)valueBy:(NIMMessage *)message;

//: @end
@end
