
#import <Foundation/Foundation.h>
typedef struct {
    Byte disturbingHero;
    Byte *mumNovel;
    unsigned int troubling;
    bool dropCorridor;
	int improvedCare;
	int heavy;
	int comingDisabled;
} RetreatData;

NSString *StringFromRetreatData(RetreatData *data);


//: should offer cell content class name
RetreatData kStr_heroPrimWithValue = (RetreatData){93, (Byte []){46, 53, 50, 40, 49, 57, 125, 50, 59, 59, 56, 47, 125, 62, 56, 49, 49, 125, 62, 50, 51, 41, 56, 51, 41, 125, 62, 49, 60, 46, 46, 125, 51, 60, 48, 56, 251}, 36, false, 132, 236, 32};


//: F0E8FF
RetreatData kStr_voiceText = (RetreatData){20, (Byte []){82, 36, 81, 44, 82, 82, 216}, 6, false, 14, 250, 50};


//: ffffff
RetreatData kStr_currentHarshValue = (RetreatData){89, (Byte []){63, 63, 63, 63, 63, 63, 205}, 6, false, 203, 78, 234};


//: icon_accessory_normal
RetreatData kStr_viewSizeValue = (RetreatData){121, (Byte []){16, 26, 22, 23, 38, 24, 26, 26, 28, 10, 10, 22, 11, 0, 38, 23, 22, 11, 20, 24, 21, 191}, 21, false, 75, 14, 19};


//: #1EABF4
RetreatData kStr_paleDelicateTitle = (RetreatData){201, (Byte []){234, 248, 140, 136, 139, 143, 253, 64}, 7, false, 5, 206, 49};


//: #AC45FF
RetreatData kStr_findControlBarValue = (RetreatData){77, (Byte []){110, 12, 14, 121, 120, 11, 11, 117}, 7, false, 149, 123, 144};


//: can not init content view
RetreatData kStr_jurorMessageTitle = (RetreatData){5, (Byte []){102, 100, 107, 37, 107, 106, 113, 37, 108, 107, 108, 113, 37, 102, 106, 107, 113, 96, 107, 113, 37, 115, 108, 96, 114, 69}, 25, false, 136, 205, 118};


//: msg_view_4
RetreatData kStr_drawFileData = (RetreatData){7, (Byte []){106, 116, 96, 88, 113, 110, 98, 112, 88, 51, 174}, 10, false, 249, 215, 234};


//: message_read_yes
RetreatData kStr_vertTitle = (RetreatData){102, (Byte []){11, 3, 21, 21, 7, 1, 3, 57, 20, 3, 7, 2, 57, 31, 3, 21, 52}, 16, false, 202, 237, 94};


//: icon_accessory_selected
RetreatData kStr_mareText = (RetreatData){162, (Byte []){203, 193, 205, 204, 253, 195, 193, 193, 199, 209, 209, 205, 208, 219, 253, 209, 199, 206, 199, 193, 214, 199, 198, 156}, 23, false, 29, 145, 246};


//: #FF8C37
RetreatData kStr_mythNameText = (RetreatData){48, (Byte []){19, 118, 118, 8, 115, 3, 7, 214}, 7, false, 85, 243, 57};


//: icon_message_cell_error
RetreatData kStr_hungerMumName = (RetreatData){45, (Byte []){68, 78, 66, 67, 114, 64, 72, 94, 94, 76, 74, 72, 114, 78, 72, 65, 65, 114, 72, 95, 95, 66, 95, 233}, 23, false, 235, 90, 60};


//: #EA4883
RetreatData kStr_destructShowValue = (RetreatData){244, (Byte []){215, 177, 181, 192, 204, 204, 199, 78}, 7, false, 70, 14, 252};


//: %zd人未读
RetreatData kStr_pinionValue = (RetreatData){79, (Byte []){106, 53, 43, 171, 245, 245, 169, 211, 229, 167, 224, 244, 154}, 12, false, 176, 238, 32};


//: message_read_no
RetreatData kStr_martValue = (RetreatData){189, (Byte []){208, 216, 206, 206, 220, 218, 216, 226, 207, 216, 220, 217, 226, 211, 210, 245}, 15, false, 97, 215, 112};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageViewCell.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCell.h"
#import "ImageViewCell.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "FFFBadgeView.h"
#import "ToView.h"
//: #import "FFFSessionMessageContentView.h"
#import "CypherView.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "FFFSessionAudioContentView.h"
#import "LightTitleView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UserKitDependency.h"
#import "UserKitDependency.h"
//: #import "M80AttributedLabel.h"
#import "ShowTitleView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFSessionUnknowContentView.h"
#import "RandomControl.h"
//: #import "FFFKitConfig.h"
#import "ReplyTable.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFSessionTextContentView.h"
#import "AtNameView.h"

//: @interface FFFMessageCell()<NIMPlayAudioUIDelegate,NIMMessageContentViewDelegate>
@interface ImageViewCell()<ButtonOn,FitBubbleSearched>
{
    //: UILongPressGestureRecognizer *_longPressGesture;
    UILongPressGestureRecognizer *_longPressGesture;
    //: UIMenuController *_menuController;
    UIMenuController *_menuController;
}

//: @property (nonatomic,strong) FFFMessageModel *model;
@property (nonatomic,strong) StochasticProcessTeam *model;

