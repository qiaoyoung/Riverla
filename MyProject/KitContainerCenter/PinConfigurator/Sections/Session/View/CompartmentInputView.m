
#import <Foundation/Foundation.h>

NSString *StringFromKaData(Byte *data);        


//: #1EABF4
Byte kStr_sillName[] = {89, 7, 57, 8, 122, 164, 142, 82, 234, 248, 12, 8, 9, 13, 251, 101};


//: #AC45FF
Byte kStr_brandValue[] = {8, 7, 71, 12, 48, 146, 50, 171, 182, 38, 78, 4, 220, 250, 252, 237, 238, 255, 255, 59};


//: message_read_yes
Byte kStr_trikeValue[] = {21, 16, 53, 6, 52, 247, 56, 48, 62, 62, 44, 50, 48, 42, 61, 48, 44, 47, 42, 68, 48, 62, 243};


//: can not init content view
Byte kStr_shamePlungeText[] = {39, 25, 38, 13, 174, 56, 26, 164, 209, 5, 158, 33, 159, 61, 59, 72, 250, 72, 73, 78, 250, 67, 72, 67, 78, 250, 61, 73, 72, 78, 63, 72, 78, 250, 80, 67, 63, 81, 115};


//: #EA4883
Byte kStr_speakerCanvasName[] = {70, 7, 2, 6, 197, 242, 33, 67, 63, 50, 54, 54, 49, 83};


//: ffffff
Byte kStr_belieValue[] = {21, 6, 50, 11, 12, 57, 48, 57, 252, 161, 51, 52, 52, 52, 52, 52, 52, 106};


//: %zd人未读
Byte kStr_sortText[] = {25, 12, 36, 12, 184, 63, 8, 62, 56, 99, 75, 230, 1, 86, 64, 192, 150, 150, 194, 120, 134, 196, 139, 151, 224};


//: F0E8FF
Byte kStr_installTruthTitle[] = {64, 6, 56, 7, 3, 139, 124, 14, 248, 13, 0, 14, 14, 194};


//: icon_message_cell_error
Byte kStr_hearingName[] = {80, 23, 42, 8, 28, 230, 58, 161, 63, 57, 69, 68, 53, 67, 59, 73, 73, 55, 61, 59, 53, 57, 59, 66, 66, 53, 59, 72, 72, 69, 72, 12};


//: should offer cell content class name
Byte kStr_emphasizeData[] = {12, 36, 70, 13, 188, 246, 75, 236, 64, 241, 138, 122, 119, 45, 34, 41, 47, 38, 30, 218, 41, 32, 32, 31, 44, 218, 29, 31, 38, 38, 218, 29, 41, 40, 46, 31, 40, 46, 218, 29, 38, 27, 45, 45, 218, 40, 27, 39, 31, 171};


//: #FF8C37
Byte kStr_ankleTitle[] = {38, 7, 9, 4, 26, 61, 61, 47, 58, 42, 46, 117};


//: message_read_no
Byte kStr_hangContent[] = {26, 15, 27, 12, 82, 46, 172, 119, 109, 155, 189, 248, 82, 74, 88, 88, 70, 76, 74, 68, 87, 74, 70, 73, 68, 83, 84, 229};


//: icon_accessory_selected
Byte kStr_learnData[] = {95, 23, 40, 12, 238, 162, 54, 45, 193, 176, 82, 156, 65, 59, 71, 70, 55, 57, 59, 59, 61, 75, 75, 71, 74, 81, 55, 75, 61, 68, 61, 59, 76, 61, 60, 224};


//: msg_view_4
Byte kStr_fabData[] = {32, 10, 28, 5, 1, 81, 87, 75, 67, 90, 77, 73, 91, 67, 24, 27};


