
#import <Foundation/Foundation.h>

NSString *StringFromElectData(Byte *data);


//: Color value %@ is invalid.  It should be a hex value of the form #RBG, #ARGB, #RRGGBB, or #AARRGGBB
Byte kStr_withTopName[] = {21, 99, 48, 14, 116, 218, 234, 196, 242, 112, 190, 56, 198, 141, 115, 159, 156, 159, 162, 80, 166, 145, 156, 165, 149, 80, 85, 112, 80, 153, 163, 80, 153, 158, 166, 145, 156, 153, 148, 94, 80, 80, 121, 164, 80, 163, 152, 159, 165, 156, 148, 80, 146, 149, 80, 145, 80, 152, 149, 168, 80, 166, 145, 156, 165, 149, 80, 159, 150, 80, 164, 152, 149, 80, 150, 159, 162, 157, 80, 83, 130, 114, 119, 92, 80, 83, 113, 130, 119, 114, 92, 80, 83, 130, 130, 119, 119, 114, 114, 92, 80, 159, 162, 80, 83, 113, 113, 130, 130, 119, 119, 114, 114, 78};


//: Invalid color value
Byte kStr_hungerData[] = {86, 19, 94, 12, 115, 34, 64, 206, 6, 225, 251, 65, 167, 204, 212, 191, 202, 199, 194, 126, 193, 205, 202, 205, 208, 126, 212, 191, 202, 211, 195, 93};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIColor+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/7/21.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIColor+Util.h"
#import "UIColor+Util.h"

//: static uint8_t hexCharToInt(char c) {
static uint8_t hexCharToInt(char c) {
    //: uint8_t res = 0;
    uint8_t res = 0;
    //: if (c >= '0' && c <= '9') {
    if (c >= '0' && c <= '9') {
        //: res = c - '0';
        res = c - '0';
    //: } else if (c >= 'a' && c <= 'f') {
    } else if (c >= 'a' && c <= 'f') {
        //: res = c - 'a' + 10;
        res = c - 'a' + 10;
    //: } else if (c >= 'A' && c <= 'F') {
    } else if (c >= 'A' && c <= 'F') {
        //: res = c - 'A' + 10;
        res = c - 'A' + 10;
    }
    //: return res;
    return res;
}

//: static char intToHexChar(uint8_t value) {
static char intToHexChar(uint8_t value) {
    //: char res = '0';
    char res = '0';
    //: if (value >= 0 && value <= 9) {
    if (value >= 0 && value <= 9) {
        //: res = value + '0';
        res = value + '0';
    //: } else if (value >= 10 && value <= 15) {
    } else if (value >= 10 && value <= 15) {
        //: res = value - 10 + 'a';
        res = value - 10 + 'a';
    }
    //: return res;
    return res;
}

//: static color_t floatRgbaToInt(fcolor_t red, fcolor_t green, fcolor_t blue, fcolor_t alpha) {
static color_t floatRgbaToInt(fcolor_t red, fcolor_t green, fcolor_t blue, fcolor_t alpha) {
    //: color_t res = 0;
    color_t res = 0;
    //: ecolor_t* resRaw = (uint8_t*) &res;
    ecolor_t* resRaw = (uint8_t*) &res;
    //: resRaw[3] = (((uint8_t)(((int32_t)floor(alpha * 255.0)) & 0x000000ff)));
    resRaw[3] = (((uint8_t)(((int32_t)floor(alpha * 255.0)) & 0x000000ff)));
    //: resRaw[2] = (((uint8_t)(((int32_t)floor(red * 255.0)) & 0x000000ff)));
    resRaw[2] = (((uint8_t)(((int32_t)floor(red * 255.0)) & 0x000000ff)));
    //: resRaw[1] = (((uint8_t)(((int32_t)floor(green * 255.0)) & 0x000000ff)));
    resRaw[1] = (((uint8_t)(((int32_t)floor(green * 255.0)) & 0x000000ff)));
    //: resRaw[0] = (((uint8_t)(((int32_t)floor(blue * 255.0)) & 0x000000ff)));
    resRaw[0] = (((uint8_t)(((int32_t)floor(blue * 255.0)) & 0x000000ff)));
    //: return res;
    return res;
}