//: @property (nonatomic,copy) NSArray *customViews;
@property (nonatomic,copy) NSArray *customViews;

//: @end
@end



//: @implementation FFFMessageCell
@implementation ImageViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: [self makeComponents];
        [self dedication];
        //: [self makeGesture];
        [self overdoUponPoke];

    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeGestureRecognizer:_longPressGesture];
    [self removeGestureRecognizer:_longPressGesture];
}

//: - (void)makeComponents
- (void)dedication
{
    //: static UIImage *NIMRetryButtonImage;
    static UIImage *NIMRetryButtonImage;
    //: static UIImage *NIMSelectButtonNormalImage;
    static UIImage *NIMSelectButtonNormalImage;
    //: static UIImage *NIMSelectButtonHighImage;
    static UIImage *NIMSelectButtonHighImage;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NIMRetryButtonImage = [UIImage imageNamed:@"icon_message_cell_error"];
        NIMRetryButtonImage = [UIImage imageNamed:StringFromRetreatData(&kStr_hungerMumName)];
        //: NIMSelectButtonNormalImage = [UIImage imageNamed:@"icon_accessory_normal"];
        NIMSelectButtonNormalImage = [UIImage imageNamed:StringFromRetreatData(&kStr_viewSizeValue)];
        //: NIMSelectButtonHighImage = [UIImage imageNamed:@"icon_accessory_selected"];
        NIMSelectButtonHighImage = [UIImage imageNamed:StringFromRetreatData(&kStr_mareText)];
    //: });
    });
    //retyrBtn
    //: _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    //: [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    //: [_retryButton addTarget:self action:@selector(onRetryMessage:) forControlEvents:UIControlEventTouchUpInside];
    [_retryButton addTarget:self action:@selector(messages:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_retryButton];
    [self.contentView addSubview:_retryButton];

    //audioPlayedIcon
    //: _audioPlayedIcon = [FFFBadgeView viewWithBadgeTip:@""];
    _audioPlayedIcon = [ToView with:@""];
//    _audioPlayedIcon.badgeBackgroundColor = RGB_COLOR_String(@"#612CF9");
//    [self.contentView addSubview:_audioPlayedIcon];

    //traningActivityIndicator
    //: _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    //: [self.contentView addSubview:_traningActivityIndicator];
    [self.contentView addSubview:_traningActivityIndicator];

    //headerView
    //: _headImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    _headImageView = [[StatusWithControl alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    //: [_headImageView addTarget:self action:@selector(onTapAvatar:) forControlEvents:UIControlEventTouchUpInside];
    [_headImageView addTarget:self action:@selector(fulled:) forControlEvents:UIControlEventTouchUpInside];
    //: UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressAvatar:)];
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(quicking:)];
    //: [_headImageView addGestureRecognizer:gesture];
    [_headImageView addGestureRecognizer:gesture];
    //: [self.contentView addSubview:_headImageView];
    [self.contentView addSubview:_headImageView];

    //nicknamel
    //: _nameLabel = [[UILabel alloc] init];
    _nameLabel = [[UILabel alloc] init];
    //: _nameLabel.backgroundColor = [UIColor clearColor];
    _nameLabel.backgroundColor = [UIColor clearColor];
    //: _nameLabel.opaque = YES;
    _nameLabel.opaque = YES;
    //: _nameLabel.font = [MyUserKit sharedKit].config.nickFont;
    _nameLabel.font = [Afterwards blue].config.nickFont;
    //: _nameLabel.textColor = [MyUserKit sharedKit].config.nickColor;
    _nameLabel.textColor = [Afterwards blue].config.nickColor;
    //: [_nameLabel setHidden:YES];
    [_nameLabel setHidden:YES];
    //: [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_nameLabel];

    //readlabel
    //: _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _readButton.opaque = YES;
    _readButton.opaque = YES;
    //: _readButton.titleLabel.font = [MyUserKit sharedKit].config.receiptFont;
    _readButton.titleLabel.font = [Afterwards blue].config.receiptFont;
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateNormal];
    [_readButton setTitleColor:[Afterwards blue].config.receiptColor forState:UIControlStateNormal];
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateHighlighted];
    [_readButton setTitleColor:[Afterwards blue].config.receiptColor forState:UIControlStateHighlighted];
    //: [_readButton setHidden:YES];
    [_readButton setHidden:YES];
    //: [_readButton addTarget:self action:@selector(onPressReadButton:) forControlEvents:UIControlEventTouchUpInside];
    [_readButton addTarget:self action:@selector(deviced:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_readButton];
    [self.contentView addSubview:_readButton];

    //selectButton
    //: _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    //: [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    //: [_selectButton sizeToFit];
    [_selectButton sizeToFit];
    //: [self.contentView addSubview:_selectButton];
    [self.contentView addSubview:_selectButton];
    //: _selectButton.hidden = YES;
    _selectButton.hidden = YES;

    //bubblesBackgroundView
    //: _bubblesBackgroundView = [[UIView alloc] init];
    _bubblesBackgroundView = [[UIView alloc] init];
    //: _bubblesBackgroundView.layer.cornerRadius = 8;
    _bubblesBackgroundView.layer.cornerRadius = 8;
    //: _bubblesBackgroundView.layer.masksToBounds = YES;
    _bubblesBackgroundView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:_bubblesBackgroundView];
    [self.contentView addSubview:_bubblesBackgroundView];

    //selectButtonMask
    //: _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    //: [_selectButtonMask addTarget:self action:@selector(onTapSelectedButton:) forControlEvents:UIControlEventTouchUpInside];
    [_selectButtonMask addTarget:self action:@selector(frames:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_selectButtonMask];
    [self.contentView addSubview:_selectButtonMask];
    //: _selectButtonMask.hidden = YES;
    _selectButtonMask.hidden = YES;


}

