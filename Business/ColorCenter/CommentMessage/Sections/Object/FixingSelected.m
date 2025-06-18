
#import <Foundation/Foundation.h>
typedef struct {
    Byte grocerBeef;
    Byte *dismay;
    unsigned int vertTone;
    bool titleDestruct;
	int ireSole;
} MumData;

NSString *StringFromMumData(MumData *data);


//: NTESMessageTranslate
MumData kStr_stereoName = (MumData){1, (Byte []){79, 85, 68, 82, 76, 100, 114, 114, 96, 102, 100, 85, 115, 96, 111, 114, 109, 96, 117, 100, 41}, 20, false, 227};


//: not support model
MumData kStr_booPaleFleshName = (MumData){114, (Byte []){28, 29, 6, 82, 1, 7, 2, 2, 29, 0, 6, 82, 31, 29, 22, 23, 30, 138}, 17, false, 112};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.m
// Afterwards
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTableAdapter.h"
#import "FixingSelected.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFMessageCellFactory.h"
#import "ThanFactory.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "M80AttributedLabel.h"
#import "ShowTitleView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"

//: @interface FFFSessionTableAdapter()
@interface FixingSelected()

//: @property (nonatomic,strong) FFFMessageCellFactory *cellFactory;
@property (nonatomic,strong) ThanFactory *cellFactory;

//: @end
@end

