
#import <Foundation/Foundation.h>

NSString *StringFromDeadlySinData(Byte *data);


//: gif
Byte kStr_captainFiceData[] = {71, 3, 11, 205, 130, 19, 201, 217, 64, 104, 190, 102, 105, 103, 140};


//: emoji_del_normal
Byte kStr_gradEntitleValue[] = {97, 16, 3, 108, 97, 109, 114, 111, 110, 95, 108, 101, 100, 95, 105, 106, 111, 109, 101, 8};


//: #F6F7FA
Byte kStr_fleshCellValue[] = {9, 7, 11, 179, 233, 121, 25, 10, 152, 111, 98, 65, 70, 55, 70, 54, 70, 35, 82};


//: emoji_del_pressed
Byte kStr_screenSharedData[] = {90, 17, 12, 108, 17, 214, 189, 104, 183, 230, 147, 160, 100, 101, 115, 115, 101, 114, 112, 95, 108, 101, 100, 95, 105, 106, 111, 109, 101, 251};


//: default
Byte kStr_writData[] = {75, 7, 8, 163, 151, 23, 178, 183, 116, 108, 117, 97, 102, 101, 100, 190};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyIndexView.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonContainerView.h"
#import "KeyIndexView.h"
//: #import "FFFPageView.h"
#import "AtView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFInputEmoticonButton.h"
#import "RecentEmoticonView.h"
//: #import "FFFInputEmoticonManager.h"
#import "ViewManager.h"
//: #import "FFFInputEmoticonTabView.h"
#import "ViewControl.h"

//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFMessageMaker.h"
#import "ThreadMaker.h"

//: NSInteger NIMCustomPageControlHeight = 36;
NSInteger kLet_accessTitle = 36;
//: NSInteger NIMCustomPageViewHeight = 159;
NSInteger kLet_buttonData = 159;

//: @interface FFFInputEmoticonContainerView()<NIMEmoticonButtonTouchDelegate,NIMInputEmoticonTabDelegate>
@interface KeyIndexView()<RandomDetail,ToDelegate>

//: @property (nonatomic,strong) NSMutableArray *pageData;
@property (nonatomic,strong) NSMutableArray *pageData;

//: @property (nonatomic,strong) FFFInputEmoticonButton* deleteIcon;
@property (nonatomic,strong) RecentEmoticonView* deleteIcon;

//: @end
@end


//: @implementation FFFInputEmoticonContainerView
@implementation KeyIndexView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self loadConfig];
        [self block];
    }
    //: return self;
    return self;
}

//: - (void)loadConfig{
- (void)block{
//    self.backgroundColor = [UIColor clearColor];
    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor withMax:StringFromDeadlySinData(kStr_fleshCellValue)];
}

//: - (void)setConfig:(id<FFFSessionConfig>)config{
- (void)setConfig:(id<FrameConfig>)config{
    //: _config = config;
    _config = config;
    //: [self loadUIComponents];
    [self reloadLocation];
    //: [self reloadData];
    [self colorItem];
}

//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: return CGSizeMake(size.width, 216.f);
    return CGSizeMake(size.width, 216.f);
}




