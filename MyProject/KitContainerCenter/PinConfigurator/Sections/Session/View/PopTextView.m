
#import <Foundation/Foundation.h>

NSString *StringFromBeforeData(Byte *data);        


//: %@标记了这条消息
Byte kStr_messagePartValue[] = {11, 23, 12, 11, 66, 133, 164, 169, 166, 119, 60, 25, 52, 218, 148, 123, 220, 162, 164, 216, 174, 122, 220, 179, 141, 218, 145, 149, 218, 170, 124, 218, 117, 163, 134};


//: icon_reply
Byte kStr_riftData[] = {23, 10, 80, 12, 57, 92, 92, 186, 194, 251, 113, 113, 25, 19, 31, 30, 15, 34, 21, 32, 28, 41, 185};


//: ffffff
Byte kStr_liablePatronName[] = {24, 6, 48, 9, 9, 140, 159, 197, 175, 54, 54, 54, 54, 54, 54, 61};


//: #999999
Byte kStr_focusFurnitureName[] = {71, 7, 13, 9, 224, 57, 29, 57, 46, 22, 44, 44, 44, 44, 44, 44, 24};


//: icon_pin
Byte kStr_interestingText[] = {40, 8, 80, 8, 57, 17, 245, 201, 25, 19, 31, 30, 15, 32, 25, 30, 131};


//: 1条回复
Byte kStr_launchContent[] = {88, 10, 71, 6, 141, 27, 234, 159, 86, 90, 158, 84, 87, 158, 93, 70, 221};


//: ic_praise%@
Byte kStr_insertStandingName[] = {40, 11, 33, 12, 152, 12, 227, 138, 29, 71, 94, 237, 72, 66, 62, 79, 81, 64, 72, 82, 68, 4, 31, 30};


//: NTESMessageTranslate
Byte kStr_availName[] = {91, 20, 12, 10, 138, 57, 119, 226, 150, 46, 66, 72, 57, 71, 65, 89, 103, 103, 85, 91, 89, 72, 102, 85, 98, 103, 96, 85, 104, 89, 189};


//: #333333
Byte kStr_unemploymentValue[] = {24, 7, 76, 14, 253, 45, 215, 194, 63, 121, 203, 164, 37, 92, 215, 231, 231, 231, 231, 231, 231, 227};


//: #FFEAE0FF
Byte kStr_gagValue[] = {69, 9, 69, 14, 124, 105, 247, 254, 237, 20, 3, 64, 3, 62, 222, 1, 1, 0, 252, 0, 235, 1, 1, 80};


//: %zd条回复
Byte kStr_sufficientName[] = {24, 12, 95, 14, 148, 119, 218, 217, 15, 163, 35, 237, 80, 232, 198, 27, 5, 135, 62, 66, 134, 60, 63, 134, 69, 46, 231};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopTextView.m
// Notice
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAdvancedMessageCell.h"
#import "PopTextView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "FFFQuickCommentCell.h"
#import "ActionAtReusableView.h"
//: #import "FFFSessionMessageContentView.h"
#import "NoticeBlueView.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "CommentIndex.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Notice.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "FFFCollectionViewLeftAlignedLayout.h"
#import "MaxFlowLayout.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "PopScrollView+Notice.h"

//: static NSString * const kNIMListCellReuseID = @"FFFQuickCommentCell";
static NSString * const let_withCellHeightValue = @"ActionAtReusableView";
//: static const CGFloat kNIMAdvancedBackgroundPadding = 5;
static const CGFloat let_itemCustomValue = 5;

//: @interface FFFAdvancedMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
@interface PopTextView () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

//: @property (nonatomic,strong) NSArray *objects;
@property (nonatomic,strong) NSArray *objects;

//: @property (nonatomic,strong) NSMapTable *map;
@property (nonatomic,strong) NSMapTable *map;

//: @end
@end