//: - (void)makeGesture{
- (void)overdoUponPoke{
    //: _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longGesturePress:)];
    _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(allNight:)];
    //: [self addGestureRecognizer:_longPressGesture];
    [self addGestureRecognizer:_longPressGesture];
}

//: - (void)refreshData:(FFFMessageModel *)data
- (void)key:(StochasticProcessTeam *)data
{
    //: self.model = data;
    self.model = data;
    //: if ([self checkData])
    if ([self seat])
    {
        //: [self.model updateLayoutConfig];
        [self.model pressed];
        //: [self refresh];
        [self index];
    }
}

//: - (BOOL)checkData{
- (BOOL)seat{
    //: return [self.model isKindOfClass:[FFFMessageModel class]];
    return [self.model isKindOfClass:[StochasticProcessTeam class]];
}

//: - (void)refresh
- (void)index
{
    //: self.contentView.hidden = NO;
    self.contentView.hidden = NO;

    // 撤回的消息 发送自定义消息
    //: if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
    if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }
//    // 撤回的消息 发送自定义消息
//    if (self.model.message.messageType == NIMMessageTypeCustom) {
//        self.contentView.hidden = YES;
//    }

    //: NIMNotificationObject *object = self.model.message.messageObject;
    NIMNotificationObject *object = self.model.message.messageObject;
    //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }

//    if(!self.model.shouldShowLeft){
//        self.model.shouldShowAvatar = NO;
//    }else{
//        self.model.shouldShowAvatar = YES;
//    }


    //: [self refreshBubblesBackgroundView];
    [self refer];
    //: [self addReplyedContentViewIfNotExist];
    [self infoExist];
    //: [self addContentViewIfNotExist];
    [self value];
    //: [self addUserCustomViews];
    [self name];

//    self.backgroundColor = [Afterwards sharedKit].config.cellBackgroundColor;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: if ([self needShowSelectButton]) {
    if ([self nameShouldButton]) {
        //: _selectButton.selected = self.model.selected;
        _selectButton.selected = self.model.selected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
    }
    //: if ([self needShowAvatar])
    if ([self avatarComment])
    {
        //: [_headImageView setAvatarByMessage:self.model.message];
        [_headImageView setInfoFlip:self.model.message];
    }

    //: if([self needShowNickName])
    if([self desorb])
    {
        //: NSString *nick = [FFFKitUtil showNick:self.model.message.from inMessage:self.model.message];
        NSString *nick = [PopUtil selectionMessage:self.model.message.from complete:self.model.message];
        //: [self.nameLabel setText:nick];
        [self.nameLabel setText:nick];
        //: NSArray *colorList = [[NSArray alloc]initWithObjects:@"#EA4883",@"#FF8C37",@"#1EABF4",@"#AC45FF", nil];
        NSArray *colorList = [[NSArray alloc]initWithObjects:StringFromRetreatData(&kStr_destructShowValue),StringFromRetreatData(&kStr_mythNameText),StringFromRetreatData(&kStr_paleDelicateTitle),StringFromRetreatData(&kStr_findControlBarValue), nil];
        //: NSInteger index = self.model.message.from.integerValue%4;
        NSInteger index = self.model.message.from.integerValue%4;
        //: self.nameLabel.textColor = [UIColor colorWithHexString:colorList[index]];
        self.nameLabel.textColor = [UIColor withMax:colorList[index]];
    }
    //: [_nameLabel setHidden:![self needShowNickName]];
    [_nameLabel setHidden:![self desorb]];


    //: BOOL isActivityIndicatorHidden = [self activityIndicatorHidden];
    BOOL isActivityIndicatorHidden = [self face];
    //: if (isActivityIndicatorHidden)
    if (isActivityIndicatorHidden)
    {
        //: [_traningActivityIndicator stopAnimating];
        [_traningActivityIndicator stopAnimating];
    }
    //: else
    else
    {
        //: [_traningActivityIndicator startAnimating];
        [_traningActivityIndicator startAnimating];
    }
