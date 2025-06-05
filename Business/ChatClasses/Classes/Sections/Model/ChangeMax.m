// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeMax.m
// Notice
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMediaItem.h"
#import "ChangeMax.h"

//: @implementation FFFMediaItem
@implementation ChangeMax

//: + (FFFMediaItem *)item:(NSString *)selector
+ (ChangeMax *)show:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           that:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         from:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 tillTing:(NSString *)title
{
    //: FFFMediaItem *item = [[FFFMediaItem alloc] init];
    ChangeMax *item = [[ChangeMax alloc] init];
    //: item.selctor = NSSelectorFromString(selector);
    item.selctor = NSSelectorFromString(selector);
    //: item.normalImage = normalImage;
    item.normalImage = normalImage;
    //: item.selectedImage = selectedImage;
    item.selectedImage = selectedImage;
    //: item.title = title;
    item.title = title;
    //: return item;
    return item;
}

//: @end
@end