//
//  FFFKitDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FFFKitDevice : NSObject

+ (FFFKitDevice *)currentDevice;

/// 语言
+ (NSString *)language;

//图片/音频推荐参数
- (CGFloat)suggestImagePixels;

- (CGFloat)compressQuality;

- (CGFloat)statusBarHeight;

@end
