// __DEBUG__
// __CLOSE_PRINT__
//
//  TransformReusableView.h
//  PhaseAngleView
//
//  Created by aier on 15-3-22.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

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





//: @interface SDCollectionViewCell : UICollectionViewCell
@interface TransformReusableView : UICollectionViewCell

//: @property (weak, nonatomic) UIImageView *imageView;
@property (weak, nonatomic) UIImageView *imageView;
//: @property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *title;

//: @property (nonatomic, strong) UIColor *titleLabelTextColor;
@property (nonatomic, strong) UIColor *titleLabelTextColor;
//: @property (nonatomic, strong) UIFont *titleLabelTextFont;
@property (nonatomic, strong) UIFont *titleLabelTextFont;
//: @property (nonatomic, strong) UIColor *titleLabelBackgroundColor;
@property (nonatomic, strong) UIColor *titleLabelBackgroundColor;
//: @property (nonatomic, assign) CGFloat titleLabelHeight;
@property (nonatomic, assign) CGFloat titleLabelHeight;

//: @property (nonatomic, assign) BOOL hasConfigured;
@property (nonatomic, assign) BOOL hasConfigured;

//: @property (nonatomic, assign) BOOL showGradient;
@property (nonatomic, assign) BOOL showGradient;


//: @end
@end