//: @implementation FFFAdvancedMessageCell
@implementation PopTextView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_replyButton setImage:[UIImage imageNamed:@"icon_reply"] forState:UIControlStateNormal];
        [_replyButton setImage:[UIImage imageNamed:StringFromBeforeData(kStr_riftData)] forState:UIControlStateNormal];
        //: UIColor *titleColor = [UIColor colorWithHex:0x337EFF alpha:1];
        UIColor *titleColor = [UIColor mottle:0x337EFF underStreetwise:1];
        //: [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        //: _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_replyButton addTarget:self action:@selector(onReplyClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_replyButton addTarget:self action:@selector(read:) forControlEvents:UIControlEventTouchUpInside];
        //: _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: [self.contentView addSubview:_replyButton];
        [self.contentView addSubview:_replyButton];
        //: _replyButton.hidden = YES;
        _replyButton.hidden = YES;

        //: _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _pinView.enabled = NO;
        _pinView.enabled = NO;
        //: _pinView.adjustsImageWhenDisabled = NO;
        _pinView.adjustsImageWhenDisabled = NO;
        //: [_pinView setImage:[UIImage imageNamed:@"icon_pin"] forState:UIControlStateNormal];
        [_pinView setImage:[UIImage imageNamed:StringFromBeforeData(kStr_interestingText)] forState:UIControlStateNormal];
        //: [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        //: _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        //: _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        //: _pinView.titleLabel.minimumScaleFactor = 0.7;
        _pinView.titleLabel.minimumScaleFactor = 0.7;
        //: [self.contentView addSubview:_pinView];
        [self.contentView addSubview:_pinView];
        //: _pinView.hidden = YES;
        _pinView.hidden = YES;

        //: _translationView = [[UIView alloc]init];
        _translationView = [[UIView alloc]init];
        //: _translationView.backgroundColor = [UIColor colorWithHexString:@"ffffff"];
        _translationView.backgroundColor = [UIColor isView:StringFromBeforeData(kStr_liablePatronName)];
        //: _translationView.layer.cornerRadius = 8;
        _translationView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_translationView];
        [self.contentView addSubview:_translationView];

        //: _praiseView = [[UIView alloc]init];
        _praiseView = [[UIView alloc]init];
        //: _praiseView.backgroundColor = [UIColor colorWithHexString:@"#FFEAE0FF"];
        _praiseView.backgroundColor = [UIColor isView:StringFromBeforeData(kStr_gagValue)];
        //: _praiseView.layer.cornerRadius = 8;
        _praiseView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_praiseView];
        [self.contentView addSubview:_praiseView];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(FFFMessageModel *)data
- (void)shadowIndex:(MaxLink *)data
{

    //: [super refreshData:data];
    [super shadowIndex:data];
    //: [self refreshPinView:data];
    [self viewTrapColor:data];
//    [self refreshReplyCountView:data];
    //: [self refreshEmoticonsView:data];
    [self replyDisplay:data];

    //: [self refreshtranslationView:data];
    [self pull:data];

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
//    [self layoutEmoticonsContainerViewSize];

    //: [super layoutSubviews];
    [super layoutSubviews];

    //: [self layoutPinView];
    [self mark];
    //: [self layoutReplyCountView];
    [self serverAcross];
    //: [self layouttranslationView];
    [self flushcyMessagePositionSearch];
    //: [self layoutPraiseView];
    [self head];
}

