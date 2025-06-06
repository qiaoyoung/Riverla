
#import <Foundation/Foundation.h>

NSString *StringFromRoutineMotivateData(Byte *data);        


//: #612CF9
Byte kStr_hotelTheoryTitle[] = {32, 7, 93, 11, 144, 245, 54, 187, 142, 140, 44, 198, 217, 212, 213, 230, 233, 220, 112};


//: invalid item selector!
Byte kStr_denyValue[] = {53, 22, 16, 10, 104, 15, 211, 54, 15, 23, 89, 94, 102, 81, 92, 89, 84, 16, 89, 100, 85, 93, 16, 99, 85, 92, 85, 83, 100, 95, 98, 17, 46};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESInputMoreContainerView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputMoreContainerView.h"
#import "DevelopmentView.h"
//: #import "FFFPageView.h"
#import "MinorLeagueTeamView.h"
//: #import "FFFMediaItem.h"
#import "ChangeMax.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: NSInteger NIMMaxItemCountInPage = 8;
NSInteger let_aTitle = 8;
//: NSInteger NIMButtonItemWidth = 75;
NSInteger let_keyCardName = 75;
//: NSInteger NIMButtonItemHeight = 85;
NSInteger let_insideText = 85;
//: NSInteger NIMPageRowCount = 2;
NSInteger let_moveColorText = 2;
//: NSInteger NIMPageColumnCount = 4;
NSInteger let_kitName = 4;
//: NSInteger NIMButtonBegintLeftX = 11;
NSInteger let_spaceValue = 11;




//: @interface FFFInputMoreContainerView() <FFFPageViewDataSource,FFFPageViewDelegate,CustomMediaPickerViewDelegate>
@interface DevelopmentView() <AppSource,TopDelegate,WithItemDelegate>
{
    //: NSArray *_mediaButtons;
    NSArray *_mediaButtons;
    //: NSArray *_mediaItems;
    NSArray *_mediaItems;
}


//: @property (nonatomic, strong) FFFPageView *pageView;
@property (nonatomic, strong) MinorLeagueTeamView *pageView;

//: @end
@end

//: @implementation FFFInputMoreContainerView
@implementation DevelopmentView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        _pageView = [[MinorLeagueTeamView alloc] initWithFrame:CGRectZero];
//        _pageView.dataSource = self;
//        [self addSubview:_pageView];

        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,-4);
        self.layer.shadowOffset = CGSizeMake(0,-4);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 16;
        self.layer.shadowRadius = 16;

        //: [self setup];
        [self contentWith];
    }
    //: return self;
    return self;
}

//: - (void)setConfig:(id<FFFSessionConfig>)config
- (void)setConfig:(id<BlueConfig>)config
{
    //: _config = config;
    _config = config;
//    [self genMediaButtons];
//    [self.pageView reloadData];
}


//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: return CGSizeMake(size.width, 400.f);
    return CGSizeMake(size.width, 400.f);
}

//: - (void)setup {
- (void)contentWith {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

    // 创建相册选择器视图
    //: _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
    _albumPickerView = [[OffenseView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.maxSelectionCount = 5; 
    _albumPickerView.maxSelectionCount = 5; // 设置最大选择数量
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.allowCamera = YES; 
    _albumPickerView.allowCamera = YES; // 显示拍照按钮
    //: [self addSubview:_albumPickerView];
    [self addSubview:_albumPickerView];

//    // 添加边框
//    _albumPickerView.layer.borderWidth = 1.0;
//    _albumPickerView.layer.borderColor = [UIColor darkGrayColor].CGColor;
//    _albumPickerView.layer.cornerRadius = 8.0;
//    _albumPickerView.clipsToBounds = YES;
}

//: #pragma mark - CustomAlbumPickerViewDelegate
#pragma mark - CustomAlbumPickerViewDelegate
//: - (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)mediaDetail:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);

        //: if ([self.delegate respondsToSelector:@selector(PickerDidSelectAssets:)]) {
        if ([self.delegate respondsToSelector:@selector(scaled:)]) {
            //: [self.delegate PickerDidSelectAssets:assets];
            [self.delegate scaled:assets];
        }

    // 在这里处理选择的图片

    // 可以选择自动隐藏相册选择器
//     [self.albumPickerView removeFromSuperview];

//    if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
//        [self.actionDelegate onTapAlbunArray:assets];
//    }
}

//: - (void)mediaPickerDidTapCamera {
- (void)commentShow {
    //: NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(taped:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate taped:nil];
    }
}

