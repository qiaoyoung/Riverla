//
//  NIMSessionLayout.m
// NeeyoKit
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "FFFSessionLayoutImpl.h"
#import "UITableView+NIMScrollToBottom.h"
#import "FFFMessageCell.h"
#import "FFFGlobalMacro.h"
#import "FFFSessionTableAdapter.h"
#import "UIViewNimKit.h"
#import "FFFKitKeyboardInfo.h"
#import "FFFReplyContentView.h"

@interface FFFSessionLayoutImpl()
{
    NSMutableArray *_inserts;
    CGFloat _inputViewHeight;
}

@property (nonatomic,strong)  UIRefreshControl *refreshControl;

@property (nonatomic,strong)  NIMSession  *session;

@property (nonatomic,strong)  id<FFFSessionConfig> sessionConfig;

@property (nonatomic,weak)    id<NIMSessionLayoutDelegate> delegate;

@end

@implementation FFFSessionLayoutImpl

- (instancetype)initWithSession:(NIMSession *)session
                         config:(id<FFFSessionConfig>)sessionConfig
{
    self = [super init];
    if (self) {
        _sessionConfig = sessionConfig;
        _session       = session;
        _inserts       = [[NSMutableArray alloc] init];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(menuDidHide:) name:UIMenuControllerDidHideMenuNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChangeFrame:) name:NIMKitKeyboardWillChangeFrameNotification object:nil];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)reloadTable
{
    [self.tableView reloadData];
}

- (void)setTableView:(UITableView *)tableView
{
    BOOL change = _tableView != tableView;
    if (change)
    {
        _tableView = tableView;
        [self setupRefreshControl];
    }
}

- (void)resetLayout
{
    [self adjustInputView];
    [self adjustTableView];
}

- (void)layoutAfterRefresh {
    [self.refreshControl endRefreshing];
}



- (void)changeLayout:(CGFloat)inputViewHeight
{
    BOOL change = _inputViewHeight != inputViewHeight;
    if (change)
    {
        _inputViewHeight = inputViewHeight;
        [self adjustInputView];
        [self adjustTableView];
    }
}


- (void)adjustInputView
{
////    UIView *superView = self.inputView.superview;
////    UIEdgeInsets safeAreaInsets = superView.safeAreaInsets;
////
//////    self.inputView.nim_bottom = superView.nim_height - safeAreaInsets.bottom;
////    self.inputView.nim_bottom = superView.nim_height;
//    
//    CGFloat safeAreaInsetsBottom = [UIDevice vg_safeDistanceBottom];
//    CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom;
//    self.inputView.nim_bottom = containerSafeHeight;
    
        CGFloat safeAreaInsetsBottom = 0;
        CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom;
        self.inputView.nim_bottom = containerSafeHeight;
}

- (void)adjustTableView
{
    self.tableView.frame = CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-self.inputView.height);
    self.tableView.bottom = self.inputView.nim_top;
    [self.tableView nim_scrollToBottom:YES];
    

//    CGRect rect = self.tableView.frame;
//    
//    //tableview 的位置
//    CGFloat safeAreaInsetsBottom = 0;
//    CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom;
//    rect.size.height = containerSafeHeight - self.inputView.toolBar.nim_height;
//    
//    
//    //tableview 的内容 inset
//    UIEdgeInsets contentInsets = self.tableView.adjustedContentInset;
//    CGFloat visiableHeight = 0;
//    
//    //如果气泡过少，少于总高度，输入框视图需要顶到最后一个气泡的下面。
//    visiableHeight = visiableHeight + self.tableView.contentSize.height + contentInsets.top + contentInsets.bottom;
//    visiableHeight = MIN(visiableHeight, rect.size.height);
//    
//    rect.origin.y    = containerSafeHeight - visiableHeight - self.inputView.nim_height;
//    rect.origin.y    = rect.origin.y > 0? SCREEN_TOP_HEIGHT : rect.origin.y;
//    
//    
//    BOOL tableChanged = !CGRectEqualToRect(self.tableView.frame, rect);
//    if (tableChanged)
//    {
////        rect.origin.y += SCREEN_TOP_HEIGHT;
////        rect.size.height -= SCREEN_TOP_HEIGHT;
//        [self.tableView setFrame:rect];
//        [self.tableView nim_scrollToBottom:YES];
//    }
////    [self.tableView nim_scrollToBottom:YES];
}

#pragma mark - Notification
- (void)menuDidHide:(NSNotification *)notification
{
    [UIMenuController sharedMenuController].menuItems = nil;
}


- (void)keyboardWillChangeFrame:(NSNotification *)notification
{
    if (!self.tableView.window)
    {
        //如果当前视图不是顶部视图，则不需要监听
        return;
    }
    [self.inputView sizeToFit];
}




#pragma mark - Private

- (void)calculateContent:(FFFMessageModel *)model{
    NEEKIT_Dispatch_Sync_Main(^{
        [model contentSize:self.tableView.nim_width];
    });
}

- (void)setupRefreshControl
{
    self.refreshControl = [[UIRefreshControl alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];

    if (@available(iOS 10.0, *))
    {
        self.tableView.refreshControl = self.refreshControl;
    }
    else
    {
        [self.tableView addSubview: self.refreshControl];
    }
    
    [self.refreshControl addTarget:self action:@selector(headerRereshing:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)headerRereshing:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(onRefresh)])
    {
        [self.delegate onRefresh];
    }
}