//: icon_accessory_normal
Byte kStr_swingBadlyContent[] = {75, 21, 80, 11, 241, 54, 78, 221, 53, 83, 93, 25, 19, 31, 30, 15, 17, 19, 19, 21, 35, 35, 31, 34, 41, 15, 30, 31, 34, 29, 17, 28, 246};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentInputView.m
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCell.h"
#import "CompartmentInputView.h"
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "FFFBadgeView.h"
#import "HeadView.h"
//: #import "FFFSessionMessageContentView.h"
#import "NoticeBlueView.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "FFFSessionAudioContentView.h"
#import "AggregationNameView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ViewKitDependency.h"
#import "ViewKitDependency.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "FFFSessionUnknowContentView.h"
#import "InfoLayerView.h"
//: #import "FFFKitConfig.h"
#import "ChildBar.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFSessionTextContentView.h"
#import "WithNameView.h"

//: @interface FFFMessageCell()<NIMPlayAudioUIDelegate,NIMMessageContentViewDelegate>
@interface CompartmentInputView()<NameScale,BroadcastDelegate>
{
    //: UILongPressGestureRecognizer *_longPressGesture;
    UILongPressGestureRecognizer *_longPressGesture;
    //: UIMenuController *_menuController;
    UIMenuController *_menuController;
}

//: @property (nonatomic,strong) FFFMessageModel *model;
@property (nonatomic,strong) MaxLink *model;

//: @property (nonatomic,copy) NSArray *customViews;
@property (nonatomic,copy) NSArray *customViews;

//: @end
@end



//: @implementation FFFMessageCell
@implementation CompartmentInputView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: [self makeComponents];
        [self optionDo];
        //: [self makeGesture];
        [self faceGesture];

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
- (void)optionDo
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
        NIMRetryButtonImage = [UIImage imageNamed:StringFromKaData(kStr_hearingName)];
        //: NIMSelectButtonNormalImage = [UIImage imageNamed:@"icon_accessory_normal"];
        NIMSelectButtonNormalImage = [UIImage imageNamed:StringFromKaData(kStr_swingBadlyContent)];
        //: NIMSelectButtonHighImage = [UIImage imageNamed:@"icon_accessory_selected"];
        NIMSelectButtonHighImage = [UIImage imageNamed:StringFromKaData(kStr_learnData)];
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
    [_retryButton addTarget:self action:@selector(replied:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_retryButton];
    [self.contentView addSubview:_retryButton];

    //audioPlayedIcon
    //: _audioPlayedIcon = [FFFBadgeView viewWithBadgeTip:@""];
    _audioPlayedIcon = [HeadView emotionRange:@""];
//    _audioPlayedIcon.badgeBackgroundColor = RGB_COLOR_String(@"#612CF9");
//    [self.contentView addSubview:_audioPlayedIcon];

    //traningActivityIndicator
    //: _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    //: [self.contentView addSubview:_traningActivityIndicator];
    [self.contentView addSubview:_traningActivityIndicator];

    //headerView
    //: _headImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    _headImageView = [[ViewControl alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    //: [_headImageView addTarget:self action:@selector(onTapAvatar:) forControlEvents:UIControlEventTouchUpInside];
    [_headImageView addTarget:self action:@selector(coloring:) forControlEvents:UIControlEventTouchUpInside];
    //: UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressAvatar:)];
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(exceptName:)];
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
    _nameLabel.font = [Notice fullKit].config.nickFont;
    //: _nameLabel.textColor = [MyUserKit sharedKit].config.nickColor;
    _nameLabel.textColor = [Notice fullKit].config.nickColor;
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
    _readButton.titleLabel.font = [Notice fullKit].config.receiptFont;
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateNormal];
    [_readButton setTitleColor:[Notice fullKit].config.receiptColor forState:UIControlStateNormal];
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateHighlighted];
    [_readButton setTitleColor:[Notice fullKit].config.receiptColor forState:UIControlStateHighlighted];
    //: [_readButton setHidden:YES];
    [_readButton setHidden:YES];
    //: [_readButton addTarget:self action:@selector(onPressReadButton:) forControlEvents:UIControlEventTouchUpInside];
    [_readButton addTarget:self action:@selector(filterButton:) forControlEvents:UIControlEventTouchUpInside];
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
    [_selectButtonMask addTarget:self action:@selector(alonged:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_selectButtonMask];
    [self.contentView addSubview:_selectButtonMask];
    //: _selectButtonMask.hidden = YES;
    _selectButtonMask.hidden = YES;


}