//: #pragma mark - View
#pragma mark - View
//: - (void)layoutPraiseView
- (void)head
{
    //: if (self.praiseView.hidden)
    if (self.praiseView.hidden)
    {
        //: self.praiseView.frame = CGRectZero;
        self.praiseView.frame = CGRectZero;
    }
    //: else
    else
    {
        //: NSInteger limiteNum = self.objects.count>6 ? 6 :self.objects.count;
        NSInteger limiteNum = self.objects.count>6 ? 6 :self.objects.count;
        //: CGFloat width = limiteNum*26 + 10;
        CGFloat width = limiteNum*26 + 10;
        //: self.praiseView.height = 24;
        self.praiseView.height = 24;
        //: self.praiseView.width = width;
        self.praiseView.width = width;


        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.praiseView.left = self.pinView.hidden ? self.bubblesBackgroundView.left : self.pinView.left;
            self.praiseView.left = self.pinView.hidden ? self.bubblesBackgroundView.left : self.pinView.left;
        }
        //: else
        else
        {
            //: self.praiseView.right = self.pinView.hidden ? self.bubblesBackgroundView.right : self.pinView.right;
            self.praiseView.right = self.pinView.hidden ? self.bubblesBackgroundView.right : self.pinView.right;
        }

        //: if (self.replyButton.hidden)
        if (self.replyButton.hidden)
        {
            //: self.praiseView.top = self.bubblesBackgroundView.bottom + 5.f;
            self.praiseView.top = self.bubblesBackgroundView.bottom + 5.f;
        }
        //: else
        else
        {
            //: self.praiseView.top = self.replyButton.bottom + 5.f;
            self.praiseView.top = self.replyButton.bottom + 5.f;
        }
//        self.praiseView.left = self.bubbleView.left;
//        self.praiseView.top = self.bubbleView.bottom-5;
    }
}

//: - (void)layouttranslationView
- (void)flushcyMessagePositionSearch
{
    //: if (self.translationView.hidden)
    if (self.translationView.hidden)
    {
        //: self.translationView.frame = CGRectZero;
        self.translationView.frame = CGRectZero;
    }
    //: else
    else
    {

        //: NSString *aString = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
        NSString *aString = [self.model.message.localExt objectForKey:StringFromBeforeData(kStr_availName)];
        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        PopScrollView *labtran = [[PopScrollView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:aString];
        [labtran pose:aString];
        //: labtran.textColor = [UIColor colorWithHexString:@"#999999"];
        labtran.textColor = [UIColor isView:StringFromBeforeData(kStr_focusFurnitureName)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];

//        CGFloat msgBubbleMaxWidth    = self.bubbleView.nim_width;
        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

        //: self.translationView.height = replySize.height;
        self.translationView.height = replySize.height;
        //: self.translationView.width = replySize.width+10;
        self.translationView.width = replySize.width+10;
        //: self.translationView.top = self.bubbleView.bottom+5;
        self.translationView.top = self.bubbleView.bottom+5;

        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
//            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            //: self.translationView.left = self.bubbleView.left;
            self.translationView.left = self.bubbleView.left;
        //: } else {
        } else {
            //: self.translationView.nim_right = self.bubbleView.nim_right;
            self.translationView.nim_right = self.bubbleView.nim_right;
//            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }



//        self.translationView.left = self.bubbleView.left;

    }
}
//: - (void)refreshtranslationView:(FFFMessageModel *)data
- (void)pull:(MaxLink *)data
{
    //: if([data.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if([data.message.localExt.allKeys containsObject:StringFromBeforeData(kStr_availName)])
    {
        //: NSArray *viewsArray = self.translationView.subviews;
        NSArray *viewsArray = self.translationView.subviews;
        //: for (int i = 0; i < viewsArray.count; i ++) {
        for (int i = 0; i < viewsArray.count; i ++) {
            //: UIView *subview = viewsArray[i];
            UIView *subview = viewsArray[i];
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }

        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        PopScrollView *labtran = [[PopScrollView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:[self.model.message.localExt objectForKey:@"NTESMessageTranslate"]];
        [labtran pose:[self.model.message.localExt objectForKey:StringFromBeforeData(kStr_availName)]];
        //: labtran.textColor = [UIColor colorWithHexString:@"#333333"];
        labtran.textColor = [UIColor isView:StringFromBeforeData(kStr_unemploymentValue)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];
        //: labtran.numberOfLines = 0;
        labtran.numberOfLines = 0;
        //: [_translationView addSubview:labtran];
        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);
        labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);

//        UILabel *labtran = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 0, 0)];
//        labtran.text = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
//        labtran.numberOfLines = 0;
//        labtran.font = [UIFont systemFontOfSize:12];
//        labtran.textColor = TextColor_4;
//        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: _translationView.hidden = NO;
        _translationView.hidden = NO;
    }
    //: else
    else
    {
        //: _translationView.hidden = YES;
        _translationView.hidden = YES;
    }
}



