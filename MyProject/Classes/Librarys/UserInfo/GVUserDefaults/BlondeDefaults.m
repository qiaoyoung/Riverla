
#import <Foundation/Foundation.h>

NSString *StringFromCommendationData(Byte *data);


//: setu
Byte kStr_insertData[] = {74, 4, 57, 6, 222, 50, 172, 158, 173, 174, 15};


//: Unsupported type of property \"%s\" in class %@
Byte kStr_leapPutAndTitle[] = {13, 45, 70, 6, 84, 177, 155, 180, 185, 187, 182, 182, 181, 184, 186, 171, 170, 102, 186, 191, 182, 171, 102, 181, 172, 102, 182, 184, 181, 182, 171, 184, 186, 191, 102, 104, 107, 185, 104, 102, 175, 180, 102, 169, 178, 167, 185, 185, 102, 107, 134, 54};


//: %@pDefaults
Byte kStr_prisonName[] = {14, 11, 3, 14, 133, 164, 87, 70, 203, 102, 139, 5, 185, 77, 40, 67, 115, 71, 104, 105, 100, 120, 111, 119, 118, 8};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlondeDefaults.m
//  BlondeDefaults
//
//  Created by Kevin Renskers on 18-12-12.
//  Copyright (c) 2012 Gangverk. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults.h"
#import "BlondeDefaults.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @interface NIMUserDefaults ()
@interface BlondeDefaults ()
//: @property (strong, nonatomic) NSMutableDictionary *mapping;
@property (strong, nonatomic) NSMutableDictionary *mapping;
//: @property (strong, nonatomic) NSUserDefaults *userDefaults;
@property (strong, nonatomic) NSUserDefaults *userDefaults;
//: @end
@end

//: @implementation NIMUserDefaults
@implementation BlondeDefaults

//: enum TypeEncodings {
enum TypeEncodings {
    //: Char = 'c',
    Char = 'c',
    //: Bool = 'B',
    Bool = 'B',
    //: Short = 's',
    Short = 's',
    //: Int = 'i',
    Int = 'i',
    //: Long = 'l',
    Long = 'l',
    //: LongLong = 'q',
    LongLong = 'q',
    //: UnsignedChar = 'C',
    UnsignedChar = 'C',
    //: UnsignedShort = 'S',
    UnsignedShort = 'S',
    //: UnsignedInt = 'I',
    UnsignedInt = 'I',
    //: UnsignedLong = 'L',
    UnsignedLong = 'L',
    //: UnsignedLongLong = 'Q',
    UnsignedLongLong = 'Q',
    //: Float = 'f',
    Float = 'f',
    //: Double = 'd',
    Double = 'd',
    //: Object = '@'
    Object = '@'
//: };
};

//: - (NSUserDefaults *)userDefaults {
- (NSUserDefaults *)userDefaults {
    //: if (!_userDefaults) {
    if (!_userDefaults) {
        //: _userDefaults = [NSUserDefaults standardUserDefaults];
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }

    //: return _userDefaults;
    return _userDefaults;
}

//: - (NSString *)defaultsKeyForPropertyNamed:(char const *)propertyName {
- (NSString *)sizeMessage:(char const *)propertyName {
    //: NSString *key = [NSString stringWithFormat:@"%s", propertyName];
    NSString *key = [NSString stringWithFormat:@"%s", propertyName];
    //: return [self _transformKey:key];
    return [self selectedText:key];
}

//: - (NSString *)defaultsKeyForSelector:(SEL)selector {
- (NSString *)containerTo:(SEL)selector {
    //: return [self.mapping objectForKey:NSStringFromSelector(selector)];
    return [self.mapping objectForKey:NSStringFromSelector(selector)];
}

//: static long long longLongGetter(NIMUserDefaults *self, SEL _cmd) {
static long long longLongGetter(BlondeDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: return [[self.userDefaults objectForKey:key] longLongValue];
    return [[self.userDefaults objectForKey:key] longLongValue];
}

