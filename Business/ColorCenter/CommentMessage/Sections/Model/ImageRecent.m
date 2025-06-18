// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageRecent.m
// Afterwards
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMediaItem.h"
#import "ImageRecent.h"

//: @implementation FFFMediaItem
@implementation ImageRecent

//: + (FFFMediaItem *)item:(NSString *)selector
+ (ImageRecent *)bar:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           at:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         provider:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 share:(NSString *)title
{
    //: FFFMediaItem *item = [[FFFMediaItem alloc] init];
    ImageRecent *item = [[ImageRecent alloc] init];
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