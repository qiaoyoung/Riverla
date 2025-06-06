// __DEBUG__
// __CLOSE_PRINT__
//
//  PictureControl.h
//  PictureControl
//
//  Created by Tanguy Aladenise on 2015-01-21.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol TAPageControlDelegate;
@protocol PresideHouse;


//: @interface TAPageControl : UIControl
@interface PictureControl : UIControl


/**
 * Dot view customization properties
 */

/**
 *  The Class of your custom UIView, make sure to respect the AbstractWithView class.
 */
//: @property (nonatomic) Class dotViewClass;
@property (nonatomic) Class dotViewClass;


/**
 *  UIImage to represent a dot.
 */
//: @property (nonatomic) UIImage *dotImage;
@property (nonatomic) UIImage *dotImage;


/**
 *  UIImage to represent current page dot.
 */
//: @property (nonatomic) UIImage *currentDotImage;
@property (nonatomic) UIImage *currentDotImage;


/**
 *  Dot size for dot views. Default is 8 by 8.
 */
//: @property (nonatomic) CGSize dotSize;
@property (nonatomic) CGSize dotSize;


//: @property (nonatomic, strong) UIColor *dotColor;
@property (nonatomic, strong) UIColor *dotColor;

/**
 *  Spacing between two dot views. Default is 8.
 */
//: @property (nonatomic) NSInteger spacingBetweenDots;
@property (nonatomic) NSInteger spacingBetweenDots;


/**
 * Page control setup properties
 */


/**
 * Delegate for PictureControl
 */
//: @property(nonatomic,assign) id<TAPageControlDelegate> delegate;
@property(nonatomic,assign) id<PresideHouse> delegate;


/**
 *  Number of pages for control. Default is 0.
 */
//: @property (nonatomic) NSInteger numberOfPages;
@property (nonatomic) NSInteger numberOfPages;


/**
 *  Current page on which control is active. Default is 0.
 */
//: @property (nonatomic) NSInteger currentPage;
@property (nonatomic) NSInteger currentPage;


/**
 *  Hide the control if there is only one page. Default is NO.
 */
//: @property (nonatomic) BOOL hidesForSinglePage;
@property (nonatomic) BOOL hidesForSinglePage;


/**
 *  Let the control know if should grow bigger by keeping center, or just get longer (right side expanding). By default YES.
 */
//: @property (nonatomic) BOOL shouldResizeFromCenter;
@property (nonatomic) BOOL shouldResizeFromCenter;


/**
 *  Return the minimum size required to display control properly for the given page count.
 *
 *  @param pageCount Number of dots that will require display
 *
 *  @return The CGSize being the minimum size required.
 */
//: - (CGSize)sizeForNumberOfPages:(NSInteger)pageCount;
- (CGSize)isOf:(NSInteger)pageCount;


//: @end
@end


//: @protocol TAPageControlDelegate <NSObject>
@protocol PresideHouse <NSObject>

//: @optional
@optional
//: - (void)TAPageControl:(TAPageControl *)pageControl didSelectPageAtIndex:(NSInteger)index;
- (void)holderOf:(PictureControl *)pageControl enable:(NSInteger)index;

//: @end
@end