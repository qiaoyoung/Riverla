// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomControl.h
// Afterwards
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionUnknowContentView.h"
#import "RandomControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFSessionUnknowContentView()
@interface RandomControl()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation FFFSessionUnknowContentView
@implementation RandomControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initShowDown
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initShowDown]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.userInteractionEnabled = NO;
        _label.userInteractionEnabled = NO;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)scale:(StochasticProcessTeam *)data{
    //: [super refresh:data];
    [super scale:data];
    //: NSString *text = @"";
    NSString *text = @"";
//    NSString *text = @"未知类型消息".nim_localized;
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    WorkerSetting *setting = [[Afterwards blue].config with:data.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: [self.label setText:text];
    [self.label setText:text];
    //: [self.label sizeToFit];
    [self.label sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _label.nim_centerX = self.nim_width * .5f;
    _label.nim_centerX = self.nim_width * .5f;
    //: _label.nim_centerY = self.nim_height * .5f;
    _label.nim_centerY = self.nim_height * .5f;
}

//: @end
@end