//: - (void)refreshEmoticonsView:(FFFMessageModel *)data
- (void)replyDisplay:(MaxLink *)data
{
    //: self.objects = nil;
    self.objects = nil;
    //: self.map = nil;
    self.map = nil;

    //: NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
    NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
    //: self.map = result;
    self.map = result;
    // 按最近评论优先排序
    //: self.objects = [FFFKitQuickCommentUtil sortedKeys:result];
    self.objects = [CommentIndex nameTo:result];

    //: if (self.objects.count > 0)
    if (self.objects.count > 0)
    {
        //: NSLog(@"self.objects--%@",self.objects);

        //: NSArray *viewsArray = self.praiseView.subviews;
        NSArray *viewsArray = self.praiseView.subviews;
        //: for (int i = 0; i < viewsArray.count; i ++) {
        for (int i = 0; i < viewsArray.count; i ++) {
            //: UIView *subview = viewsArray[i];
            UIView *subview = viewsArray[i];
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }


        //: self.praiseView.hidden = NO;
        self.praiseView.hidden = NO;


        //: for (int i = 0; i < self.objects.count; i++) {
        for (int i = 0; i < self.objects.count; i++) {
            //: CGFloat x = 10 + i*(16+10);
            CGFloat x = 10 + i*(16+10);
            //: UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_praise%@",self.objects[i]]]];
            UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:StringFromBeforeData(kStr_insertStandingName),self.objects[i]]]];
            //: emotion.frame = CGRectMake(x, 4, 16, 16);
            emotion.frame = CGRectMake(x, 4, 16, 16);
            //: [self.praiseView addSubview:emotion];
            [self.praiseView addSubview:emotion];

            //: if(i == 6){
            if(i == 6){
                //: return;
                return;
            }
        }
    }
    //: else
    else
    {
        //: self.praiseView.hidden = YES;
        self.praiseView.hidden = YES;
    }

}

//: - (void)refreshCollection:(FFFMessageModel *)data
- (void)collection:(MaxLink *)data
{
    //: if ([data needShowEmoticonsView])
    if ([data red])
    {
        //: UICollectionView *collectionView = self.emoticonsContainerView;
        UICollectionView *collectionView = self.emoticonsContainerView;
        //: if (!collectionView)
        if (!collectionView)
        {
            //: UICollectionViewFlowLayout *flowLayout = [[FFFCollectionViewLeftAlignedLayout alloc] init];
            UICollectionViewFlowLayout *flowLayout = [[MaxFlowLayout alloc] init];
            //: flowLayout.minimumLineSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumLineSpacing = let_beautyValue;
            //: flowLayout.minimumInteritemSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumInteritemSpacing = let_beautyValue;
            //: collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
            collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                //: collectionViewLayout:flowLayout];
                                                collectionViewLayout:flowLayout];
            //: [collectionView registerClass:[FFFQuickCommentCell class] forCellWithReuseIdentifier:kNIMListCellReuseID];
            [collectionView registerClass:[ActionAtReusableView class] forCellWithReuseIdentifier:let_withCellHeightValue];
            //: self.emoticonsContainerView = collectionView;
            self.emoticonsContainerView = collectionView;
            //: [self.contentView addSubview:collectionView];
            [self.contentView addSubview:collectionView];
        }

        //: self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        //: collectionView.dataSource = self;
        collectionView.dataSource = self;
        //: collectionView.delegate = self;
        collectionView.delegate = self;
        //: collectionView.hidden = NO;
        collectionView.hidden = NO;
    }
}

