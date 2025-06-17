
#import <Foundation/Foundation.h>

NSString *StringFromRemoveTallData(Byte *data);


//: #612CF9
Byte kStr_dishRealizeText[] = {1, 7, 8, 51, 217, 92, 68, 17, 57, 70, 67, 50, 49, 54, 35, 184};


//: invalid item selector!
Byte kStr_toGrocerShowValue[] = {50, 22, 7, 39, 122, 107, 244, 33, 114, 111, 116, 99, 101, 108, 101, 115, 32, 109, 101, 116, 105, 32, 100, 105, 108, 97, 118, 110, 105, 26};

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
#import "ArrayView.h"
//: #import "FFFPageView.h"
#import "AtView.h"
//: #import "FFFMediaItem.h"
#import "ImageRecent.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: NSInteger NIMMaxItemCountInPage = 8;
NSInteger kLet_tableDateData = 8;
//: NSInteger NIMButtonItemWidth = 75;
NSInteger kLet_arrayData = 75;
//: NSInteger NIMButtonItemHeight = 85;
NSInteger kLet_teamCellOfName = 85;
//: NSInteger NIMPageRowCount = 2;
NSInteger kLet_viewName = 2;
//: NSInteger NIMPageColumnCount = 4;
NSInteger kLet_itemName = 4;
//: NSInteger NIMButtonBegintLeftX = 11;
NSInteger kLet_meData = 11;




//: @interface FFFInputMoreContainerView() <FFFPageViewDataSource,FFFPageViewDelegate,CustomMediaPickerViewDelegate>
@interface ArrayView() <ViewSource,ViewTransform,AtRandom>
{
    //: NSArray *_mediaButtons;
    NSArray *_mediaButtons;
    //: NSArray *_mediaItems;
    NSArray *_mediaItems;
}


//: @property (nonatomic, strong) FFFPageView *pageView;
@property (nonatomic, strong) AtView *pageView;

//: @end
@end

//: @implementation FFFInputMoreContainerView
@implementation ArrayView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        _pageView = [[AtView alloc] initWithFrame:CGRectZero];
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
        [self language];
    }
    //: return self;
    return self;
}

//: - (void)setConfig:(id<FFFSessionConfig>)config
- (void)setConfig:(id<FrameConfig>)config
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
- (void)language {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

    // 创建相册选择器视图
    //: _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
    _albumPickerView = [[WorkerView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
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
- (void)pastCenter:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);

        //: if ([self.delegate respondsToSelector:@selector(PickerDidSelectAssets:)]) {
        if ([self.delegate respondsToSelector:@selector(trivialityBe:)]) {
            //: [self.delegate PickerDidSelectAssets:assets];
            [self.delegate trivialityBe:assets];
        }

    // 在这里处理选择的图片

    // 可以选择自动隐藏相册选择器
//     [self.albumPickerView removeFromSuperview];

//    if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
//        [self.actionDelegate onTapAlbunArray:assets];
//    }
}

//: - (void)mediaPickerDidTapCamera {
- (void)filmInCamera {
    //: NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(languaging:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate languaging:nil];
    }
}

//: - (void)genMediaButtons
- (void)session
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
        items = [Afterwards blue].config.defaultOf;
    }
    //: else if([self.config respondsToSelector:@selector(mediaItems)])
    else if([self.config respondsToSelector:@selector(sizeView)])
    {
        //: items = [self.config mediaItems];
        items = [self.config sizeView];
    }
    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(ImageRecent *item, NSUInteger idx, BOOL *stop) {
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
        [btn setTitleColor:[UIColor withMax:StringFromRemoveTallData(kStr_dishRealizeText)] forState:UIControlStateNormal];
        //: btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [btn setTitleEdgeInsets:UIEdgeInsetsMake(76, -75, 0, 0)];
        //: [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        //: [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self calculateWidthWithFont:14 Text:item.title])];
        [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self hideBy:14 detect:item.title])];

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
-(CGFloat)hideBy:(NSInteger)Font detect:(NSString *)text{
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
        [self.pageView location];
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
- (NSInteger)teammed: (AtView *)pageView
{
    //: NSInteger count = [_mediaButtons count] / NIMMaxItemCountInPage;
    NSInteger count = [_mediaButtons count] / kLet_tableDateData;
    //: count = ([_mediaButtons count] % NIMMaxItemCountInPage == 0) ? count: count + 1;
    count = ([_mediaButtons count] % kLet_tableDateData == 0) ? count: count + 1;
    //: return ((count) > (1) ? (count) : (1));
    return ((count) > (1) ? (count) : (1));
}

//: - (UIView*)mediaPageView:(FFFPageView*)pageView beginItem:(NSInteger)begin endItem:(NSInteger)end
- (UIView*)enable:(AtView*)pageView should:(NSInteger)begin hide:(NSInteger)end
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - NIMPageColumnCount * NIMButtonItemWidth) / (NIMPageColumnCount +1);
    NSInteger span = (self.nim_width - kLet_itemName * kLet_arrayData) / (kLet_itemName +1);
    //: CGFloat startY = NIMButtonBegintLeftX;
    CGFloat startY = kLet_meData;
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
        [button addTarget:self action:@selector(upses:) forControlEvents:UIControlEventTouchUpInside];
        //计算位置
        //: rowIndex = indexInPage / NIMPageColumnCount;
        rowIndex = indexInPage / kLet_itemName;
        //: coloumnIndex= indexInPage % NIMPageColumnCount;
        coloumnIndex= indexInPage % kLet_itemName;
        //: CGFloat x = span + (NIMButtonItemWidth + span) * coloumnIndex;
        CGFloat x = span + (kLet_arrayData + span) * coloumnIndex;
        //: CGFloat y = 0.0;
        CGFloat y = 0.0;
        //: if (rowIndex > 0)
        if (rowIndex > 0)
        {
            //: y = rowIndex * NIMButtonItemHeight + startY + 15;
            y = rowIndex * kLet_teamCellOfName + startY + 15;
        }
        //: else
        else
        {
            //: y = rowIndex * NIMButtonItemHeight + startY;
            y = rowIndex * kLet_teamCellOfName + startY;
        }
        //: [button setFrame:CGRectMake(x, y, NIMButtonItemWidth, NIMButtonItemHeight)];
        [button setFrame:CGRectMake(x, y, kLet_arrayData, kLet_teamCellOfName)];
        //: [subView addSubview:button];
        [subView addSubview:button];
        //: indexInPage ++;
        indexInPage ++;
    }
    //: return subView;
    return subView;
}

