
#import <Foundation/Foundation.h>

NSString *StringFromIllnessBlueData(Byte *data);


//: 附件下载错误
Byte kStr_forgeValeText[] = {59, 18, 17, 7, 155, 179, 197, 250, 170, 149, 245, 204, 199, 245, 201, 156, 249, 206, 206, 250, 165, 170, 249, 192, 192, 185};


//: 文件解码错误
Byte kStr_cottaImplicationValue[] = {41, 18, 91, 13, 217, 138, 166, 205, 192, 188, 227, 241, 103, 65, 241, 226, 63, 22, 17, 67, 2, 254, 66, 251, 220, 68, 239, 244, 67, 10, 10, 61};


//: %@。error:%zd
Byte kStr_changeText[] = {5, 14, 20, 11, 28, 24, 68, 98, 66, 2, 30, 57, 84, 247, 148, 150, 121, 134, 134, 131, 134, 78, 57, 142, 120, 68};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MergeSource.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageDataSource.h"
#import "MergeSource.h"
//: #import "NTESMessageSerialization.h"
#import "ViewSerialization.h"
//: #import "NTESMessageModel.h"
#import "WithMessageModel.h"
//: #import "FFFTimestampModel.h"
#import "ModelTimestampSupport.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "StopOperationAttachment.h"

//: @interface NTESMergeMessageDataSource ()
@interface MergeSource ()

//: @property (nonatomic, assign) NSInteger currentDay;
@property (nonatomic, assign) NSInteger currentDay;
//: @property (nonatomic, strong) NTESMessageSerialization *serialization;
@property (nonatomic, strong) ViewSerialization *serialization;
//: @end
@end

//: @implementation NTESMergeMessageDataSource
@implementation MergeSource

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _serialization = [[NTESMessageSerialization alloc] init];
        _serialization = [[ViewSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)handle:(StopOperationAttachment *)attachment
                    //: completion:(void (^)(NSString *msg))complete {
                    withRandomMetadataPickChangeNetwork:(void (^)(NSString *msg))complete {
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
        [weakSelf.serialization will:filePath
                               //: encrypt:attachment.encrypted
                               decode:attachment.encrypted
                              //: password:attachment.password
                              completion:attachment.password
                            //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                            length:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:StringFromIllnessBlueData(kStr_changeText),StringFromIllnessBlueData(kStr_cottaImplicationValue).aboveMagnitude, error.code];
            //: } else {
            } else {
                //: [weakSelf checkAttachmentState:messages];
                [weakSelf event:messages];
                //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                weakSelf.items = [weakSelf checked:messages];
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
                msg = [NSString stringWithFormat:StringFromIllnessBlueData(kStr_changeText),StringFromIllnessBlueData(kStr_forgeValeText).aboveMagnitude, error.code];
            //: } else {
            } else {
                //: [weakSelf.serialization decode:filePath
                [weakSelf.serialization will:filePath
                                       //: encrypt:attachment.encrypted
                                       decode:attachment.encrypted
                                      //: password:attachment.password
                                      completion:attachment.password
                                    //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                                    length:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                    //: if (error) {
                    if (error) {
                        //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                        msg = [NSString stringWithFormat:StringFromIllnessBlueData(kStr_changeText),StringFromIllnessBlueData(kStr_cottaImplicationValue).aboveMagnitude, error.code];
                    //: } else {
                    } else {
                        //: [weakSelf checkAttachmentState:messages];
                        [weakSelf event:messages];
                        //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                        weakSelf.items = [weakSelf checked:messages];
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
- (NSIndexPath *)modifyQuickPhoneSystemCipher:(NIMMessage *)message
{
    //: NTESMessageModel *model = nil;
    WithMessageModel *model = nil;
    //: NSIndexPath *indexPath = nil;
    NSIndexPath *indexPath = nil;
    //: for (id item in _items) {
    for (id item in _items) {

        //: if (![item isKindOfClass:[NTESMessageModel class]]) {
        if (![item isKindOfClass:[WithMessageModel class]]) {
            //: continue;
            continue;
        }

        //: NTESMessageModel *modelItem = (NTESMessageModel *)item;
        WithMessageModel *modelItem = (WithMessageModel *)item;
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
        WithMessageModel *target = [self phoneMessage:message];
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
- (WithMessageModel *)phoneMessage:(NIMMessage *)message {
    //: NTESMessageModel *model = [[NTESMessageModel alloc] initWithMessage:message];
    WithMessageModel *model = [[WithMessageModel alloc] initWithDate:message];
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
- (ModelTimestampSupport *)past:(NSTimeInterval)timestamp {
    //: FFFTimestampModel *ret = [[FFFTimestampModel alloc] init];
    ModelTimestampSupport *ret = [[ModelTimestampSupport alloc] init];
    //: ret.messageTime = timestamp;
    ret.messageTime = timestamp;
    //: ret.height = 8.0f;
    ret.height = 8.0f;
    //: return ret;
    return ret;
}

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages {
- (NSMutableArray<WithMessageModel *> *)checked:(NSMutableArray <NIMMessage *> *)messages {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (idx == 0) { 
        if (idx == 0) { //插入时间
            //: weakSelf.currentDay = [weakSelf getDay:obj.timestamp];
            weakSelf.currentDay = [weakSelf pointBlank:obj.timestamp];
            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            ModelTimestampSupport *timeModel = [weakSelf past:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            WithMessageModel *msgModel = [self phoneMessage:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else if ([weakSelf needInsertTimeModel:obj]){
        } else if ([weakSelf dueDateName:obj]){

            //: id lastMsgModel = items.lastObject;
            id lastMsgModel = items.lastObject;
            //: if ([lastMsgModel isKindOfClass:[NTESMessageModel class]]) {
            if ([lastMsgModel isKindOfClass:[WithMessageModel class]]) {
                //: NTESMessageModel *model = (NTESMessageModel *)lastMsgModel;
                WithMessageModel *model = (WithMessageModel *)lastMsgModel;
                //: model.hiddenSeparatorLine = YES;
                model.hiddenSeparatorLine = YES;
            }

            //: FFFTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            ModelTimestampSupport *timeModel = [weakSelf past:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            WithMessageModel *msgModel = [self phoneMessage:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else {
        } else {
            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            WithMessageModel *msgModel = [self phoneMessage:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        }
    //: }];
    }];
    //: return items;
    return items;
}

//: - (BOOL)needInsertTimeModel:(NIMMessage *)message {
- (BOOL)dueDateName:(NIMMessage *)message {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: NSInteger currentDay = [self getDay:message.timestamp];
    NSInteger currentDay = [self pointBlank:message.timestamp];
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
- (NSInteger)pointBlank:(NSTimeInterval)timestamp {
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
- (void)event:(NSArray *)messages{
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
        if ([item isKindOfClass:[StochasticProcessTeam class]]) {
            //: message = [(FFFMessageModel *)item message];
            message = [(StochasticProcessTeam *)item message];
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

Byte * IllnessBlueDataToCache(Byte *data) {
    int quantitativeRelation = data[0];
    int bileQuantityegrated = data[1];
    Byte viewClimb = data[2];
    int implyNab = data[3];
    if (!quantitativeRelation) return data + implyNab;
    for (int i = implyNab; i < implyNab + bileQuantityegrated; i++) {
        int value = data[i] - viewClimb;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[implyNab + bileQuantityegrated] = 0;
    return data + implyNab;
}

NSString *StringFromIllnessBlueData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IllnessBlueDataToCache(data)];
}
