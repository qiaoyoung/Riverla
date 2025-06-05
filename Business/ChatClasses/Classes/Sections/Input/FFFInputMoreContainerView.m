//
//  NTESInputMoreContainerView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFInputMoreContainerView.h"
#import "FFFPageView.h"
#import "FFFMediaItem.h"
#import "UIViewNimKit.h"
#import "NeeyoKit.h"

NSInteger NIMMaxItemCountInPage = 8;
NSInteger NIMButtonItemWidth = 75;
NSInteger NIMButtonItemHeight = 85;
NSInteger NIMPageRowCount     = 2;
NSInteger NIMPageColumnCount  = 4;
NSInteger NIMButtonBegintLeftX = 11;




@interface FFFInputMoreContainerView() <FFFPageViewDataSource,FFFPageViewDelegate,CustomMediaPickerViewDelegate>
{
    NSArray                 *_mediaButtons;
    NSArray                 *_mediaItems;
}


@property (nonatomic, strong) FFFPageView *pageView;

@end

@implementation FFFInputMoreContainerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        _pageView = [[FFFPageView alloc] initWithFrame:CGRectZero];
//        _pageView.dataSource = self;
//        [self addSubview:_pageView];
        
        self.layer.cornerRadius = 12;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowOffset = CGSizeMake(0,-4);
        self.layer.shadowOpacity = 1;
        self.layer.shadowRadius = 16;
        
        [self setup];
    }
    return self;
}

- (void)setConfig:(id<FFFSessionConfig>)config
{
    _config = config;
//    [self genMediaButtons];
//    [self.pageView reloadData];
}


- (CGSize)sizeThatFits:(CGSize)size
{
    return CGSizeMake(size.width, 400.f);
}

- (void)setup {
    self.backgroundColor = [UIColor whiteColor];

    // 创建相册选择器视图
    _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 10, SCREEN_WIDTH-40, 380)];
    _albumPickerView.delegate = self;
    _albumPickerView.maxSelectionCount = 5; // 设置最大选择数量
    _albumPickerView.delegate = self;
    _albumPickerView.allowCamera = YES; // 显示拍照按钮
    [self addSubview:_albumPickerView];
    
//    // 添加边框
//    _albumPickerView.layer.borderWidth = 1.0;
//    _albumPickerView.layer.borderColor = [UIColor darkGrayColor].CGColor;
//    _albumPickerView.layer.cornerRadius = 8.0;
//    _albumPickerView.clipsToBounds = YES;
}

#pragma mark - CustomAlbumPickerViewDelegate
- (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
{
    NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);
    
        if ([self.delegate respondsToSelector:@selector(PickerDidSelectAssets:)]) {
            [self.delegate PickerDidSelectAssets:assets];
        }
    
    // 在这里处理选择的图片
 
    // 可以选择自动隐藏相册选择器
//     [self.albumPickerView removeFromSuperview];
    
//    if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
//        [self.actionDelegate onTapAlbunArray:assets];
//    }
}

- (void)mediaPickerDidTapCamera {
    NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
        [self.actionDelegate onTapCameraBtn:nil];
    }
}

- (void)genMediaButtons
{
    NSMutableArray *mediaButtons = [NSMutableArray array];
    NSMutableArray *mediaItems = [NSMutableArray array];
    NSArray *items;
    if (!self.config)
    {
        items = [NeeyoKit sharedKit].config.defaultMediaItems;
    }
    else if([self.config respondsToSelector:@selector(mediaItems)])
    {
        items = [self.config mediaItems];
    }
    [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
        [mediaItems addObject:item];
        
        UIButton *btn = [[UIButton alloc] init];
        btn.tag = idx;
        [btn setImage:item.normalImage forState:UIControlStateNormal];
        [btn setImage:item.selectedImage forState:UIControlStateHighlighted];
        [btn setTitle:item.title forState:UIControlStateNormal];
        [btn setTitleColor:RGB_COLOR_String(@"#612CF9") forState:UIControlStateNormal];
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [btn setTitleEdgeInsets:UIEdgeInsetsMake(76, -75, 0, 0)];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self calculateWidthWithFont:14 Text:item.title])];

        [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [mediaButtons addObject:btn];

    }];
    _mediaButtons = mediaButtons;
    _mediaItems = mediaItems;
}

