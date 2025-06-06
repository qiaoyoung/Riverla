// __DEBUG__
// __CLOSE_PRINT__
//
//  MouthView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/27.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactTableHeader : UIView
@interface MouthView : UIView
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @end
@end

//: @interface NTESContactTableHeaderGroup : UIView
@interface CustomView : UIView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @property (nonatomic ,strong) UIImageView *arrowImageView;
@property (nonatomic ,strong) UIImageView *arrowImageView;
//: @property (nonatomic ,assign) NSInteger section;
@property (nonatomic ,assign) NSInteger section;
//: @end
@end


//: @protocol NTESContactTableHeaderGroupDelegate <NSObject>
@protocol BlueMessage <NSObject>

//: -(void)headerClickWith:(NSInteger)section;
-(void)colorred:(NSInteger)section;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END