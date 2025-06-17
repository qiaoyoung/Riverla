
#import <Foundation/Foundation.h>
typedef struct {
    Byte goop;
    Byte *pharmacy;
    unsigned int fixing;
    bool fleshNote;
} BooData;

NSString *StringFromBooData(BooData *data);


//: Clear_color_image
BooData kStr_ernTitle = (BooData){114, (Byte []){49, 30, 23, 19, 0, 45, 17, 29, 30, 29, 0, 45, 27, 31, 19, 21, 23, 228}, 17, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Color.m
//  yixin_iphone
//
//  Created by Xuhui on 14-3-17.
//  Copyright (c) 2014年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "UIImage+NTESColor.h"
#import "UIImage+Streetwise.h"

//: @interface UIColorCache : NSObject
@interface NameThanCache : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation NameThanCache
//: + (instancetype)sharedCache
+ (instancetype)searched
{
    //: static UIColorCache *instance = nil;
    static NameThanCache *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[NameThanCache alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _colorImageCache = [[NSCache alloc] init];
        _colorImageCache = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (UIImage *)image:(UIColor *)color
- (UIImage *)beyondTeam:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)pull:(UIImage *)image
        //: forColor:(UIColor *)color
        text:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (Streetwise)

//: + (UIImage *)clearColorImage {
+ (UIImage *)bottom {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:StringFromBooData(&kStr_ernTitle)];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)mainStyle:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[NameThanCache searched] beyondTeam:color];
    //: if (image == nil)
    if (image == nil)
    {
        //: CGFloat alphaChannel;
        CGFloat alphaChannel;
        //: [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        //: BOOL opaqueImage = (alphaChannel == 1.0);
        BOOL opaqueImage = (alphaChannel == 1.0);
        //: CGRect rect = CGRectMake(0, 0, 1, 1);
        CGRect rect = CGRectMake(0, 0, 1, 1);
        //: UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        //: [color setFill];
        [color setFill];
        //: UIRectFill(rect);
        UIRectFill(rect);
        //: image = UIGraphicsGetImageFromCurrentImageContext();
        image = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: [[UIColorCache sharedCache] setImage:image
        [[NameThanCache searched] pull:image
                                    //: forColor:color];
                                    text:color];
    }
    //: return image;
    return image;
}


//: @end
@end

Byte *BooDataToByte(BooData *data) {
    if (data->fleshNote) return data->pharmacy;
    for (int i = 0; i < data->fixing; i++) {
        data->pharmacy[i] ^= data->goop;
    }
    data->pharmacy[data->fixing] = 0;
    data->fleshNote = true;
    return data->pharmacy;
}

NSString *StringFromBooData(BooData *data) {
    return [NSString stringWithUTF8String:(char *)BooDataToByte(data)];
}
