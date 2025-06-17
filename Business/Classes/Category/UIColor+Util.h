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
+(instancetype) head:(fcolor_t)alpha center:(fcolor_t)red argumentOf:(fcolor_t)green icon:(fcolor_t)blue;

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue alpha:(ecolor_t)alpha;
+(instancetype) title:(ecolor_t)red sign:(ecolor_t)green stateIn:(ecolor_t)blue tinkle:(ecolor_t)alpha;
//: +(instancetype) colorWithIntAlpha:(ecolor_t)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) reply:(ecolor_t)alpha user:(ecolor_t)red bluishEcolor_t:(ecolor_t)green team:(ecolor_t)blue;

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue floatAlpha:(CGFloat)alpha;
+(instancetype) queryed:(ecolor_t)red pathAlpha:(ecolor_t)green value:(ecolor_t)blue preface:(CGFloat)alpha;
//: +(instancetype) colorWithFloatAlpha:(CGFloat)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) chromatic:(CGFloat)alpha refer:(ecolor_t)red file:(ecolor_t)green toEcolor_t:(ecolor_t)blue;

//: +(instancetype) colorWithInt:(color_t)color;
+(instancetype) with:(color_t)color;
//: +(instancetype) colorWithString:(NSString*)color;
+(instancetype) bubbleName:(NSString*)color;

//: +(instancetype) colorWithInt:(color_t)color floatAlpha:(CGFloat)alpha;
+(instancetype) searchion:(color_t)color margin:(CGFloat)alpha;
//: +(instancetype) colorWithString:(NSString*)color floatAlpha:(CGFloat)alpha;
+(instancetype) houseCover:(NSString*)color image:(CGFloat)alpha;

//: +(instancetype) randomColor;
+(instancetype) face;
//: +(instancetype) randomColorWithAlpha;
+(instancetype) frank;

//: +(NSString*) intToString:(color_t)intValue;
+(NSString*) name:(color_t)intValue;
//: +(color_t) stringToInt:(NSString*)stringValue;
+(color_t) background:(NSString*)stringValue;

//: -(color_t) intValue;
-(color_t) time;
//: -(NSString*) stringValue;
-(NSString*) show;


//RGB:#F5F5F5
//: + (UIColor *) colorWithHexString: (NSString *) hexString ;
+ (UIColor *) withMax: (NSString *) hexString ;
//: @end
@end