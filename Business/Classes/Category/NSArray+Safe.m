
#import <Foundation/Foundation.h>

NSString *StringFromRepresentData(Byte *data);


//: __NSArray0
Byte kStr_onMumName[] = {98, 10, 26, 4, 121, 121, 104, 109, 91, 140, 140, 123, 147, 74, 204};


//: __NSArrayM
Byte kStr_involvedValue[] = {13, 10, 33, 11, 55, 26, 219, 131, 37, 28, 188, 128, 128, 111, 116, 98, 147, 147, 130, 154, 110, 247};


//: __NSArrayI
Byte kStr_heTitle[] = {47, 10, 81, 14, 53, 133, 144, 154, 202, 82, 131, 240, 90, 90, 176, 176, 159, 164, 146, 195, 195, 178, 202, 154, 71};


//: __NSPlaceholderArray
Byte kStr_paintText[] = {1, 20, 84, 13, 33, 100, 212, 126, 218, 165, 216, 91, 250, 179, 179, 162, 167, 164, 192, 181, 183, 185, 188, 195, 192, 184, 185, 198, 149, 198, 198, 181, 205, 91};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSArray+Safe.m
//  BustVideo
//
//  Created by jiangenhao on 2017/10/27.
//  Copyright © 2017年 360Video. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSArray+Safe.h"
#import "NSArray+Safe.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "NSMutableDictionary+Safe.h"
#import "NSMutableDictionary+Safe.h"

//: static void swizzle(Class class, SEL originalSEL, SEL newSEL)
static void swizzle(Class class, SEL originalSEL, SEL newSEL)
{
    //: Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    //: Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    //: method_exchangeImplementations(originalMethod, swizzledMethod);
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

//: @implementation NSArray (Safe)
@implementation NSArray (Safe)

//: + (void)initialize
+ (void)initialize
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class NSArrayM = NSClassFromString(@"__NSArrayM");
        Class NSArrayM = NSClassFromString(StringFromRepresentData(kStr_involvedValue));
        //: swizzle(NSArrayM, @selector(objectAtIndex:), @selector(objectAtSafeIndex_M:));
        swizzle(NSArrayM, @selector(objectAtIndex:), @selector(safetyMargin:));
        //: swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_M:));
        swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(targetIn:));
        //: swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(insertObject:atIndex_M:));
        swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(model:tingColor:));

        //: Class NSArrayI = NSClassFromString(@"__NSArrayI");
        Class NSArrayI = NSClassFromString(StringFromRepresentData(kStr_heTitle));
        //: swizzle(NSArrayI, @selector(objectAtIndex:), @selector(objectAtSafeIndex_I:));
        swizzle(NSArrayI, @selector(objectAtIndex:), @selector(parented:));
        //: swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_I:));
        swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(titlePin:));

        //: Class NSArray0 = NSClassFromString(@"__NSArray0");
        Class NSArray0 = NSClassFromString(StringFromRepresentData(kStr_onMumName));
        //: swizzle(NSArray0, @selector(objectAtIndex:), @selector(objectAtSafeIndex_0:));
        swizzle(NSArray0, @selector(objectAtIndex:), @selector(languages:));
        //: swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_0:));
        swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(letterred:));

        //: Class NSPlaceholderArray = NSClassFromString(@"__NSPlaceholderArray");
        Class NSPlaceholderArray = NSClassFromString(StringFromRepresentData(kStr_paintText));
        //: swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithPlaceholderObjectsSafely:count:));
        swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithAlongView:quantity:));
    //: });
    });
}

//: - (id)objectAtSafeIndex_M:(NSUInteger)index
- (id)safetyMargin:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_M:index];
    return [self safetyMargin:index];
}

//: - (id)objectAtSafeIndex_I:(NSUInteger)index
- (id)parented:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_I:index];
    return [self parented:index];
}


//: - (id)objectAtIndexedSubscript_M:(NSUInteger)index
- (id)targetIn:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_M:index];
    return [self targetIn:index];
}

//: - (id)objectAtIndexedSubscript_I:(NSUInteger)index
- (id)titlePin:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_I:index];
    return [self titlePin:index];
}