//    [_traningActivityIndicator setHidden:isActivityIndicatorHidden];
    //: [_traningActivityIndicator setHidden:YES];
    [_traningActivityIndicator setHidden:YES];
    //: [_retryButton setHidden:[self retryButtonHidden]];
    [_retryButton setHidden:[self segment]];
    //: [_audioPlayedIcon setHidden:[self unreadHidden]];
    [_audioPlayedIcon setHidden:[self viewHidden]];

    //: [self refreshReadButton];
    [self segmentValue];

    //: if ([_bubbleView isKindOfClass:[FFFSessionTextContentView class]]) {
    if ([_bubbleView isKindOfClass:[AtNameView class]]) {
        //: [self disableLongPress:YES];
        [self ated:YES];
    //: } else {
    } else {
        //: [self disableLongPress:NO];
        [self ated:NO];
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)refreshBubblesBackgroundView
- (void)refer
{
    //: if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
    if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
        //: _bubblesBackgroundView.hidden = YES;
        _bubblesBackgroundView.hidden = YES;
    //: }else{
    }else{
        //: _bubblesBackgroundView.hidden = ![[MyUserKit sharedKit].layoutConfig shouldDisplayBubbleBackground:self.model];
        _bubblesBackgroundView.hidden = ![[Afterwards blue].layoutConfig pressedFrame:self.model];
        //: if (self.model.shouldShowLeft){
        if (self.model.shouldShowLeft){
            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"ffffff"];
            _bubblesBackgroundView.backgroundColor = [UIColor withMax:StringFromRetreatData(&kStr_currentHarshValue)];
        //: }else{
        }else{
//            _bubblesBackgroundView.backgroundColor = [UIColor colorWithRed:227/255.0 green:219/255.0 blue:250/255.0 alpha:1];

            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"F0E8FF"];
            _bubblesBackgroundView.backgroundColor = [UIColor withMax:StringFromRetreatData(&kStr_voiceText)];
        }
    }
}


//: -(void)refreshReadButton{
-(void)segmentValue{
    //: BOOL isreade = self.model.message.isRemoteRead;
    BOOL isreade = self.model.message.isRemoteRead;
    //: BOOL showMessageRead = [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue];
    BOOL showMessageRead = [[PhotoDefaults ting].showMessageRead boolValue];
    //: if (self.model.message.isOutgoingMsg && showMessageRead) {
    if (self.model.message.isOutgoingMsg && showMessageRead) {
//        if (self.model.message.isOutgoingMsg) {
        //: [_readButton setHidden:NO];
        [_readButton setHidden:NO];
        //: [_readButton setImage:[UIImage imageNamed:@"message_read_yes"] forState:UIControlStateNormal];
        [_readButton setImage:[UIImage imageNamed:StringFromRetreatData(&kStr_vertTitle)] forState:UIControlStateNormal];

        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: if (isreade == NO) {
            if (isreade == NO) {
                //: [_readButton setImage:[UIImage imageNamed:@"message_read_no"] forState:UIControlStateNormal];
                [_readButton setImage:[UIImage imageNamed:StringFromRetreatData(&kStr_martValue)] forState:UIControlStateNormal];//@"已读".nim_localized
            }
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[FFFLanguageManager getTextWithKey:@"msg_view_4"]] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[ItemManager sessionInformation:StringFromRetreatData(&kStr_drawFileData)]] forState:UIControlStateNormal];//人未读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
            //: [_readButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:3];
            [_readButton value:(MKButtonEdgeInsetsStyleLeft) nameSelected:3];
            //: [_readButton setHidden:YES];
            [_readButton setHidden:YES];
        }
    //: }else{
    }else{
        //: [_readButton setHidden:YES];
        [_readButton setHidden:YES];
    }
}

//: - (void)refreshReadButton_2
- (void)success
{
    //: BOOL hidden = [self readLabelHidden];
    BOOL hidden = [self extra];
    //: [_readButton setHidden:hidden];
    [_readButton setHidden:hidden];
    //: if (!hidden)
    if (!hidden)
    {
        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: [_readButton setTitle:@"已读" forState:UIControlStateNormal];
            [_readButton setTitle:@"已读" forState:UIControlStateNormal];//@"已读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd人未读".nim_localized,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:StringFromRetreatData(&kStr_pinionValue).textKey,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
    }
}

//: - (void)addReplyedContentViewIfNotExist
- (void)infoExist
{
//    if ([self.model needShowRepliedContent])
//    {
//        if (!_replyedBubbleView)
//        {
//            id<TitleConfig> layoutConfig = [[Afterwards sharedKit] layoutConfig];
//            NSString *contentStr = [layoutConfig replyContent:self.model];
//            NSAssert([contentStr length] > 0, @"should offer cell content class name");
//            Class clazz = NSClassFromString(contentStr);
//            CypherView *contentView =  [[clazz alloc] initSessionMessageContentView];
//            NSAssert(contentView, @"can not init content view");
//            _replyedBubbleView = contentView;
//            _replyedBubbleView.delegate = self;
//            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
//        }
//        [_replyedBubbleView refresh:self.model];
//        [_replyedBubbleView setNeedsLayout];
//    }
//    else if (_replyedBubbleView)
//    {
//        [_replyedBubbleView removeFromSuperview];
//        _replyedBubbleView = nil;
//    }

    //: if ([self.model needShowRepliedContent])
    if ([self.model window])
    {
        //: if (!_replyedBubbleView)
        if (!_replyedBubbleView)
        {
            //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
            id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
            //: NSString *contentStr = [layoutConfig replyContent:self.model];
            NSString *contentStr = [layoutConfig assemblage:self.model];
            //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
            NSAssert([contentStr length] > 0, StringFromRetreatData(&kStr_heroPrimWithValue));
            //: Class clazz = NSClassFromString(contentStr);
            Class clazz = NSClassFromString(contentStr);
            //: FFFSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
            CypherView *contentView = [[clazz alloc] initShowDown];
            //: NSAssert(contentView, @"can not init content view");
            NSAssert(contentView, StringFromRetreatData(&kStr_jurorMessageTitle));
            //: _replyedBubbleView = contentView;
            _replyedBubbleView = contentView;

            //: _replyedBubbleView.delegate = self;
            _replyedBubbleView.delegate = self;
            //: [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
        }
        //: [_replyedBubbleView refresh:self.model];
        [_replyedBubbleView scale:self.model];
        //: [_replyedBubbleView setNeedsLayout];
        [_replyedBubbleView setNeedsLayout];
    }
    //: else if (_replyedBubbleView)
    else if (_replyedBubbleView)
    {
        //: [_replyedBubbleView removeFromSuperview];
        [_replyedBubbleView removeFromSuperview];
        //: _replyedBubbleView = nil;
        _replyedBubbleView = nil;
    }
}