//: static void longLongSetter(NIMUserDefaults *self, SEL _cmd, long long value) {
static void longLongSetter(BlondeDefaults *self, SEL _cmd, long long value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: NSNumber *object = [NSNumber numberWithLongLong:value];
    NSNumber *object = [NSNumber numberWithLongLong:value];
    //: [self.userDefaults setObject:object forKey:key];
    [self.userDefaults setObject:object forKey:key];
}

//: static BOOL boolGetter(NIMUserDefaults *self, SEL _cmd) {
static BOOL boolGetter(BlondeDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: return [self.userDefaults boolForKey:key];
    return [self.userDefaults boolForKey:key];
}

//: static void boolSetter(NIMUserDefaults *self, SEL _cmd, BOOL value) {
static void boolSetter(BlondeDefaults *self, SEL _cmd, BOOL value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: [self.userDefaults setBool:value forKey:key];
    [self.userDefaults setBool:value forKey:key];
}

//: static int integerGetter(NIMUserDefaults *self, SEL _cmd) {
static int integerGetter(BlondeDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: return (int)[self.userDefaults integerForKey:key];
    return (int)[self.userDefaults integerForKey:key];
}

//: static void integerSetter(NIMUserDefaults *self, SEL _cmd, int value) {
static void integerSetter(BlondeDefaults *self, SEL _cmd, int value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: [self.userDefaults setInteger:value forKey:key];
    [self.userDefaults setInteger:value forKey:key];
}

//: static float floatGetter(NIMUserDefaults *self, SEL _cmd) {
static float floatGetter(BlondeDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: return [self.userDefaults floatForKey:key];
    return [self.userDefaults floatForKey:key];
}

//: static void floatSetter(NIMUserDefaults *self, SEL _cmd, float value) {
static void floatSetter(BlondeDefaults *self, SEL _cmd, float value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: [self.userDefaults setFloat:value forKey:key];
    [self.userDefaults setFloat:value forKey:key];
}

//: static double doubleGetter(NIMUserDefaults *self, SEL _cmd) {
static double doubleGetter(BlondeDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: return [self.userDefaults doubleForKey:key];
    return [self.userDefaults doubleForKey:key];
}

//: static void doubleSetter(NIMUserDefaults *self, SEL _cmd, double value) {
static void doubleSetter(BlondeDefaults *self, SEL _cmd, double value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: [self.userDefaults setDouble:value forKey:key];
    [self.userDefaults setDouble:value forKey:key];
}

//: static id objectGetter(NIMUserDefaults *self, SEL _cmd) {
static id objectGetter(BlondeDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: return [self.userDefaults objectForKey:key];
    return [self.userDefaults objectForKey:key];
}

//: static void objectSetter(NIMUserDefaults *self, SEL _cmd, id object) {
static void objectSetter(BlondeDefaults *self, SEL _cmd, id object) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self containerTo:_cmd];
    //: if (object) {
    if (object) {
        //: [self.userDefaults setObject:object forKey:key];
        [self.userDefaults setObject:object forKey:key];
    //: } else {
    } else {
        //: [self.userDefaults removeObjectForKey:key];
        [self.userDefaults removeObjectForKey:key];
    }
}

//: #pragma mark - Begin
#pragma mark - Begin

//: + (instancetype)standardUserDefaults {
+ (instancetype)phone {
    //: static dispatch_once_t pred;
    static dispatch_once_t pred;
    //: static NIMUserDefaults *sharedInstance = nil;
    static BlondeDefaults *sharedInstance = nil;
    //: _dispatch_once(&pred, ^{ sharedInstance = [[self alloc] init]; });
    _dispatch_once(&pred, ^{ sharedInstance = [[self alloc] init]; });
    //: return sharedInstance;
    return sharedInstance;
}