//: - (void)loadUIComponents
- (void)reloadLocation
{
//    _emoticonPageView                  = [[AtView alloc] initWithFrame:self.bounds];
//    _emoticonPageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//    _emoticonPageView.nim_height       = NIMCustomPageViewHeight;
//    _emoticonPageView.backgroundColor  = [UIColor clearColor];
//    _emoticonPageView.dataSource       = self;
//    _emoticonPageView.pageViewDelegate = self;
//    [self addSubview:_emoticonPageView];
//
//    _emotPageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, NIMCustomPageControlHeight)];
//    _emotPageController.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//    _emotPageController.pageIndicatorTintColor = [UIColor lightGrayColor];
//    _emotPageController.currentPageIndicatorTintColor = [UIColor grayColor];
//    [self addSubview:_emotPageController];
//    [_emotPageController setUserInteractionEnabled:NO];

    //: [self addSubview:self.scrollView];
    [self addSubview:self.scrollView];
    //: self.scrollView.frame = CGRectMake(0, 0, self.nim_width, self.nim_height);
    self.scrollView.frame = CGRectMake(0, 0, self.nim_width, self.nim_height);
    //: CGFloat heght = (self.currentCatalogData.emoticons.count/self.currentCatalogData.layout.columes +1)*46.0 +NIMCustomPageControlHeight;
    CGFloat heght = (self.currentCatalogData.emoticons.count/self.currentCatalogData.layout.columes +1)*46.0 +kLet_accessTitle;
    //: [self.scrollView setContentSize:CGSizeMake(self.nim_width, heght )];
    [self.scrollView setContentSize:CGSizeMake(self.nim_width, heght )];
//
//    _deleteIcon = [[RecentEmoticonView alloc] init];
//    _deleteIcon.delegate = self;
//    _deleteIcon.userInteractionEnabled = YES;
//    _deleteIcon.exclusiveTouch = YES;
//    _deleteIcon.contentMode = UIViewContentModeCenter;
////    UIImage *imageNormal  = [UIImage nim_emoticonInKit:@"emoji_del_normal"];
////    UIImage *imagePressed = [UIImage nim_emoticonInKit:@"emoji_del_pressed"];
////
//    UIImage *imageNormal  = [UIImage imageNamed:@"icon_chat_reset"];
//    UIImage *imagePressed  = [UIImage imageNamed:@"icon_chat_reset"];
//
//    [_deleteIcon setImage:imageNormal forState:UIControlStateNormal];
//    [_deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
//    [_deleteIcon addTarget:_deleteIcon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
//
//
//    CGRect deleteIconRect = CGRectMake(self.nim_width-NEEKIT_DeleteIconWidth, self.nim_height-NEEKIT_DeleteIconHeight, NEEKIT_DeleteIconWidth, NEEKIT_DeleteIconHeight);
//
//    [_deleteIcon setFrame:deleteIconRect];
//    [self addSubview:_deleteIcon];
}