//: - (void)refreshPinView:(FFFMessageModel *)data
- (void)viewTrapColor:(MaxLink *)data
{
    //: if (data.pinUserName.length && data.shouldShowPinContent)
    if (data.pinUserName.length && data.shouldShowPinContent)
    {
        //: [_pinView setTitle:[NSString stringWithFormat:@"%@标记了这条消息".nim_localized, data.pinUserName] forState:UIControlStateNormal];
        [_pinView setTitle:[NSString stringWithFormat:StringFromBeforeData(kStr_messagePartValue).positionMenu, data.pinUserName] forState:UIControlStateNormal];
        //: _pinView.hidden = NO;
        _pinView.hidden = NO;
    }
    //: else
    else
    {
        //: _pinView.hidden = YES;
        _pinView.hidden = YES;
    }
}

//: - (void)refreshReplyCountView:(FFFMessageModel *)data
- (void)countervalAt:(MaxLink *)data
{
    //: NSInteger count = data.childMessagesCount;
    NSInteger count = data.childMessagesCount;
    //: if (count > 0)
    if (count > 0)
    {
        //: if (count == 1)
        if (count == 1)
        {
            //: [_replyButton setTitle:@"1条回复".nim_localized forState:UIControlStateNormal];
            [_replyButton setTitle:StringFromBeforeData(kStr_launchContent).positionMenu forState:UIControlStateNormal];
        }
        //: else
        else
        {
            //: [_replyButton setTitle:[NSString stringWithFormat:@"%zd条回复".nim_localized, count]
            [_replyButton setTitle:[NSString stringWithFormat:StringFromBeforeData(kStr_sufficientName).positionMenu, count]
                          //: forState:UIControlStateNormal];
                          forState:UIControlStateNormal];
        }

        //: _replyButton.hidden = NO;
        _replyButton.hidden = NO;
    }
    //: else
    else
    {
        //: _replyButton.hidden = YES;
        _replyButton.hidden = YES;
    }
}


//: #pragma mark - Layout
#pragma mark - Layout
//: - (void)layoutPinView
- (void)mark
{
    //: if (self.pinView.hidden)
    if (self.pinView.hidden)
    {
        //: self.pinView.frame = CGRectZero;
        self.pinView.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        //: self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        //: self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
            //: self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            //: self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: } else {
        } else {
            //: self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            //: self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
    }
}

//: - (void)layoutReplyCountView
- (void)serverAcross
{
    //: if (self.replyButton.hidden)
    if (self.replyButton.hidden)
    {
        //: self.replyButton.frame = CGRectZero;
        self.replyButton.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        //: self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
            self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
        }
        //: else
        else
        {
            //: self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
            self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
        }

        //: if (self.pinView.hidden)
        if (self.pinView.hidden)
        {
            //: self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        }
        //: else
        else
        {
            //: self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
        }
    }
}

//: - (void)layoutEmoticonsContainerViewSize
- (void)sightSize
{
    //: if ([self.model needShowEmoticonsView])
    if ([self.model red])
    {
        //: CGSize size = self.model.emoticonsContainerSize;
        CGSize size = self.model.emoticonsContainerSize;
        //: self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
        self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
    }
    //: else
    else
    {
        //: self.emoticonsContainerView.frame = CGRectZero;
        self.emoticonsContainerView.frame = CGRectZero;
        //: self.emoticonsContainerView = nil;
        self.emoticonsContainerView = nil;
    }
}

//: - (void)fixPositions
- (void)segmentProduce
{
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

    //: if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
        left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
    //: } else {
    } else {
        //: left = self.bubbleView.nim_left;
        left = self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left+5;
    self.replyedBubbleView.nim_left = left+5;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
    //: self.emoticonsContainerView.nim_left = left + kNIMAdvancedBackgroundPadding;
    self.emoticonsContainerView.nim_left = left + let_itemCustomValue;
    //: self.bubblesBackgroundView.nim_left = left;
    self.bubblesBackgroundView.nim_left = left;

    //: self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
    self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
}

