
#import <Foundation/Foundation.h>

NSString *StringFromSateData(Byte *data);        


//: #24E8B9
Byte kStr_whenOptionFlueContent[] = {81, 7, 32, 13, 152, 197, 11, 199, 67, 153, 107, 2, 178, 3, 18, 20, 37, 24, 34, 25, 97};


//: scan_scanline_wc
Byte kStr_recessionLengthWillData[] = {20, 16, 3, 9, 217, 106, 169, 14, 58, 112, 96, 94, 107, 92, 112, 96, 94, 107, 105, 102, 107, 98, 92, 116, 96, 118};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGScanViewConfigure.h"
#import "ScanRandomMessage.h"

//: @implementation SGScanViewConfigure
@implementation ScanRandomMessage

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
//        _isShowBorder = NO;
        //: _isShowBorder = YES;
        _isShowBorder = YES;
    }
    //: return self;
    return self;
}

//: + (instancetype)configure {
+ (instancetype)text {
    //: return [[self alloc] init];
    return [[self alloc] init];
}

//: - (NSString *)scanline {
- (NSString *)scanline {
    //: if (!_scanline) {
    if (!_scanline) {
        //: return @"scan_scanline_wc";
        return StringFromSateData(kStr_recessionLengthWillData);
    }
    //: return _scanline;
    return _scanline;
}

//: - (CGFloat)scanlineStep {
- (CGFloat)scanlineStep {
    //: if (!_scanlineStep) {
    if (!_scanlineStep) {
        //: return 3.5;
        return 3.5;
    }
    //: return _scanlineStep;
    return _scanlineStep;
}

//: - (UIColor *)color {
- (UIColor *)color {
    //: if (!_color) {
    if (!_color) {
        //: return [[UIColor blackColor] colorWithAlphaComponent:0.5];
        return [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
    //: return _color;
    return _color;
}

//: - (UIColor *)borderColor {
- (UIColor *)borderColor {
    //: if (!_borderColor) {
    if (!_borderColor) {
        //: return [UIColor whiteColor];
        return [UIColor whiteColor];
    }
    //: return _borderColor;
    return _borderColor;
}

//: - (CGFloat)borderWidth {
- (CGFloat)borderWidth {
    //: if (!_borderWidth) {
    if (!_borderWidth) {
        //: return 0.2;
        return 0.2;
    }
    //: return _borderWidth;
    return _borderWidth;
}

//: - (SGCornerLoaction)cornerLocation {
- (SGCornerLoaction)cornerLocation {
    //: if (!_cornerLocation) {
    if (!_cornerLocation) {
        //: return SGCornerLoactionDefault;
        return SGCornerLoactionDefault;
    }
    //: return _cornerLocation;
    return _cornerLocation;
}

//: - (UIColor *)cornerColor {
- (UIColor *)cornerColor {
    //: if (!_cornerColor) {
    if (!_cornerColor) {
//        _cornerColor = [UIColor greenColor];
        //: _cornerColor = [UIColor colorWithHexString:@"#24E8B9"];
        _cornerColor = [UIColor withMax:StringFromSateData(kStr_whenOptionFlueContent)];
    }
    //: return _cornerColor;
    return _cornerColor;
}

//: - (CGFloat)cornerWidth {
- (CGFloat)cornerWidth {
    //: if (!_cornerWidth) {
    if (!_cornerWidth) {
        //: return 2.0;
        return 2.0;
    }
    //: return _cornerWidth;
    return _cornerWidth;
}

//: - (CGFloat)cornerLength {
- (CGFloat)cornerLength {
    //: if (!_cornerLength) {
    if (!_cornerLength) {
//        return 20.0;
        //: return 40.0;
        return 40.0;
    }
    //: return _cornerLength;
    return _cornerLength;
}

//: @end
@end

Byte * SateDataToCache(Byte *data) {
    int revelation = data[0];
    int dancingAt = data[1];
    Byte mare = data[2];
    int secretary = data[3];
    if (!revelation) return data + secretary;
    for (int i = secretary; i < secretary + dancingAt; i++) {
        int value = data[i] + mare;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[secretary + dancingAt] = 0;
    return data + secretary;
}

NSString *StringFromSateData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SateDataToCache(data)];
}
