
#import <Foundation/Foundation.h>
typedef struct {
    Byte iterate;
    Byte *light;
    unsigned int sort;
    bool condemnPie;
	int delay;
	int stack;
} ShamData;

NSString *StringFromShamData(ShamData *data);


//: reply
ShamData kStr_aboutVersionStrangeTitle = (ShamData){25, (Byte []){107, 124, 105, 117, 96, 53}, 5, false, 70, 240};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxLink.m
// Notice
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "CommentIndex.h"

//: @interface FFFMessageModel()
@interface MaxLink()

//: @property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;
//: @property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;

//: @end
@end

//: @implementation FFFMessageModel
@implementation MaxLink

//: @synthesize contentViewInsets = _contentViewInsets;
@synthesize contentViewInsets = _contentViewInsets;
//: @synthesize bubbleViewInsets = _bubbleViewInsets;
@synthesize bubbleViewInsets = _bubbleViewInsets;
//: @synthesize replyContentViewInsets = _replyContentViewInsets;
@synthesize replyContentViewInsets = _replyContentViewInsets;
//: @synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
@synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
//: @synthesize shouldShowAvatar = _shouldShowAvatar;
@synthesize shouldShowAvatar = _shouldShowAvatar;
//: @synthesize shouldShowNickName = _shouldShowNickName;
@synthesize shouldShowNickName = _shouldShowNickName;
//: @synthesize shouldShowLeft = _shouldShowLeft;
@synthesize shouldShowLeft = _shouldShowLeft;
//: @synthesize avatarMargin = _avatarMargin;
@synthesize avatarMargin = _avatarMargin;
//: @synthesize nickNameMargin = _nickNameMargin;
@synthesize nickNameMargin = _nickNameMargin;
//: @synthesize avatarSize = _avatarSize;
@synthesize avatarSize = _avatarSize;
//: @synthesize repliedMessage = _repliedMessage;
@synthesize repliedMessage = _repliedMessage;
//: @synthesize parentMessage = _parentMessage;
@synthesize parentMessage = _parentMessage;

//: - (instancetype)initWithMessage:(NIMMessage*)message
- (instancetype)initWithDigitizer:(NIMMessage*)message
{
    //: if (self = [self init])
    if (self = [self init])
    {
        //: _message = message;
        _message = message;
        //: _messageTime = message.timestamp;
        _messageTime = message.timestamp;
        //: _contentSizeInfo = [[NSMutableDictionary alloc] init];
        _contentSizeInfo = [[NSMutableDictionary alloc] init];
        //: _replyContentSizeInfo = [NSMutableDictionary dictionary];
        _replyContentSizeInfo = [NSMutableDictionary dictionary];
        //: _enableRepliedContent = YES;
        _enableRepliedContent = YES;
        //: _enableQuickComments = YES;
        _enableQuickComments = YES;
        //: _shouldShowPinContent = YES;
        _shouldShowPinContent = YES;
        //: _enableSubMessages = YES;
        _enableSubMessages = YES;
    }
    //: return self;
    return self;
}

//: - (void)cleanCache
- (void)cache
{
    //: [_contentSizeInfo removeAllObjects];
    [_contentSizeInfo removeAllObjects];
    //: _contentViewInsets = UIEdgeInsetsZero;
    _contentViewInsets = UIEdgeInsetsZero;
    //: _bubbleViewInsets = UIEdgeInsetsZero;
    _bubbleViewInsets = UIEdgeInsetsZero;
    //: _replyContentViewInsets = UIEdgeInsetsZero;
    _replyContentViewInsets = UIEdgeInsetsZero;
    //: _replyBubbleViewInsets = UIEdgeInsetsZero;
    _replyBubbleViewInsets = UIEdgeInsetsZero;
}

//: - (NSString*)description{
- (NSString*)description{
    //: return self.message.text;
    return self.message.text;
}

//: - (BOOL)isEqual:(id)object
- (BOOL)isEqual:(id)object
{
    //: if (![object isKindOfClass:[FFFMessageModel class]])
    if (![object isKindOfClass:[MaxLink class]])
    {
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: FFFMessageModel *model = object;
        MaxLink *model = object;
        //: return [self.message isEqual:model.message];
        return [self.message isEqual:model.message];
    }
}