//: #pragma GCC diagnostic push
#pragma GCC diagnostic push
//: #pragma GCC diagnostic ignored "-Wundeclared-selector"
#pragma GCC diagnostic ignored "-Wundeclared-selector"
//: #pragma GCC diagnostic ignored "-Warc-performSelector-leaks"
#pragma GCC diagnostic ignored "-Warc-performSelector-leaks"

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: SEL setupDefaultSEL = NSSelectorFromString([NSString stringWithFormat:@"%@pDefaults", @"setu"]);
        SEL setupDefaultSEL = NSSelectorFromString([NSString stringWithFormat:StringFromCommendationData(kStr_prisonName), StringFromCommendationData(kStr_insertData)]);
        //: if ([self respondsToSelector:setupDefaultSEL]) {
        if ([self respondsToSelector:setupDefaultSEL]) {
            //: NSDictionary *defaults = [self performSelector:setupDefaultSEL];
            NSDictionary *defaults = [self performSelector:setupDefaultSEL];
            //: NSMutableDictionary *mutableDefaults = [NSMutableDictionary dictionaryWithCapacity:[defaults count]];
            NSMutableDictionary *mutableDefaults = [NSMutableDictionary dictionaryWithCapacity:[defaults count]];
            //: for (NSString *key in defaults) {
            for (NSString *key in defaults) {
                //: id value = [defaults objectForKey:key];
                id value = [defaults objectForKey:key];
                //: NSString *transformedKey = [self _transformKey:key];
                NSString *transformedKey = [self selectedText:key];
                //: [mutableDefaults setObject:value forKey:transformedKey];
                [mutableDefaults setObject:value forKey:transformedKey];
            }
            //: [self.userDefaults registerDefaults:mutableDefaults];
            [self.userDefaults registerDefaults:mutableDefaults];
        }

        //: [self generateAccessorMethods];
        [self words];
    }

    //: return self;
    return self;
}

//: - (NSString *)_transformKey:(NSString *)key {
- (NSString *)selectedText:(NSString *)key {
    //: if ([self respondsToSelector:@selector(transformKey:)]) {
    if ([self respondsToSelector:@selector(modifies:)]) {
        //: return [self performSelector:@selector(transformKey:) withObject:key];
        return [self performSelector:@selector(modifies:) withObject:key];
    }

    //: return key;
    return key;
}

//: #pragma GCC diagnostic pop
#pragma GCC diagnostic pop