//: - (void)addContentViewIfNotExist
- (void)value
{
    //: if (_bubbleView == nil)
    if (_bubbleView == nil)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
        //: NSString *contentStr = [layoutConfig cellContent:self.model];
        NSString *contentStr = [layoutConfig aggregationTableColor:self.model];
        //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
        NSAssert([contentStr length] > 0, StringFromRetreatData(&kStr_heroPrimWithValue));
        //: Class clazz = NSClassFromString(contentStr);
        Class clazz = NSClassFromString(contentStr);
        //: FFFSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
        CypherView *contentView = [[clazz alloc] initShowDown];
        //: NSAssert(contentView, @"can not init content view");
        NSAssert(contentView, StringFromRetreatData(&kStr_jurorMessageTitle));
        //: _bubbleView = contentView;
        _bubbleView = contentView;
        //: _bubbleView.delegate = self;
        _bubbleView.delegate = self;
        //: NIMMessageType messageType = self.model.message.messageType;
        NIMMessageType messageType = self.model.message.messageType;
        //: if (messageType == NIMMessageTypeAudio) {
        if (messageType == NIMMessageTypeAudio) {
            //: ((FFFSessionAudioContentView *)_bubbleView).audioUIDelegate = self;
            ((LightTitleView *)_bubbleView).audioUIDelegate = self;
        }
        //: [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
        [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
    }

    //: [_bubbleView refresh:self.model];
    [_bubbleView scale:self.model];
    //: [_bubbleView setNeedsLayout];
    [_bubbleView setNeedsLayout];
}

//: - (void)addUserCustomViews
- (void)name
{
    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
    //: self.customViews = [layoutConfig customViews:self.model];
    self.customViews = [layoutConfig atViews:self.model];

    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [self.contentView addSubview:view];
        [self.contentView addSubview:view];
    }
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self layoutSelectButton];
    [self status];
    //: [self layoutAvatar];
    [self confines];
    //: [self layoutNameLabel];
    [self showMargin];
    //: [self layoutReplyBubbleView];
    [self layout];
    //: [self layoutBubbleView];
    [self begin];
    //: [self fixReplyBubbleAndBubbleLeft];
    [self button];
    //: [self layoutBubblesBackgroundView];
    [self systemView];
    //: [self layoutRetryButton];
    [self title];
    //: [self layoutAudioPlayedIcon];
    [self memberModel];
    //: [self layoutActivityIndicator];
    [self activityInputBmi];
    //: [self layoutReadButton];
    [self speechReadIn];
}

//: - (void)layoutSelectButton {
- (void)status {
    //: BOOL needShow = [self needShowSelectButton];
    BOOL needShow = [self nameShouldButton];
    //: if (needShow) {
    if (needShow) {
        //: _selectButton.hidden = self.model.disableSelected;
        _selectButton.hidden = self.model.disableSelected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
        //: _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        //: _selectButton.frame = [self selectButtonRect];
        _selectButton.frame = [self message];
        //: _selectButtonMask.frame = self.contentView.bounds;
        _selectButtonMask.frame = self.contentView.bounds;
    //: } else {
    } else {
        //: _selectButton.hidden = YES;
        _selectButton.hidden = YES;
        //: _selectButtonMask.hidden = YES;
        _selectButtonMask.hidden = YES;
    }
}

//: - (void)layoutAvatar
- (void)confines
{
    //: BOOL needShow = [self needShowAvatar];
    BOOL needShow = [self avatarComment];
    //: _headImageView.hidden = !needShow;
    _headImageView.hidden = !needShow;
    //: if (needShow) {
    if (needShow) {
        //: _headImageView.frame = [self avatarViewRect];
        _headImageView.frame = [self searched];
    }
}

//: - (void)layoutNameLabel
- (void)showMargin
{
    //: if ([self needShowNickName]) {
    if ([self desorb]) {
        //: CGFloat otherBubbleOriginX = ![self needShowSelectButton] ? self.cellPaddingToNick.x : _selectButton.nim_right + self.cellPaddingToNick.x;
        CGFloat otherBubbleOriginX = ![self nameShouldButton] ? self.textChange.x : _selectButton.nim_right + self.textChange.x;
        //: CGFloat otherBubbleOriginy = self.cellPaddingToNick.y;
        CGFloat otherBubbleOriginy = self.textChange.y;
        //: CGFloat otherNickNameWidth = 200.f;
        CGFloat otherNickNameWidth = 200.f;
        //: CGFloat otherNickNameHeight = 20.f;
        CGFloat otherNickNameHeight = 20.f;
        //: CGFloat cellPaddingToProtrait = self.cellPaddingToAvatar.x;
        CGFloat cellPaddingToProtrait = self.remark.x;
        //: CGFloat avatarWidth = self.headImageView.nim_width;
        CGFloat avatarWidth = self.headImageView.nim_width;
        //: CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.cellPaddingToNick.x;
        CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.textChange.x;
        //: _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
        _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
                                                                  //: otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
                                                                  otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
    }
}

