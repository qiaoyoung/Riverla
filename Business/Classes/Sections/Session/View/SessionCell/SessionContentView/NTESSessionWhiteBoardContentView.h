//
//  NTESSessionWhiteBoardContentView.h
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
@class M80AttributedLabel;


#import "FFFSessionMessageContentView.h"

@interface NTESSessionWhiteBoardContentView : FFFSessionMessageContentView

@property (nonatomic, strong) M80AttributedLabel *textLabel;

@end