//: - (id)objectAtSafeIndex_0:(NSUInteger)index
- (id)languages:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_0:index];
    return [self languages:index];
}

//: - (id)objectAtIndexedSubscript_0:(NSUInteger)index
- (id)letterred:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_0:index];
    return [self letterred:index];
}

//: - (instancetype)initWithPlaceholderObjectsSafely:(id _Nonnull const [])objects count:(NSUInteger)count
- (instancetype)initWithAlongView:(id _Nonnull const [])objects quantity:(NSUInteger)count
{
    //: id objs[count];
    id objs[count];
    //: if (nil != objects) {
    if (nil != objects) {
        //: NSUInteger realCount = count;
        NSUInteger realCount = count;
        //: for (NSUInteger i = 0, current = 0; i < count; ++i) {
        for (NSUInteger i = 0, current = 0; i < count; ++i) {
            //: if (nil != objects[i]) {
            if (nil != objects[i]) {
                //: objs[current++] = objects[i];
                objs[current++] = objects[i];
            //: } else {
            } else {
                //: --realCount;
                --realCount;
            }
        }

        //: if (realCount < count) {
        if (realCount < count) {
            //: count = realCount;
            count = realCount;
            //: objects = objs;
            objects = objs;
        }
    //: } else {
    } else {
        //: count = 0;
        count = 0;
    }

    //: return [self initWithPlaceholderObjectsSafely:objects count:count];
    return [self initWithAlongView:objects quantity:count];
}

//: - (NSArray *)arrayByReplacingNullsWithBlanks;
- (NSArray *)replacing;
{
    //: NSMutableArray *replaced = [self mutableCopy];
    NSMutableArray *replaced = [self mutableCopy];
    //: const id null = [NSNull null];
    const id null = [NSNull null];
    //: const NSString *blank = @"";
    const NSString *blank = @"";
    //: for (int idx = 0; idx < [replaced count]; idx++) {
    for (int idx = 0; idx < [replaced count]; idx++) {
        //: id object = [replaced objectAtIndex:idx];
        id object = [replaced objectAtIndex:idx];
        //: if (object == null) {
        if (object == null) {
            //: [replaced replaceObjectAtIndex:idx withObject:blank];
            [replaced replaceObjectAtIndex:idx withObject:blank];
        //: } else if ([object isKindOfClass:[NSDictionary class]]) {
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object streetSmart]];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object replacing]];
        }
    }
    //: return replaced;
    return replaced;
}


//: - (void)insertObject:(id)anObject atIndex_M:(NSUInteger)index {
- (void)model:(id)anObject tingColor:(NSUInteger)index {

    //: if(!anObject || index > self.count) return;
    if(!anObject || index > self.count) return;
    //: [self insertObject:anObject atIndex_M:index];
    [self model:anObject tingColor:index];
}

//: - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    //: NSMutableString *mStr = [NSMutableString string];
    NSMutableString *mStr = [NSMutableString string];
    //: NSMutableString *tab = [NSMutableString stringWithString:@""];
    NSMutableString *tab = [NSMutableString stringWithString:@""];
    //: for (int i = 0; i < level; i++) {
    for (int i = 0; i < level; i++) {
        //: [tab appendString:@"\t"];
        [tab appendString:@"\t"];
    }
    //: [mStr appendString:@"(\n"];
    [mStr appendString:@"(\n"];
    //: for (int i = 0; i < self.count; i++) {
    for (int i = 0; i < self.count; i++) {
         //: NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
         NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
        //: id value = self[i];
        id value = self[i];
        //: if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
        if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
        //: } else {
        } else {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
        }
    }
    //: [mStr appendFormat:@"%@)",tab];
    [mStr appendFormat:@"%@)",tab];
    //: return mStr;
    return mStr;
}

//: @end
@end

Byte * RepresentDataToCache(Byte *data) {
    int economicCondition = data[0];
    int restorecy = data[1];
    Byte vast = data[2];
    int documentary = data[3];
    if (!economicCondition) return data + documentary;
    for (int i = documentary; i < documentary + restorecy; i++) {
        int value = data[i] - vast;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[documentary + restorecy] = 0;
    return data + documentary;
}

NSString *StringFromRepresentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RepresentDataToCache(data)];
}