//: static ecolor_t hexcharsToBit(char first, char second) {
static ecolor_t hexcharsToBit(char first, char second) {
    //: return (hexCharToInt(second) & 0x0f) + ((hexCharToInt(first) << 4) & 0xf0);
    return (hexCharToInt(second) & 0x0f) + ((hexCharToInt(first) << 4) & 0xf0);
}

//: static void bitToHexChars(ecolor_t value, char* res) {
static void bitToHexChars(ecolor_t value, char* res) {
    //: res[0] = intToHexChar((value & 0xf0) >> 4);
    res[0] = intToHexChar((value & 0xf0) >> 4);
    //: res[1] = intToHexChar(value & 0x0f);
    res[1] = intToHexChar(value & 0x0f);
}

//: void SKCGContextSetFillColor(CGContextRef c, color_t color) {
void SKCGContextSetFillColor(CGContextRef c, color_t color) {
    //: dcolor_t resRaw = ((dcolor_t)(&color));;
    dcolor_t resRaw = ((dcolor_t)(&color));;
    //: CGContextSetRGBFillColor(c, ((CGFloat) (resRaw[2] / 255.0)), ((CGFloat) (resRaw[1] / 255.0)), ((CGFloat) (resRaw[0] / 255.0)), ((CGFloat) (resRaw[3] / 255.0)));
    CGContextSetRGBFillColor(c, ((CGFloat) (resRaw[2] / 255.0)), ((CGFloat) (resRaw[1] / 255.0)), ((CGFloat) (resRaw[0] / 255.0)), ((CGFloat) (resRaw[3] / 255.0)));
}

//: void SKCGContextSetStrokeColor(CGContextRef c, color_t color) {
void SKCGContextSetStrokeColor(CGContextRef c, color_t color) {
    //: dcolor_t resRaw = ((dcolor_t)(&color));;
    dcolor_t resRaw = ((dcolor_t)(&color));;
    //: CGContextSetRGBStrokeColor(c, ((CGFloat) (resRaw[2] / 255.0)), ((CGFloat) (resRaw[1] / 255.0)), ((CGFloat) (resRaw[0] / 255.0)), ((CGFloat) (resRaw[3] / 255.0)));
    CGContextSetRGBStrokeColor(c, ((CGFloat) (resRaw[2] / 255.0)), ((CGFloat) (resRaw[1] / 255.0)), ((CGFloat) (resRaw[0] / 255.0)), ((CGFloat) (resRaw[3] / 255.0)));
}
//: @implementation UIColor (Util)
@implementation UIColor (Util)

//: -(fcolor_t)red {
-(fcolor_t)red {
    //: fcolor_t red;
    fcolor_t red;
    //: [self getRed:&red green:NULL blue:NULL alpha:NULL];
    [self getRed:&red green:NULL blue:NULL alpha:NULL];
    //: return red;
    return red;
}

//: -(fcolor_t)green {
-(fcolor_t)green {
    //: fcolor_t green;
    fcolor_t green;
    //: [self getRed:NULL green:&green blue:NULL alpha:NULL];
    [self getRed:NULL green:&green blue:NULL alpha:NULL];
    //: return green;
    return green;
}

//: -(fcolor_t)blue {
-(fcolor_t)blue {
    //: fcolor_t blue;
    fcolor_t blue;
    //: [self getRed:NULL green:NULL blue:&blue alpha:NULL];
    [self getRed:NULL green:NULL blue:&blue alpha:NULL];
    //: return blue;
    return blue;
}

//: -(fcolor_t)alpha {
-(fcolor_t)alpha {
    //: fcolor_t alpha;
    fcolor_t alpha;
    //: [self getRed:NULL green:NULL blue:NULL alpha:&alpha];
    [self getRed:NULL green:NULL blue:NULL alpha:&alpha];
    //: return alpha;
    return alpha;
}

//: -(ecolor_t)intRed {
-(ecolor_t)intRed {
    //: return (((uint8_t)(((int32_t)floor(self.red * 255.0)) & 0x000000ff)));
    return (((uint8_t)(((int32_t)floor(self.red * 255.0)) & 0x000000ff)));
}

//: -(ecolor_t)intGreen {
-(ecolor_t)intGreen {
    //: return (((uint8_t)(((int32_t)floor(self.green * 255.0)) & 0x000000ff)));
    return (((uint8_t)(((int32_t)floor(self.green * 255.0)) & 0x000000ff)));
}

