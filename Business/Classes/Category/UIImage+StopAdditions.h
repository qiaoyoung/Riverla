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
@interface UIImage (StopAdditions)

/*垂直翻转*/
//: - (UIImage *)flipVertical;
- (UIImage *)nameVertical;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)phone;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)myMember:(CGSize)size;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)resize:(CGFloat)width key:(CGFloat)height;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)sendLabelContent:(CGFloat)width;

/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)highContent:(CGFloat)heigh;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)to:(CGFloat)x display:(CGFloat)y recordFloat:(CGFloat)width lengthMessage:(CGFloat)height;

/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)column;

//: - (UIImage *)decoded;
- (UIImage *)name;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)barManagerPoint:(NSString *)mark team:(UIColor *)textColor add:(UIFont *)font contentPoint:(CGPoint)point;

//: - (UIImage *)addCreateTime;
- (UIImage *)limit;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)scale:(CGFloat)degrees;





//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) childOf:(NSData *)data;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)changeOverToQuantitativeRelation:(double)scale;

//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)block:(UIImage *)img touchEnable:(CGFloat)referWidth;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)past:(CGSize)targetSize;


//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)title:(UIImage *)img atPoint:(CGFloat)referSize;

//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)victualler:(UIImage *)originImage;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)image:(UIImage *)originImage;
//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)date:(UIImage *)originImage;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)sheetSession:(NSUInteger)maxLength;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)block:(UIColor *)color child:(CGSize)size;

//: @end
@end