//: - (void)setFrame:(CGRect)frame{
- (void)setFrame:(CGRect)frame{
    //: CGFloat originalWidth = self.frame.size.width;
    CGFloat originalWidth = self.frame.size.width;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (originalWidth != frame.size.width) {
    if (originalWidth != frame.size.width) {
        //: [self reloadData];
        [self colorItem];
    }
}

//: - (void)reloadData{
- (void)colorItem{
    //: NSArray *data = [self loadCatalogAndChartlet];
    NSArray *data = [self system];
    //: self.totalCatalogData = data;
    self.totalCatalogData = data;
    //: self.currentCatalogData = data.firstObject;
    self.currentCatalogData = data.firstObject;

    //: [self layoutEmoticonPageView];
    [self buttonView];
}

//: - (NSArray *)loadCatalogAndChartlet
- (NSArray *)system
{
    //: NIMInputEmoticonCatalog *defaultCatalog = [self loadDefaultCatalog];
    ImageHigh *defaultCatalog = [self view];
//    NSArray *charlets = [self loadChartlet];
//    NSArray *catalogs = defaultCatalog? [@[defaultCatalog] arrayByAddingObjectsFromArray:charlets] : charlets;
        //: NIMInputEmoticonCatalog *gifCatalog = [self loadGifCatalog];
        ImageHigh *gifCatalog = [self titlePressed];
    //: NSArray *catalogs = [@[defaultCatalog] arrayByAddingObject:gifCatalog];
    NSArray *catalogs = [@[defaultCatalog] arrayByAddingObject:gifCatalog];
    //: return catalogs;
    return catalogs;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.emotPageController.nim_top = self.emoticonPageView.nim_bottom - 10;
    self.emotPageController.nim_top = self.emoticonPageView.nim_bottom - 10;
    //: self.tabView.nim_bottom = self.nim_height;
    self.tabView.nim_bottom = self.nim_height;
    //: [self bringSubviewToFront:self.tabView];
    [self bringSubviewToFront:self.tabView];
}

//: - (void)layoutEmoticonPageView
- (void)buttonView
{
    //: [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: if(self.currentCatalogData.emoticons.count>0){
    if(self.currentCatalogData.emoticons.count>0){

        //: NSInteger iconHeight = self.currentCatalogData.layout.imageHeight;
        NSInteger iconHeight = self.currentCatalogData.layout.imageHeight;
        //: NSInteger iconWidth = self.currentCatalogData.layout.imageWidth;
        NSInteger iconWidth = self.currentCatalogData.layout.imageWidth;
        //: CGFloat startX = (self.currentCatalogData.layout.cellWidth - iconWidth) / 2 + 15;
        CGFloat startX = (self.currentCatalogData.layout.cellWidth - iconWidth) / 2 + 15;
        //: CGFloat startY = (self.currentCatalogData.layout.cellHeight- iconHeight) / 2 + 10;
        CGFloat startY = (self.currentCatalogData.layout.cellHeight- iconHeight) / 2 + 10;
        //: int32_t coloumnIndex = 0;
        int32_t coloumnIndex = 0;
        //: int32_t rowIndex = 0;
        int32_t rowIndex = 0;
        //: int32_t indexInPage = 0;
        int32_t indexInPage = 0;
        //: for (NSInteger index = 0; index < self.currentCatalogData.emoticons.count; index ++)
        for (NSInteger index = 0; index < self.currentCatalogData.emoticons.count; index ++)
        {
            //: NIMInputEmoticon *data = [self.currentCatalogData.emoticons objectAtIndex:index];
            CommentToTemp *data = [self.currentCatalogData.emoticons objectAtIndex:index];

            //: FFFInputEmoticonButton *button = [FFFInputEmoticonButton iconButtonWithData:data catalogID:self.currentCatalogData.catalogID delegate:self];
            RecentEmoticonView *button = [RecentEmoticonView view:data success:self.currentCatalogData.catalogID isKey:self];
            //计算表情位置
            //: rowIndex = indexInPage / self.currentCatalogData.layout.columes;
            rowIndex = indexInPage / self.currentCatalogData.layout.columes;
            //: coloumnIndex= indexInPage % self.currentCatalogData.layout.columes;
            coloumnIndex= indexInPage % self.currentCatalogData.layout.columes;
            //: CGFloat x = coloumnIndex * self.currentCatalogData.layout.cellWidth + startX;
            CGFloat x = coloumnIndex * self.currentCatalogData.layout.cellWidth + startX;
            //: CGFloat y = rowIndex * self.currentCatalogData.layout.cellHeight + startY;
            CGFloat y = rowIndex * self.currentCatalogData.layout.cellHeight + startY;
            //: CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
            CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
            //: [button setFrame:iconRect];
            [button setFrame:iconRect];
            //: [self.scrollView addSubview:button];
            [self.scrollView addSubview:button];
            //: indexInPage ++;
            indexInPage ++;
        }

    }
}

//: #pragma mark -  config data
#pragma mark -  config data

//: - (NSInteger)sumPages
- (NSInteger)pages
{
    //: __block NSInteger pagesCount = 0;
    __block NSInteger pagesCount = 0;
    //: [self.totalCatalogData enumerateObjectsUsingBlock:^(NIMInputEmoticonCatalog* data, NSUInteger idx, BOOL *stop) {
    [self.totalCatalogData enumerateObjectsUsingBlock:^(ImageHigh* data, NSUInteger idx, BOOL *stop) {
        //: pagesCount += data.pagesCount;
        pagesCount += data.pagesCount;
    //: }];
    }];
    //: return pagesCount;
    return pagesCount;
}


//: - (UIView*)emojPageView:(FFFPageView*)pageView inEmoticonCatalog:(NIMInputEmoticonCatalog *)emoticon page:(NSInteger)page
- (UIView*)sizeBy:(AtView*)pageView along:(ImageHigh *)emoticon pastLast:(NSInteger)page
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger iconHeight = emoticon.layout.imageHeight;
    NSInteger iconHeight = emoticon.layout.imageHeight;
    //: NSInteger iconWidth = emoticon.layout.imageWidth;
    NSInteger iconWidth = emoticon.layout.imageWidth;
    //: CGFloat startX = (emoticon.layout.cellWidth - iconWidth) / 2 + 15;
    CGFloat startX = (emoticon.layout.cellWidth - iconWidth) / 2 + 15;
    //: CGFloat startY = (emoticon.layout.cellHeight- iconHeight) / 2 + 10;
    CGFloat startY = (emoticon.layout.cellHeight- iconHeight) / 2 + 10;
    //: int32_t coloumnIndex = 0;
    int32_t coloumnIndex = 0;
    //: int32_t rowIndex = 0;
    int32_t rowIndex = 0;
    //: int32_t indexInPage = 0;
    int32_t indexInPage = 0;
    //: NSInteger begin = page * emoticon.layout.itemCountInPage;
    NSInteger begin = page * emoticon.layout.itemCountInPage;
    //: NSInteger end = begin + emoticon.layout.itemCountInPage;
    NSInteger end = begin + emoticon.layout.itemCountInPage;
    //: end = end > emoticon.emoticons.count ? (emoticon.emoticons.count) : end;
    end = end > emoticon.emoticons.count ? (emoticon.emoticons.count) : end;
    //: for (NSInteger index = begin; index < end; index ++)
    for (NSInteger index = begin; index < end; index ++)
    {
        //: NIMInputEmoticon *data = [emoticon.emoticons objectAtIndex:index];
        CommentToTemp *data = [emoticon.emoticons objectAtIndex:index];

        //: FFFInputEmoticonButton *button = [FFFInputEmoticonButton iconButtonWithData:data catalogID:emoticon.catalogID delegate:self];
        RecentEmoticonView *button = [RecentEmoticonView view:data success:emoticon.catalogID isKey:self];
        //计算表情位置
        //: rowIndex = indexInPage / emoticon.layout.columes;
        rowIndex = indexInPage / emoticon.layout.columes;
        //: coloumnIndex= indexInPage % emoticon.layout.columes;
        coloumnIndex= indexInPage % emoticon.layout.columes;
        //: CGFloat x = coloumnIndex * emoticon.layout.cellWidth + startX;
        CGFloat x = coloumnIndex * emoticon.layout.cellWidth + startX;
        //: CGFloat y = rowIndex * emoticon.layout.cellHeight + startY;
        CGFloat y = rowIndex * emoticon.layout.cellHeight + startY;
        //: CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
        CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
        //: [button setFrame:iconRect];
        [button setFrame:iconRect];
        //: [subView addSubview:button];
        [subView addSubview:button];
        //: indexInPage ++;
        indexInPage ++;
    }
    //: if (coloumnIndex == emoticon.layout.columes -1)
    if (coloumnIndex == emoticon.layout.columes -1)
    {
        //: rowIndex = rowIndex +1;
        rowIndex = rowIndex +1;
        //: coloumnIndex = -1; 
        coloumnIndex = -1; //设置成-1是因为显示在第0位，有加1
    }
//    if ([emoticon.catalogID isEqualToString:NEEKIT_EmojiCatalog]) {
//        [self addDeleteEmotButtonToView:subView  ColumnIndex:coloumnIndex RowIndex:rowIndex StartX:startX StartY:startY IconWidth:iconWidth IconHeight:iconHeight inEmoticonCatalog:emoticon];
//    }
    //: return subView;
    return subView;
}