//: - (void)makeGesture{
- (void)faceGesture{
    //: _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longGesturePress:)];
    _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(smarted:)];
    //: [self addGestureRecognizer:_longPressGesture];
    [self addGestureRecognizer:_longPressGesture];
}

//: - (void)refreshData:(FFFMessageModel *)data
- (void)shadowIndex:(MaxLink *)data
{
    //: self.model = data;
    self.model = data;
    //: if ([self checkData])
    if ([self user])
    {
        //: [self.model updateLayoutConfig];
        [self.model lucre];
        //: [self refresh];
        [self name];
    }
}

//: - (BOOL)checkData{
- (BOOL)user{
    //: return [self.model isKindOfClass:[FFFMessageModel class]];
    return [self.model isKindOfClass:[MaxLink class]];
}

//: - (void)refresh
- (void)name
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
    [self colorView];
    //: [self addReplyedContentViewIfNotExist];
    [self path];
    //: [self addContentViewIfNotExist];
    [self sizeExist];
    //: [self addUserCustomViews];
    [self enable];

//    self.backgroundColor = [Notice sharedKit].config.cellBackgroundColor;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: if ([self needShowSelectButton]) {
    if ([self selectTitleButton]) {
        //: _selectButton.selected = self.model.selected;
        _selectButton.selected = self.model.selected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
    }
    //: if ([self needShowAvatar])
    if ([self status])
    {
        //: [_headImageView setAvatarByMessage:self.model.message];
        [_headImageView setUp:self.model.message];
    }

    //: if([self needShowNickName])
    if([self to])
    {
        //: NSString *nick = [FFFKitUtil showNick:self.model.message.from inMessage:self.model.message];
        NSString *nick = [UtilizerUtil max:self.model.message.from picture:self.model.message];
        //: [self.nameLabel setText:nick];
        [self.nameLabel setText:nick];
        //: NSArray *colorList = [[NSArray alloc]initWithObjects:@"#EA4883",@"#FF8C37",@"#1EABF4",@"#AC45FF", nil];
        NSArray *colorList = [[NSArray alloc]initWithObjects:StringFromKaData(kStr_speakerCanvasName),StringFromKaData(kStr_ankleTitle),StringFromKaData(kStr_sillName),StringFromKaData(kStr_brandValue), nil];
        //: NSInteger index = self.model.message.from.integerValue%4;
        NSInteger index = self.model.message.from.integerValue%4;
        //: self.nameLabel.textColor = [UIColor colorWithHexString:colorList[index]];
        self.nameLabel.textColor = [UIColor isView:colorList[index]];
    }
    //: [_nameLabel setHidden:![self needShowNickName]];
    [_nameLabel setHidden:![self to]];


    //: BOOL isActivityIndicatorHidden = [self activityIndicatorHidden];
    BOOL isActivityIndicatorHidden = [self shadow];
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
    [_retryButton setHidden:[self retryConvertHiddenBubble]];
    //: [_audioPlayedIcon setHidden:[self unreadHidden]];
    [_audioPlayedIcon setHidden:[self inheritance]];

    //: [self refreshReadButton];
    [self tinkle];

    //: if ([_bubbleView isKindOfClass:[FFFSessionTextContentView class]]) {
    if ([_bubbleView isKindOfClass:[WithNameView class]]) {
        //: [self disableLongPress:YES];
        [self titleMessage:YES];
    //: } else {
    } else {
        //: [self disableLongPress:NO];
        [self titleMessage:NO];
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)refreshBubblesBackgroundView
- (void)colorView
{
    //: if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
    if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
        //: _bubblesBackgroundView.hidden = YES;
        _bubblesBackgroundView.hidden = YES;
    //: }else{
    }else{
        //: _bubblesBackgroundView.hidden = ![[MyUserKit sharedKit].layoutConfig shouldDisplayBubbleBackground:self.model];
        _bubblesBackgroundView.hidden = ![[Notice fullKit].layoutConfig foam:self.model];
        //: if (self.model.shouldShowLeft){
        if (self.model.shouldShowLeft){
            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"ffffff"];
            _bubblesBackgroundView.backgroundColor = [UIColor isView:StringFromKaData(kStr_belieValue)];
        //: }else{
        }else{
//            _bubblesBackgroundView.backgroundColor = [UIColor colorWithRed:227/255.0 green:219/255.0 blue:250/255.0 alpha:1];

            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"F0E8FF"];
            _bubblesBackgroundView.backgroundColor = [UIColor isView:StringFromKaData(kStr_installTruthTitle)];
        }
    }
}


