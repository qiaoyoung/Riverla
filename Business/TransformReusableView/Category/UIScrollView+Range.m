
#import <Foundation/Foundation.h>

NSString *StringFromWindowKeyData(Byte *data);        


//: contentOffset
Byte kStr_deviceContent[] = {69, 13, 62, 14, 250, 176, 179, 44, 168, 67, 64, 89, 123, 193, 37, 49, 48, 54, 39, 48, 54, 17, 40, 40, 53, 39, 54, 185};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+Range.m
//  NIM
//
//  Created by chris on 16/1/24.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIScrollView+NTESDirection.h"
#import "UIScrollView+Range.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @interface UIScrollView ()
@interface UIScrollView ()
//: @property (assign, nonatomic) NTESScrollViewDirection horizontalScrollingDirection;
@property (assign, nonatomic) NTESScrollViewDirection horizontalScrollingDirection;
//: @property (assign, nonatomic) NTESScrollViewDirection verticalScrollingDirection;
@property (assign, nonatomic) NTESScrollViewDirection verticalScrollingDirection;
//: @end
@end


//: static const char horizontalScrollingDirectionKey;
static const char kLet_styleData;
//: static const char verticalScrollingDirectionKey;
static const char kLet_borderName;


//: @implementation UIScrollView (NTESDirection)
@implementation UIScrollView (Range)

//: - (void)startObservingDirection
- (void)comment
{
    //: [self addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    [self addObserver:self forKeyPath:StringFromWindowKeyData(kStr_deviceContent) options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
}

//: - (void)stopObservingDirection
- (void)observing
{
    //: [self removeObserver:self forKeyPath:@"contentOffset"];
    [self removeObserver:self forKeyPath:StringFromWindowKeyData(kStr_deviceContent)];
}

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    //: if (![keyPath isEqualToString:@"contentOffset"]) return;
    if (![keyPath isEqualToString:StringFromWindowKeyData(kStr_deviceContent)]) return;

    //: CGPoint newContentOffset = [[change valueForKey:NSKeyValueChangeNewKey] CGPointValue];
    CGPoint newContentOffset = [[change valueForKey:NSKeyValueChangeNewKey] CGPointValue];
    //: CGPoint oldContentOffset = [[change valueForKey:NSKeyValueChangeOldKey] CGPointValue];
    CGPoint oldContentOffset = [[change valueForKey:NSKeyValueChangeOldKey] CGPointValue];

    //: if (oldContentOffset.x < newContentOffset.x) {
    if (oldContentOffset.x < newContentOffset.x) {
        //: self.horizontalScrollingDirection = NTESScrollViewDirectionRight;
        self.horizontalScrollingDirection = NTESScrollViewDirectionRight;
    //: } else if (oldContentOffset.x > newContentOffset.x) {
    } else if (oldContentOffset.x > newContentOffset.x) {
        //: self.horizontalScrollingDirection = NTESScrollViewDirectionLeft;
        self.horizontalScrollingDirection = NTESScrollViewDirectionLeft;
    //: } else {
    } else {
        //: self.horizontalScrollingDirection = NTESScrollViewDirectionNone;
        self.horizontalScrollingDirection = NTESScrollViewDirectionNone;
    }

    //: if (oldContentOffset.y < newContentOffset.y) {
    if (oldContentOffset.y < newContentOffset.y) {
        //: self.verticalScrollingDirection = NTESScrollViewDirectionDown;
        self.verticalScrollingDirection = NTESScrollViewDirectionDown;
    //: } else if (oldContentOffset.y > newContentOffset.y) {
    } else if (oldContentOffset.y > newContentOffset.y) {
        //: self.verticalScrollingDirection = NTESScrollViewDirectionUp;
        self.verticalScrollingDirection = NTESScrollViewDirectionUp;
    //: } else {
    } else {
        //: self.verticalScrollingDirection = NTESScrollViewDirectionNone;
        self.verticalScrollingDirection = NTESScrollViewDirectionNone;
    }
}

//: #pragma mark - Properties
#pragma mark - Properties
//: - (NTESScrollViewDirection)horizontalScrollingDirection
- (NTESScrollViewDirection)horizontalScrollingDirection
{
    //: return [objc_getAssociatedObject(self, (void *)&horizontalScrollingDirectionKey) intValue];
    return [objc_getAssociatedObject(self, (void *)&kLet_styleData) intValue];
}

//: - (void)setHorizontalScrollingDirection:(NTESScrollViewDirection)horizontalScrollingDirection
- (void)setHorizontalScrollingDirection:(NTESScrollViewDirection)horizontalScrollingDirection
{
    //: objc_setAssociatedObject(self, (void *)&horizontalScrollingDirectionKey, [NSNumber numberWithInt:horizontalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, (void *)&kLet_styleData, [NSNumber numberWithInt:horizontalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: - (NTESScrollViewDirection)verticalScrollingDirection
- (NTESScrollViewDirection)verticalScrollingDirection
{
    //: return [objc_getAssociatedObject(self, (void *)&verticalScrollingDirectionKey) intValue];
    return [objc_getAssociatedObject(self, (void *)&kLet_borderName) intValue];
}

//: - (void)setVerticalScrollingDirection:(NTESScrollViewDirection)verticalScrollingDirection
- (void)setVerticalScrollingDirection:(NTESScrollViewDirection)verticalScrollingDirection
{
    //: objc_setAssociatedObject(self, (void *)&verticalScrollingDirectionKey, [NSNumber numberWithInt:verticalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, (void *)&kLet_borderName, [NSNumber numberWithInt:verticalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


//: @end
@end

Byte * WindowKeyDataToCache(Byte *data) {
    int showApology = data[0];
    int harsh = data[1];
    Byte commendQuick = data[2];
    int booTop = data[3];
    if (!showApology) return data + booTop;
    for (int i = booTop; i < booTop + harsh; i++) {
        int value = data[i] + commendQuick;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[booTop + harsh] = 0;
    return data + booTop;
}

NSString *StringFromWindowKeyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WindowKeyDataToCache(data)];
}
