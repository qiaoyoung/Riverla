
#import <Foundation/Foundation.h>

NSString *StringFromTitleData(Byte *data);


//: activity_add_friend_my_is
Byte kStr_enableTingText[] = {3, 25, 47, 11, 76, 190, 204, 18, 77, 60, 243, 144, 146, 163, 152, 165, 152, 163, 168, 142, 144, 147, 147, 142, 149, 161, 152, 148, 157, 147, 142, 156, 168, 142, 152, 162, 8};


//: activity_add_friend_my_request
Byte kStr_bubbleKeyName[] = {24, 30, 92, 14, 191, 135, 218, 106, 148, 237, 16, 132, 57, 209, 189, 191, 208, 197, 210, 197, 208, 213, 187, 189, 192, 192, 187, 194, 206, 197, 193, 202, 192, 187, 201, 213, 187, 206, 193, 205, 209, 193, 207, 208, 8};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowTeamView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/26.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardVerificationCell.h"
#import "ShowTeamView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @interface NTESCardVerificationCell ()<UITextViewDelegate>
@interface ShowTeamView ()<UITextViewDelegate>
//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) ColorContentRow *rowData;
//: @end
@end

//: @implementation NTESCardVerificationCell
@implementation ShowTeamView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.userInteractionEnabled = NO;
        self.userInteractionEnabled = NO;

//        _titleLabel = [[UILabel alloc] init];
//        _titleLabel.textColor = [UIColor lightGrayColor];
//        _titleLabel.text = @"填写验证信息";
//        _titleLabel.font = [UIFont systemFontOfSize:14];
//        [self addSubview:_titleLabel];
//        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(15);
//            make.top.mas_offset(-10);
//            make.width.mas_equalTo(100);
//            make.height.mas_equalTo(20);
//        }];

//        UIView *background = [[UIView alloc] init];
//        background.backgroundColor = [UIColor whiteColor];
//        [self addSubview:background];
//        [background mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(0);
//            make.height.mas_equalTo(100);
//        }];
//

        //: NSString *activity_add_friend_my_is = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_is"];
        NSString *activity_add_friend_my_is = [ItemManager sessionInformation:StringFromTitleData(kStr_enableTingText)];
        //: NSString *activity_add_friend_my_request = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_request"];
        NSString *activity_add_friend_my_request = [ItemManager sessionInformation:StringFromTitleData(kStr_bubbleKeyName)];

        //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
        NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];

        //: _textView = [[UITextView alloc] init];
        _textView = [[UITextView alloc] init];
        //: _textView.delegate = self;
        _textView.delegate = self;
        //: _textView.text = [NSString stringWithFormat:@"%@%@，%@",activity_add_friend_my_is,me.userInfo.nickName,activity_add_friend_my_request];
        _textView.text = [NSString stringWithFormat:@"%@%@，%@",activity_add_friend_my_is,me.userInfo.nickName,activity_add_friend_my_request];
        //: _textView.returnKeyType = UIReturnKeyDone;
        _textView.returnKeyType = UIReturnKeyDone;
        //: [self.contentView addSubview:_textView];
        [self.contentView addSubview:_textView];
        //: _textView.layer.masksToBounds = YES;
        _textView.layer.masksToBounds = YES;
        //: _textView.layer.cornerRadius = 6.;
        _textView.layer.cornerRadius = 6.;
        //: _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        //: _textView.layer.borderWidth = 0.7;
        _textView.layer.borderWidth = 0.7;
        //: [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.top.mas_offset(10);
            make.top.mas_offset(10);
            //: make.bottom.mas_offset(-10);
            make.bottom.mas_offset(-10);
        //: }];
        }];


    }
    //: return self;
    return self;
}
//: - (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    //: return YES;
    return YES;
}

//: - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{

    //: [NIMUserDefaults standardUserDefaults].tempVerificationInfo = textView.text;
    [PhotoDefaults ting].tempVerificationInfo = textView.text;

    //: if ([text isEqualToString:@"\n"]){ //判断输入的字是否是回车，即按下return
    if ([text isEqualToString:@"\n"]){ //判断输入的字是否是回车，即按下return
        //在这里做你响应return键的代码
        //: [textView resignFirstResponder];
        [textView resignFirstResponder];
        //: return NO; 
        return NO; //这里返回NO，就代表return键值失效，即页面上按下return，不会出现换行，如果为yes，则输入页面会换行
    }
    //: return YES;
    return YES;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)view:(ColorContentRow *)rowData title:(UITableView *)tableView{

    //: _rowData = rowData;
    _rowData = rowData;

}
//: @end
@end

Byte * TitleDataToCache(Byte *data) {
    int rowTextAt = data[0];
    int capturePath = data[1];
    Byte clip = data[2];
    int textSize = data[3];
    if (!rowTextAt) return data + textSize;
    for (int i = textSize; i < textSize + capturePath; i++) {
        int value = data[i] - clip;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[textSize + capturePath] = 0;
    return data + textSize;
}

NSString *StringFromTitleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TitleDataToCache(data)];
}
