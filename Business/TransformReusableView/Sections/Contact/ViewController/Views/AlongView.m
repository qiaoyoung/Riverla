
#import <Foundation/Foundation.h>
typedef struct {
    Byte scale;
    Byte *my;
    unsigned int info;
    bool withShow;
	int mismanage;
	int off;
} CollectionData;

NSString *StringFromCollectionData(CollectionData *data);


//: #F7F8FB
CollectionData kStr_highlightTitle = (CollectionData){114, (Byte []){81, 52, 69, 52, 74, 52, 48, 39}, 7, false, 19, 153};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/27.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactTableHeader.h"
#import "AlongView.h"

//: @implementation NTESContactTableHeader
@implementation AlongView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor withMax:StringFromCollectionData(&kStr_highlightTitle)];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.textColor = [UIColor lightGrayColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(100);
            make.width.mas_equalTo(100);
            //: make.height.mas_equalTo(15);
            make.height.mas_equalTo(15);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: @end
@end




//: @implementation NTESContactTableHeaderGroup
@implementation HideView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor withMax:StringFromCollectionData(&kStr_highlightTitle)];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _arrowImageView = [[UIImageView alloc] init];
        _arrowImageView = [[UIImageView alloc] init];
        //: [self addSubview:_arrowImageView];
        [self addSubview:_arrowImageView];
        //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.width.mas_equalTo(14);
            make.width.mas_equalTo(14);
            //: make.height.mas_equalTo(8);
            make.height.mas_equalTo(8);
        //: }];
        }];

        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(holdfasts:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:button];
        [self addSubview:button];
        //: [button mas_makeConstraints:^(MASConstraintMaker *make) {
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.bottom.mas_offset(0);
            make.bottom.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: -(void)buttonClick:(UIButton *)sender{
-(void)holdfasts:(UIButton *)sender{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(headerClickWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(messaged:)]) {
        //: [self.delegate headerClickWith:self.section];
        [self.delegate messaged:self.section];
    }
}

//: @end
@end

Byte *CollectionDataToByte(CollectionData *data) {
    if (data->withShow) return data->my;
    for (int i = 0; i < data->info; i++) {
        data->my[i] ^= data->scale;
    }
    data->my[data->info] = 0;
    data->withShow = true;
	if (data->info >= 2) {
		data->mismanage = data->my[0];
		data->off = data->my[1];
	}
    return data->my;
}

NSString *StringFromCollectionData(CollectionData *data) {
    return [NSString stringWithUTF8String:(char *)CollectionDataToByte(data)];
}
