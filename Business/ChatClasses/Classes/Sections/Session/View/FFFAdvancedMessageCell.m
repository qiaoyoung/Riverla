//
//  FFFAdvancedMessageCell.m
// NeeyoKit
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "FFFAdvancedMessageCell.h"
#import "UIViewNimKit.h"
#import "FFFMessageModel.h"
#import "NSString+NeeyoKit.h"
#import "FFFQuickCommentCell.h"
#import "FFFSessionMessageContentView.h"
#import "FFFAvatarImageView.h"
#import "M80AttributedLabel.h"
#import "FFFKitUtil.h"
#import "FFFKitQuickCommentUtil.h"
#import "UIColor+NeeyoKit.h"
#import "UIImage+NeeyoKit.h"
#import "FFFCollectionViewLeftAlignedLayout.h"
#import "M80AttributedLabel.h"
#import "M80AttributedLabel+NeeyoKit.h"

static NSString * const kNIMListCellReuseID = @"FFFQuickCommentCell";
static const CGFloat kNIMAdvancedBackgroundPadding = 5;

@interface FFFAdvancedMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

@property (nonatomic,strong) NSArray *objects;

@property (nonatomic,strong) NSMapTable *map;

@end

@implementation FFFAdvancedMessageCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_replyButton setImage:[UIImage imageNamed:@"icon_reply"] forState:UIControlStateNormal];
        UIColor *titleColor = [UIColor colorWithHex:0x337EFF alpha:1];
        [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [_replyButton addTarget:self action:@selector(onReplyClicked:) forControlEvents:UIControlEventTouchUpInside];
        _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        [self.contentView addSubview:_replyButton];
        _replyButton.hidden = YES;
        
        _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        _pinView.enabled = NO;
        _pinView.adjustsImageWhenDisabled = NO;
        [_pinView setImage:[UIImage imageNamed:@"icon_pin"] forState:UIControlStateNormal];
        [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        _pinView.titleLabel.minimumScaleFactor = 0.7;
        [self.contentView addSubview:_pinView];
        _pinView.hidden = YES;
        
        _translationView = [[UIView alloc]init];
        _translationView.backgroundColor = RGB_COLOR_String(@"ffffff");
        _translationView.layer.cornerRadius = 8;
        [self.contentView addSubview:_translationView];
        
        _praiseView = [[UIView alloc]init];
        _praiseView.backgroundColor = RGB_COLOR_String(@"#FFEAE0FF");
        _praiseView.layer.cornerRadius = 8;
        [self.contentView addSubview:_praiseView];
    }
    return self;
}

- (void)refreshData:(FFFMessageModel *)data
{
 
    [super refreshData:data];
    [self refreshPinView:data];
//    [self refreshReplyCountView:data];
    [self refreshEmoticonsView:data];
    
    [self refreshtranslationView:data];
    
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
//    [self layoutEmoticonsContainerViewSize];

    [super layoutSubviews];

    [self layoutPinView];
    [self layoutReplyCountView];
    [self layouttranslationView];
    [self layoutPraiseView];
}

#pragma mark - View
- (void)layoutPraiseView
{
    if (self.praiseView.hidden)
    {
        self.praiseView.frame = CGRectZero;
    }
    else
    {
        NSInteger limiteNum = self.objects.count>6 ? 6 :self.objects.count;
        CGFloat width = limiteNum*26 + 10;
        self.praiseView.height = 24;
        self.praiseView.width = width;
        

        if (self.model.shouldShowLeft)
        {
            self.praiseView.left = self.pinView.hidden ? self.bubblesBackgroundView.left : self.pinView.left;
        }
        else
        {
            self.praiseView.right = self.pinView.hidden ? self.bubblesBackgroundView.right : self.pinView.right;
        }
        
        if (self.replyButton.hidden)
        {
            self.praiseView.top = self.bubblesBackgroundView.bottom + 5.f;
        }
        else
        {
            self.praiseView.top = self.replyButton.bottom + 5.f;
        }
//        self.praiseView.left = self.bubbleView.left;
//        self.praiseView.top = self.bubbleView.bottom-5;
    }
}