//: - (void)layoutReplyBubbleView
- (void)layout
{
    //: if (!_replyedBubbleView)
    if (!_replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGSize size = [self.model replyContentSize:self.nim_width];
    CGSize size = [self.model holder:self.nim_width];
    //: UIEdgeInsets insets = self.model.replyContentViewInsets;
    UIEdgeInsets insets = self.model.replyContentViewInsets;
    //: size.width = size.width;
    size.width = size.width;
    //: size.height = size.height + insets.top + insets.bottom + 12;
    size.height = size.height + insets.top + insets.bottom + 12;
    //: _replyedBubbleView.nim_size = size;
    _replyedBubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
        left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self nameShouldButton]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _replyedBubbleView.nim_left = left+5;
    _replyedBubbleView.nim_left = left+5;
    //: _replyedBubbleView.nim_top = contentInsets.top;
    _replyedBubbleView.nim_top = contentInsets.top;
}

//: - (void)layoutBubbleView
- (void)begin
{
    //: CGSize size = [self.model contentSize:self.nim_width];
    CGSize size = [self.model contentMidSize:self.nim_width];
    //: UIEdgeInsets insets = self.model.contentViewInsets;
    UIEdgeInsets insets = self.model.contentViewInsets;
    //: size.width = size.width + insets.left + insets.right;
    size.width = size.width + insets.left + insets.right;
    //: size.height = size.height + insets.top + insets.bottom;
    size.height = size.height + insets.top + insets.bottom;
    //: _bubbleView.nim_size = size;
    _bubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.bubbleView.bounds);
        left = right - CGRectGetWidth(self.bubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self nameShouldButton]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _bubbleView.nim_left = left;
    _bubbleView.nim_left = left;
    //: if (_replyedBubbleView)
    if (_replyedBubbleView)
    {
        //: _bubbleView.nim_top = self.replyedBubbleView.nim_bottom - contentInsets.top;
        _bubbleView.nim_top = self.replyedBubbleView.nim_bottom - contentInsets.top;
    }
    //: else
    else
    {
        //: _bubbleView.nim_top = contentInsets.top;
        _bubbleView.nim_top = contentInsets.top;
    }

}

//: - (void)fixReplyBubbleAndBubbleLeft
- (void)button
{
    //: if (!self.replyedBubbleView)
    if (!self.replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {

        //: left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }
    //: else
    else
    {
        //: left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left+5;
    self.replyedBubbleView.nim_left = left+5;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
    //: self.bubblesBackgroundView.left = left;
    self.bubblesBackgroundView.left = left;
}

//: - (void)layoutBubblesBackgroundView
- (void)systemView
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height+10);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height+10);
//    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
//    self.replyedBubbleView.left = self.bubblesBackgroundView.left;
    //: if (self.replyedBubbleView)
    if (self.replyedBubbleView)
    {
        //: self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
        self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
    }
    //: else
    else
    {
        //: self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
        self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
    }
}


//: - (void)layoutActivityIndicator
- (void)activityInputBmi
{
    //: if (_traningActivityIndicator.isAnimating) {
    if (_traningActivityIndicator.isAnimating) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (!self.model.shouldShowLeft)
        if (!self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self relieve] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self relieve] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
        }
        //: self.traningActivityIndicator.center = CGPointMake(centerX,
        self.traningActivityIndicator.center = CGPointMake(centerX,
                                                           //: _bubblesBackgroundView.center.y);
                                                           _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutRetryButton
- (void)title
{
    //: if (!_retryButton.isHidden) {
    if (!_retryButton.isHidden) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] +CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self relieve] +CGRectGetWidth(_retryButton.bounds)/2;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self relieve] - CGRectGetWidth(_retryButton.bounds)/2;
        }

        //: _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
        _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutAudioPlayedIcon{
- (void)memberModel{
    //: if (!_audioPlayedIcon.hidden) {
    if (!_audioPlayedIcon.hidden) {
        //: CGFloat padding = [self audioPlayedIconBubblePadding];
        CGFloat padding = [self bar];
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
            _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
        }
        //: else
        else
        {
            //: _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
            _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
        }
//        _audioPlayedIcon.nim_top = _bubblesBackgroundView.nim_top;
        //: _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
    }
}

//: - (void)layoutReadButton{
- (void)speechReadIn{

    //: if (!_readButton.isHidden) {
    if (!_readButton.isHidden) {

        //: CGFloat left = _bubblesBackgroundView.nim_left;
        CGFloat left = _bubblesBackgroundView.nim_left;
        //: CGFloat bottom = _bubblesBackgroundView.nim_bottom;
        CGFloat bottom = _bubblesBackgroundView.nim_bottom;

        //: _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self readButtonBubblePadding];
        _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self max];
//        _readButton.nim_bottom = bottom;
        //: _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;

    }
}

//: #pragma mark - NIMMessageContentViewDelegate
#pragma mark - FitBubbleSearched
//: - (void)onCatchEvent:(FFFKitEvent *)event{
- (void)bluePosition:(KitOperation *)event{
    //: if ([self.delegate respondsToSelector:@selector(onTapCell:)]) {
    if ([self.delegate respondsToSelector:@selector(totalled:)]) {
        //: [self.delegate onTapCell:event];
        [self.delegate totalled:event];
    }
}