//: - (UIView*)oneLineMediaInPageView:(FFFPageView *)pageView
- (UIView*)text:(AtView *)pageView
                       //: viewInPage: (NSInteger)index
                       background: (NSInteger)index
                            //: count:(NSInteger)count
                            barrelhouse:(NSInteger)count
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - count * NIMButtonItemWidth) / (count +1);
    NSInteger span = (self.nim_width - count * kLet_arrayData) / (count +1);

    //: for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    {
        //: UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        //: [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(upses:) forControlEvents:UIControlEventTouchUpInside];
        //: CGRect iconRect = CGRectMake(span + (NIMButtonItemWidth + span) * btnIndex, 0, NIMButtonItemWidth, NIMButtonItemHeight);
        CGRect iconRect = CGRectMake(span + (kLet_arrayData + span) * btnIndex, 0, kLet_arrayData, kLet_teamCellOfName);
        //: [button setFrame:iconRect];
        [button setFrame:iconRect];
        //: [subView addSubview:button];
        [subView addSubview:button];
    }
    //: return subView;
    return subView;
}

//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index
- (UIView *)time: (AtView *)pageView index: (NSInteger)index
{
    //: if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) 
    if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) //一行显示2个或者3个
    {
        //: return [self oneLineMediaInPageView:pageView viewInPage:index count:[_mediaButtons count]];
        return [self text:pageView background:index barrelhouse:[_mediaButtons count]];
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
    NSInteger begin = index * kLet_tableDateData;
    //: NSInteger end = (index + 1) * NIMMaxItemCountInPage;
    NSInteger end = (index + 1) * kLet_tableDateData;
    //: if (end > [_mediaButtons count])
    if (end > [_mediaButtons count])
    {
        //: end = [_mediaButtons count];
        end = [_mediaButtons count];
    }
    //: return [self mediaPageView:pageView beginItem:begin endItem:end];
    return [self enable:pageView should:begin hide:end];
}

//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchButton:(id)sender
- (void)upses:(id)sender
{
    //: NSInteger index = [(UIButton *)sender tag];
    NSInteger index = [(UIButton *)sender tag];
    //: FFFMediaItem *item = _mediaItems[index];
    ImageRecent *item = _mediaItems[index];
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(keeping:)]) {
        //: BOOL handled = [_actionDelegate onTapMediaItem:item];
        BOOL handled = [_actionDelegate keeping:item];
        //: if (!handled) {
        if (!handled) {
            //: NSAssert(0, @"invalid item selector!");
            NSAssert(0, StringFromRemoveTallData(kStr_toGrocerShowValue));
        }
    }

}

//: @end
@end

Byte * RemoveTallDataToCache(Byte *data) {
    int mumCruise = data[0];
    int mustGrocer = data[1];
    int labialPipe = data[2];
    if (!mumCruise) return data + labialPipe;
    for (int i = 0; i < mustGrocer / 2; i++) {
        int begin = labialPipe + i;
        int end = labialPipe + mustGrocer - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[labialPipe + mustGrocer] = 0;
    return data + labialPipe;
}

NSString *StringFromRemoveTallData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RemoveTallDataToCache(data)];
}  