//: -(void)refreshReadButton{
-(void)tinkle{
    //: BOOL isreade = self.model.message.isRemoteRead;
    BOOL isreade = self.model.message.isRemoteRead;
    //: BOOL showMessageRead = [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue];
    BOOL showMessageRead = [[BlondeDefaults phone].showMessageRead boolValue];
    //: if (self.model.message.isOutgoingMsg && showMessageRead) {
    if (self.model.message.isOutgoingMsg && showMessageRead) {
//        if (self.model.message.isOutgoingMsg) {
        //: [_readButton setHidden:NO];
        [_readButton setHidden:NO];
        //: [_readButton setImage:[UIImage imageNamed:@"message_read_yes"] forState:UIControlStateNormal];
        [_readButton setImage:[UIImage imageNamed:StringFromKaData(kStr_trikeValue)] forState:UIControlStateNormal];

        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: if (isreade == NO) {
            if (isreade == NO) {
                //: [_readButton setImage:[UIImage imageNamed:@"message_read_no"] forState:UIControlStateNormal];
                [_readButton setImage:[UIImage imageNamed:StringFromKaData(kStr_hangContent)] forState:UIControlStateNormal];//@"已读".nim_localized
            }
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[FFFLanguageManager getTextWithKey:@"msg_view_4"]] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[TeamManager sizeKey:StringFromKaData(kStr_fabData)]] forState:UIControlStateNormal];//人未读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
            //: [_readButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:3];
            [_readButton barBackground:(MKButtonEdgeInsetsStyleLeft) by:3];
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
- (void)table
{
    //: BOOL hidden = [self readLabelHidden];
    BOOL hidden = [self video];
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
            [_readButton setTitle:[NSString stringWithFormat:StringFromKaData(kStr_sortText).positionMenu,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
    }
}

//: - (void)addReplyedContentViewIfNotExist
- (void)path
{
//    if ([self.model needShowRepliedContent])
//    {
//        if (!_replyedBubbleView)
//        {
//            id<KeyChange> layoutConfig = [[Notice sharedKit] layoutConfig];
//            NSString *contentStr = [layoutConfig replyContent:self.model];
//            NSAssert([contentStr length] > 0, @"should offer cell content class name");
//            Class clazz = NSClassFromString(contentStr);
//            NoticeBlueView *contentView =  [[clazz alloc] initSessionMessageContentView];
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
    if ([self.model phosphoresce])
    {
        //: if (!_replyedBubbleView)
        if (!_replyedBubbleView)
        {
            //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
            id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
            //: NSString *contentStr = [layoutConfig replyContent:self.model];
            NSString *contentStr = [layoutConfig content:self.model];
            //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
            NSAssert([contentStr length] > 0, StringFromKaData(kStr_emphasizeData));
            //: Class clazz = NSClassFromString(contentStr);
            Class clazz = NSClassFromString(contentStr);
            //: FFFSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
            NoticeBlueView *contentView = [[clazz alloc] initInput];
            //: NSAssert(contentView, @"can not init content view");
            NSAssert(contentView, StringFromKaData(kStr_shamePlungeText));
            //: _replyedBubbleView = contentView;
            _replyedBubbleView = contentView;

            //: _replyedBubbleView.delegate = self;
            _replyedBubbleView.delegate = self;
            //: [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
        }
        //: [_replyedBubbleView refresh:self.model];
        [_replyedBubbleView key:self.model];
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
- (void)sizeExist
{
    //: if (_bubbleView == nil)
    if (_bubbleView == nil)
    {
        //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
        //: NSString *contentStr = [layoutConfig cellContent:self.model];
        NSString *contentStr = [layoutConfig data:self.model];
        //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
        NSAssert([contentStr length] > 0, StringFromKaData(kStr_emphasizeData));
        //: Class clazz = NSClassFromString(contentStr);
        Class clazz = NSClassFromString(contentStr);
        //: FFFSessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
        NoticeBlueView *contentView = [[clazz alloc] initInput];
        //: NSAssert(contentView, @"can not init content view");
        NSAssert(contentView, StringFromKaData(kStr_shamePlungeText));
        //: _bubbleView = contentView;
        _bubbleView = contentView;
        //: _bubbleView.delegate = self;
        _bubbleView.delegate = self;
        //: NIMMessageType messageType = self.model.message.messageType;
        NIMMessageType messageType = self.model.message.messageType;
        //: if (messageType == NIMMessageTypeAudio) {
        if (messageType == NIMMessageTypeAudio) {
            //: ((FFFSessionAudioContentView *)_bubbleView).audioUIDelegate = self;
            ((AggregationNameView *)_bubbleView).audioUIDelegate = self;
        }
        //: [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
        [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
    }

    //: [_bubbleView refresh:self.model];
    [_bubbleView key:self.model];
    //: [_bubbleView setNeedsLayout];
    [_bubbleView setNeedsLayout];
}

//: - (void)addUserCustomViews
- (void)enable
{
    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
    //: self.customViews = [layoutConfig customViews:self.model];
    self.customViews = [layoutConfig bottom:self.model];

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
    [self drawBubbleTop];
    //: [self layoutAvatar];
    [self blueish];
    //: [self layoutNameLabel];
    [self signLabel];
    //: [self layoutReplyBubbleView];
    [self view];
    //: [self layoutBubbleView];
    [self valueOnView];
    //: [self fixReplyBubbleAndBubbleLeft];
    [self replyRange];
    //: [self layoutBubblesBackgroundView];
    [self year];
    //: [self layoutRetryButton];
    [self icon];
    //: [self layoutAudioPlayedIcon];
    [self content];
    //: [self layoutActivityIndicator];
    [self ting];
    //: [self layoutReadButton];
    [self showLabel];
}

//: - (void)layoutSelectButton {
- (void)drawBubbleTop {
    //: BOOL needShow = [self needShowSelectButton];
    BOOL needShow = [self selectTitleButton];
    //: if (needShow) {
    if (needShow) {
        //: _selectButton.hidden = self.model.disableSelected;
        _selectButton.hidden = self.model.disableSelected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
        //: _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        //: _selectButton.frame = [self selectButtonRect];
        _selectButton.frame = [self sizeShould];
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
- (void)blueish
{
    //: BOOL needShow = [self needShowAvatar];
    BOOL needShow = [self status];
    //: _headImageView.hidden = !needShow;
    _headImageView.hidden = !needShow;
    //: if (needShow) {
    if (needShow) {
        //: _headImageView.frame = [self avatarViewRect];
        _headImageView.frame = [self rect];
    }
}

//: - (void)layoutNameLabel
- (void)signLabel
{
    //: if ([self needShowNickName]) {
    if ([self to]) {
        //: CGFloat otherBubbleOriginX = ![self needShowSelectButton] ? self.cellPaddingToNick.x : _selectButton.nim_right + self.cellPaddingToNick.x;
        CGFloat otherBubbleOriginX = ![self selectTitleButton] ? self.digitiserColor.x : _selectButton.nim_right + self.digitiserColor.x;
        //: CGFloat otherBubbleOriginy = self.cellPaddingToNick.y;
        CGFloat otherBubbleOriginy = self.digitiserColor.y;
        //: CGFloat otherNickNameWidth = 200.f;
        CGFloat otherNickNameWidth = 200.f;
        //: CGFloat otherNickNameHeight = 20.f;
        CGFloat otherNickNameHeight = 20.f;
        //: CGFloat cellPaddingToProtrait = self.cellPaddingToAvatar.x;
        CGFloat cellPaddingToProtrait = self.withLabel.x;
        //: CGFloat avatarWidth = self.headImageView.nim_width;
        CGFloat avatarWidth = self.headImageView.nim_width;
        //: CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.cellPaddingToNick.x;
        CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.digitiserColor.x;
        //: _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
        _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
                                                                  //: otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
                                                                  otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
    }
}

//: - (void)layoutReplyBubbleView
- (void)view
{
    //: if (!_replyedBubbleView)
    if (!_replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGSize size = [self.model replyContentSize:self.nim_width];
    CGSize size = [self.model post:self.nim_width];
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
        if (![self selectTitleButton]) {
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
- (void)valueOnView
{
    //: CGSize size = [self.model contentSize:self.nim_width];
    CGSize size = [self.model show:self.nim_width];
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
        if (![self selectTitleButton]) {
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
- (void)replyRange
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
- (void)year
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
- (void)ting
{
    //: if (_traningActivityIndicator.isAnimating) {
    if (_traningActivityIndicator.isAnimating) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (!self.model.shouldShowLeft)
        if (!self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self cell] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self cell] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
        }
        //: self.traningActivityIndicator.center = CGPointMake(centerX,
        self.traningActivityIndicator.center = CGPointMake(centerX,
                                                           //: _bubblesBackgroundView.center.y);
                                                           _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutRetryButton
- (void)icon
{
    //: if (!_retryButton.isHidden) {
    if (!_retryButton.isHidden) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] +CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self cell] +CGRectGetWidth(_retryButton.bounds)/2;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self cell] - CGRectGetWidth(_retryButton.bounds)/2;
        }

        //: _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
        _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutAudioPlayedIcon{
- (void)content{
    //: if (!_audioPlayedIcon.hidden) {
    if (!_audioPlayedIcon.hidden) {
        //: CGFloat padding = [self audioPlayedIconBubblePadding];
        CGFloat padding = [self removeByPadding];
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
- (void)showLabel{

    //: if (!_readButton.isHidden) {
    if (!_readButton.isHidden) {

        //: CGFloat left = _bubblesBackgroundView.nim_left;
        CGFloat left = _bubblesBackgroundView.nim_left;
        //: CGFloat bottom = _bubblesBackgroundView.nim_bottom;
        CGFloat bottom = _bubblesBackgroundView.nim_bottom;

        //: _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self readButtonBubblePadding];
        _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self from];
//        _readButton.nim_bottom = bottom;
        //: _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;

    }
}

//: #pragma mark - NIMMessageContentViewDelegate
#pragma mark - BroadcastDelegate
//: - (void)onCatchEvent:(FFFKitEvent *)event{
- (void)marginned:(IndexBar *)event{
    //: if ([self.delegate respondsToSelector:@selector(onTapCell:)]) {
    if ([self.delegate respondsToSelector:@selector(anyView:)]) {
        //: [self.delegate onTapCell:event];
        [self.delegate anyView:event];
    }
}

//: - (void)disableLongPress:(BOOL)disable {
- (void)titleMessage:(BOOL)disable {
    //: _longPressGesture.enabled = !disable;
    _longPressGesture.enabled = !disable;
}

//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)victualler:(NIMMessage *)message media:(void(^)(id data))complete; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(mobile:value:)]) {
        //: return [self.delegate onLongPressCell:message complete:complete];
        return [self.delegate mobile:message value:complete];
    }
    //: return NO;
    return NO;
}

//: - (BOOL)onLongTap:(NIMMessage *)message; {
- (BOOL)cropDown:(NIMMessage *)message; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:)]) {
    if ([self.delegate respondsToSelector:@selector(sessionColor:)]) {
        //: return [self.delegate onLongPressCell:message];
        return [self.delegate sessionColor:message];
    }
    //: return NO;
    return NO;
}



//: #pragma mark - Action
#pragma mark - Action
//: - (void)onRetryMessage:(id)sender
- (void)replied:(id)sender
{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(onRetryMessage:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(replied:)]) {
        //: [self.delegate onRetryMessage:self.model.message];
        [self.delegate replied:self.model.message];
    }
}

//: - (void)longGesturePress:(UIGestureRecognizer *)gestureRecognizer
- (void)smarted:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongPressCell:inView:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(last:language:)]) {
            //: [self.delegate onLongPressCell:self.model.message
            [self.delegate last:self.model.message
                                       //: inView:_bubbleView];
                                       language:_bubbleView];
        }
    }
}

