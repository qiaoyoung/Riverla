
#import <Foundation/Foundation.h>
typedef struct {
    Byte modelLast;
    Byte *displaySpace;
    unsigned int shadow;
    bool tapImage;
	int faculty;
	int goopPress;
	int dateWith;
} ShadowCellData;

NSString *StringFromShadowCellData(ShadowCellData *data);


//: #F4E9FF
ShadowCellData kStr_successName = (ShadowCellData){41, (Byte []){10, 111, 29, 108, 16, 111, 111, 203}, 7, false, 240, 199, 14};


//: cell
ShadowCellData kStr_linkValue = (ShadowCellData){155, (Byte []){248, 254, 247, 247, 143}, 4, false, 184, 230, 47};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AnglicismTableView.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListView.h"
#import "AnglicismTableView.h"

//: @interface SelectedListView ()<UITableViewDelegate , UITableViewDataSource>
@interface AnglicismTableView ()<UITableViewDelegate , UITableViewDataSource>

//: @property (nonatomic , strong ) NSMutableArray *dataArray;
@property (nonatomic , strong ) NSMutableArray *dataArray;

//: @end
@end

//: @implementation SelectedListView
@implementation AnglicismTableView

//: - (void)dealloc{
- (void)dealloc{

    //: _dataArray = nil;
    _dataArray = nil;
}

//: - (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{

    //: self = [super initWithFrame:frame style:style];
    self = [super initWithFrame:frame style:style];

    //: if (self) {
    if (self) {

        //初始化数据

        //: [self initData];
        [self initFrame];
    }

    //: return self;
    return self;
}

//: #pragma mark - 初始化数据
#pragma mark - 初始化数据

//: - (void)initData{
- (void)initFrame{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: self.delegate = self;
    self.delegate = self;

    //: self.dataSource = self;
    self.dataSource = self;

    //: self.bounces = NO;
    self.bounces = NO;

    //: self.allowsMultipleSelectionDuringEditing = YES; 
    self.allowsMultipleSelectionDuringEditing = YES; //支持同时选中多行

    //: self.separatorInset = UIEdgeInsetsMake(0, 15, 0, 15);
    self.separatorInset = UIEdgeInsetsMake(0, 15, 0, 15);

    //: self.separatorColor = [[UIColor grayColor] colorWithAlphaComponent:0.2f];
    self.separatorColor = [[UIColor grayColor] colorWithAlphaComponent:0.2f];

    //: self.dataArray = [NSMutableArray array];
    self.dataArray = [NSMutableArray array];

    //: [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:StringFromShadowCellData(&kStr_linkValue)];
}

//: - (void)setArray:(NSArray<SelectedListModel *> *)array{
- (void)setArray:(NSArray<RefreshModel *> *)array{

    //: _array = array;
    _array = array;

    //: [self reloadData];
    [self reloadData];

    //: [self setEditing:!self.isSingle animated:NO];
    [self setEditing:!self.isSingle animated:NO];

    //: CGRect selfFrame = self.frame;
    CGRect selfFrame = self.frame;

    //: selfFrame.size.height = array.count * 50.0f;
    selfFrame.size.height = array.count * 50.0f;

    //: self.frame = selfFrame;
    self.frame = selfFrame;
}

//: - (void)setIsSingle:(BOOL)isSingle{
- (void)setIsSingle:(BOOL)isSingle{

    //: _isSingle = isSingle;
    _isSingle = isSingle;

    //: [self setEditing:!isSingle animated:NO];
    [self setEditing:!isSingle animated:NO];
}

//: - (void)finish{
- (void)cover{

    //: if (self.selectedBlock) self.selectedBlock(self.dataArray);
    if (self.selectedBlock) self.selectedBlock(self.dataArray);
}

//: #pragma mark - UITableViewDelegate , UITableViewDataSource
#pragma mark - UITableViewDelegate , UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    //: return self.array.count;
    return self.array.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    //: return 50.0f;
    return 50.0f;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StringFromShadowCellData(&kStr_linkValue)];

    //: SelectedListModel *model = self.array[indexPath.row];
    RefreshModel *model = self.array[indexPath.row];

    //: cell.textLabel.text = model.title;
    cell.textLabel.text = model.title;

    //: cell.backgroundColor = [UIColor clearColor];
    cell.backgroundColor = [UIColor clearColor];

    //: cell.selectedBackgroundView = [UIView new];
    cell.selectedBackgroundView = [UIView new];

    //: cell.selectedBackgroundView.backgroundColor = [UIColor colorWithHexString:@"#F4E9FF"];
    cell.selectedBackgroundView.backgroundColor = [UIColor isView:StringFromShadowCellData(&kStr_successName)];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: id model = self.array[indexPath.row];
    id model = self.array[indexPath.row];

    //: [self.dataArray addObject:model];
    [self.dataArray addObject:model];

    //: if (self.isSingle) {
    if (self.isSingle) {

        //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];

        //: [self finish];
        [self cover];

    //: } else {
    } else {

        //: if (self.changedBlock) self.changedBlock(self.dataArray);
        if (self.changedBlock) self.changedBlock(self.dataArray);
    }

}

//: - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {

    //: id model = self.array[indexPath.row];
    id model = self.array[indexPath.row];

    //: if (!self.isSingle) {
    if (!self.isSingle) {

        //: [self.dataArray removeObject:model];
        [self.dataArray removeObject:model];

        //: if (self.changedBlock) self.changedBlock(self.dataArray);
        if (self.changedBlock) self.changedBlock(self.dataArray);
    }
}

//: @end
@end

Byte *ShadowCellDataToByte(ShadowCellData *data) {
    if (data->tapImage) return data->displaySpace;
    for (int i = 0; i < data->shadow; i++) {
        data->displaySpace[i] ^= data->modelLast;
    }
    data->displaySpace[data->shadow] = 0;
    data->tapImage = true;
	if (data->shadow >= 3) {
		data->faculty = data->displaySpace[0];
		data->goopPress = data->displaySpace[1];
		data->dateWith = data->displaySpace[2];
	}
    return data->displaySpace;
}

NSString *StringFromShadowCellData(ShadowCellData *data) {
    return [NSString stringWithUTF8String:(char *)ShadowCellDataToByte(data)];
}