- (void)layouttranslationView
{
    if (self.translationView.hidden)
    {
        self.translationView.frame = CGRectZero;
    }
    else
    {

        NSString *aString = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
        M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        [labtran nim_setText:aString];
        labtran.textColor = TextColor_3;
        labtran.font = [UIFont systemFontOfSize:13];
        
//        CGFloat msgBubbleMaxWidth    = self.bubbleView.nim_width;
        CGFloat msgBubbleMaxWidth    = (self.nim_width - 130);
        CGFloat bubbleLeftToContent  = 5;
        CGFloat contentRightToBubble = 5;
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        
        CGSize replySize  = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
        
        self.translationView.height = replySize.height;
        self.translationView.width = replySize.width+10;
        self.translationView.top = self.bubbleView.bottom+5;
        
        if (self.model.shouldShowLeft) {
//            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.translationView.left = self.bubbleView.left;
        } else {
            self.translationView.nim_right = self.bubbleView.nim_right;
//            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
        
        
       
//        self.translationView.left = self.bubbleView.left;
       
    }
}
- (void)refreshtranslationView:(FFFMessageModel *)data
{
    if([data.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    {
        NSArray *viewsArray = self.translationView.subviews;
        for (int i = 0; i < viewsArray.count; i ++) {
            UIView *subview = viewsArray[i];
            [subview removeFromSuperview];
        }
        
        M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        [labtran nim_setText:[self.model.message.localExt objectForKey:@"NTESMessageTranslate"]];
        labtran.textColor = TextColor_4;
        labtran.font = [UIFont systemFontOfSize:13];
        labtran.numberOfLines = 0;
        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        CGFloat msgBubbleMaxWidth    = (self.nim_width - 130);
        CGFloat bubbleLeftToContent  = 5;
        CGFloat contentRightToBubble = 5;
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGSize replySize  = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
        labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);
        
//        UILabel *labtran = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 0, 0)];
//        labtran.text = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
//        labtran.numberOfLines = 0;
//        labtran.font = [UIFont systemFontOfSize:12];
//        labtran.textColor = TextColor_4;
//        [_translationView addSubview:labtran];
//        [labtran sizeToFit];
        
        _translationView.hidden = NO;
    }
    else
    {
        _translationView.hidden = YES;
    }
}



- (void)refreshEmoticonsView:(FFFMessageModel *)data
{
    self.objects = nil;
    self.map = nil;

    NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
    self.map =  result;
    // 按最近评论优先排序
    self.objects = [FFFKitQuickCommentUtil sortedKeys:result];
    
    if (self.objects.count > 0)
    {
        NSLog(@"self.objects--%@",self.objects);
        
        NSArray *viewsArray = self.praiseView.subviews;
        for (int i = 0; i < viewsArray.count; i ++) {
            UIView *subview = viewsArray[i];
            [subview removeFromSuperview];
        }
        
        
        self.praiseView.hidden = NO;
        
        
        for (int i = 0; i < self.objects.count; i++) {
            CGFloat x = 10 + i*(16+10);
            UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_praise%@",self.objects[i]]]];
            emotion.frame = CGRectMake(x, 4, 16, 16);
            [self.praiseView addSubview:emotion];
            
            if(i == 6){
                return;
            }
        }
    }
    else
    {
        self.praiseView.hidden = YES;
    }
    
}

- (void)refreshCollection:(FFFMessageModel *)data
{
    if ([data needShowEmoticonsView])
    {
        UICollectionView *collectionView = self.emoticonsContainerView;
        if (!collectionView)
        {
            UICollectionViewFlowLayout *flowLayout = [[FFFCollectionViewLeftAlignedLayout alloc] init];
            flowLayout.minimumLineSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumInteritemSpacing = NIMKitCommentUtilCellPadding;
            collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                collectionViewLayout:flowLayout];
            [collectionView registerClass:[FFFQuickCommentCell class] forCellWithReuseIdentifier:kNIMListCellReuseID];
            self.emoticonsContainerView = collectionView;
            [self.contentView addSubview:collectionView];
        }
        
        self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        collectionView.dataSource = self;
        collectionView.delegate = self;
        collectionView.hidden = NO;
    }
}

- (void)refreshPinView:(FFFMessageModel *)data
{
    if (data.pinUserName.length && data.shouldShowPinContent)
    {
        [_pinView setTitle:[NSString stringWithFormat:@"%@标记了这条消息".nim_localized, data.pinUserName] forState:UIControlStateNormal];
        _pinView.hidden = NO;
    }
    else
    {
        _pinView.hidden = YES;
    }
}

- (void)refreshReplyCountView:(FFFMessageModel *)data
{
    NSInteger count = data.childMessagesCount;
    if (count > 0)
    {
        if (count == 1)
        {
            [_replyButton setTitle:@"1条回复".nim_localized forState:UIControlStateNormal];
        }
        else
        {
            [_replyButton setTitle:[NSString stringWithFormat:@"%zd条回复".nim_localized, count]
                          forState:UIControlStateNormal];
        }
        
        _replyButton.hidden = NO;
    }
    else
    {
        _replyButton.hidden = YES;
    }
}


#pragma mark - Layout
- (void)layoutPinView
{
    if (self.pinView.hidden)
    {
        self.pinView.frame = CGRectZero;
    }
    else
    {
        self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        if (self.model.shouldShowLeft) {
            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        } else {
            self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
    }
}

- (void)layoutReplyCountView
{
    if (self.replyButton.hidden)
    {
        self.replyButton.frame = CGRectZero;
    }
    else
    {
        self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        if (self.model.shouldShowLeft)
        {
            self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
        }
        else
        {
            self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
        }
        
        if (self.pinView.hidden)
        {
            self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        }
        else
        {
            self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
        }
    }
}

- (void)layoutEmoticonsContainerViewSize
{
    if ([self.model needShowEmoticonsView])
    {
        CGSize size = self.model.emoticonsContainerSize;
        self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
    }
    else
    {
        self.emoticonsContainerView.frame = CGRectZero;
        self.emoticonsContainerView = nil;
    }
}

- (void)fixPositions
{
    if (self.replyedBubbleView)
    {
        self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
    }
    else
    {
        self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
    }
    
    if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    {
        return;
    }
    
    CGFloat left = 0;    
    CGFloat protraitRightToBubble = 15.f;
    if (!self.model.shouldShowLeft)
    {
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame)  - protraitRightToBubble : self.nim_width;
        left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
    } else {
        left = self.bubbleView.nim_left;
    }
    
    self.replyedBubbleView.nim_left = left+5;
    self.bubbleView.nim_left = left;
    self.emoticonsContainerView.nim_left = left + kNIMAdvancedBackgroundPadding;
    self.bubblesBackgroundView.nim_left = left;
    
    self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
}

- (void)layoutBubblesBackgroundView
{
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    height += self.emoticonsContainerView.nim_height;
    
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + kNIMAdvancedBackgroundPadding * 2;
    width = width > emoticonsWidth ? width : emoticonsWidth;
    self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height);
    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;

    [self fixPositions];
}