//: - (CGSize)contentSize:(CGFloat)width
- (CGSize)show:(CGFloat)width
{
    //: CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    //: if (__CGSizeEqualToSize(size, CGSizeZero))
    if (__CGSizeEqualToSize(size, CGSizeZero))
    {
        //: [self updateLayoutConfig];
        [self lucre];
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: size = [layoutConfig contentSize:self cellWidth:width];
        size = [layoutConfig accumulationCompartmentCountFrame:self achromaticColorFloat:width];
        //: [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
        [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
    }
    //: return size;
    return size;
}


//: - (UIEdgeInsets)contentViewInsets{
- (UIEdgeInsets)contentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: _contentViewInsets = [layoutConfig contentViewInsets:self];
        _contentViewInsets = [layoutConfig userMain:self];
    }
    //: return _contentViewInsets;
    return _contentViewInsets;
}

//: - (UIEdgeInsets)bubbleViewInsets{
- (UIEdgeInsets)bubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: _bubbleViewInsets = [layoutConfig cellInsets:self];
        _bubbleViewInsets = [layoutConfig add:self];
    }
    //: return _bubbleViewInsets;
    return _bubbleViewInsets;
}

//: - (CGSize)replyContentSize:(CGFloat)width
- (CGSize)post:(CGFloat)width
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
    //: CGSize size = [layoutConfig replyContentSize:self cellWidth:width];
    CGSize size = [layoutConfig size:self disableWidth:width];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)replyContentViewInsets{
- (UIEdgeInsets)replyContentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: _replyContentViewInsets = [layoutConfig replyContentViewInsets:self];
        _replyContentViewInsets = [layoutConfig than:self];
    }
    //: return _replyContentViewInsets;
    return _replyContentViewInsets;
}

//: - (UIEdgeInsets)replyBubbleViewInsets{
- (UIEdgeInsets)replyBubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: _replyBubbleViewInsets = [layoutConfig replyCellInsets:self];
        _replyBubbleViewInsets = [layoutConfig markInsets:self];
    }
    //: return _replyBubbleViewInsets;
    return _replyBubbleViewInsets;
}


//: - (void)updateLayoutConfig
- (void)lucre
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];

    //: _shouldShowAvatar = [layoutConfig shouldShowAvatar:self];
    _shouldShowAvatar = [layoutConfig passePartout:self];
    //: _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig shouldShowNickName:self];
    _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig atomicQuantity85Disable:self];
    //: _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig shouldShowLeft:self];
    _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig coverHolder:self];
    //: _avatarMargin = [layoutConfig avatarMargin:self];
    _avatarMargin = [layoutConfig recordMargin:self];
    //: _nickNameMargin = [layoutConfig nickNameMargin:self];
    _nickNameMargin = [layoutConfig lip:self];
    //: _avatarSize = [layoutConfig avatarSize:self];
    _avatarSize = [layoutConfig system:self];
}


//: - (BOOL)shouldShowReadLabel
- (BOOL)shouldShowReadLabel
{
    //: if (self.message.session.sessionType == NIMSessionTypeP2P)
    if (self.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: return _shouldShowReadLabel && self.message.isRemoteRead;
        return _shouldShowReadLabel && self.message.isRemoteRead;
    }
    //: else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { 
    else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { //超大群这个功能还没做
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: return _shouldShowReadLabel;
        return _shouldShowReadLabel;
    }

}

//: - (BOOL)needShowReplyCountContent
- (BOOL)text
{
    //: return self.enableSubMessages;
    return self.enableSubMessages;
}

//: - (BOOL)needShowRepliedContent
- (BOOL)phosphoresce
{
//    BOOL should = self.message.messageType == NIMMessageTypeTip;
//    return !should && self.enableRepliedContent &&
//    self.message.repliedMessageId.length > 0;

    //: return [self.message.remoteExt.allKeys containsObject:@"reply"];
    return [self.message.remoteExt.allKeys containsObject:StringFromShamData(&kStr_aboutVersionStrangeTitle)];
}

//: - (BOOL)needShowEmoticonsView
- (BOOL)red
{
    //: return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
    return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
}

//: - (void)quickComments:(NIMMessage *)message
- (void)telecom:(NIMMessage *)message
           //: completion:(void(^)(NSMapTable *))completion
           event:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: _emoticonsContainerSize = [FFFKitQuickCommentUtil containerSizeWithComments:result];
                _emoticonsContainerSize = [CommentIndex message:result];
            }
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: @end
@end

Byte *ShamDataToByte(ShamData *data) {
    if (data->condemnPie) return data->light;
    for (int i = 0; i < data->sort; i++) {
        data->light[i] ^= data->iterate;
    }
    data->light[data->sort] = 0;
    data->condemnPie = true;
	if (data->sort >= 2) {
		data->delay = data->light[0];
		data->stack = data->light[1];
	}
    return data->light;
}

NSString *StringFromShamData(ShamData *data) {
    return [NSString stringWithUTF8String:(char *)ShamDataToByte(data)];
}