//: - (void)layoutBubblesBackgroundView
- (void)year
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: height += self.emoticonsContainerView.nim_height;
    height += self.emoticonsContainerView.nim_height;

    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + kNIMAdvancedBackgroundPadding * 2;
    CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + let_itemCustomValue * 2;
    //: width = width > emoticonsWidth ? width : emoticonsWidth;
    width = width > emoticonsWidth ? width : emoticonsWidth;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height);
    //: self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;

    //: [self fixPositions];
    [self segmentProduce];
}

//: - (void)layoutReadButton{
- (void)showLabel{

    //: if (!self.readButton.isHidden) {
    if (!self.readButton.isHidden) {

        //: CGFloat left = self.bubbleView.nim_left;
        CGFloat left = self.bubbleView.nim_left;
        //: CGFloat bottom = self.bubbleView.nim_bottom;
        CGFloat bottom = self.bubbleView.nim_bottom;

        //: self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
        self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
//        self.readButton.nim_bottom = bottom;
        //: self.readButton.nim_centerY = self.bubbleView.nim_centerY;
        self.readButton.nim_centerY = self.bubbleView.nim_centerY;
    }
}

//: #pragma mark - Action
#pragma mark - Action

//: - (void)onReplyClicked:(id)sender
- (void)read:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onClickReplyButton:)])
    if ([self.delegate respondsToSelector:@selector(speedied:)])
    {
        //: [self.delegate onClickReplyButton:self.model.message];
        [self.delegate speedied:self.model.message];
    }
}


//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //: return self.objects.count;
    return self.objects.count;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: FFFQuickCommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNIMListCellReuseID forIndexPath:indexPath];
    ActionAtReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:let_withCellHeightValue forIndexPath:indexPath];
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: [cell refreshWithData:comments model:self.model];
    [cell show:comments crop:self.model];
    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: CGSize size = [FFFKitQuickCommentUtil itemSizeWithComments:comments];
    CGSize size = [CommentIndex title:comments];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    //: return UIEdgeInsetsMake(0, NIMKitCommentUtilCellPadding, 0, NIMKitCommentUtilCellPadding);
    return UIEdgeInsetsMake(0, let_beautyValue, 0, let_beautyValue);
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NIMQuickComment *comment = [FFFKitQuickCommentUtil myCommentFromComments:indexPath.item
    NIMQuickComment *comment = [CommentIndex tableRead:indexPath.item
                                                                 //: keys:self.objects
                                                                 share:self.objects
                                                             //: comments:self.map];
                                                             rangeComments:self.map];
    //: if ([self.delegate respondsToSelector:@selector(onClickEmoticon:comment:selected:)])
    if ([self.delegate respondsToSelector:@selector(image:smart:text:)])
    {
        //: BOOL hasCommentThisEmoticon = comment ? YES : NO;
        BOOL hasCommentThisEmoticon = comment ? YES : NO;
        //: if (!comment)
        if (!comment)
        {
            //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            //: NSArray *comments = [self.map objectForKey:number];
            NSArray *comments = [self.map objectForKey:number];
            //: comment = [comments firstObject];
            comment = [comments firstObject];
        }
        //: [self.delegate onClickEmoticon:self.model.message
        [self.delegate image:self.model.message
                               //: comment:comment
                               smart:comment
                              //: selected:hasCommentThisEmoticon];
                              text:hasCommentThisEmoticon];
    }
}





//: @end
@end

Byte * BeforeDataToCache(Byte *data) {
    int adviceSoft = data[0];
    int quantityernational = data[1];
    Byte titleTonightImposeRule = data[2];
    int apprehender = data[3];
    if (!adviceSoft) return data + apprehender;
    for (int i = apprehender; i < apprehender + quantityernational; i++) {
        int value = data[i] + titleTonightImposeRule;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[apprehender + quantityernational] = 0;
    return data + apprehender;
}

NSString *StringFromBeforeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BeforeDataToCache(data)];
}