//: -(ecolor_t)intBlue {
-(ecolor_t)intBlue {
    //: return (((uint8_t)(((int32_t)floor(self.blue * 255.0)) & 0x000000ff)));
    return (((uint8_t)(((int32_t)floor(self.blue * 255.0)) & 0x000000ff)));
}

//: -(ecolor_t)intAlpha {
-(ecolor_t)intAlpha {
    //: return (((uint8_t)(((int32_t)floor(self.alpha * 255.0)) & 0x000000ff)));
    return (((uint8_t)(((int32_t)floor(self.alpha * 255.0)) & 0x000000ff)));
}


//: +(instancetype)colorWithAlpha:(fcolor_t)alpha red:(fcolor_t)red green:(fcolor_t)green blue:(fcolor_t)blue {
+(instancetype)head:(fcolor_t)alpha center:(fcolor_t)red argumentOf:(fcolor_t)green icon:(fcolor_t)blue {
    //: return [self colorWithRed:red green:green blue:blue alpha:alpha];
    return [self colorWithRed:red green:green blue:blue alpha:alpha];
}

//: +(instancetype)colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue alpha:(ecolor_t)alpha {
+(instancetype)title:(ecolor_t)red sign:(ecolor_t)green stateIn:(ecolor_t)blue tinkle:(ecolor_t)alpha {
    //: return [self colorWithFloatAlpha:((CGFloat) (alpha / 255.0)) red:red green:green blue:blue];
    return [self chromatic:((CGFloat) (alpha / 255.0)) refer:red file:green toEcolor_t:blue];
}

//: +(instancetype)colorWithIntAlpha:(ecolor_t)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue {
+(instancetype)reply:(ecolor_t)alpha user:(ecolor_t)red bluishEcolor_t:(ecolor_t)green team:(ecolor_t)blue {
    //: return [self colorWithFloatAlpha:((CGFloat) (alpha / 255.0)) red:red green:green blue:blue];
    return [self chromatic:((CGFloat) (alpha / 255.0)) refer:red file:green toEcolor_t:blue];
}