- (void)insert:(NSArray<NSIndexPath *> *)indexPaths animated:(BOOL)animated
{
    if (!indexPaths.count)
    {
        CGPoint pt = self.tableView.contentOffset;
        CGFloat ch = self.tableView.contentSize.height;
        [UIView performWithoutAnimation:^{
            [self.tableView reloadData];
        }];
        CGFloat eh = self.tableView.contentSize.height - ch;
        if (eh > 0) {
            pt.y += eh;
            [self.tableView setContentOffset:pt animated:NO];
        }
//        [self.tableView reloadData];
//        
//        NSInteger rowsCount =  [self.tableView numberOfRowsInSection:0];
//        if (rowsCount){
//            [self.tableView setContentOffset:CGPointZero animated:NO];
//        }
//        
//        [UIView animateWithDuration:0.1 delay:0 options:7 animations:^{
//            [self resetLayout];
//        } completion:^(BOOL finished) {
//            [self.tableView reloadData];
//        }];
        return;
    }

    NSMutableArray *addIndexPathes = [NSMutableArray array];
    [indexPaths enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[obj integerValue] inSection:0];
        [addIndexPathes addObject:indexPath];
    }];
    
    BOOL isScroll = (self.tableView.contentSize.height - self.tableView.contentOffset.y > [UIScreen mainScreen].bounds.size.height);
    
    if (isScroll || [self shouldReloadWhenInsert:addIndexPathes])
    {
        [self.tableView reloadData];
    }
    else
    {
        [self.tableView beginUpdates];
        [self.tableView insertRowsAtIndexPaths:addIndexPathes
                              withRowAnimation:UITableViewRowAnimationNone];
        [self.tableView endUpdates];
        [self.tableView scrollToRowAtIndexPath:addIndexPathes.lastObject
                              atScrollPosition:UITableViewScrollPositionTop
                                      animated:NO];
    }
   
    [UIView animateWithDuration:0.1 delay:0 options:7 animations:^{
        [self resetLayout];
    } completion:^(BOOL finished) {
        [self.tableView reloadData];
    }];
}

- (void)remove:(NSArray<NSIndexPath *> *)indexPaths
{
    if ([self shouldReloadWhenRemoveOrUpdate:indexPaths])
    {
        [self.tableView reloadData];
        return;
    }
    
    [self.tableView beginUpdates];
    [self.tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    [self.tableView endUpdates];
//    NSInteger row = [self.tableView numberOfRowsInSection:0] - 1;
//    if (row > 0)
//    {
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
//        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
//    }
}


- (void)update:(NSIndexPath *)indexPath
{
    FFFMessageCell *cell = (FFFMessageCell *)[self.tableView cellForRowAtIndexPath:indexPath];
    if (cell) {
        @try {
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
        } @catch (NSException *exception) {
            // 暂时无法保证数据源的一致性
        } @finally {
            CGFloat scrollOffsetY = self.tableView.contentOffset.y;
            [self.tableView setContentOffset:CGPointMake(self.tableView.contentOffset.x, scrollOffsetY) animated:NO];
        }
    }
}

- (BOOL)canInsertChatroomMessages
{
    return !self.tableView.isDecelerating && !self.tableView.isDragging;
}

- (void)adjustOffset:(NSInteger)row {
    
}

- (void)dismissReplyContent {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (!self.inputView.replyedContent.hidden)
        {
            [self.inputView.replyedContent dismiss];
        }
    });
}

#pragma mark - 

- (BOOL)shouldReloadWhenInsert:(NSArray<NSIndexPath *> *)indexPaths
{
    // 如果插入数据后，中间有空档，则不能直接插入，需要全量重新加载
    NSMutableDictionary * sectionCurrentCount = [NSMutableDictionary dictionary];
    NSMutableDictionary * sectionMaxCount = [NSMutableDictionary dictionary];
    NSMutableDictionary * sectionInsertingCount = [NSMutableDictionary dictionary];
    
    for(NSIndexPath * indexPath in indexPaths)
    {
        NSInteger section = indexPath.section;
        NSInteger count = [self.tableView numberOfRowsInSection:section];
        sectionCurrentCount[@(section)] = @(count);
    }
    
    for(NSIndexPath * indexPath in indexPaths)
    {
        NSInteger section = indexPath.section;
        NSInteger row = indexPath.row;
        NSInteger count = [sectionCurrentCount[@(section)] integerValue];
        NSInteger sectionMaxNum = [sectionMaxCount[@(section)] integerValue];
        NSInteger max = 0;
        if (row <= count)
        {
            sectionCurrentCount[@(section)] = @(count+1);
            max = count + 1;
        }
        else
        {
            max = row + 1;
        }
        max = MAX(max, sectionMaxNum);
        sectionMaxCount[@(section)] = @(max);
        
        NSInteger sectionCurrentCount = [sectionInsertingCount[@(section)] integerValue];
        sectionInsertingCount[@(section)] = @(++ sectionCurrentCount);
    }
    
    for(NSNumber * sectionKey in sectionMaxCount.allKeys)
    {
        NSInteger maxCount = [sectionMaxCount[sectionKey] integerValue];
        NSInteger currentCount = [sectionInsertingCount[sectionKey] integerValue];
        NSInteger section = [sectionKey integerValue];
        NSInteger count = [self.tableView numberOfRowsInSection:section];
        if (maxCount > count + currentCount)
        {
            return YES;
        }
    }
    
    return NO;
}

- (BOOL)shouldReloadWhenRemoveOrUpdate:(NSArray<NSIndexPath *> *)indexPaths
{
    for(NSIndexPath * indexPath in indexPaths)
    {
        NSInteger section = indexPath.section;
        NSInteger number = [self.tableView numberOfRowsInSection:section];
        if (number <= indexPath.row)
        {
            return YES;
        }
    }
    
    return NO;
}

- (NSInteger)numberOfRows
{
    return [self.tableView numberOfRowsInSection:0];
}

@end
