
#import <Foundation/Foundation.h>
typedef struct {
    Byte earthStrengthen;
    Byte *plungeGritCome;
    unsigned int pursuant;
    bool leaBishop;
	int roachDevote;
	int cordial;
	int leadingItem;
} ArticleOfFaithData;

NSString *StringFromArticleOfFaithData(ArticleOfFaithData *data);


//: contact_head_selected
ArticleOfFaithData kStr_withExposeValue = (ArticleOfFaithData){252, (Byte []){159, 147, 146, 136, 157, 159, 136, 163, 148, 153, 157, 152, 163, 143, 153, 144, 153, 159, 136, 153, 152, 4}, 21, false, 35, 86, 9};


//: ic_close_group
ArticleOfFaithData kStr_oxygenText = (ArticleOfFaithData){176, (Byte []){217, 211, 239, 211, 220, 223, 195, 213, 239, 215, 194, 223, 197, 192, 69}, 14, false, 12, 235, 17};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContactPickedView.m
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactPickedView.h"
#import "ContactView.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"

//: enum RefreshType
enum RefreshType
{
    //: RefreshType_Remove,
    RefreshType_Remove,
    //: RefreshType_Add
    RefreshType_Add
//: };
};

//: @interface NIMContactSelectAvatarView : FFFAvatarImageView
@interface MessageControl : ViewControl

//: @property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *userId;
//: @property (nonatomic, strong) UIImageView *deleteImg;
@property (nonatomic, strong) UIImageView *deleteImg;

//: @end
@end

//: @implementation NIMContactSelectAvatarView
@implementation MessageControl

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.deleteImg = [[UIImageView alloc] initWithFrame:CGRectMake(48 -17, 0, 17, 17)];
        self.deleteImg = [[UIImageView alloc] initWithFrame:CGRectMake(48 -17, 0, 17, 17)];
        //: self.deleteImg.image = [UIImage imageNamed:@"ic_close_group"];
        self.deleteImg.image = [UIImage imageNamed:StringFromArticleOfFaithData(&kStr_oxygenText)];
        //: [self addSubview:self.deleteImg];
        [self addSubview:self.deleteImg];

    }
    //: return self;
    return self;
}

//: @end
@end


//: @interface FFFContactPickedView()
@interface ContactView()

//: @property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIScrollView *scrollView;
//: @property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) NSMutableArray *array;
//: @property (nonatomic, assign) NSInteger currentPos;
@property (nonatomic, assign) NSInteger currentPos;
//: @property (nonatomic, strong) NIMContactSelectAvatarView *blankView;
@property (nonatomic, strong) MessageControl *blankView;

//: @end
@end

//: @implementation FFFContactPickedView
@implementation ContactView

//: - (instancetype)initWithCoder:(NSCoder *)aDecoder {
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    //: self = [super initWithCoder:aDecoder];
    self = [super initWithCoder:aDecoder];
    //: if (self) {
    if (self) {
        //: [self initUI];
        [self initRedWith];
    }
    //: return self;
    return self;
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self initUI];
        [self initRedWith];
    }
    //: return self;
    return self;
}

//: - (void)initUI {
- (void)initRedWith {
    //: UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
    //: scrollView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
                                    //: UIViewAutoresizingFlexibleTopMargin |
                                    UIViewAutoresizingFlexibleTopMargin |
                                    //: UIViewAutoresizingFlexibleWidth |
                                    UIViewAutoresizingFlexibleWidth |
                                    //: UIViewAutoresizingFlexibleHeight;
                                    UIViewAutoresizingFlexibleHeight;

    //: [scrollView setContentSize:self.frame.size];
    [scrollView setContentSize:self.frame.size];
    //: [scrollView setScrollEnabled:YES];
    [scrollView setScrollEnabled:YES];
    //: [scrollView setScrollsToTop:NO];
    [scrollView setScrollsToTop:NO];
    //: [self addSubview:scrollView];
    [self addSubview:scrollView];
    //: self.scrollView = scrollView;
    self.scrollView = scrollView;

    //: self.array = [NSMutableArray array];
    self.array = [NSMutableArray array];
    //: self.currentPos = 10;
    self.currentPos = 10;
//    [self addBlankAvatarView];
}

//: - (void)addBlankAvatarView
- (void)blackOn
{
    //: self.blankView = [[NIMContactSelectAvatarView alloc]init];
    self.blankView = [[MessageControl alloc]init];
    //: [self.blankView setImage:[UIImage imageNamed:@"contact_head_selected"]];
    [self.blankView setImage:[UIImage imageNamed:StringFromArticleOfFaithData(&kStr_withExposeValue)]];
    //: [self.blankView setFrame:CGRectMake(self.currentPos, 7, 48, 48)];
    [self.blankView setFrame:CGRectMake(self.currentPos, 7, 48, 48)];
    //: self.blankView.userId = @"";
    self.blankView.userId = @"";
    //: [self.scrollView addSubview:self.blankView];
    [self.scrollView addSubview:self.blankView];
}

//: - (void)moveBlankAvatarView
- (void)max
{
    //: CGRect frame = self.blankView.frame;
    CGRect frame = self.blankView.frame;
    //: frame.origin.x = self.currentPos;
    frame.origin.x = self.currentPos;

    //: [UIView animateWithDuration:0.1 animations:^{
    [UIView animateWithDuration:0.1 animations:^{
        //: [self.blankView setFrame:frame];
        [self.blankView setFrame:frame];
    //: }];
    }];
}