//: #pragma mark - NIMPlayAudioUIDelegate
#pragma mark - NameScale
//: - (void)startPlayingAudioUI
- (void)lengthTime
{
    //: [self refreshData:self.model];
    [self shadowIndex:self.model];
}

//: - (void)retryDownloadMsg
- (void)titleTime
{
    //: [self onRetryMessage:nil];
    [self replied:nil];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state
- (UIImage *)everyChat:(UIControlState)state
{

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:self.model.message];
    ShowClickMessage *setting = [[Notice fullKit].config sizeGroupBar:self.model.message];
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
- (CGRect)sizeShould {
    //: CGSize size = _selectButton.nim_size;
    CGSize size = _selectButton.nim_size;
    //: CGRect avatarRect = [self avatarViewRect];
    CGRect avatarRect = [self rect];
    //: CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    //: CGFloat x = [self selectButtonPadding];
    CGFloat x = [self stop];
    //: return CGRectMake(x, y, size.width, size.height);
    return CGRectMake(x, y, size.width, size.height);
}

//: - (CGRect)avatarViewRect
- (CGRect)rect
{
    //: CGFloat cellWidth = self.bounds.size.width;
    CGFloat cellWidth = self.bounds.size.width;
    //: CGFloat protraitImageWidth = [self avatarSize].width;
    CGFloat protraitImageWidth = [self info].width;
    //: CGFloat protraitImageHeight = [self avatarSize].height;
    CGFloat protraitImageHeight = [self info].height;
    //: CGFloat selfProtraitOriginX = 0;
    CGFloat selfProtraitOriginX = 0;

    //: if (self.model.shouldShowLeft) {
    if (self.model.shouldShowLeft) {
        //: if (![self needShowSelectButton]) {
        if (![self selectTitleButton]) {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x;
            selfProtraitOriginX = self.withLabel.x;
        //: } else {
        } else {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x + _selectButton.nim_right;
            selfProtraitOriginX = self.withLabel.x + _selectButton.nim_right;
        }
    //: } else {
    } else {
        //: selfProtraitOriginX = cellWidth - self.cellPaddingToAvatar.x - protraitImageWidth;
        selfProtraitOriginX = cellWidth - self.withLabel.x - protraitImageWidth;
    }
    //: return CGRectMake(selfProtraitOriginX, self.cellPaddingToAvatar.y,protraitImageWidth,protraitImageHeight);
    return CGRectMake(selfProtraitOriginX, self.withLabel.y,protraitImageWidth,protraitImageHeight);
}

//: - (BOOL)needShowSelectButton {
- (BOOL)selectTitleButton {
    //: return self.model.shouldShowSelect;
    return self.model.shouldShowSelect;
}

//: - (BOOL)needShowAvatar
- (BOOL)status
{
    //: return self.model.shouldShowAvatar;
    return self.model.shouldShowAvatar;
}

//: - (BOOL)needShowNickName
- (BOOL)to
{
    //: return self.model.shouldShowNickName;
    return self.model.shouldShowNickName;
}


//: - (BOOL)retryButtonHidden
- (BOOL)retryConvertHiddenBubble
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([layoutConfig respondsToSelector:@selector(disableRetryButton:)])
    if ([layoutConfig respondsToSelector:@selector(timed:)])
    {
        //: disable = [layoutConfig disableRetryButton:self.model];
        disable = [layoutConfig timed:self.model];
    }
    //: return disable;
    return disable;
}