-(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    CGRect rect = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, Font + 2)
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attr
                                     context:nil];
    return rect.size.width;
}



- (void)setFrame:(CGRect)frame{
    CGFloat originalWidth = self.frame.size.width;
    [super setFrame:frame];
    if (originalWidth != frame.size.width)
    {
        self.pageView.frame = self.bounds;
        [self.pageView reloadData];
    }
}

- (void)dealloc
{
    _pageView.dataSource = nil;
}


#pragma mark PageViewDataSource
- (NSInteger)numberOfPages: (FFFPageView *)pageView
{
    NSInteger count = [_mediaButtons count] / NIMMaxItemCountInPage;
    count = ([_mediaButtons count] % NIMMaxItemCountInPage == 0) ? count: count + 1;
    return MAX(count, 1);
}

- (UIView*)mediaPageView:(FFFPageView*)pageView beginItem:(NSInteger)begin endItem:(NSInteger)end
{
    UIView *subView = [[UIView alloc] init];
    NSInteger span = (self.nim_width - NIMPageColumnCount * NIMButtonItemWidth) / (NIMPageColumnCount +1);
    CGFloat startY          = NIMButtonBegintLeftX;
    NSInteger coloumnIndex = 0;
    NSInteger rowIndex = 0;
    NSInteger indexInPage = 0;
    for (NSInteger index = begin; index < end; index ++)
    {
        UIButton *button = [_mediaButtons objectAtIndex:index];
        [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        //计算位置
        rowIndex    = indexInPage / NIMPageColumnCount;
        coloumnIndex= indexInPage % NIMPageColumnCount;
        CGFloat x = span + (NIMButtonItemWidth + span) * coloumnIndex;
        CGFloat y = 0.0;
        if (rowIndex > 0)
        {
            y = rowIndex * NIMButtonItemHeight + startY + 15;
        }
        else
        {
            y = rowIndex * NIMButtonItemHeight + startY;
        }
        [button setFrame:CGRectMake(x, y, NIMButtonItemWidth, NIMButtonItemHeight)];
        [subView addSubview:button];
        indexInPage ++;
    }
    return subView;
}

- (UIView*)oneLineMediaInPageView:(FFFPageView *)pageView
                       viewInPage: (NSInteger)index
                            count:(NSInteger)count
{
    UIView *subView = [[UIView alloc] init];
    NSInteger span = (self.nim_width - count * NIMButtonItemWidth) / (count +1);
    
    for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    {
        UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        CGRect iconRect = CGRectMake(span + (NIMButtonItemWidth + span) * btnIndex, 0, NIMButtonItemWidth, NIMButtonItemHeight);
        [button setFrame:iconRect];
        [subView addSubview:button];
    }
    return subView;
}

- (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index
{
    if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) //一行显示2个或者3个
    {
        return [self oneLineMediaInPageView:pageView viewInPage:index count:[_mediaButtons count]];
    }
    
    if (index < 0)
    {
        assert(0);
        index = 0;
    }
    NSInteger begin = index * NIMMaxItemCountInPage;
    NSInteger end = (index + 1) * NIMMaxItemCountInPage;
    if (end > [_mediaButtons count])
    {
        end = [_mediaButtons count];
    }
    return [self mediaPageView:pageView beginItem:begin endItem:end];
}

#pragma mark - button actions
- (void)onTouchButton:(id)sender
{
    NSInteger index = [(UIButton *)sender tag];
    FFFMediaItem *item = _mediaItems[index];
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
        BOOL handled = [_actionDelegate onTapMediaItem:item];
        if (!handled) {
            NSAssert(0, @"invalid item selector!");
        }
    }
    
}

@end
