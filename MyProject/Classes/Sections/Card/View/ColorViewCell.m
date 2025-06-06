
#import <Foundation/Foundation.h>

NSString *StringFromHuddlerData(Byte *data);        


//: activity_add_friend_my_request
Byte kStr_fieldColorTitleValue[] = {10, 30, 90, 4, 7, 9, 26, 15, 28, 15, 26, 31, 5, 7, 10, 10, 5, 12, 24, 15, 11, 20, 10, 5, 19, 31, 5, 24, 11, 23, 27, 11, 25, 26, 223};


//: activity_add_friend_my_is
Byte kStr_childTitle[] = {66, 25, 21, 5, 175, 76, 78, 95, 84, 97, 84, 95, 100, 74, 76, 79, 79, 74, 81, 93, 84, 80, 89, 79, 74, 88, 100, 74, 84, 94, 60};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/26.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardVerificationCell.h"
#import "ColorViewCell.h"
//: #import "ViewCommonTableData.h"
#import "ViewCommonTableData.h"

//: @interface NTESCardVerificationCell ()<UITextViewDelegate>
@interface ColorViewCell ()<UITextViewDelegate>
//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) BuildRow *rowData;
//: @end
@end

//: @implementation NTESCardVerificationCell
@implementation ColorViewCell

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
        NSString *activity_add_friend_my_is = [TeamManager sizeKey:StringFromHuddlerData(kStr_childTitle)];
        //: NSString *activity_add_friend_my_request = [FFFLanguageManager getTextWithKey:@"activity_add_friend_my_request"];
        NSString *activity_add_friend_my_request = [TeamManager sizeKey:StringFromHuddlerData(kStr_fieldColorTitleValue)];

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
    [BlondeDefaults phone].tempVerificationInfo = textView.text;

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
- (void)elite:(BuildRow *)rowData past:(UITableView *)tableView{

    //: _rowData = rowData;
    _rowData = rowData;

}
//: @end
@end

Byte * HuddlerDataToCache(Byte *data) {
    int dittyBagTitle = data[0];
    int shade = data[1];
    Byte travelKitScreen = data[2];
    int language = data[3];
    if (!dittyBagTitle) return data + language;
    for (int i = language; i < language + shade; i++) {
        int value = data[i] + travelKitScreen;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[language + shade] = 0;
    return data + language;
}

NSString *StringFromHuddlerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HuddlerDataToCache(data)];
}
