// __DEBUG__
// __CLOSE_PRINT__
//
//  MergeSource.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESMessageModel;
@class WithMessageModel;
//: @class NTESMultiRetweetAttachment;
@class StopOperationAttachment;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMergeMessageDataSource : NSObject
@interface MergeSource : NSObject

//: @property (nonatomic, strong) NSMutableArray<NTESMessageModel *> *items;
@property (nonatomic, strong) NSMutableArray<WithMessageModel *> *items;

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)handle:(StopOperationAttachment *)attachment
                    //: completion:(void (^)(NSString *msg))complete;
                    withRandomMetadataPickChangeNetwork:(void (^)(NSString *msg))complete;

//: - (NSIndexPath * _Nullable)updateMessage:(NIMMessage *)message;
- (NSIndexPath * _Nullable)modifyQuickPhoneSystemCipher:(NIMMessage *)message;

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message;
- (WithMessageModel *)phoneMessage:(NIMMessage *)message;

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages;
- (NSMutableArray<WithMessageModel *> *)checked:(NSMutableArray <NIMMessage *> *)messages;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END