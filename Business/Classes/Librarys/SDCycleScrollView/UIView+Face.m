// __DEBUG__
// __CLOSE_PRINT__
//
//  UIView+Face.m
//  SDRefreshView
//
//  Created by aier on 15-2-23.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIView+SDExtension.h"
#import "UIView+Face.h"

/*
 
 *********************************************************************************
 *
 * 🌟🌟🌟 新建SDCycleScrollView交流QQ群：185534916 🌟🌟🌟
 *
 * 在您使用此自动轮播库的过程中如果出现bug请及时以以下任意一种方式联系我们，我们会及时修复bug并
 * 帮您解决问题。
 * 新浪微博:GSD_iOS
 * Email : gsdios@126.com
 * GitHub: https://github.com/gsdios
 *
 * 另（我的自动布局库SDAutoLayout）：
 *  一行代码搞定自动布局！支持Cell和Tableview高度自适应，Label和ScrollView内容自适应，致力于
 *  做最简单易用的AutoLayout库。
 * 视频教程：http://www.letv.com/ptv/vplay/24038772.html
 * 用法示例：https://github.com/gsdios/SDAutoLayout/blob/master/README.md
 * GitHub：https://github.com/gsdios/SDAutoLayout
 *********************************************************************************
 
 */

/*
 
 *********************************************************************************
 *
 * 在您使用此自动轮播库的过程中如果出现bug请及时以以下任意一种方式联系我们，我们会及时修复bug并
 * 帮您解决问题。
 * 新浪微博:GSD_iOS
 * Email : gsdios@126.com
 * GitHub: https://github.com/gsdios
 *
 * 另（我的自动布局库SDAutoLayout）：
 *  一行代码搞定自动布局！支持Cell和Tableview高度自适应，Label和ScrollView内容自适应，致力于
 *  做最简单易用的AutoLayout库。
 * 视频教程：http://www.letv.com/ptv/vplay/24038772.html
 * 用法示例：https://github.com/gsdios/SDAutoLayout/blob/master/README.md
 * GitHub：https://github.com/gsdios/SDAutoLayout
 *********************************************************************************
 
 */




//: @implementation UIView (SDExtension)
@implementation UIView (Face)

//: - (CGFloat)sd_height
- (CGFloat)sd_height
{
    //: return self.frame.size.height;
    return self.frame.size.height;
}

//: - (void)setSd_height:(CGFloat)sd_height
- (void)setSd_height:(CGFloat)sd_height
{
    //: CGRect temp = self.frame;
    CGRect temp = self.frame;
    //: temp.size.height = sd_height;
    temp.size.height = sd_height;
    //: self.frame = temp;
    self.frame = temp;
}

//: - (CGFloat)sd_width
- (CGFloat)sd_width
{
    //: return self.frame.size.width;
    return self.frame.size.width;
}

//: - (void)setSd_width:(CGFloat)sd_width
- (void)setSd_width:(CGFloat)sd_width
{
    //: CGRect temp = self.frame;
    CGRect temp = self.frame;
    //: temp.size.width = sd_width;
    temp.size.width = sd_width;
    //: self.frame = temp;
    self.frame = temp;
}


//: - (CGFloat)sd_y
- (CGFloat)sd_y
{
    //: return self.frame.origin.y;
    return self.frame.origin.y;
}

//: - (void)setSd_y:(CGFloat)sd_y
- (void)setSd_y:(CGFloat)sd_y
{
    //: CGRect temp = self.frame;
    CGRect temp = self.frame;
    //: temp.origin.y = sd_y;
    temp.origin.y = sd_y;
    //: self.frame = temp;
    self.frame = temp;
}

//: - (CGFloat)sd_x
- (CGFloat)sd_x
{
    //: return self.frame.origin.x;
    return self.frame.origin.x;
}

//: - (void)setSd_x:(CGFloat)sd_x
- (void)setSd_x:(CGFloat)sd_x
{
    //: CGRect temp = self.frame;
    CGRect temp = self.frame;
    //: temp.origin.x = sd_x;
    temp.origin.x = sd_x;
    //: self.frame = temp;
    self.frame = temp;
}



//: @end
@end