//: +(instancetype) colorWithFloatAlpha:(CGFloat)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue {
+(instancetype) chromatic:(CGFloat)alpha refer:(ecolor_t)red file:(ecolor_t)green toEcolor_t:(ecolor_t)blue {
    //: return [self colorWithRed:((CGFloat) (red / 255.0)) green:((CGFloat) (green / 255.0)) blue:((CGFloat) (blue / 255.0)) alpha:alpha];
    return [self colorWithRed:((CGFloat) (red / 255.0)) green:((CGFloat) (green / 255.0)) blue:((CGFloat) (blue / 255.0)) alpha:alpha];
}

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue floatAlpha:(CGFloat)alpha {
+(instancetype) queryed:(ecolor_t)red pathAlpha:(ecolor_t)green value:(ecolor_t)blue preface:(CGFloat)alpha {
    //: return [self colorWithFloatAlpha:alpha red:red green:green blue:blue];
    return [self chromatic:alpha refer:red file:green toEcolor_t:blue];
}

//: +(instancetype)colorWithInt:(color_t)color {
+(instancetype)with:(color_t)color {
    //: ecolor_t* colorRaw = (ecolor_t*) &color;
    ecolor_t* colorRaw = (ecolor_t*) &color;
    //: return [self colorWithIntAlpha:colorRaw[3] red:colorRaw[2] green:colorRaw[1] blue:colorRaw[0]];
    return [self reply:colorRaw[3] user:colorRaw[2] bluishEcolor_t:colorRaw[1] team:colorRaw[0]];
}

//: +(instancetype) randomColor {
+(instancetype) face {
    //: color_t color = arc4random() | 0xff000000;
    color_t color = arc4random() | 0xff000000;
    //: return [self colorWithInt:color];
    return [self with:color];
}
//: +(instancetype) randomColorWithAlpha {
+(instancetype) frank {
    //: return [self colorWithInt:arc4random()];
    return [self with:arc4random()];
}

//format is: #ff345678
//: +(instancetype)colorWithString:(NSString *)color {
+(instancetype)bubbleName:(NSString *)color {

    //: if([color isEqual:[NSNull null]])
    if([color isEqual:[NSNull null]])
    {
        //: return nil;
        return nil;
    }


    //: if (color.length != 9 || [color characterAtIndex:0] != '#') {
    if (color.length != 9 || [color characterAtIndex:0] != '#') {
        //: return nil;
        return nil;
    }
    //: color = [color substringFromIndex:1];
    color = [color substringFromIndex:1];
    //: ecolor_t hex[4];
    ecolor_t hex[4];
    //: for (int i = 0; i < 4; i ++) {
    for (int i = 0; i < 4; i ++) {
        //: hex[i] = hexcharsToBit([color characterAtIndex:i<<1], [color characterAtIndex:(i<<1) + 1]);
        hex[i] = hexcharsToBit([color characterAtIndex:i<<1], [color characterAtIndex:(i<<1) + 1]);
    }
    //: return [UIColor colorWithIntAlpha:hex[0] red:hex[1] green:hex[2] blue:hex[3]];
    return [UIColor reply:hex[0] user:hex[1] bluishEcolor_t:hex[2] team:hex[3]];
}

//: +(instancetype) colorWithInt:(color_t)color floatAlpha:(CGFloat)alpha {
+(instancetype) searchion:(color_t)color margin:(CGFloat)alpha {
    //: ecolor_t* colorRaw = (ecolor_t*) &color;
    ecolor_t* colorRaw = (ecolor_t*) &color;
    //: return [self colorWithFloatAlpha:alpha red:colorRaw[2] green:colorRaw[1] blue:colorRaw[0]];
    return [self chromatic:alpha refer:colorRaw[2] file:colorRaw[1] toEcolor_t:colorRaw[0]];
}
//: +(instancetype) colorWithString:(NSString*)color floatAlpha:(CGFloat)alpha {
+(instancetype) houseCover:(NSString*)color image:(CGFloat)alpha {
    //: color_t c = [self stringToInt:color];
    color_t c = [self background:color];
    //: return [self colorWithInt:c floatAlpha:alpha];
    return [self searchion:c margin:alpha];
}

//: +(NSString*) intToString:(color_t)intValue {
+(NSString*) name:(color_t)intValue {
    //: ecolor_t* resRaw = (uint8_t*) &intValue;
    ecolor_t* resRaw = (uint8_t*) &intValue;
    //: char* buff = malloc((9 + 1) * sizeof(char));
    char* buff = malloc((9 + 1) * sizeof(char));
    //: buff[0] = '#';
    buff[0] = '#';
    //: for (int i = 0; i < 4; i ++) {
    for (int i = 0; i < 4; i ++) {
        //: bitToHexChars(resRaw[3 - i], buff + (i << 1) + 1);
        bitToHexChars(resRaw[3 - i], buff + (i << 1) + 1);
    }
    //: buff[9] = '\0';
    buff[9] = '\0';
    //: NSString* result = [NSString stringWithUTF8String:buff];
    NSString* result = [NSString stringWithUTF8String:buff];
    //: free(buff);
    free(buff);
    //: return result;
    return result;
}
//: +(color_t) stringToInt:(NSString*)stringValue {
+(color_t) background:(NSString*)stringValue {
    //: if (stringValue.length != 9 || [stringValue characterAtIndex:0] != '#') {
    if (stringValue.length != 9 || [stringValue characterAtIndex:0] != '#') {
        //: return 0;
        return 0;
    }
    //: stringValue = [stringValue substringFromIndex:1];
    stringValue = [stringValue substringFromIndex:1];
    //: ecolor_t hex[4];
    ecolor_t hex[4];
    //: for (int i = 0; i < 4; i ++) {
    for (int i = 0; i < 4; i ++) {
        //: hex[3-i] = hexcharsToBit([stringValue characterAtIndex:i<<1], [stringValue characterAtIndex:(i<<1) + 1]);
        hex[3-i] = hexcharsToBit([stringValue characterAtIndex:i<<1], [stringValue characterAtIndex:(i<<1) + 1]);
    }
    //: return *((color_t*)hex);
    return *((color_t*)hex);
}

//: -(color_t)intValue {
-(color_t)time {
    //: fcolor_t red, green, blue, alpha;
    fcolor_t red, green, blue, alpha;
    //: [self getRed:&red green:&green blue:&blue alpha:&alpha];
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    //: return floatRgbaToInt(red, green, blue, alpha);
    return floatRgbaToInt(red, green, blue, alpha);
}

//: -(NSString*)stringValue {
-(NSString*)show {
    //: return [UIColor intToString:self.intValue];
    return [UIColor name:self.time];
}

//: + (UIColor *) colorWithHexString: (NSString *) hexString {
+ (UIColor *) withMax: (NSString *) hexString {

    //: NSString *colorString = [[hexString stringByReplacingOccurrencesOfString: @"#"withString: @""] uppercaseString];
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString: @"#"withString: @""] uppercaseString];

    //: CGFloat alpha, red, blue, green;
    CGFloat alpha, red, blue, green;

    //: switch ([colorString length]) {
    switch ([colorString length]) {

        //: case 3: 
        case 3: // #RGB

            //: alpha = 1.0f;
            alpha = 1.0f;

            //: red = [self colorComponentFrom: colorString start: 0 length: 1];
            red = [self segment: colorString pressed: 0 startBlue: 1];

            //: green = [self colorComponentFrom: colorString start: 1 length: 1];
            green = [self segment: colorString pressed: 1 startBlue: 1];

            //: blue = [self colorComponentFrom: colorString start: 2 length: 1];
            blue = [self segment: colorString pressed: 2 startBlue: 1];

            //: break;
            break;

        //: case 4: 
        case 4: // #ARGB

            //: alpha = [self colorComponentFrom: colorString start: 0 length: 1];
            alpha = [self segment: colorString pressed: 0 startBlue: 1];

            //: red = [self colorComponentFrom: colorString start: 1 length: 1];
            red = [self segment: colorString pressed: 1 startBlue: 1];

            //: green = [self colorComponentFrom: colorString start: 2 length: 1];
            green = [self segment: colorString pressed: 2 startBlue: 1];

            //: blue = [self colorComponentFrom: colorString start: 3 length: 1];
            blue = [self segment: colorString pressed: 3 startBlue: 1];

            //: break;
            break;

        //: case 6: 
        case 6: // #RRGGBB

            //: alpha = 1.0f;
            alpha = 1.0f;

            //: red = [self colorComponentFrom: colorString start: 0 length: 2];
            red = [self segment: colorString pressed: 0 startBlue: 2];

            //: green = [self colorComponentFrom: colorString start: 2 length: 2];
            green = [self segment: colorString pressed: 2 startBlue: 2];

            //: blue = [self colorComponentFrom: colorString start: 4 length: 2];
            blue = [self segment: colorString pressed: 4 startBlue: 2];

            //: break;
            break;

        //: case 8: 
        case 8: // #AARRGGBB

            //: alpha = [self colorComponentFrom: colorString start: 0 length: 2];
            alpha = [self segment: colorString pressed: 0 startBlue: 2];

            //: red = [self colorComponentFrom: colorString start: 2 length: 2];
            red = [self segment: colorString pressed: 2 startBlue: 2];

            //: green = [self colorComponentFrom: colorString start: 4 length: 2];
            green = [self segment: colorString pressed: 4 startBlue: 2];

            //: blue = [self colorComponentFrom: colorString start: 6 length: 2];
            blue = [self segment: colorString pressed: 6 startBlue: 2];

            //: break;
            break;

        //: default:
        default:

            //: [NSException raise:@"Invalid color value" format: @"Color value %@ is invalid.  It should be a hex value of the form #RBG, #ARGB, #RRGGBB, or #AARRGGBB", hexString];
            [NSException raise:StringFromElectData(kStr_hungerData) format: StringFromElectData(kStr_withTopName), hexString];

            //: break;
            break;

    }

    //: return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];

}

//: + (CGFloat) colorComponentFrom: (NSString *) string start: (NSUInteger) start length: (NSUInteger) length {
+ (CGFloat) segment: (NSString *) string pressed: (NSUInteger) start startBlue: (NSUInteger) length {

    //: NSString *substring = [string substringWithRange: NSMakeRange(start, length)];
    NSString *substring = [string substringWithRange: NSMakeRange(start, length)];

    //: NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];

    //: unsigned hexComponent;
    unsigned hexComponent;

    //: [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];

    //: return hexComponent / 255.0;
    return hexComponent / 255.0;

}

//: @end
@end

Byte * ElectDataToCache(Byte *data) {
    int leader = data[0];
    int ingredientAt = data[1];
    Byte huge = data[2];
    int controlDate = data[3];
    if (!leader) return data + controlDate;
    for (int i = controlDate; i < controlDate + ingredientAt; i++) {
        int value = data[i] - huge;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[controlDate + ingredientAt] = 0;
    return data + controlDate;
}

NSString *StringFromElectData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ElectDataToCache(data)];
}