//: - (void)addAvatarView:(NIMContactSelectAvatarView *)view
- (void)displayFrom:(MessageControl *)view
{
    //: [view addTarget:self action:@selector(remove:) forControlEvents:UIControlEventTouchUpInside];
    [view addTarget:self action:@selector(titles:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.array addObject:view];
    [self.array addObject:view];
    //: [self refreshView:RefreshType_Add];
    [self note:RefreshType_Add];
    //: [view setFrame:CGRectMake(self.currentPos, 7, 48, 48)];
    [view setFrame:CGRectMake(self.currentPos, 7, 48, 48)];
//    view.layer.masksToBounds = YES;
    //: view.layer.cornerRadius = 48/2;
    view.layer.cornerRadius = 48/2;
    //: [self.scrollView addSubview:view];
    [self.scrollView addSubview:view];
    //: self.currentPos = self.currentPos + 10 + 48;
    self.currentPos = self.currentPos + 10 + 48;
    //: [self moveBlankAvatarView];
    [self max];
}

//: - (void)removeAvatarView:(NIMContactSelectAvatarView *)view
- (void)overSegment:(MessageControl *)view
{
    //: NSInteger i = [self.array indexOfObject:view];
    NSInteger i = [self.array indexOfObject:view];
    //: [self.array removeObject:view];
    [self.array removeObject:view];
    //: [self refreshView:RefreshType_Remove];
    [self note:RefreshType_Remove];
    //: [view removeFromSuperview];
    [view removeFromSuperview];

    //: for (NSInteger j = i; j < [self.array count]; j++) {
    for (NSInteger j = i; j < [self.array count]; j++) {
        //: NIMContactSelectAvatarView *view = [self.array objectAtIndex:j];
        MessageControl *view = [self.array objectAtIndex:j];
        //: CGRect frame = view.frame;
        CGRect frame = view.frame;
        //: frame.origin.x = frame.origin.x - 48 - 10;
        frame.origin.x = frame.origin.x - 48 - 10;
        //: [view setFrame:frame];
        [view setFrame:frame];
    }
    //: self.currentPos = self.currentPos - 10 - 48;
    self.currentPos = self.currentPos - 10 - 48;
    //: [self moveBlankAvatarView];
    [self max];
}


//: - (void)addMemberInfo:(FFFKitInfo *)info
- (void)member:(OriginBy *)info
{

    //: NIMContactSelectAvatarView *avatar = [[NIMContactSelectAvatarView alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
    MessageControl *avatar = [[MessageControl alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [avatar nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [avatar disableTime:url min:info.avatarImage pathImageOptions:SDWebImageRetryFailed];
    //: avatar.userId = info.infoId;
    avatar.userId = info.infoId;
    //: [self addAvatarView:avatar];
    [self displayFrom:avatar];
}

//: - (void)removeMemberInfo:(FFFKitInfo *)info
- (void)shouldText:(OriginBy *)info
{
    //: NSInteger i = 0;
    NSInteger i = 0;
    //: for (i = 0;i<[self.array count];i++) {
    for (i = 0;i<[self.array count];i++) {
        //: NIMContactSelectAvatarView *view = [self.array objectAtIndex:i];
        MessageControl *view = [self.array objectAtIndex:i];
        //: if ([view.userId isEqualToString:info.infoId]) {
        if ([view.userId isEqualToString:info.infoId]) {
            //: [self removeAvatarView:view];
            [self overSegment:view];
            //: break;
            break;
        }
    }
}

//: - (void)refreshView:(enum RefreshType)refreshType
- (void)note:(enum RefreshType)refreshType
{
    //: NSInteger width = ([self.array count]+1)*(48 +10)+10;
    NSInteger width = ([self.array count]+1)*(48 +10)+10;
    //: CGSize size = self.scrollView.contentSize;
    CGSize size = self.scrollView.contentSize;
    //: size.width = width;
    size.width = width;
    //: [self.scrollView setContentSize:size];
    [self.scrollView setContentSize:size];

    //: CGPoint offset = self.scrollView.contentOffset;
    CGPoint offset = self.scrollView.contentOffset;
    //: if (width> self.scrollView.frame.size.width) {
    if (width> self.scrollView.frame.size.width) {
        //: int offsetX = width - self.scrollView.frame.size.width;
        int offsetX = width - self.scrollView.frame.size.width;
        //: if (!(refreshType == RefreshType_Remove && offsetX > offset.x)) {
        if (!(refreshType == RefreshType_Remove && offsetX > offset.x)) {
            //: offset.x = offsetX;
            offset.x = offsetX;
        }
    }
    //: else {
    else {
        //: offset.x = 0;
        offset.x = 0;
    }
    //: [self.scrollView setContentOffset:offset animated:YES];
    [self.scrollView setContentOffset:offset animated:YES];
}

//: #pragma mark - action
#pragma mark - action
//: - (IBAction)remove:(id)sender
- (IBAction)titles:(id)sender
{
    //: NIMContactSelectAvatarView *view = (NIMContactSelectAvatarView *)sender;
    MessageControl *view = (MessageControl *)sender;
    //: [self.delegate removeUser:view.userId];
    [self.delegate towardInfo:view.userId];
    //: [self removeAvatarView:view];
    [self overSegment:view];
}

//: @end
@end

Byte *ArticleOfFaithDataToByte(ArticleOfFaithData *data) {
    if (data->leaBishop) return data->plungeGritCome;
    for (int i = 0; i < data->pursuant; i++) {
        data->plungeGritCome[i] ^= data->earthStrengthen;
    }
    data->plungeGritCome[data->pursuant] = 0;
    data->leaBishop = true;
	if (data->pursuant >= 3) {
		data->roachDevote = data->plungeGritCome[0];
		data->cordial = data->plungeGritCome[1];
		data->leadingItem = data->plungeGritCome[2];
	}
    return data->plungeGritCome;
}

NSString *StringFromArticleOfFaithData(ArticleOfFaithData *data) {
    return [NSString stringWithUTF8String:(char *)ArticleOfFaithDataToByte(data)];
}