//: - (void)generateAccessorMethods {
- (void)words {
    //: unsigned int count = 0;
    unsigned int count = 0;
    //: objc_property_t *properties = class_copyPropertyList([self class], &count);
    objc_property_t *properties = class_copyPropertyList([self class], &count);

    //: self.mapping = [NSMutableDictionary dictionary];
    self.mapping = [NSMutableDictionary dictionary];

    //: for (int i = 0; i < count; ++i) {
    for (int i = 0; i < count; ++i) {
        //: objc_property_t property = properties[i];
        objc_property_t property = properties[i];
        //: const char *name = property_getName(property);
        const char *name = property_getName(property);
        //: const char *attributes = property_getAttributes(property);
        const char *attributes = property_getAttributes(property);

        //: char *getter = strstr(attributes, ",G");
        char *getter = strstr(attributes, ",G");
        //: if (getter) {
        if (getter) {
            //: getter = strdup(getter + 2);
            getter = strdup(getter + 2);
            //: getter = strsep(&getter, ",");
            getter = strsep(&getter, ",");
        //: } else {
        } else {
            //: getter = strdup(name);
            getter = strdup(name);
        }
        //: SEL getterSel = sel_registerName(getter);
        SEL getterSel = sel_registerName(getter);
        //: free(getter);
        free(getter);

        //: char *setter = strstr(attributes, ",S");
        char *setter = strstr(attributes, ",S");
        //: if (setter) {
        if (setter) {
            //: setter = strdup(setter + 2);
            setter = strdup(setter + 2);
            //: setter = strsep(&setter, ",");
            setter = strsep(&setter, ",");
        //: } else {
        } else {
            //: asprintf(&setter, "set%c%s:", toupper(name[0]), name + 1);
            asprintf(&setter, "set%c%s:", toupper(name[0]), name + 1);
        }
        //: SEL setterSel = sel_registerName(setter);
        SEL setterSel = sel_registerName(setter);
        //: free(setter);
        free(setter);

        //: NSString *key = [self defaultsKeyForPropertyNamed:name];
        NSString *key = [self sizeMessage:name];
        //: [self.mapping setValue:key forKey:NSStringFromSelector(getterSel)];
        [self.mapping setValue:key forKey:NSStringFromSelector(getterSel)];
        //: [self.mapping setValue:key forKey:NSStringFromSelector(setterSel)];
        [self.mapping setValue:key forKey:NSStringFromSelector(setterSel)];

        //: IMP getterImp = NULL;
        IMP getterImp = NULL;
        //: IMP setterImp = NULL;
        IMP setterImp = NULL;
        //: char type = attributes[1];
        char type = attributes[1];
        //: switch (type) {
        switch (type) {
            //: case Short:
            case Short:
            //: case Long:
            case Long:
            //: case LongLong:
            case LongLong:
            //: case UnsignedChar:
            case UnsignedChar:
            //: case UnsignedShort:
            case UnsignedShort:
            //: case UnsignedInt:
            case UnsignedInt:
            //: case UnsignedLong:
            case UnsignedLong:
            //: case UnsignedLongLong:
            case UnsignedLongLong:
                //: getterImp = (IMP)longLongGetter;
                getterImp = (IMP)longLongGetter;
                //: setterImp = (IMP)longLongSetter;
                setterImp = (IMP)longLongSetter;
                //: break;
                break;

            //: case Bool:
            case Bool:
            //: case Char:
            case Char:
                //: getterImp = (IMP)boolGetter;
                getterImp = (IMP)boolGetter;
                //: setterImp = (IMP)boolSetter;
                setterImp = (IMP)boolSetter;
                //: break;
                break;

            //: case Int:
            case Int:
                //: getterImp = (IMP)integerGetter;
                getterImp = (IMP)integerGetter;
                //: setterImp = (IMP)integerSetter;
                setterImp = (IMP)integerSetter;
                //: break;
                break;

            //: case Float:
            case Float:
                //: getterImp = (IMP)floatGetter;
                getterImp = (IMP)floatGetter;
                //: setterImp = (IMP)floatSetter;
                setterImp = (IMP)floatSetter;
                //: break;
                break;

            //: case Double:
            case Double:
                //: getterImp = (IMP)doubleGetter;
                getterImp = (IMP)doubleGetter;
                //: setterImp = (IMP)doubleSetter;
                setterImp = (IMP)doubleSetter;
                //: break;
                break;

            //: case Object:
            case Object:
                //: getterImp = (IMP)objectGetter;
                getterImp = (IMP)objectGetter;
                //: setterImp = (IMP)objectSetter;
                setterImp = (IMP)objectSetter;
                //: break;
                break;

            //: default:
            default:
                //: free(properties);
                free(properties);
                //: [NSException raise:NSInternalInconsistencyException format:@"Unsupported type of property \"%s\" in class %@", name, self];
                [NSException raise:NSInternalInconsistencyException format:StringFromCommendationData(kStr_leapPutAndTitle), name, self];
                //: break;
                break;
        }

        //: char types[5];
        char types[5];

        //: snprintf(types, 4, "%c@:", type);
        snprintf(types, 4, "%c@:", type);
        //: class_addMethod([self class], getterSel, getterImp, types);
        class_addMethod([self class], getterSel, getterImp, types);

        //: snprintf(types, 5, "v@:%c", type);
        snprintf(types, 5, "v@:%c", type);
        //: class_addMethod([self class], setterSel, setterImp, types);
        class_addMethod([self class], setterSel, setterImp, types);
    }

    //: free(properties);
    free(properties);
}

//: @end
@end

Byte * CommendationDataToCache(Byte *data) {
    int fleetHistoryScream = data[0];
    int repeatedEffectiveness = data[1];
    Byte enableLea = data[2];
    int presence = data[3];
    if (!fleetHistoryScream) return data + presence;
    for (int i = presence; i < presence + repeatedEffectiveness; i++) {
        int value = data[i] - enableLea;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[presence + repeatedEffectiveness] = 0;
    return data + presence;
}

NSString *StringFromCommendationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CommendationDataToCache(data)];
}
