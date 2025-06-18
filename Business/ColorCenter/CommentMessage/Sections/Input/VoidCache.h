// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// Afterwards
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface SignAstatineInventoryItem : NSObject

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @end
@end

//: @interface FFFInputAtCache : NSObject
@interface VoidCache : NSObject

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)value:(NSString *)sendText;

//: - (void)clean;
- (void)make;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)digitizer:(SignAstatineInventoryItem *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (SignAstatineInventoryItem *)beforeView:(NSString *)name;

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (SignAstatineInventoryItem *)keyErase:(NSString *)name;

//: @end
@end