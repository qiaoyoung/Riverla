// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCellLayoutConfig.h"
#import "KeyChange.h"
//: #import "FFFSessionMessageContentView.h"
#import "NoticeBlueView.h"
//: #import "FFFSessionUnknowContentView.h"
#import "InfoLayerView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "PopScrollView+Notice.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "ViewBaseSessionContentConfig.h"
#import "ViewBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @interface FFFCellLayoutConfig()
@interface KeyChange()

//: @end
@end

//: @implementation FFFCellLayoutConfig
@implementation KeyChange

//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)accumulationCompartmentCountFrame:(MaxLink *)model achromaticColorFloat:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ProvenanceConfig>config = [[VideoFactory reloadMy] examineed:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config text:cellWidth option:model.message];
}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)data:(MaxLink *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ProvenanceConfig>config = [[VideoFactory reloadMy] examineed:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config result:model.message];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"InfoLayerView";
}


//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model{
- (UIEdgeInsets)userMain:(MaxLink *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ProvenanceConfig>config = [[VideoFactory reloadMy] examineed:model.message];
    //: return [config contentViewInsets:model.message];
    return [config max:model.message];
}


//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)add:(MaxLink *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
    if ([[self data:model] isEqualToString:@"IndependentView"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self passePartout:model] ? [self system:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self atomicQuantity85Disable:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (UIEdgeInsets)replyContentViewInsets:(FFFMessageModel *)model{
- (UIEdgeInsets)than:(MaxLink *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ProvenanceConfig>config = [[VideoFactory reloadMy] configName:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config max:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)markInsets:(MaxLink *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
    if ([[self data:model] isEqualToString:@"IndependentView"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self passePartout:model] ? [self system:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self atomicQuantity85Disable:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (CGSize)replyContentSize:(FFFMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)size:(MaxLink *)model disableWidth:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ProvenanceConfig>config = [[VideoFactory reloadMy] configName:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config text:cellWidth option:model.repliedMessage];
}

//: - (NSString *)replyContent:(FFFMessageModel *)model {
- (NSString *)content:(MaxLink *)model {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ProvenanceConfig>config = [[VideoFactory reloadMy] configName:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config result:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"InfoLayerView";
}

//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)passePartout:(MaxLink *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[Notice fullKit].config sizeGroupBar:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
- (BOOL)atomicQuantity85Disable:(MaxLink *)model{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (message.messageType == NIMMessageTypeNotification)
    if (message.messageType == NIMMessageTypeNotification)
    {
        //: NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        //: if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
        if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
            //: return NO;
            return NO;
        }
    }
    //: if (message.messageType == NIMMessageTypeTip) {
    if (message.messageType == NIMMessageTypeTip) {
        //: return NO;
        return NO;
    }

    //: BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
    BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
                          //: || message.session.sessionType == NIMSessionTypeSuperTeam);
                          || message.session.sessionType == NIMSessionTypeSuperTeam);
    //: return (!message.isOutgoingMsg && isTeamMessage);
    return (!message.isOutgoingMsg && isTeamMessage);
}


//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model
- (BOOL)coverHolder:(MaxLink *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(FFFMessageModel *)model
- (CGPoint)recordMargin:(MaxLink *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(FFFMessageModel *)model
- (CGSize)system:(MaxLink *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model
- (CGPoint)lip:(MaxLink *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self passePartout:model] ? CGPointMake([self system:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)bottom:(MaxLink *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)timed:(MaxLink *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig coverHolder:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }
    //: else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig coverHolder:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }

    //: if (!model.message.isReceivedMsg)
    if (!model.message.isReceivedMsg)
    {
        //: return model.message.deliveryState != NIMMessageDeliveryStateFailed;
        return model.message.deliveryState != NIMMessageDeliveryStateFailed;
    }
    //: else
    else
    {
//        return model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateFailed;
        //: return YES;
        return YES;
    }
}

//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model
- (BOOL)foam:(MaxLink *)model
{
    //: id<CCCSessionContentConfig> config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ProvenanceConfig> config = [[VideoFactory reloadMy] examineed:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(streetwiseTable:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config streetwiseTable:model.message];
    }
    //: return YES;
    return YES;
}

//: @end
@end