//: @implementation FFFSessionTableAdapter
@implementation FixingSelected

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cellFactory = [[FFFMessageCellFactory alloc] init];
        _cellFactory = [[ThanFactory alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return [self.interactor items].count;
    return [self.interactor textSize].count;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: UITableViewCell *cell = nil;
    UITableViewCell *cell = nil;
    //: id model = [[self.interactor items] objectAtIndex:indexPath.row];
    id model = [[self.interactor textSize] objectAtIndex:indexPath.row];
    //: if ([model isKindOfClass:[FFFMessageModel class]]) {
    if ([model isKindOfClass:[StochasticProcessTeam class]]) {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory notTableMessage:tableView
                                   //: forMessageMode:model];
                                   voice:model];
        //: [(FFFMessageCell *)cell setDelegate:self.delegate];
        [(ImageViewCell *)cell setDelegate:self.delegate];
        //: [self.interactor willDisplayMessageModel:model];
        [self.interactor needWith:model];
        //: [(FFFMessageCell *)cell refreshData:model];
        [(ImageViewCell *)cell key:model];
    }
    //: else if ([model isKindOfClass:[FFFTimestampModel class]])
    else if ([model isKindOfClass:[ModelTimestampSupport class]])
    {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory sub:tableView
                                     //: forTimeModel:model];
                                     collection:model];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, StringFromMumData(&kStr_booPaleFleshName));
    }
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:)])
    if ([self.delegate respondsToSelector:@selector(volition:numerosity:progress:)])
    {
        //: [self.delegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        [self.delegate volition:tableView numerosity:cell progress:indexPath];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: CGFloat cellHeight = 0;
    CGFloat cellHeight = 0;
    //: id modelInArray = [[self.interactor items] objectAtIndex:indexPath.row];
    id modelInArray = [[self.interactor textSize] objectAtIndex:indexPath.row];
    //: if ([modelInArray isKindOfClass:[FFFMessageModel class]])
    if ([modelInArray isKindOfClass:[StochasticProcessTeam class]])
    {
        //: FFFMessageModel *model = (FFFMessageModel *)modelInArray;
        StochasticProcessTeam *model = (StochasticProcessTeam *)modelInArray;

        // 撤回的消息 发送自定义消息
        //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
            //: return 0.f;
            return 0.f;
        }
//        if (model.message.messageType == NIMMessageTypeCustom) {
//            return 0.f;
//        }

        //: NIMNotificationObject *object = model.message.messageObject;
        NIMNotificationObject *object = model.message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: return 0.f;
            return 0.f;
        }

        //: CGSize size = [model contentSize:tableView.nim_width];
        CGSize size = [model contentMidSize:tableView.nim_width];
        //: CGFloat avatarMarginY = [model avatarMargin].y;
        CGFloat avatarMarginY = [model avatarMargin].y;

        //: UIEdgeInsets contentViewInsets = model.contentViewInsets;
        UIEdgeInsets contentViewInsets = model.contentViewInsets;
        //: UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        //: cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;

        //: if ([model needShowRepliedContent]){
        if ([model window]){
            //: CGSize replySize = [model replyContentSize:tableView.width];
            CGSize replySize = [model holder:tableView.width];
            //: UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            //: UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            //: cellHeight += replySize.height+20 +
            cellHeight += replySize.height+20 +
                            //: replyContentViewInsets.top +
                            replyContentViewInsets.top +
                            //: replyContentViewInsets.bottom +
                            replyContentViewInsets.bottom +
                            //: replyBubbleViewInsets.top +
                            replyBubbleViewInsets.top +
                            //: replyBubbleViewInsets.bottom;
                            replyBubbleViewInsets.bottom;
        }

        //: if([model.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
        if([model.message.localExt.allKeys containsObject:StringFromMumData(&kStr_stereoName)])
        {
            //: NSString *aString = [model.message.localExt objectForKey:@"NTESMessageTranslate"];
            NSString *aString = [model.message.localExt objectForKey:StringFromMumData(&kStr_stereoName)];

            //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
            ShowTitleView *labtran = [[ShowTitleView alloc]initWithFrame:CGRectZero];
            //: [labtran nim_setText:aString];
            [labtran time:aString];
            //: labtran.font = [UIFont systemFontOfSize:13];
            labtran.font = [UIFont systemFontOfSize:13];

            //: CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

            //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

            //: cellHeight += replySize.height+10;
            cellHeight += replySize.height+10;

        }




        //: if ([model needShowEmoticonsView])
        if ([model flushImageView])
        {
            //: cellHeight += model.emoticonsContainerSize.height;
            cellHeight += model.emoticonsContainerSize.height;
        }

        //: if (model.shouldShowPinContent && model.pinUserName.length) {
        if (model.shouldShowPinContent && model.pinUserName.length) {
            //: cellHeight += 22;
            cellHeight += 22;
        }

        //: if ([model needShowReplyCountContent] && model.childMessagesCount > 0)
        if ([model bite] && model.childMessagesCount > 0)
        {
            //: cellHeight += 25;
            cellHeight += 25;
        }


        //: cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;
        cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;


    }
    //: else if ([modelInArray isKindOfClass:[FFFTimestampModel class]])
    else if ([modelInArray isKindOfClass:[ModelTimestampSupport class]])
    {
        //: cellHeight = [(FFFTimestampModel *)modelInArray height];
        cellHeight = [(ModelTimestampSupport *)modelInArray height];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, StringFromMumData(&kStr_booPaleFleshName));
    }
    //: return cellHeight;
    return cellHeight;
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //: CGFloat currentOffsetY = scrollView.contentOffset.y;
    CGFloat currentOffsetY = scrollView.contentOffset.y;
    //: if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {
    if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {

        //: [self.interactor pullUp];
        [self.interactor media];
    }
}

//: @end
@end

Byte *MumDataToByte(MumData *data) {
    if (data->titleDestruct) return data->dismay;
    for (int i = 0; i < data->vertTone; i++) {
        data->dismay[i] ^= data->grocerBeef;
    }
    data->dismay[data->vertTone] = 0;
    data->titleDestruct = true;
	if (data->vertTone >= 1) {
		data->ireSole = data->dismay[0];
	}
    return data->dismay;
}

NSString *StringFromMumData(MumData *data) {
    return [NSString stringWithUTF8String:(char *)MumDataToByte(data)];
}