//: - (CGFloat)retryButtonBubblePadding {
- (CGFloat)cell {
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
- (BOOL)shadow
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
- (BOOL)inheritance {
    //: if (self.model.message.messageType == NIMMessageTypeAudio)
    if (self.model.message.messageType == NIMMessageTypeAudio)
    //: { 
    { //音频
        //: BOOL disable = NO;
        BOOL disable = NO;
        //: if ([self.delegate respondsToSelector:@selector(disableAudioPlayedStatusIcon:)]) {
        if ([self.delegate respondsToSelector:@selector(captureTap:)]) {
            //: disable = [self.delegate disableAudioPlayedStatusIcon:self.model.message];
            disable = [self.delegate captureTap:self.model.message];
        }

        //BOOL hideIcon = self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloaded || disable;

        //: return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
        return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
    }
    //: return YES;
    return YES;
}

//: - (BOOL)readLabelHidden
- (BOOL)video
{
    //: if (self.model.shouldShowReadLabel &&
    if (self.model.shouldShowReadLabel &&
        //: [self activityIndicatorHidden] &&
        [self shadow] &&
        //: [self retryButtonHidden] &&
        [self retryConvertHiddenBubble] &&
        //: [self unreadHidden] &&
        [self inheritance] &&
        //: [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue])
        [[BlondeDefaults phone].showMessageRead boolValue])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (CGFloat)audioPlayedIconBubblePadding{
- (CGFloat)removeByPadding{
    //: return 10.0;
    return 10.0;
}

//: - (CGFloat)readButtonBubblePadding{
- (CGFloat)from{
    //: return 2.0;
    return 2.0;
}

//: - (CGFloat)selectButtonPadding{
- (CGFloat)stop{
    //: return 8.0;
    return 8.0;
}

//: - (CGPoint)cellPaddingToAvatar
- (CGPoint)withLabel
{
    //: return self.model.avatarMargin;
    return self.model.avatarMargin;
}

//: - (CGPoint)cellPaddingToNick
- (CGPoint)digitiserColor
{
    //: return self.model.nickNameMargin;
    return self.model.nickNameMargin;
}

//: - (CGSize)avatarSize {
- (CGSize)info {
    //: return self.model.avatarSize;
    return self.model.avatarSize;
}

//: - (void)onTapAvatar:(id)sender{
- (void)coloring:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onTapAvatar:)])
    if ([self.delegate respondsToSelector:@selector(coloring:)])
    {
        //: [self.delegate onTapAvatar:self.model.message];
        [self.delegate coloring:self.model.message];
    }
}

