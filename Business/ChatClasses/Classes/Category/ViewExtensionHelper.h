// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewExtensionHelper.h
// Notice
//
//  Created by amao on 4/25/16.
//  Copyright © 2016 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSString (NIMKitExtension)
@interface NSString (ActionExtension)
//: - (NSDictionary *)nimkit_jsonDict;
- (NSDictionary *)commentName;
//: @end
@end


//: @interface NSDictionary (NIMKitExtension)
@interface NSDictionary (ActionExtension)
//: - (NSString *)nimkit_jsonString;
- (NSString *)nimkit;
//: @end
@end
