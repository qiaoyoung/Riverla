
#import <Foundation/Foundation.h>
typedef struct {
    Byte sickBenefit;
    Byte *currentControl;
    unsigned int frameFlueCounterrupt;
    bool referValueMica;
	int primMax;
	int removeGrad;
} DeviceData;

NSString *StringFromDeviceData(DeviceData *data);


//: ic_close_group
DeviceData kStr_viewPromValue = (DeviceData){181, (Byte []){220, 214, 234, 214, 217, 218, 198, 208, 234, 210, 199, 218, 192, 197, 234}, 14, false, 170, 106};


//: contact_head_selected
DeviceData kStr_sizeBlueMumText = (DeviceData){226, (Byte []){129, 141, 140, 150, 131, 129, 150, 189, 138, 135, 131, 134, 189, 145, 135, 142, 135, 129, 150, 135, 134, 62}, 21, false, 89, 30};

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
#import "RadiogramView.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"

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
@interface ConcealingControl : StatusWithControl

//: @property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *userId;
//: @property (nonatomic, strong) UIImageView *deleteImg;
@property (nonatomic, strong) UIImageView *deleteImg;

//: @end
@end

//: @implementation NIMContactSelectAvatarView
@implementation ConcealingControl

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.deleteImg = [[UIImageView alloc] initWithFrame:CGRectMake(48 -17, 0, 17, 17)];
        self.deleteImg = [[UIImageView alloc] initWithFrame:CGRectMake(48 -17, 0, 17, 17)];
        //: self.deleteImg.image = [UIImage imageNamed:@"ic_close_group"];
        self.deleteImg.image = [UIImage imageNamed:StringFromDeviceData(&kStr_viewPromValue)];
        //: [self addSubview:self.deleteImg];
        [self addSubview:self.deleteImg];

    }
    //: return self;
    return self;
}

//: @end
@end


//: @interface FFFContactPickedView()
@interface RadiogramView()

//: @property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIScrollView *scrollView;
//: @property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) NSMutableArray *array;
//: @property (nonatomic, assign) NSInteger currentPos;
@property (nonatomic, assign) NSInteger currentPos;
//: @property (nonatomic, strong) NIMContactSelectAvatarView *blankView;
@property (nonatomic, strong) ConcealingControl *blankView;

//: @end
@end

//: @implementation FFFContactPickedView
@implementation RadiogramView

//: - (instancetype)initWithCoder:(NSCoder *)aDecoder {
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    //: self = [super initWithCoder:aDecoder];
    self = [super initWithCoder:aDecoder];
    //: if (self) {
    if (self) {
        //: [self initUI];
        [self initInputFor];
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
        [self initInputFor];
    }
    //: return self;
    return self;
}

//: - (void)initUI {
- (void)initInputFor {
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
- (void)stateContent
{
    //: self.blankView = [[NIMContactSelectAvatarView alloc]init];
    self.blankView = [[ConcealingControl alloc]init];
    //: [self.blankView setImage:[UIImage imageNamed:@"contact_head_selected"]];
    [self.blankView setImage:[UIImage imageNamed:StringFromDeviceData(&kStr_sizeBlueMumText)]];
    //: [self.blankView setFrame:CGRectMake(self.currentPos, 7, 48, 48)];
    [self.blankView setFrame:CGRectMake(self.currentPos, 7, 48, 48)];
    //: self.blankView.userId = @"";
    self.blankView.userId = @"";
    //: [self.scrollView addSubview:self.blankView];
    [self.scrollView addSubview:self.blankView];
}

//: - (void)moveBlankAvatarView
- (void)clearMessage
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
- (void)brand:(ConcealingControl *)view
{
    //: [view addTarget:self action:@selector(remove:) forControlEvents:UIControlEventTouchUpInside];
    [view addTarget:self action:@selector(celled:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.array addObject:view];
    [self.array addObject:view];
    //: [self refreshView:RefreshType_Add];
    [self to:RefreshType_Add];
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
    [self clearMessage];
}

//: - (void)removeAvatarView:(NIMContactSelectAvatarView *)view
- (void)valueWith:(ConcealingControl *)view
{
    //: NSInteger i = [self.array indexOfObject:view];
    NSInteger i = [self.array indexOfObject:view];
    //: [self.array removeObject:view];
    [self.array removeObject:view];
    //: [self refreshView:RefreshType_Remove];
    [self to:RefreshType_Remove];
    //: [view removeFromSuperview];
    [view removeFromSuperview];

    //: for (NSInteger j = i; j < [self.array count]; j++) {
    for (NSInteger j = i; j < [self.array count]; j++) {
        //: NIMContactSelectAvatarView *view = [self.array objectAtIndex:j];
        ConcealingControl *view = [self.array objectAtIndex:j];
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
    [self clearMessage];
}


//: - (void)addMemberInfo:(FFFKitInfo *)info
- (void)bubble:(MarginThanInfo *)info
{

    //: NIMContactSelectAvatarView *avatar = [[NIMContactSelectAvatarView alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
    ConcealingControl *avatar = [[ConcealingControl alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [avatar nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [avatar placeholder:url beforeArea:info.avatarImage frameImageOptions:SDWebImageRetryFailed];
    //: avatar.userId = info.infoId;
    avatar.userId = info.infoId;
    //: [self addAvatarView:avatar];
    [self brand:avatar];
}

//: - (void)removeMemberInfo:(FFFKitInfo *)info
- (void)customInfo:(MarginThanInfo *)info
{
    //: NSInteger i = 0;
    NSInteger i = 0;
    //: for (i = 0;i<[self.array count];i++) {
    for (i = 0;i<[self.array count];i++) {
        //: NIMContactSelectAvatarView *view = [self.array objectAtIndex:i];
        ConcealingControl *view = [self.array objectAtIndex:i];
        //: if ([view.userId isEqualToString:info.infoId]) {
        if ([view.userId isEqualToString:info.infoId]) {
            //: [self removeAvatarView:view];
            [self valueWith:view];
            //: break;
            break;
        }
    }
}

//: - (void)refreshView:(enum RefreshType)refreshType
- (void)to:(enum RefreshType)refreshType
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
- (IBAction)celled:(id)sender
{
    //: NIMContactSelectAvatarView *view = (NIMContactSelectAvatarView *)sender;
    ConcealingControl *view = (ConcealingControl *)sender;
    //: [self.delegate removeUser:view.userId];
    [self.delegate signaling:view.userId];
    //: [self removeAvatarView:view];
    [self valueWith:view];
}

//: @end
@end

Byte *DeviceDataToByte(DeviceData *data) {
    if (data->referValueMica) return data->currentControl;
    for (int i = 0; i < data->frameFlueCounterrupt; i++) {
        data->currentControl[i] ^= data->sickBenefit;
    }
    data->currentControl[data->frameFlueCounterrupt] = 0;
    data->referValueMica = true;
	if (data->frameFlueCounterrupt >= 2) {
		data->primMax = data->currentControl[0];
		data->removeGrad = data->currentControl[1];
	}
    return data->currentControl;
}

NSString *StringFromDeviceData(DeviceData *data) {
    return [NSString stringWithUTF8String:(char *)DeviceDataToByte(data)];
}