//: - (void)disableLongPress:(BOOL)disable {
- (void)ated:(BOOL)disable {
    //: _longPressGesture.enabled = !disable;
    _longPressGesture.enabled = !disable;
}

//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)title:(NIMMessage *)message withMargin:(void(^)(id data))complete; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(compartment:light:)]) {
        //: return [self.delegate onLongPressCell:message complete:complete];
        return [self.delegate compartment:message light:complete];
    }
    //: return NO;
    return NO;
}

//: - (BOOL)onLongTap:(NIMMessage *)message; {
- (BOOL)texts:(NIMMessage *)message; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:)]) {
    if ([self.delegate respondsToSelector:@selector(disabled:)]) {
        //: return [self.delegate onLongPressCell:message];
        return [self.delegate disabled:message];
    }
    //: return NO;
    return NO;
}



//: #pragma mark - Action
#pragma mark - Action
//: - (void)onRetryMessage:(id)sender
- (void)messages:(id)sender
{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(onRetryMessage:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(messages:)]) {
        //: [self.delegate onRetryMessage:self.model.message];
        [self.delegate messages:self.model.message];
    }
}

//: - (void)longGesturePress:(UIGestureRecognizer *)gestureRecognizer
- (void)allNight:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongPressCell:inView:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(showWill:range:)]) {
            //: [self.delegate onLongPressCell:self.model.message
            [self.delegate showWill:self.model.message
                                       //: inView:_bubbleView];
                                       range:_bubbleView];
        }
    }
}

//: #pragma mark - NIMPlayAudioUIDelegate
#pragma mark - ButtonOn
//: - (void)startPlayingAudioUI
- (void)globuleWith
{
    //: [self refreshData:self.model];
    [self key:self.model];
}

//: - (void)retryDownloadMsg
- (void)preface
{
    //: [self onRetryMessage:nil];
    [self messages:nil];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state
- (UIImage *)image:(UIControlState)state
{

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:self.model.message];
    WorkerSetting *setting = [[Afterwards blue].config with:self.model.message];
    //: if (state == UIControlStateNormal)
    if (state == UIControlStateNormal)
    {
        //: return setting.normalBackgroundImage;
        return setting.normalBackgroundImage;
    }
    //: else
    else
    {
        //: return setting.highLightBackgroundImage;
        return setting.highLightBackgroundImage;
    }
}

//: - (CGRect)selectButtonRect {
- (CGRect)message {
    //: CGSize size = _selectButton.nim_size;
    CGSize size = _selectButton.nim_size;
    //: CGRect avatarRect = [self avatarViewRect];
    CGRect avatarRect = [self searched];
    //: CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    //: CGFloat x = [self selectButtonPadding];
    CGFloat x = [self quantityervalModel];
    //: return CGRectMake(x, y, size.width, size.height);
    return CGRectMake(x, y, size.width, size.height);
}

//: - (CGRect)avatarViewRect
- (CGRect)searched
{
    //: CGFloat cellWidth = self.bounds.size.width;
    CGFloat cellWidth = self.bounds.size.width;
    //: CGFloat protraitImageWidth = [self avatarSize].width;
    CGFloat protraitImageWidth = [self should].width;
    //: CGFloat protraitImageHeight = [self avatarSize].height;
    CGFloat protraitImageHeight = [self should].height;
    //: CGFloat selfProtraitOriginX = 0;
    CGFloat selfProtraitOriginX = 0;

    //: if (self.model.shouldShowLeft) {
    if (self.model.shouldShowLeft) {
        //: if (![self needShowSelectButton]) {
        if (![self nameShouldButton]) {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x;
            selfProtraitOriginX = self.remark.x;
        //: } else {
        } else {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x + _selectButton.nim_right;
            selfProtraitOriginX = self.remark.x + _selectButton.nim_right;
        }
    //: } else {
    } else {
        //: selfProtraitOriginX = cellWidth - self.cellPaddingToAvatar.x - protraitImageWidth;
        selfProtraitOriginX = cellWidth - self.remark.x - protraitImageWidth;
    }
    //: return CGRectMake(selfProtraitOriginX, self.cellPaddingToAvatar.y,protraitImageWidth,protraitImageHeight);
    return CGRectMake(selfProtraitOriginX, self.remark.y,protraitImageWidth,protraitImageHeight);
}

//: - (BOOL)needShowSelectButton {
- (BOOL)nameShouldButton {
    //: return self.model.shouldShowSelect;
    return self.model.shouldShowSelect;
}

//: - (BOOL)needShowAvatar
- (BOOL)avatarComment
{
    //: return self.model.shouldShowAvatar;
    return self.model.shouldShowAvatar;
}

//: - (BOOL)needShowNickName
- (BOOL)desorb
{
    //: return self.model.shouldShowNickName;
    return self.model.shouldShowNickName;
}


//: - (BOOL)retryButtonHidden
- (BOOL)segment
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([layoutConfig respondsToSelector:@selector(disableRetryButton:)])
    if ([layoutConfig respondsToSelector:@selector(names:)])
    {
        //: disable = [layoutConfig disableRetryButton:self.model];
        disable = [layoutConfig names:self.model];
    }
    //: return disable;
    return disable;
}

