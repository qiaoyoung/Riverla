
#import <Foundation/Foundation.h>

NSString *StringFromUponData(Byte *data);


//: %@。error:%zd
Byte kStr_leaseName[] = {77, 14, 45, 5, 162, 82, 109, 16, 173, 175, 146, 159, 159, 156, 159, 103, 82, 167, 145, 177};


//: 附件下载错误
Byte kStr_birdOilData[] = {44, 18, 23, 13, 50, 255, 88, 23, 229, 130, 115, 214, 85, 0, 176, 155, 251, 210, 205, 251, 207, 162, 255, 212, 212, 0, 171, 176, 255, 198, 198, 100};


//: 文件解码错误
Byte kStr_executionData[] = {32, 18, 19, 10, 197, 19, 233, 219, 104, 14, 249, 169, 154, 247, 206, 201, 251, 186, 182, 250, 179, 148, 252, 167, 172, 251, 194, 194, 23};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionLinkApp.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageDataSource.h"
#import "ActionLinkApp.h"
//: #import "NTESMessageSerialization.h"
#import "TextIndex.h"
//: #import "NTESMessageModel.h"
#import "MaxHouseMessageModel.h"
//: #import "FFFTimestampModel.h"
#import "IndexIcon.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ConstituentAttachment.h"

//: @interface NTESMergeMessageDataSource ()
@interface ActionLinkApp ()

//: @property (nonatomic, assign) NSInteger currentDay;
@property (nonatomic, assign) NSInteger currentDay;
//: @property (nonatomic, strong) NTESMessageSerialization *serialization;
@property (nonatomic, strong) TextIndex *serialization;
//: @end
@end

//: @implementation NTESMergeMessageDataSource
@implementation ActionLinkApp

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _serialization = [[NTESMessageSerialization alloc] init];
        _serialization = [[TextIndex alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)device:(ConstituentAttachment *)attachment
                    //: completion:(void (^)(NSString *msg))complete {
                    of:(void (^)(NSString *msg))complete {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: NSString *filePath = attachment.filePath;
    NSString *filePath = attachment.filePath;
    //: NSString *fileUrl = attachment.url;
    NSString *fileUrl = attachment.url;
    //: BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (fileExist) {
    if (fileExist) {
        //: [weakSelf.serialization decode:filePath
        [weakSelf.serialization color:filePath
                               //: encrypt:attachment.encrypted
                               change:attachment.encrypted
                              //: password:attachment.password
                              bottom:attachment.password
                            //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                            applicationDisableDecodeResult:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:StringFromUponData(kStr_leaseName),StringFromUponData(kStr_executionData).titleLocalized, error.code];
            //: } else {
            } else {
                //: [weakSelf checkAttachmentState:messages];
                [weakSelf label:messages];
                //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                weakSelf.items = [weakSelf streetSmart:messages];
            }
            //: if (complete) {
            if (complete) {
                //: complete(msg);
                complete(msg);
            }
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"附件下载错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:StringFromUponData(kStr_leaseName),StringFromUponData(kStr_birdOilData).titleLocalized, error.code];
            //: } else {
            } else {
                //: [weakSelf.serialization decode:filePath
                [weakSelf.serialization color:filePath
                                       //: encrypt:attachment.encrypted
                                       change:attachment.encrypted
                                      //: password:attachment.password
                                      bottom:attachment.password
                                    //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                                    applicationDisableDecodeResult:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                    //: if (error) {
                    if (error) {
                        //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                        msg = [NSString stringWithFormat:StringFromUponData(kStr_leaseName),StringFromUponData(kStr_executionData).titleLocalized, error.code];
                    //: } else {
                    } else {
                        //: [weakSelf checkAttachmentState:messages];
                        [weakSelf label:messages];
                        //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                        weakSelf.items = [weakSelf streetSmart:messages];
                    }
                    //: if (complete) {
                    if (complete) {
                        //: complete(msg);
                        complete(msg);
                    }
                //: }];
                }];
            }
        //: }];
        }];
    }
}

