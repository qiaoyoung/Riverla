// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// Notice
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface ByMessage : NSObject

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @end
@end

//: @interface FFFInputAtCache : NSObject
@interface AtEvaluate : NSObject

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)infoAcross:(NSString *)sendText;

//: - (void)clean;
- (void)hideClean;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)be:(ByMessage *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (ByMessage *)cookieItem:(NSString *)name;

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (ByMessage *)signaling:(NSString *)name;

//: @end
@end