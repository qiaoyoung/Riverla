// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageDotView.m
//  UserControl
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TADotView.h"
#import "MessageDotView.h"

//: @implementation TADotView
@implementation MessageDotView


//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self speedyKind];
    }

    //: return self;
    return self;
}


//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self speedyKind];
    }
    //: return self;
    return self;
}


//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: self = [super initWithCoder:aDecoder];
    self = [super initWithCoder:aDecoder];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self speedyKind];
    }

    //: return self;
    return self;
}

//: - (void)initialization
- (void)speedyKind
{
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];
    //: self.layer.cornerRadius = CGRectGetWidth(self.frame) / 2;
    self.layer.cornerRadius = CGRectGetWidth(self.frame) / 2;
    //: self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    //: self.layer.borderWidth = 2;
    self.layer.borderWidth = 2;
}


//: - (void)changeActivityState:(BOOL)active
- (void)developments:(BOOL)active
{
    //: if (active) {
    if (active) {
        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
    //: } else {
    } else {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
    }
}

//: @end
@end