
#import <Foundation/Foundation.h>

NSString *StringFromPutData(Byte *data);


//: Color value %@ is invalid.  It should be a hex value of the form #RBG, #ARGB, #RRGGBB, or #AARRGGBB
Byte kStr_allianceValue[] = {86, 99, 6, 222, 193, 116, 66, 66, 71, 71, 82, 82, 65, 65, 35, 32, 114, 111, 32, 44, 66, 66, 71, 71, 82, 82, 35, 32, 44, 66, 71, 82, 65, 35, 32, 44, 71, 66, 82, 35, 32, 109, 114, 111, 102, 32, 101, 104, 116, 32, 102, 111, 32, 101, 117, 108, 97, 118, 32, 120, 101, 104, 32, 97, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 116, 73, 32, 32, 46, 100, 105, 108, 97, 118, 110, 105, 32, 115, 105, 32, 64, 37, 32, 101, 117, 108, 97, 118, 32, 114, 111, 108, 111, 67, 62};


//: Invalid color value
Byte kStr_ourData[] = {7, 19, 6, 41, 147, 82, 101, 117, 108, 97, 118, 32, 114, 111, 108, 111, 99, 32, 100, 105, 108, 97, 118, 110, 73, 212};

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
+(instancetype)with:(fcolor_t)alpha gift:(fcolor_t)red requestForFcolor_t:(fcolor_t)green state:(fcolor_t)blue {
    //: return [self colorWithRed:red green:green blue:blue alpha:alpha];
    return [self colorWithRed:red green:green blue:blue alpha:alpha];
}

//: +(instancetype)colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue alpha:(ecolor_t)alpha {
+(instancetype)container:(ecolor_t)red page:(ecolor_t)green bottom:(ecolor_t)blue net:(ecolor_t)alpha {
    //: return [self colorWithFloatAlpha:((CGFloat) (alpha / 255.0)) red:red green:green blue:blue];
    return [self chromaticText:((CGFloat) (alpha / 255.0)) sort:red smart:green biteBlue:blue];
}

//: +(instancetype)colorWithIntAlpha:(ecolor_t)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue {
+(instancetype)exceptNumberBlue:(ecolor_t)alpha withEcolor_t:(ecolor_t)red chromatic:(ecolor_t)green fullMoon:(ecolor_t)blue {
    //: return [self colorWithFloatAlpha:((CGFloat) (alpha / 255.0)) red:red green:green blue:blue];
    return [self chromaticText:((CGFloat) (alpha / 255.0)) sort:red smart:green biteBlue:blue];
}