//: - (void)genMediaButtons
- (void)show
{
    //: NSMutableArray *mediaButtons = [NSMutableArray array];
    NSMutableArray *mediaButtons = [NSMutableArray array];
    //: NSMutableArray *mediaItems = [NSMutableArray array];
    NSMutableArray *mediaItems = [NSMutableArray array];
    //: NSArray *items;
    NSArray *items;
    //: if (!self.config)
    if (!self.config)
    {
        //: items = [MyUserKit sharedKit].config.defaultMediaItems;
        items = [Notice fullKit].config.buildImage;
    }
    //: else if([self.config respondsToSelector:@selector(mediaItems)])
    else if([self.config respondsToSelector:@selector(showMedia)])
    {
        //: items = [self.config mediaItems];
        items = [self.config showMedia];
    }
    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(ChangeMax *item, NSUInteger idx, BOOL *stop) {
        //: [mediaItems addObject:item];
        [mediaItems addObject:item];

        //: UIButton *btn = [[UIButton alloc] init];
        UIButton *btn = [[UIButton alloc] init];
        //: btn.tag = idx;
        btn.tag = idx;
        //: [btn setImage:item.normalImage forState:UIControlStateNormal];
        [btn setImage:item.normalImage forState:UIControlStateNormal];
        //: [btn setImage:item.selectedImage forState:UIControlStateHighlighted];
        [btn setImage:item.selectedImage forState:UIControlStateHighlighted];
        //: [btn setTitle:item.title forState:UIControlStateNormal];
        [btn setTitle:item.title forState:UIControlStateNormal];
        //: [btn setTitleColor:[UIColor colorWithHexString:@"#612CF9"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor isView:StringFromRoutineMotivateData(kStr_hotelTheoryTitle)] forState:UIControlStateNormal];
        //: btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [btn setTitleEdgeInsets:UIEdgeInsetsMake(76, -75, 0, 0)];
        //: [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        //: [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self calculateWidthWithFont:14 Text:item.title])];
        [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self segment:14 atomicNumber85:item.title])];

        //: [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        //: btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [mediaButtons addObject:btn];
        [mediaButtons addObject:btn];

    //: }];
    }];
    //: _mediaButtons = mediaButtons;
    _mediaButtons = mediaButtons;
    //: _mediaItems = mediaItems;
    _mediaItems = mediaItems;
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)segment:(NSInteger)Font atomicNumber85:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}



//: - (void)setFrame:(CGRect)frame{
- (void)setFrame:(CGRect)frame{
    //: CGFloat originalWidth = self.frame.size.width;
    CGFloat originalWidth = self.frame.size.width;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (originalWidth != frame.size.width)
    if (originalWidth != frame.size.width)
    {
        //: self.pageView.frame = self.bounds;
        self.pageView.frame = self.bounds;
        //: [self.pageView reloadData];
        [self.pageView segment];
    }
}

//: - (void)dealloc
- (void)dealloc
{
    //: _pageView.dataSource = nil;
    _pageView.dataSource = nil;
}


//: #pragma mark PageViewDataSource
#pragma mark PageViewDataSource
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView
- (NSInteger)tapBy: (MinorLeagueTeamView *)pageView
{
    //: NSInteger count = [_mediaButtons count] / NIMMaxItemCountInPage;
    NSInteger count = [_mediaButtons count] / let_aTitle;
    //: count = ([_mediaButtons count] % NIMMaxItemCountInPage == 0) ? count: count + 1;
    count = ([_mediaButtons count] % let_aTitle == 0) ? count: count + 1;
    //: return ((count) > (1) ? (count) : (1));
    return ((count) > (1) ? (count) : (1));
}

