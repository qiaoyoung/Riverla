// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+KIImage.h
//  Kitalker
//
//  Created by 杨 烽 on 12-8-3.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (KIAdditions)
@interface UIImage (VideoAdditions)

/*垂直翻转*/
//: - (UIImage *)flipVertical;
- (UIImage *)beyondEmpty;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)manager;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)removeShow:(CGSize)size;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)rubric:(CGFloat)width rangeCan:(CGFloat)height;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)barWith:(CGFloat)width;

/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)counteract:(CGFloat)heigh;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)build:(CGFloat)x after:(CGFloat)y record:(CGFloat)width custom:(CGFloat)height;

/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)disable;

//: - (UIImage *)decoded;
- (UIImage *)input;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)container:(NSString *)mark object:(UIColor *)textColor ditheredColour_strong:(UIFont *)font mark:(CGPoint)point;

//: - (UIImage *)addCreateTime;
- (UIImage *)storage;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)darkGreenBubble:(CGFloat)degrees;





//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) edit:(NSData *)data;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)metricateScale:(double)scale;

//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)extreme:(UIImage *)img bar:(CGFloat)referWidth;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)remove:(CGSize)targetSize;


//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)somebodySize:(UIImage *)img record:(CGFloat)referSize;

//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)of:(UIImage *)originImage;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)auditoryImage:(UIImage *)originImage;
//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)disableInputImage:(UIImage *)originImage;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)recount:(NSUInteger)maxLength;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)imageStatusContent:(UIColor *)color addBy:(CGSize)size;

//: @end
@end