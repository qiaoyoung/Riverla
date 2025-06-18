// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageColor.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface NTESSubscribeManager : NSObject
@interface ImageColor : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)sharedUserAdministratorName;

//: - (void)start;
- (void)last;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)click:(NSInteger)type;

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)trackDoing:(NSString *)userId;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)quickCircleState:(NSString *)userId;

//: @end
@end