//: - (void)onLongPressAvatar:(UIGestureRecognizer *)gestureRecognizer
- (void)exceptName:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan)
        gestureRecognizer.state == UIGestureRecognizerStateBegan)
    {
        //: if ([self.delegate respondsToSelector:@selector(onLongPressAvatar:)])
        if ([self.delegate respondsToSelector:@selector(exceptName:)])
        {
            //: [self.delegate onLongPressAvatar:self.model.message];
            [self.delegate exceptName:self.model.message];
        }
    }
}

//: - (void)onPressReadButton:(id)sender
- (void)filterButton:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onPressReadLabel:)])
    if ([self.delegate respondsToSelector:@selector(processoring:)])
    {
        //: [self.delegate onPressReadLabel:self.model.message];
        [self.delegate processoring:self.model.message];
    }
}

//: - (void)onTapSelectedButton:(id)sender
- (void)alonged:(id)sender
{
    //: _selectButton.selected = !_selectButton.selected;
    _selectButton.selected = !_selectButton.selected;
    //: self.model.selected = _selectButton.selected;
    self.model.selected = _selectButton.selected;
    //: if ([self.delegate respondsToSelector:@selector(onSelectedMessage:message:)]) {
    if ([self.delegate respondsToSelector:@selector(request:along:)]) {
        //: [self.delegate onSelectedMessage:self.model.selected message:self.model.message];
        [self.delegate request:self.model.selected along:self.model.message];
    }
}


//: @end
@end

Byte * KaDataToCache(Byte *data) {
    int finishCru = data[0];
    int practice = data[1];
    Byte fool = data[2];
    int inAnyCase = data[3];
    if (!finishCru) return data + inAnyCase;
    for (int i = inAnyCase; i < inAnyCase + practice; i++) {
        int value = data[i] + fool;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[inAnyCase + practice] = 0;
    return data + inAnyCase;
}

NSString *StringFromKaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)KaDataToCache(data)];
}
