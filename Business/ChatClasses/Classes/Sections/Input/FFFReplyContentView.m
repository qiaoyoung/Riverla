//
//  FFFReplyContentView.m
// MyUserKit
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "FFFReplyContentView.h"
#import "UIViewNimKit.h"
#import "UIColor+MyUserKit.h"
#import "UIImage+MyUserKit.h"

@interface FFFReplyContentView ()

@end

@implementation FFFReplyContentView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = RGB_COLOR_String(@"#ffffff");
        
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, SCREEN_WIDTH-30, 48)];
        bg.backgroundColor = RGB_COLOR_String(@"F6F7FA");
        bg.layer.cornerRadius = 8;
        [self addSubview:bg];
        
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView.layer.cornerRadius = 4;
        _picView.layer.masksToBounds = YES;
        [bg addSubview:_picView];
        _picView.hidden = YES;
        
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, SCREEN_WIDTH-30, 15)];
        _fromUser.textColor = RGB_COLOR_String(@"B391FF");
        _fromUser.font = [UIFont systemFontOfSize:12];
        [bg addSubview:_fromUser];
        
        _label = [[UILabel alloc] init];
        _label.backgroundColor = [UIColor clearColor];
        _label.frame = CGRectMake(15, 20, SCREEN_WIDTH-30-16-30, 25);
        _label.numberOfLines = 1;
        _label.textAlignment = NSTextAlignmentLeft;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.font = [UIFont systemFontOfSize:12];
        _label.textColor = RGB_COLOR_String(@"#2B2F36");
        [bg addSubview:_label];
        
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton.frame = CGRectMake(SCREEN_WIDTH-38-16, 17, 16, 16);
        [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
                      forState:UIControlStateNormal];
        [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [bg addSubview:_closeButton];
        
//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
//    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
//    
//    self.divider.nim_left = self.closeButton.nim_right + 2;
//    
//    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
//    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
//    self.label.nim_left = self.divider.nim_right + 2;
//    self.label.nim_centerY = self.nim_height * 0.5;
//    
//    self.divider.nim_height = self.label.nim_height;
//    self.divider.nim_centerY = self.nim_height * .5f;
}

- (void)dismiss
{
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


- (void)onClicked:(id)sender
{
    self.hidden = YES;
    if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    {
        [self.delegate onClearReplyContent:sender];
    }
}

@end
