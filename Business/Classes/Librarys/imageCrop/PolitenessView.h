// __DEBUG__
// __CLOSE_PRINT__
//
//  Created by Ming Yang on 7/7/12.
//
//: #pragma mark ControlPointView interface
#pragma mark AttracterView interface

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FXBlurView.h"
#import "ParadigmBlur.h"

//: @interface ControlPointView : UIView {
@interface AttracterView : UIView {
    //: CGFloat red, green, blue, alpha;
    CGFloat red, green, blue, alpha;
}

//: @property (nonatomic, strong) UIColor* color;
@property (nonatomic, strong) UIColor* color;

//: @end
@end

//: #pragma mark ShadeView interface
#pragma mark ContainerImageView interface

//: @interface ShadeView : UIView {
@interface ContainerImageView : UIView {
    //: CGFloat cropBorderRed, cropBorderGreen, cropBorderBlue, cropBorderAlpha;
    CGFloat cropBorderRed, cropBorderGreen, cropBorderBlue, cropBorderAlpha;
    //: CGRect cropArea;
    CGRect cropArea;
    //: CGFloat shadeAlpha;
    CGFloat shadeAlpha;
}

//: @property (nonatomic, strong) UIColor* cropBorderColor;
@property (nonatomic, strong) UIColor* cropBorderColor;
//: @property (nonatomic) CGRect cropArea;
@property (nonatomic) CGRect cropArea;
//: @property (nonatomic) CGFloat shadeAlpha;
@property (nonatomic) CGFloat shadeAlpha;
//: @property (nonatomic, strong) UIImageView *blurredImageView;
@property (nonatomic, strong) UIImageView *blurredImageView;

//: @end
@end

//: CGRect SquareCGRectAtCenter(CGFloat centerX, CGFloat centerY, CGFloat size);
CGRect SquareCGRectAtCenter(CGFloat centerX, CGFloat centerY, CGFloat size);

//: UIView* dragView;
UIView* let_requestTitle;
//: typedef struct {
typedef struct {
    //: CGPoint dragStart;
    CGPoint dragStart;
    //: CGPoint topLeftCenter;
    CGPoint topLeftCenter;
    //: CGPoint bottomLeftCenter;
    CGPoint bottomLeftCenter;
    //: CGPoint bottomRightCenter;
    CGPoint bottomRightCenter;
    //: CGPoint topRightCenter;
    CGPoint topRightCenter;
    //: CGPoint cropAreaCenter;
    CGPoint cropAreaCenter;
//: } DragPoint;
} ChangeShowPoint;

// Used when working with multiple dragPoints
//: typedef struct {
typedef struct {
    //: DragPoint mainPoint;
    ChangeShowPoint mainPoint;
    //: DragPoint optionalPoint;
    ChangeShowPoint optionalPoint;
    //: NSUInteger lastCount;
    NSUInteger lastCount;
//: } MultiDragPoint;
} LinguisticNamePoint;

//: #pragma mark ImageCropView interface
#pragma mark PolitenessView interface

//: @interface ImageCropView : UIView {
@interface PolitenessView : UIView {
    //: UIImageView* imageView;
    UIImageView* imageView;
    //: CGRect imageFrameInView;
    CGRect imageFrameInView;
    //: CGFloat imageScale;
    CGFloat imageScale;

    //: CGFloat controlPointSize;
    CGFloat controlPointSize;
    //: ControlPointView* topLeftPoint;
    AttracterView* topLeftPoint;
    //: ControlPointView* bottomLeftPoint;
    AttracterView* bottomLeftPoint;
    //: ControlPointView* bottomRightPoint;
    AttracterView* bottomRightPoint;
    //: ControlPointView* topRightPoint;
    AttracterView* topRightPoint;
    //: NSArray *PointsArray;
    NSArray *PointsArray;
    //: UIColor* controlColor;
    UIColor* controlColor;

    //: UIView* cropAreaView;
    UIView* cropAreaView;
    //: DragPoint dragPoint;
    ChangeShowPoint dragPoint;
    //: MultiDragPoint multiDragPoint;
    LinguisticNamePoint multiDragPoint;

    //: UIView* dragViewOne;
    UIView* dragViewOne;
    //: UIView* dragViewTwo;
    UIView* dragViewTwo;
}
//: - (id)initWithFrame:(CGRect)frame blurOn:(BOOL)blurOn;
- (id)initWithInfo:(CGRect)frame with:(BOOL)blurOn;
//: - (void)setImage:(UIImage*)image;
- (void)setImage:(UIImage*)image;

//: @property (nonatomic) CGFloat controlPointSize;
@property (nonatomic) CGFloat controlPointSize;
//: @property (nonatomic, strong) UIImage* image;
@property (nonatomic, strong) UIImage* image;
//: @property (nonatomic) CGRect cropAreaInView;
@property (nonatomic) CGRect cropAreaInView;
//: @property (nonatomic) CGRect cropAreaInImage;
@property (nonatomic) CGRect cropAreaInImage;
//: @property (nonatomic, readonly) CGFloat imageScale;
@property (nonatomic, readonly) CGFloat imageScale;
//: @property (nonatomic) CGFloat maskAlpha;
@property (nonatomic) CGFloat maskAlpha;
//: @property (nonatomic, strong) UIColor* controlColor;
@property (nonatomic, strong) UIColor* controlColor;
//: @property (nonatomic, strong) ShadeView* shadeView;
@property (nonatomic, strong) ContainerImageView* shadeView;
//: @property (nonatomic) BOOL blurred;
@property (nonatomic) BOOL blurred;

//: @end
@end

//: #pragma mark ImageCropViewController interface
#pragma mark CityCenterViewController interface
//: @protocol ImageCropViewControllerDelegate <NSObject>
@protocol AtCustom <NSObject>

//: - (void)ImageCropViewControllerSuccess:(UIViewController* )controller didFinishCroppingImage:(UIImage *)croppedImage;
- (void)show:(UIViewController* )controller name:(UIImage *)croppedImage;
//: - (void)ImageCropViewControllerDidCancel:(UIViewController *)controller;
- (void)constants:(UIViewController *)controller;

//: @end
@end

//: @interface ImageCropViewController : UIViewController <UIActionSheetDelegate > {
@interface CityCenterViewController : UIViewController <UIActionSheetDelegate > {
    //: ImageCropView * cropView;
    PolitenessView * cropView;
    //: UIActionSheet * actionSheet;
    UIActionSheet * actionSheet;
}
//: @property (nonatomic, weak) id<ImageCropViewControllerDelegate> delegate;
@property (nonatomic, weak) id<AtCustom> delegate;
//: @property (nonatomic) BOOL blurredBackground;
@property (nonatomic) BOOL blurredBackground;
//: @property (nonatomic, strong) UIImage* image;
@property (nonatomic, strong) UIImage* image;
//: @property (nonatomic, strong) ImageCropView* cropView;
@property (nonatomic, strong) PolitenessView* cropView;
/**
 *  the crop area in the image
 */
//: @property (nonatomic) CGRect cropArea;
@property (nonatomic) CGRect cropArea;

//: - (id)initWithImage:(UIImage*)image;
- (id)initWithDate:(UIImage*)image;


//: @end
@end

//: @interface UIImage (fixOrientation)
@interface UIImage (MessageContainer)

//: - (UIImage *)fixOrientation;
- (UIImage *)disable;

//: @end
@end