//: - (NSIndexPath *)updateMessage:(NIMMessage *)message
- (NSIndexPath *)searched:(NIMMessage *)message
{
    //: NTESMessageModel *model = nil;
    MaxHouseMessageModel *model = nil;
    //: NSIndexPath *indexPath = nil;
    NSIndexPath *indexPath = nil;
    //: for (id item in _items) {
    for (id item in _items) {

        //: if (![item isKindOfClass:[NTESMessageModel class]]) {
        if (![item isKindOfClass:[MaxHouseMessageModel class]]) {
            //: continue;
            continue;
        }

        //: NTESMessageModel *modelItem = (NTESMessageModel *)item;
        MaxHouseMessageModel *modelItem = (MaxHouseMessageModel *)item;
        //: if ([modelItem.message.messageId isEqualToString:message.messageId]) {
        if ([modelItem.message.messageId isEqualToString:message.messageId]) {
            //: model = item;
            model = item;
            //: break;
            break;
        }
    }
    //: if (model)
    if (model)
    {
        //: NTESMessageModel *target = [self setupMessageModel:message];
        MaxHouseMessageModel *target = [self sourceSetup:message];
        //: NSInteger index = [_items indexOfObject:model];
        NSInteger index = [_items indexOfObject:model];
        //: [_items replaceObjectAtIndex:index withObject:target];
        [_items replaceObjectAtIndex:index withObject:target];
        //: indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        indexPath = [NSIndexPath indexPathForRow:index inSection:0];
    }
    //: return indexPath;
    return indexPath;
}

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message {
- (MaxHouseMessageModel *)sourceSetup:(NIMMessage *)message {
    //: NTESMessageModel *model = [[NTESMessageModel alloc] initWithMessage:message];
    MaxHouseMessageModel *model = [[MaxHouseMessageModel alloc] initWithDigitizer:message];
    //: model.focreShowAvatar = YES;
    model.focreShowAvatar = YES;
    //: model.focreShowNickName = YES;
    model.focreShowNickName = YES;
    //: model.focreShowLeft = YES;
    model.focreShowLeft = YES;
    //: return model;
    return model;
}

//: - (FFFTimestampModel *)setupTimeModel:(NSTimeInterval)timestamp {
- (IndexIcon *)cell:(NSTimeInterval)timestamp {
    //: FFFTimestampModel *ret = [[FFFTimestampModel alloc] init];
    IndexIcon *ret = [[IndexIcon alloc] init];
    //: ret.messageTime = timestamp;
    ret.messageTime = timestamp;
    //: ret.height = 8.0f;
    ret.height = 8.0f;
    //: return ret;
    return ret;
}

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages {
- (NSMutableArray<MaxHouseMessageModel *> *)streetSmart:(NSMutableArray <NIMMessage *> *)messages {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (idx == 0) { 
        if (idx == 0) { //插入时间
            //: weakSelf.currentDay = [weakSelf getDay:obj.timestamp];
            weakSelf.currentDay = [weakSelf sure:obj.timestamp];
            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            IndexIcon *timeModel = [weakSelf cell:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            MaxHouseMessageModel *msgModel = [self sourceSetup:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else if ([weakSelf needInsertTimeModel:obj]){
        } else if ([weakSelf saveTop:obj]){

            //: id lastMsgModel = items.lastObject;
            id lastMsgModel = items.lastObject;
            //: if ([lastMsgModel isKindOfClass:[NTESMessageModel class]]) {
            if ([lastMsgModel isKindOfClass:[MaxHouseMessageModel class]]) {
                //: NTESMessageModel *model = (NTESMessageModel *)lastMsgModel;
                MaxHouseMessageModel *model = (MaxHouseMessageModel *)lastMsgModel;
                //: model.hiddenSeparatorLine = YES;
                model.hiddenSeparatorLine = YES;
            }

            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            IndexIcon *timeModel = [weakSelf cell:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            MaxHouseMessageModel *msgModel = [self sourceSetup:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else {
        } else {
            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            MaxHouseMessageModel *msgModel = [self sourceSetup:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        }
    //: }];
    }];
    //: return items;
    return items;
}

//: - (BOOL)needInsertTimeModel:(NIMMessage *)message {
- (BOOL)saveTop:(NIMMessage *)message {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: NSInteger currentDay = [self getDay:message.timestamp];
    NSInteger currentDay = [self sure:message.timestamp];
    //: if (_currentDay != currentDay) {
    if (_currentDay != currentDay) {
        //: _currentDay = currentDay;
        _currentDay = currentDay;
        //: ret = YES;
        ret = YES;
    }
    //: return ret;
    return ret;
}

//: - (NSInteger)getDay:(NSTimeInterval)timestamp {
- (NSInteger)sure:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"dd"];
    [formatter setDateFormat:@"dd"];
    //: NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    //: return currentDay;
    return currentDay;
}


//: - (void)checkAttachmentState:(NSArray *)messages{
- (void)label:(NSArray *)messages{
    //: NSArray *items = [NSArray arrayWithArray:messages];
    NSArray *items = [NSArray arrayWithArray:messages];
    //: for (id item in items) {
    for (id item in items) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if ([item isKindOfClass:[NIMMessage class]]) {
        if ([item isKindOfClass:[NIMMessage class]]) {
            //: message = item;
            message = item;
        }
        //: if ([item isKindOfClass:[FFFMessageModel class]]) {
        if ([item isKindOfClass:[MaxLink class]]) {
            //: message = [(FFFMessageModel *)item message];
            message = [(MaxLink *)item message];
        }
        //: if (message && !message.isOutgoingMsg
        if (message && !message.isOutgoingMsg
            //: && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            //: && message.messageType != NIMMessageTypeFile)
            && message.messageType != NIMMessageTypeFile)
        {
            //: [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

//: @end
@end

Byte * UponDataToCache(Byte *data) {
    int apparent = data[0];
    int quickLiable = data[1];
    Byte atomism = data[2];
    int lea = data[3];
    if (!apparent) return data + lea;
    for (int i = lea; i < lea + quickLiable; i++) {
        int value = data[i] - atomism;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[lea + quickLiable] = 0;
    return data + lea;
}

NSString *StringFromUponData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UponDataToCache(data)];
}