//: +(instancetype) colorWithFloatAlpha:(CGFloat)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue {
+(instancetype) chromaticText:(CGFloat)alpha sort:(ecolor_t)red smart:(ecolor_t)green biteBlue:(ecolor_t)blue {
    //: return [self colorWithRed:((CGFloat) (red / 255.0)) green:((CGFloat) (green / 255.0)) blue:((CGFloat) (blue / 255.0)) alpha:alpha];
    return [self colorWithRed:((CGFloat) (red / 255.0)) green:((CGFloat) (green / 255.0)) blue:((CGFloat) (blue / 255.0)) alpha:alpha];
}

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue floatAlpha:(CGFloat)alpha {
+(instancetype) key:(ecolor_t)red menuEcolor_t:(ecolor_t)green bluish:(ecolor_t)blue tableAcrossAlpha:(CGFloat)alpha {
    //: return [self colorWithFloatAlpha:alpha red:red green:green blue:blue];
    return [self chromaticText:alpha sort:red smart:green biteBlue:blue];
}

//: +(instancetype)colorWithInt:(color_t)color {
+(instancetype)read:(color_t)color {
    //: ecolor_t* colorRaw = (ecolor_t*) &color;
    ecolor_t* colorRaw = (ecolor_t*) &color;
    //: return [self colorWithIntAlpha:colorRaw[3] red:colorRaw[2] green:colorRaw[1] blue:colorRaw[0]];
    return [self exceptNumberBlue:colorRaw[3] withEcolor_t:colorRaw[2] chromatic:colorRaw[1] fullMoon:colorRaw[0]];
}

//: +(instancetype) randomColor {
+(instancetype) save {
    //: color_t color = arc4random() | 0xff000000;
    color_t color = arc4random() | 0xff000000;
    //: return [self colorWithInt:color];
    return [self read:color];
}
//: +(instancetype) randomColorWithAlpha {
+(instancetype) off {
    //: return [self colorWithInt:arc4random()];
    return [self read:arc4random()];
}

//format is: #ff345678
//: +(instancetype)colorWithString:(NSString *)color {
+(instancetype)withTitle:(NSString *)color {

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
    return [UIColor exceptNumberBlue:hex[0] withEcolor_t:hex[1] chromatic:hex[2] fullMoon:hex[3]];
}

//: +(instancetype) colorWithInt:(color_t)color floatAlpha:(CGFloat)alpha {
+(instancetype) travelAlpha:(color_t)color indexDismiss:(CGFloat)alpha {
    //: ecolor_t* colorRaw = (ecolor_t*) &color;
    ecolor_t* colorRaw = (ecolor_t*) &color;
    //: return [self colorWithFloatAlpha:alpha red:colorRaw[2] green:colorRaw[1] blue:colorRaw[0]];
    return [self chromaticText:alpha sort:colorRaw[2] smart:colorRaw[1] biteBlue:colorRaw[0]];
}
//: +(instancetype) colorWithString:(NSString*)color floatAlpha:(CGFloat)alpha {
+(instancetype) show:(NSString*)color anyThreadWith:(CGFloat)alpha {
    //: color_t c = [self stringToInt:color];
    color_t c = [self keyCount:color];
    //: return [self colorWithInt:c floatAlpha:alpha];
    return [self travelAlpha:c indexDismiss:alpha];
}

//: +(NSString*) intToString:(color_t)intValue {
+(NSString*) nimLink:(color_t)intValue {
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
+(color_t) keyCount:(NSString*)stringValue {
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
-(color_t)atIndex {
    //: fcolor_t red, green, blue, alpha;
    fcolor_t red, green, blue, alpha;
    //: [self getRed:&red green:&green blue:&blue alpha:&alpha];
    [self getRed:&red green:&green blue:&blue alpha:&alpha];
    //: return floatRgbaToInt(red, green, blue, alpha);
    return floatRgbaToInt(red, green, blue, alpha);
}

//: -(NSString*)stringValue {
-(NSString*)applicationWith {
    //: return [UIColor intToString:self.intValue];
    return [UIColor nimLink:self.atIndex];
}

//: + (UIColor *) colorWithHexString: (NSString *) hexString {
+ (UIColor *) isView: (NSString *) hexString {

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
            red = [self decisionMaker: colorString view: 0 erase: 1];

            //: green = [self colorComponentFrom: colorString start: 1 length: 1];
            green = [self decisionMaker: colorString view: 1 erase: 1];

            //: blue = [self colorComponentFrom: colorString start: 2 length: 1];
            blue = [self decisionMaker: colorString view: 2 erase: 1];

            //: break;
            break;

        //: case 4: 
        case 4: // #ARGB

            //: alpha = [self colorComponentFrom: colorString start: 0 length: 1];
            alpha = [self decisionMaker: colorString view: 0 erase: 1];

            //: red = [self colorComponentFrom: colorString start: 1 length: 1];
            red = [self decisionMaker: colorString view: 1 erase: 1];

            //: green = [self colorComponentFrom: colorString start: 2 length: 1];
            green = [self decisionMaker: colorString view: 2 erase: 1];

            //: blue = [self colorComponentFrom: colorString start: 3 length: 1];
            blue = [self decisionMaker: colorString view: 3 erase: 1];

            //: break;
            break;

        //: case 6: 
        case 6: // #RRGGBB

            //: alpha = 1.0f;
            alpha = 1.0f;

            //: red = [self colorComponentFrom: colorString start: 0 length: 2];
            red = [self decisionMaker: colorString view: 0 erase: 2];

            //: green = [self colorComponentFrom: colorString start: 2 length: 2];
            green = [self decisionMaker: colorString view: 2 erase: 2];

            //: blue = [self colorComponentFrom: colorString start: 4 length: 2];
            blue = [self decisionMaker: colorString view: 4 erase: 2];

            //: break;
            break;

        //: case 8: 
        case 8: // #AARRGGBB

            //: alpha = [self colorComponentFrom: colorString start: 0 length: 2];
            alpha = [self decisionMaker: colorString view: 0 erase: 2];

            //: red = [self colorComponentFrom: colorString start: 2 length: 2];
            red = [self decisionMaker: colorString view: 2 erase: 2];

            //: green = [self colorComponentFrom: colorString start: 4 length: 2];
            green = [self decisionMaker: colorString view: 4 erase: 2];

            //: blue = [self colorComponentFrom: colorString start: 6 length: 2];
            blue = [self decisionMaker: colorString view: 6 erase: 2];

            //: break;
            break;

        //: default:
        default:

            //: [NSException raise:@"Invalid color value" format: @"Color value %@ is invalid.  It should be a hex value of the form #RBG, #ARGB, #RRGGBB, or #AARRGGBB", hexString];
            [NSException raise:StringFromPutData(kStr_ourData) format: StringFromPutData(kStr_allianceValue), hexString];

            //: break;
            break;

    }

    //: return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];

}

//: + (CGFloat) colorComponentFrom: (NSString *) string start: (NSUInteger) start length: (NSUInteger) length {
+ (CGFloat) decisionMaker: (NSString *) string view: (NSUInteger) start erase: (NSUInteger) length {

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

Byte * PutDataToCache(Byte *data) {
    int insect = data[0];
    int passenger = data[1];
    int scream = data[2];
    if (!insect) return data + scream;
    for (int i = 0; i < passenger / 2; i++) {
        int begin = scream + i;
        int end = scream + passenger - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[scream + passenger] = 0;
    return data + scream;
}

NSString *StringFromPutData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PutDataToCache(data)];
}  