- (void)layoutReadButton{
    
    if (!self.readButton.isHidden) {
        
        CGFloat left = self.bubbleView.nim_left;
        CGFloat bottom = self.bubbleView.nim_bottom;
        
        self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
//        self.readButton.nim_bottom = bottom;
        self.readButton.nim_centerY = self.bubbleView.nim_centerY;
    }
}

#pragma mark - Action

- (void)onReplyClicked:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(onClickReplyButton:)])
    {
        [self.delegate onClickReplyButton:self.model.message];
    }
}


#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.objects.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    FFFQuickCommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNIMListCellReuseID forIndexPath:indexPath];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSArray *comments = [self.map objectForKey:number];
    [cell refreshWithData:comments model:self.model];
    return cell;
}

#pragma mark - UICollectionViewDelegate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSArray *comments = [self.map objectForKey:number];
    CGSize size = [FFFKitQuickCommentUtil itemSizeWithComments:comments];
    return size;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, NIMKitCommentUtilCellPadding, 0, NIMKitCommentUtilCellPadding);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NIMQuickComment *comment = [FFFKitQuickCommentUtil myCommentFromComments:indexPath.item
                                                                 keys:self.objects
                                                             comments:self.map];
    if ([self.delegate respondsToSelector:@selector(onClickEmoticon:comment:selected:)])
    {
        BOOL hasCommentThisEmoticon = comment ? YES : NO;
        if (!comment)
        {
            NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            NSArray *comments = [self.map objectForKey:number];
            comment = [comments firstObject];
        }
        [self.delegate onClickEmoticon:self.model.message
                               comment:comment
                              selected:hasCommentThisEmoticon];
    }
}





@end