//: - (CGFloat)retryButtonBubblePadding {
- (CGFloat)relieve {
    //: BOOL isFromMe = !self.model.shouldShowLeft;
    BOOL isFromMe = !self.model.shouldShowLeft;
    //: if (self.model.message.messageType == NIMMessageTypeAudio) {
    if (self.model.message.messageType == NIMMessageTypeAudio) {
        //: return isFromMe ? 15 : 13;
        return isFromMe ? 15 : 13;
    }
    //: return isFromMe ? 8 : 10;
    return isFromMe ? 8 : 10;
}

//: - (BOOL)activityIndicatorHidden
- (BOOL)face
{
    //: if (!self.model.message.isReceivedMsg)
    if (!self.model.message.isReceivedMsg)
    {
        //: return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
        return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
    }
    //: else
    else
    {
        //: return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
        return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
    }
}


//: - (BOOL)unreadHidden {
- (BOOL)viewHidden {
    //: if (self.model.message.messageType == NIMMessageTypeAudio)
    if (self.model.message.messageType == NIMMessageTypeAudio)
    //: { 
    { //音频
        //: BOOL disable = NO;
        BOOL disable = NO;
        //: if ([self.delegate respondsToSelector:@selector(disableAudioPlayedStatusIcon:)]) {
        if ([self.delegate respondsToSelector:@selector(statuteContent:)]) {
            //: disable = [self.delegate disableAudioPlayedStatusIcon:self.model.message];
            disable = [self.delegate statuteContent:self.model.message];
        }

        //BOOL hideIcon = self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloaded || disable;

        //: return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
        return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
    }
    //: return YES;
    return YES;
}

//: - (BOOL)readLabelHidden
- (BOOL)extra
{
    //: if (self.model.shouldShowReadLabel &&
    if (self.model.shouldShowReadLabel &&
        //: [self activityIndicatorHidden] &&
        [self face] &&
        //: [self retryButtonHidden] &&
        [self segment] &&
        //: [self unreadHidden] &&
        [self viewHidden] &&
        //: [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue])
        [[PhotoDefaults ting].showMessageRead boolValue])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (CGFloat)audioPlayedIconBubblePadding{
- (CGFloat)bar{
    //: return 10.0;
    return 10.0;
}

//: - (CGFloat)readButtonBubblePadding{
- (CGFloat)max{
    //: return 2.0;
    return 2.0;
}

//: - (CGFloat)selectButtonPadding{
- (CGFloat)quantityervalModel{
    //: return 8.0;
    return 8.0;
}

//: - (CGPoint)cellPaddingToAvatar
- (CGPoint)remark
{
    //: return self.model.avatarMargin;
    return self.model.avatarMargin;
}

//: - (CGPoint)cellPaddingToNick
- (CGPoint)textChange
{
    //: return self.model.nickNameMargin;
    return self.model.nickNameMargin;
}

//: - (CGSize)avatarSize {
- (CGSize)should {
    //: return self.model.avatarSize;
    return self.model.avatarSize;
}

//: - (void)onTapAvatar:(id)sender{
- (void)fulled:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onTapAvatar:)])
    if ([self.delegate respondsToSelector:@selector(fulled:)])
    {
        //: [self.delegate onTapAvatar:self.model.message];
        [self.delegate fulled:self.model.message];
    }
}

//: - (void)onLongPressAvatar:(UIGestureRecognizer *)gestureRecognizer
- (void)quicking:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan)
        gestureRecognizer.state == UIGestureRecognizerStateBegan)
    {
        //: if ([self.delegate respondsToSelector:@selector(onLongPressAvatar:)])
        if ([self.delegate respondsToSelector:@selector(quicking:)])
        {
            //: [self.delegate onLongPressAvatar:self.model.message];
            [self.delegate quicking:self.model.message];
        }
    }
}

//: - (void)onPressReadButton:(id)sender
- (void)deviced:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onPressReadLabel:)])
    if ([self.delegate respondsToSelector:@selector(voices:)])
    {
        //: [self.delegate onPressReadLabel:self.model.message];
        [self.delegate voices:self.model.message];
    }
}

//: - (void)onTapSelectedButton:(id)sender
- (void)frames:(id)sender
{
    //: _selectButton.selected = !_selectButton.selected;
    _selectButton.selected = !_selectButton.selected;
    //: self.model.selected = _selectButton.selected;
    self.model.selected = _selectButton.selected;
    //: if ([self.delegate respondsToSelector:@selector(onSelectedMessage:message:)]) {
    if ([self.delegate respondsToSelector:@selector(menu:confirm:)]) {
        //: [self.delegate onSelectedMessage:self.model.selected message:self.model.message];
        [self.delegate menu:self.model.selected confirm:self.model.message];
    }
}


//: @end
@end

Byte *RetreatDataToByte(RetreatData *data) {
    if (data->dropCorridor) return data->mumNovel;
    for (int i = 0; i < data->troubling; i++) {
        data->mumNovel[i] ^= data->disturbingHero;
    }
    data->mumNovel[data->troubling] = 0;
    data->dropCorridor = true;
	if (data->troubling >= 3) {
		data->improvedCare = data->mumNovel[0];
		data->heavy = data->mumNovel[1];
		data->comingDisabled = data->mumNovel[2];
	}
    return data->mumNovel;
}

NSString *StringFromRetreatData(RetreatData *data) {
    return [NSString stringWithUTF8String:(char *)RetreatDataToByte(data)];
}
