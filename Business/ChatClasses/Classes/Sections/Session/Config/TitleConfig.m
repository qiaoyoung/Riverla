// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCellLayoutConfig.h"
#import "TitleConfig.h"
//: #import "FFFSessionMessageContentView.h"
#import "CypherView.h"
//: #import "FFFSessionUnknowContentView.h"
#import "RandomControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFBaseSessionContentConfig.h"
#import "FFFBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @interface FFFCellLayoutConfig()
@interface TitleConfig()

//: @end
@end

//: @implementation FFFCellLayoutConfig
@implementation TitleConfig

//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)compartmentTitle:(StochasticProcessTeam *)model bottomText:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ItemConfig>config = [[MentalPictureFactory on] configBy:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config ting:cellWidth record:model.message];
}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)aggregationTableColor:(StochasticProcessTeam *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ItemConfig>config = [[MentalPictureFactory on] configBy:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config fire:model.message];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"RandomControl";
}


//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model{
- (UIEdgeInsets)behindCollection:(StochasticProcessTeam *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ItemConfig>config = [[MentalPictureFactory on] configBy:model.message];
    //: return [config contentViewInsets:model.message];
    return [config maxIconManager:model.message];
}


//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)telegram:(StochasticProcessTeam *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
    if ([[self aggregationTableColor:model] isEqualToString:@"FitControl"]) {
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
    CGFloat otherBubbleOriginX = [self containerBubble:model] ? [self globalGreen:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self max:model])
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
- (UIEdgeInsets)begin:(StochasticProcessTeam *)model{
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ItemConfig>config = [[MentalPictureFactory on] valueBy:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config maxIconManager:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)keyEnable:(StochasticProcessTeam *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"FFFSessionNotificationContentView"]) {
    if ([[self aggregationTableColor:model] isEqualToString:@"FitControl"]) {
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
    CGFloat otherBubbleOriginX = [self containerBubble:model] ? [self globalGreen:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self max:model])
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
- (CGSize)segment:(StochasticProcessTeam *)model video:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ItemConfig>config = [[MentalPictureFactory on] valueBy:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config ting:cellWidth record:model.repliedMessage];
}

//: - (NSString *)replyContent:(FFFMessageModel *)model {
- (NSString *)assemblage:(StochasticProcessTeam *)model {
    //: id<CCCSessionContentConfig>config = [[FFFSessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ItemConfig>config = [[MentalPictureFactory on] valueBy:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config fire:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"FFFSessionUnknowContentView";
    return cellContent.length ? cellContent : @"RandomControl";
}

//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)containerBubble:(StochasticProcessTeam *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[Afterwards blue].config with:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
- (BOOL)max:(StochasticProcessTeam *)model{
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
- (BOOL)colouredLeft:(StochasticProcessTeam *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(FFFMessageModel *)model
- (CGPoint)dateOf:(StochasticProcessTeam *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(FFFMessageModel *)model
- (CGSize)globalGreen:(StochasticProcessTeam *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model
- (CGPoint)replacement:(StochasticProcessTeam *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self containerBubble:model] ? CGPointMake([self globalGreen:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)atViews:(StochasticProcessTeam *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)names:(StochasticProcessTeam *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig colouredLeft:model];
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
        id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig colouredLeft:model];
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
- (BOOL)pressedFrame:(StochasticProcessTeam *)model
{
    //: id<CCCSessionContentConfig> config = [[FFFSessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ItemConfig> config = [[MentalPictureFactory on] configBy:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(dated:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config dated:model.message];
    }
    //: return YES;
    return YES;
}

//: @end
@end