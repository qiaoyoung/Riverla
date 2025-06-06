
#import <Foundation/Foundation.h>

NSString *StringFromTingStormData(Byte *data);        


//: Clear_color_image
Byte kStr_crossName[] = {89, 17, 18, 10, 106, 21, 237, 102, 95, 137, 49, 90, 83, 79, 96, 77, 81, 93, 90, 93, 96, 77, 87, 91, 79, 85, 83, 176};

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
#import "UIImage+Background.h"

//: @interface UIColorCache : NSObject
@interface MarginShould : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation MarginShould
//: + (instancetype)sharedCache
+ (instancetype)shared
{
    //: static UIColorCache *instance = nil;
    static MarginShould *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[MarginShould alloc] init];
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
- (UIImage *)toImage:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)confirm:(UIImage *)image
        //: forColor:(UIColor *)color
        disable:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (Background)

//: + (UIImage *)clearColorImage {
+ (UIImage *)duringInputCell {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:StringFromTingStormData(kStr_crossName)];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)textDown:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[MarginShould shared] toImage:color];
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
        [[MarginShould shared] confirm:image
                                    //: forColor:color];
                                    disable:color];
    }
    //: return image;
    return image;
}


//: @end
@end

Byte * TingStormDataToCache(Byte *data) {
    int stereotype = data[0];
    int valuableTwinBind = data[1];
    Byte diabetesCommendation = data[2];
    int unemployment = data[3];
    if (!stereotype) return data + unemployment;
    for (int i = unemployment; i < unemployment + valuableTwinBind; i++) {
        int value = data[i] + diabetesCommendation;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[unemployment + valuableTwinBind] = 0;
    return data + unemployment;
}

NSString *StringFromTingStormData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TingStormDataToCache(data)];
}