//: - (void)addDeleteEmotButtonToView:(UIView *)view
- (void)tingShadow:(UIView *)view
                      //: ColumnIndex:(NSInteger)coloumnIndex
                      futurism:(NSInteger)coloumnIndex
                         //: RowIndex:(NSInteger)rowIndex
                         touch:(NSInteger)rowIndex
                           //: StartX:(CGFloat)startX
                           index:(CGFloat)startX
                           //: StartY:(CGFloat)startY
                           emotionCatalog:(CGFloat)startY
                        //: IconWidth:(CGFloat)iconWidth
                        hide:(CGFloat)iconWidth
                       //: IconHeight:(CGFloat)iconHeight
                       before:(CGFloat)iconHeight
                //: inEmoticonCatalog:(NIMInputEmoticonCatalog *)emoticon
                show:(ImageHigh *)emoticon
{
    //: FFFInputEmoticonButton* deleteIcon = [[FFFInputEmoticonButton alloc] init];
    RecentEmoticonView* deleteIcon = [[RecentEmoticonView alloc] init];
    //: deleteIcon.delegate = self;
    deleteIcon.delegate = self;
    //: deleteIcon.userInteractionEnabled = YES;
    deleteIcon.userInteractionEnabled = YES;
    //: deleteIcon.exclusiveTouch = YES;
    deleteIcon.exclusiveTouch = YES;
    //: deleteIcon.contentMode = UIViewContentModeCenter;
    deleteIcon.contentMode = UIViewContentModeCenter;
    //: UIImage *imageNormal = [UIImage nim_emoticonInKit:@"emoji_del_normal"];
    UIImage *imageNormal = [UIImage light:StringFromDeadlySinData(kStr_gradEntitleValue)];
    //: UIImage *imagePressed = [UIImage nim_emoticonInKit:@"emoji_del_pressed"];
    UIImage *imagePressed = [UIImage light:StringFromDeadlySinData(kStr_screenSharedData)];

    //: [deleteIcon setImage:imageNormal forState:UIControlStateNormal];
    [deleteIcon setImage:imageNormal forState:UIControlStateNormal];
    //: [deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
    [deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
    //: [deleteIcon addTarget:deleteIcon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
    [deleteIcon addTarget:deleteIcon action:@selector(statuses:) forControlEvents:UIControlEventTouchUpInside];

    //: CGFloat newX = (coloumnIndex +1) * emoticon.layout.cellWidth + startX;
    CGFloat newX = (coloumnIndex +1) * emoticon.layout.cellWidth + startX;
    //: CGFloat newY = rowIndex * emoticon.layout.cellHeight + startY;
    CGFloat newY = rowIndex * emoticon.layout.cellHeight + startY;
    //: CGRect deleteIconRect = CGRectMake(newX, newY, 43.0, 43.0);
    CGRect deleteIconRect = CGRectMake(newX, newY, 43.0, 43.0);

    //: [deleteIcon setFrame:deleteIconRect];
    [deleteIcon setFrame:deleteIconRect];
    //: [view addSubview:deleteIcon];
    [view addSubview:deleteIcon];
}


//: #pragma mark - pageviewDelegate
#pragma mark - pageviewDelegate
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView
- (NSInteger)teammed: (AtView *)pageView
{
    //: return [self sumPages];
    return [self pages];
}

//: - (UIView *)pageView:(FFFPageView *)pageView viewInPage:(NSInteger)index
- (UIView *)time:(AtView *)pageView index:(NSInteger)index
{
    //: NSInteger page = 0;
    NSInteger page = 0;
    //: NIMInputEmoticonCatalog *emoticon;
    ImageHigh *emoticon;
    //: for (emoticon in self.totalCatalogData) {
    for (emoticon in self.totalCatalogData) {
        //: NSInteger newPage = page + emoticon.pagesCount;
        NSInteger newPage = page + emoticon.pagesCount;
        //: if (newPage > index) {
        if (newPage > index) {
            //: break;
            break;
        }
        //: page = newPage;
        page = newPage;
    }
    //: return [self emojPageView:pageView inEmoticonCatalog:emoticon page:index - page];
    return [self sizeBy:pageView along:emoticon pastLast:index - page];
}


//: - (NIMInputEmoticonCatalog*)loadDefaultCatalog
- (ImageHigh*)view
{
    //: NIMInputEmoticonCatalog *emoticonCatalog = [[FFFInputEmoticonManager sharedManager] emoticonCatalog:@"default"];
    ImageHigh *emoticonCatalog = [[ViewManager common] message:StringFromDeadlySinData(kStr_writData)];
    //: if (emoticonCatalog) {
    if (emoticonCatalog) {
        //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initEmojiLayout:self.nim_width];
        TingLayout *layout = [[TingLayout alloc] initTimeEmoji:self.nim_width];
        //: emoticonCatalog.layout = layout;
        emoticonCatalog.layout = layout;
        //: emoticonCatalog.pagesCount = [self numberOfPagesWithEmoticon:emoticonCatalog];
        emoticonCatalog.pagesCount = [self model:emoticonCatalog];
    }
    //: return emoticonCatalog;
    return emoticonCatalog;
}

//: - (NIMInputEmoticonCatalog*)loadGifCatalog
- (ImageHigh*)titlePressed
{
    //: NIMInputEmoticonCatalog *emoticonCatalog = [[FFFInputEmoticonManager sharedManager] emoticonCatalog:@"gif"];
    ImageHigh *emoticonCatalog = [[ViewManager common] message:StringFromDeadlySinData(kStr_captainFiceData)];
    //: if (emoticonCatalog) {
    if (emoticonCatalog) {
        //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initEmojiLayout:self.nim_width];
        TingLayout *layout = [[TingLayout alloc] initTimeEmoji:self.nim_width];
        //: emoticonCatalog.layout = layout;
        emoticonCatalog.layout = layout;
        //: emoticonCatalog.pagesCount = [self numberOfPagesWithEmoticon:emoticonCatalog];
        emoticonCatalog.pagesCount = [self model:emoticonCatalog];
    }
    //: return emoticonCatalog;
    return emoticonCatalog;
}

//: - (NSArray *)loadChartlet{
- (NSArray *)hypocorism{
    //: NSArray *chatlets = nil;
    NSArray *chatlets = nil;
    //: if ([self.config respondsToSelector:@selector(charlets)])
    if ([self.config respondsToSelector:@selector(timeFace)])
    {
        //: chatlets = [self.config charlets];
        chatlets = [self.config timeFace];
        //: for (NIMInputEmoticonCatalog *item in chatlets) {
        for (ImageHigh *item in chatlets) {
            //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initCharletLayout:self.nim_width];
            TingLayout *layout = [[TingLayout alloc] initContainerLayout:self.nim_width];
            //: item.layout = layout;
            item.layout = layout;
            //: item.pagesCount = [self numberOfPagesWithEmoticon:item];
            item.pagesCount = [self model:item];
        }
    }
    //: return chatlets;
    return chatlets;
}


//找到某组表情的起始位置
//: - (NSInteger)pageIndexWithEmoticon:(NIMInputEmoticonCatalog *)emoticonCatalog{
- (NSInteger)atEmoticon:(ImageHigh *)emoticonCatalog{
    //: NSInteger pageIndex = 0;
    NSInteger pageIndex = 0;
    //: for (NIMInputEmoticonCatalog *emoticon in self.totalCatalogData) {
    for (ImageHigh *emoticon in self.totalCatalogData) {
        //: if (emoticon == emoticonCatalog) {
        if (emoticon == emoticonCatalog) {
            //: break;
            break;
        }
        //: pageIndex += emoticon.pagesCount;
        pageIndex += emoticon.pagesCount;
    }
    //: return pageIndex;
    return pageIndex;
}

//: - (NSInteger)pageIndexWithTotalIndex:(NSInteger)index{
- (NSInteger)with:(NSInteger)index{
    //: NIMInputEmoticonCatalog *catelog = [self emoticonWithIndex:index];
    ImageHigh *catelog = [self withIndex:index];
    //: NSInteger begin = [self pageIndexWithEmoticon:catelog];
    NSInteger begin = [self atEmoticon:catelog];
    //: return index - begin;
    return index - begin;
}

//: - (NIMInputEmoticonCatalog *)emoticonWithIndex:(NSInteger)index {
- (ImageHigh *)withIndex:(NSInteger)index {
    //: NSInteger page = 0;
    NSInteger page = 0;
    //: NIMInputEmoticonCatalog *emoticon;
    ImageHigh *emoticon;
    //: for (emoticon in self.totalCatalogData) {
    for (emoticon in self.totalCatalogData) {
        //: NSInteger newPage = page + emoticon.pagesCount;
        NSInteger newPage = page + emoticon.pagesCount;
        //: if (newPage > index) {
        if (newPage > index) {
            //: break;
            break;
        }
        //: page = newPage;
        page = newPage;
    }
    //: return emoticon;
    return emoticon;
}

//: - (NSInteger)numberOfPagesWithEmoticon:(NIMInputEmoticonCatalog *)emoticonCatalog
- (NSInteger)model:(ImageHigh *)emoticonCatalog
{
    //: if(emoticonCatalog.emoticons.count % emoticonCatalog.layout.itemCountInPage == 0)
    if(emoticonCatalog.emoticons.count % emoticonCatalog.layout.itemCountInPage == 0)
    {
        //: return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage;
        return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage;
    }
    //: else
    else
    {
        //: return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage + 1;
        return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage + 1;
    }
}

//: - (void)pageViewScrollEnd: (FFFPageView *)pageView
- (void)chance: (AtView *)pageView
             //: currentIndex: (NSInteger)index
             lightImage: (NSInteger)index
               //: totolPages: (NSInteger)pages{
               date: (NSInteger)pages{
    //: NIMInputEmoticonCatalog *emticon = [self emoticonWithIndex:index];
    ImageHigh *emticon = [self withIndex:index];
    //: self.emotPageController.numberOfPages = [emticon pagesCount];
    self.emotPageController.numberOfPages = [emticon pagesCount];
    //: self.emotPageController.currentPage = [self pageIndexWithTotalIndex:index];
    self.emotPageController.currentPage = [self with:index];

    //: NSInteger selectTabIndex = [self.totalCatalogData indexOfObject:emticon];
    NSInteger selectTabIndex = [self.totalCatalogData indexOfObject:emticon];
    //: [self.tabView selectTabIndex:selectTabIndex];
    [self.tabView segmentNameColor:selectTabIndex];
}


//: #pragma mark - EmoticonButtonTouchDelegate
#pragma mark - EmoticonButtonTouchDelegate
//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID{
- (void)info:(CommentToTemp*)emoticon to:(NSString*)catalogID{
    //: if ([self.delegate respondsToSelector:@selector(selectedEmoticon:catalog:description:)]) {
    if ([self.delegate respondsToSelector:@selector(withSize:key:bar:)]) {


        //: if(emoticon.gif.length>0){
        if(emoticon.gif.length>0){
            //: [self.delegate selectedGifEmoticon: emoticon.filename];
            [self.delegate keepTitle: emoticon.filename];
        //: }else{
        }else{
//            [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.tag];

                    //: if (emoticon.type == NIMEmoticonTypeUnicode) {
                    if (emoticon.type == NIMEmoticonTypeUnicode) {
                        //: [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.unicode];
                        [self.delegate withSize:emoticon.emoticonID key:catalogID bar:emoticon.unicode];
                    //: } else {
                    } else {
                        //: [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.tag];
                        [self.delegate withSize:emoticon.emoticonID key:catalogID bar:emoticon.tag];
                    }
        }


    }
}

//: - (void)didPressSend:(id)sender{
- (void)sendApp:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didPressSend:)]) {
    if ([self.delegate respondsToSelector:@selector(sendApp:)]) {
        //: [self.delegate didPressSend:sender];
        [self.delegate sendApp:sender];
    }
}

