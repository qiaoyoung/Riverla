// __DEBUG__
// __CLOSE_PRINT__
//
//  UIButton+NoticeImage.m
//  SystemPreferenceDemo
//
//  Created by moyekong on 12/28/15.
//  Copyright © 2015 wiwide. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIButton+ImageTitleSpacing.h"
#import "UIButton+NoticeImage.h"

//: @implementation UIButton (ImageTitleSpacing)
@implementation UIButton (NoticeImage)

//: - (void)layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyle)style
- (void)barBackground:(MKButtonEdgeInsetsStyle)style
                        //: imageTitleSpace:(CGFloat)space
                        by:(CGFloat)space
{
//    self.backgroundColor = [UIColor cyanColor];

    /**
     *  前置知识点：titleEdgeInsets是title相对于其上下左右的inset，跟tableView的contentInset是类似的，
     *  如果只有title，那它上下左右都是相对于button的，image也是一样；
     *  如果同时有image和label，那这时候image的上左下是相对于button，右边是相对于label的；title的上右下是相对于button，左边是相对于image的。
     */


    // 1. 得到imageView和titleLabel的宽、高
    //: CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageWith = self.imageView.frame.size.width;
    //: CGFloat imageHeight = self.imageView.frame.size.height;
    CGFloat imageHeight = self.imageView.frame.size.height;

    //: CGFloat labelWidth = 0.0;
    CGFloat labelWidth = 0.0;
    //: CGFloat labelHeight = 0.0;
    CGFloat labelHeight = 0.0;
    //: if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        // 由于iOS8中titleLabel的size为0，用下面的这种设置
        //: labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        //: labelHeight = self.titleLabel.intrinsicContentSize.height;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    //: } else {
    } else {
        //: labelWidth = self.titleLabel.frame.size.width;
        labelWidth = self.titleLabel.frame.size.width;
        //: labelHeight = self.titleLabel.frame.size.height;
        labelHeight = self.titleLabel.frame.size.height;
    }

    // 2. 声明全局的imageEdgeInsets和labelEdgeInsets
    //: UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    //: UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;

    // 3. 根据style和space得到imageEdgeInsets和labelEdgeInsets的值
    //: switch (style) {
    switch (style) {
        //: case MKButtonEdgeInsetsStyleTop:
        case MKButtonEdgeInsetsStyleTop:
        {
            //: imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
            //: labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
        }
            //: break;
            break;
        //: case MKButtonEdgeInsetsStyleLeft:
        case MKButtonEdgeInsetsStyleLeft:
        {
            //: imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            //: labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
        }
            //: break;
            break;
        //: case MKButtonEdgeInsetsStyleBottom:
        case MKButtonEdgeInsetsStyleBottom:
        {
            //: imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
            //: labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
        }
            //: break;
            break;
        //: case MKButtonEdgeInsetsStyleRight:
        case MKButtonEdgeInsetsStyleRight:
        {
            //: imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
            //: labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

    // 4. 赋值
    //: self.titleEdgeInsets = labelEdgeInsets;
    self.titleEdgeInsets = labelEdgeInsets;
    //: self.imageEdgeInsets = imageEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}

//: @end
@end