//: - (UIView*)mediaPageView:(FFFPageView*)pageView beginItem:(NSInteger)begin endItem:(NSInteger)end
- (UIView*)instrumentalityImagePlace:(MinorLeagueTeamView*)pageView message:(NSInteger)begin stopRead:(NSInteger)end
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - NIMPageColumnCount * NIMButtonItemWidth) / (NIMPageColumnCount +1);
    NSInteger span = (self.nim_width - let_kitName * let_keyCardName) / (let_kitName +1);
    //: CGFloat startY = NIMButtonBegintLeftX;
    CGFloat startY = let_spaceValue;
    //: NSInteger coloumnIndex = 0;
    NSInteger coloumnIndex = 0;
    //: NSInteger rowIndex = 0;
    NSInteger rowIndex = 0;
    //: NSInteger indexInPage = 0;
    NSInteger indexInPage = 0;
    //: for (NSInteger index = begin; index < end; index ++)
    for (NSInteger index = begin; index < end; index ++)
    {
        //: UIButton *button = [_mediaButtons objectAtIndex:index];
        UIButton *button = [_mediaButtons objectAtIndex:index];
        //: [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(noticeButton:) forControlEvents:UIControlEventTouchUpInside];
        //计算位置
        //: rowIndex = indexInPage / NIMPageColumnCount;
        rowIndex = indexInPage / let_kitName;
        //: coloumnIndex= indexInPage % NIMPageColumnCount;
        coloumnIndex= indexInPage % let_kitName;
        //: CGFloat x = span + (NIMButtonItemWidth + span) * coloumnIndex;
        CGFloat x = span + (let_keyCardName + span) * coloumnIndex;
        //: CGFloat y = 0.0;
        CGFloat y = 0.0;
        //: if (rowIndex > 0)
        if (rowIndex > 0)
        {
            //: y = rowIndex * NIMButtonItemHeight + startY + 15;
            y = rowIndex * let_insideText + startY + 15;
        }
        //: else
        else
        {
            //: y = rowIndex * NIMButtonItemHeight + startY;
            y = rowIndex * let_insideText + startY;
        }
        //: [button setFrame:CGRectMake(x, y, NIMButtonItemWidth, NIMButtonItemHeight)];
        [button setFrame:CGRectMake(x, y, let_keyCardName, let_insideText)];
        //: [subView addSubview:button];
        [subView addSubview:button];
        //: indexInPage ++;
        indexInPage ++;
    }
    //: return subView;
    return subView;
}

//: - (UIView*)oneLineMediaInPageView:(FFFPageView *)pageView
- (UIView*)delay:(MinorLeagueTeamView *)pageView
                       //: viewInPage: (NSInteger)index
                       session: (NSInteger)index
                            //: count:(NSInteger)count
                            info:(NSInteger)count
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - count * NIMButtonItemWidth) / (count +1);
    NSInteger span = (self.nim_width - count * let_keyCardName) / (count +1);

    //: for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    {
        //: UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        //: [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(noticeButton:) forControlEvents:UIControlEventTouchUpInside];
        //: CGRect iconRect = CGRectMake(span + (NIMButtonItemWidth + span) * btnIndex, 0, NIMButtonItemWidth, NIMButtonItemHeight);
        CGRect iconRect = CGRectMake(span + (let_keyCardName + span) * btnIndex, 0, let_keyCardName, let_insideText);
        //: [button setFrame:iconRect];
        [button setFrame:iconRect];
        //: [subView addSubview:button];
        [subView addSubview:button];
    }
    //: return subView;
    return subView;
}

//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index
- (UIView *)ting: (MinorLeagueTeamView *)pageView scalePressedShould: (NSInteger)index
{
    //: if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) 
    if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) //一行显示2个或者3个
    {
        //: return [self oneLineMediaInPageView:pageView viewInPage:index count:[_mediaButtons count]];
        return [self delay:pageView session:index info:[_mediaButtons count]];
    }

    //: if (index < 0)
    if (index < 0)
    {
        //: assert(0);
        assert(0);
        //: index = 0;
        index = 0;
    }
    //: NSInteger begin = index * NIMMaxItemCountInPage;
    NSInteger begin = index * let_aTitle;
    //: NSInteger end = (index + 1) * NIMMaxItemCountInPage;
    NSInteger end = (index + 1) * let_aTitle;
    //: if (end > [_mediaButtons count])
    if (end > [_mediaButtons count])
    {
        //: end = [_mediaButtons count];
        end = [_mediaButtons count];
    }
    //: return [self mediaPageView:pageView beginItem:begin endItem:end];
    return [self instrumentalityImagePlace:pageView message:begin stopRead:end];
}

//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchButton:(id)sender
- (void)noticeButton:(id)sender
{
    //: NSInteger index = [(UIButton *)sender tag];
    NSInteger index = [(UIButton *)sender tag];
    //: FFFMediaItem *item = _mediaItems[index];
    ChangeMax *item = _mediaItems[index];
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(infoItem:)]) {
        //: BOOL handled = [_actionDelegate onTapMediaItem:item];
        BOOL handled = [_actionDelegate infoItem:item];
        //: if (!handled) {
        if (!handled) {
            //: NSAssert(0, @"invalid item selector!");
            NSAssert(0, StringFromRoutineMotivateData(kStr_denyValue));
        }
    }

}

//: @end
@end

Byte * RoutineMotivateDataToCache(Byte *data) {
    int progress = data[0];
    int trike = data[1];
    Byte dayIllustrate = data[2];
    int aide = data[3];
    if (!progress) return data + aide;
    for (int i = aide; i < aide + trike; i++) {
        int value = data[i] + dayIllustrate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[aide + trike] = 0;
    return data + aide;
}

NSString *StringFromRoutineMotivateData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RoutineMotivateDataToCache(data)];
}