//: - (void)didPressDelete:(id)sender{
- (void)fileOn:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didPressDelete:)]) {
    if ([self.delegate respondsToSelector:@selector(fileOn:)]) {
        //: [self.delegate didPressDelete:sender];
        [self.delegate fileOn:sender];
    }
}


//: #pragma mark - InputEmoticonTabDelegate
#pragma mark - InputEmoticonTabDelegate
//: - (void)tabView:(FFFInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index{
- (void)arrayNumber:(ViewControl *)tabView elite:(NSInteger) index{
    //: self.currentCatalogData = self.totalCatalogData[index];
    self.currentCatalogData = self.totalCatalogData[index];
    //: [self layoutEmoticonPageView];
    [self buttonView];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)setCurrentCatalogData:(NIMInputEmoticonCatalog *)currentCatalogData{
- (void)setCurrentCatalogData:(ImageHigh *)currentCatalogData{
    //: _currentCatalogData = currentCatalogData;
    _currentCatalogData = currentCatalogData;
    //: [self.emoticonPageView scrollToPage:[self pageIndexWithEmoticon:_currentCatalogData]];
    [self.emoticonPageView spreadAnalogDigitalConverterInputPage:[self atEmoticon:_currentCatalogData]];
}

//: - (void)setTotalCatalogData:(NSArray *)totalCatalogData
- (void)setTotalCatalogData:(NSArray *)totalCatalogData
{
    //: _totalCatalogData = totalCatalogData;
    _totalCatalogData = totalCatalogData;
//    [self.tabView loadCatalogs:totalCatalogData];
}

//: - (NSArray *)allEmoticons{
- (NSArray *)allEmoticons{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMInputEmoticonCatalog *catalog in self.totalCatalogData) {
    for (ImageHigh *catalog in self.totalCatalogData) {
        //: [array addObjectsFromArray:catalog.emoticons];
        [array addObjectsFromArray:catalog.emoticons];
    }
    //: return array;
    return array;
}


//: #pragma mark - Get
#pragma mark - Get
//: - (FFFInputEmoticonTabView *)tabView
- (ViewControl *)tabView
{
    //: if (!_tabView) {
    if (!_tabView) {
        //: _tabView = [[FFFInputEmoticonTabView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        _tabView = [[ViewControl alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        //: _tabView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _tabView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _tabView.delegate = self;
        _tabView.delegate = self;
//        [_tabView.sendButton addTarget:self action:@selector(didPressSend:) forControlEvents:UIControlEventTouchUpInside];
        //: [_tabView.sendButton addTarget:self action:@selector(didPressDelete:) forControlEvents:UIControlEventTouchUpInside];
        [_tabView.sendButton addTarget:self action:@selector(fileOn:) forControlEvents:UIControlEventTouchUpInside];

        //: [self addSubview:_tabView];
        [self addSubview:_tabView];

        //: if (_currentCatalogData.pagesCount > 0) {
        if (_currentCatalogData.pagesCount > 0) {
            //: _emotPageController.numberOfPages = [_currentCatalogData pagesCount];
            _emotPageController.numberOfPages = [_currentCatalogData pagesCount];
            //: _emotPageController.currentPage = 0;
            _emotPageController.currentPage = 0;
        }
    }
    //: return _tabView;
    return _tabView;
}

//: - (UIScrollView *)scrollView
- (UIScrollView *)scrollView
{
    //: if (!_scrollView)
    if (!_scrollView)
    {
        //: _scrollView = [[UIScrollView alloc]init];
        _scrollView = [[UIScrollView alloc]init];
        //: _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//        _scrollView.pagingEnabled = YES;
        //: _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        //: _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        //: _scrollView.scrollsToTop = NO;
        _scrollView.scrollsToTop = NO;
    }
    //: return _scrollView;
    return _scrollView;
}

//: @end
@end

Byte * DeadlySinDataToCache(Byte *data) {
    int nimDeviceProm = data[0];
    int approve = data[1];
    int hourPaintQuick = data[2];
    if (!nimDeviceProm) return data + hourPaintQuick;
    for (int i = 0; i < approve / 2; i++) {
        int begin = hourPaintQuick + i;
        int end = hourPaintQuick + approve - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[hourPaintQuick + approve] = 0;
    return data + hourPaintQuick;
}

NSString *StringFromDeadlySinData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DeadlySinDataToCache(data)];
}  
