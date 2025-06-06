// __DEBUG__
// __CLOSE_PRINT__
//
//  UIColor+Util.h
//  译同行
//
//  Created by 曹宇 on 2017/7/21.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef uint32_t color_t;
typedef uint32_t color_t;
//: typedef uint8_t ecolor_t;
typedef uint8_t ecolor_t;
//: typedef CGFloat fcolor_t;
typedef CGFloat fcolor_t;
//: typedef ecolor_t* dcolor_t;
typedef ecolor_t* dcolor_t;

//: typedef UIColor* UIColorRef;
typedef UIColor* UIColorRef;
//: typedef NSNumber* NSNumberRef;
typedef NSNumber* NSNumberRef;
//: typedef NSArray* NSArrayRef;
typedef NSArray* NSArrayRef;
//: typedef NSDictionary* NSDictionaryRef;
typedef NSDictionary* NSDictionaryRef;

//: void SKCGContextSetFillColor(CGContextRef c, color_t color);
void SKCGContextSetFillColor(CGContextRef c, color_t color);
//: void SKCGContextSetStrokeColor(CGContextRef c, color_t color);
void SKCGContextSetStrokeColor(CGContextRef c, color_t color);







//: @interface UIColor (Util)
@interface UIColor (Util)

//: @property (nonatomic, assign, readonly) fcolor_t red;
@property (nonatomic, assign, readonly) fcolor_t red;
//: @property (nonatomic, assign, readonly) fcolor_t green;
@property (nonatomic, assign, readonly) fcolor_t green;
//: @property (nonatomic, assign, readonly) fcolor_t blue;
@property (nonatomic, assign, readonly) fcolor_t blue;
//: @property (nonatomic, assign, readonly) fcolor_t alpha;
@property (nonatomic, assign, readonly) fcolor_t alpha;

//: @property (nonatomic, assign, readonly) ecolor_t intRed;
@property (nonatomic, assign, readonly) ecolor_t intRed;
//: @property (nonatomic, assign, readonly) ecolor_t intGreen;
@property (nonatomic, assign, readonly) ecolor_t intGreen;
//: @property (nonatomic, assign, readonly) ecolor_t intBlue;
@property (nonatomic, assign, readonly) ecolor_t intBlue;
//: @property (nonatomic, assign, readonly) ecolor_t intAlpha;
@property (nonatomic, assign, readonly) ecolor_t intAlpha;

//: +(instancetype) colorWithAlpha:(fcolor_t)alpha red:(fcolor_t)red green:(fcolor_t)green blue:(fcolor_t)blue;
+(instancetype) with:(fcolor_t)alpha gift:(fcolor_t)red requestForFcolor_t:(fcolor_t)green state:(fcolor_t)blue;

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue alpha:(ecolor_t)alpha;
+(instancetype) container:(ecolor_t)red page:(ecolor_t)green bottom:(ecolor_t)blue net:(ecolor_t)alpha;
//: +(instancetype) colorWithIntAlpha:(ecolor_t)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) exceptNumberBlue:(ecolor_t)alpha withEcolor_t:(ecolor_t)red chromatic:(ecolor_t)green fullMoon:(ecolor_t)blue;

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue floatAlpha:(CGFloat)alpha;
+(instancetype) key:(ecolor_t)red menuEcolor_t:(ecolor_t)green bluish:(ecolor_t)blue tableAcrossAlpha:(CGFloat)alpha;
//: +(instancetype) colorWithFloatAlpha:(CGFloat)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) chromaticText:(CGFloat)alpha sort:(ecolor_t)red smart:(ecolor_t)green biteBlue:(ecolor_t)blue;

//: +(instancetype) colorWithInt:(color_t)color;
+(instancetype) read:(color_t)color;
//: +(instancetype) colorWithString:(NSString*)color;
+(instancetype) withTitle:(NSString*)color;

//: +(instancetype) colorWithInt:(color_t)color floatAlpha:(CGFloat)alpha;
+(instancetype) travelAlpha:(color_t)color indexDismiss:(CGFloat)alpha;
//: +(instancetype) colorWithString:(NSString*)color floatAlpha:(CGFloat)alpha;
+(instancetype) show:(NSString*)color anyThreadWith:(CGFloat)alpha;

//: +(instancetype) randomColor;
+(instancetype) save;
//: +(instancetype) randomColorWithAlpha;
+(instancetype) off;

//: +(NSString*) intToString:(color_t)intValue;
+(NSString*) nimLink:(color_t)intValue;
//: +(color_t) stringToInt:(NSString*)stringValue;
+(color_t) keyCount:(NSString*)stringValue;

//: -(color_t) intValue;
-(color_t) atIndex;
//: -(NSString*) stringValue;
-(NSString*) applicationWith;


//RGB:#F5F5F5
//: + (UIColor *) colorWithHexString: (NSString *) hexString ;
+ (UIColor *) isView: (NSString *) hexString ;
//: @end
@end