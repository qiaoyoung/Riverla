
#import <Foundation/Foundation.h>

NSString *StringFromUsedData(Byte *data);


//: .zip
Byte kStr_crossTitle[] = {52, 4, 91, 4, 137, 213, 196, 203, 61};


//: html
Byte kStr_nanaValue[] = {98, 4, 99, 13, 219, 21, 68, 81, 151, 65, 185, 238, 153, 203, 215, 208, 207, 188};


//: Image
Byte kStr_skiShowData[] = {12, 5, 16, 5, 95, 89, 125, 113, 119, 117, 204};


//: xml_file
Byte kStr_creditData[] = {57, 8, 82, 13, 193, 135, 60, 36, 81, 62, 151, 13, 140, 202, 191, 190, 177, 184, 187, 190, 183, 225};


//: %@.imageset
Byte kStr_growData[] = {68, 11, 28, 8, 121, 241, 179, 119, 65, 92, 74, 133, 137, 125, 131, 129, 143, 129, 144, 202};


//: kSSZipArchiveManagerVersionKey
Byte kStr_tressName[] = {94, 30, 64, 8, 102, 9, 228, 106, 171, 147, 147, 154, 169, 176, 129, 178, 163, 168, 169, 182, 165, 141, 161, 174, 161, 167, 165, 178, 150, 165, 178, 179, 169, 175, 174, 139, 165, 185, 152};


//: Voice
Byte kStr_oxygenValue[] = {27, 5, 89, 11, 120, 99, 180, 91, 138, 127, 76, 175, 200, 194, 188, 190, 222};


//: Emoji
Byte kStr_ahRuleText[] = {57, 5, 3, 12, 226, 52, 140, 55, 160, 217, 147, 19, 72, 112, 114, 109, 108, 181};


//: Lproj
Byte kStr_basicallyTitle[] = {13, 5, 92, 4, 168, 204, 206, 203, 198, 54};


//: %@.png
Byte kStr_findingLayoffData[] = {87, 6, 13, 4, 50, 77, 59, 125, 123, 116, 247};


//: HolisticSaver
Byte kStr_prisonContent[] = {42, 13, 44, 10, 58, 183, 197, 44, 110, 217, 116, 155, 152, 149, 159, 160, 149, 143, 127, 141, 162, 145, 158, 107};


//: %@@%dx.png
Byte kStr_lungWayData[] = {3, 10, 82, 4, 119, 146, 146, 119, 182, 202, 128, 194, 192, 185, 243};


//: file
Byte kStr_ereValue[] = {30, 4, 62, 8, 71, 189, 192, 224, 164, 167, 170, 163, 170};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "ByManager.h"
//: #import "NTESMigrateHeader.h"
#import "HeaderCustom.h"

//: @interface SSZipArchiveManager()
@interface ByManager()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation ByManager

//: + (instancetype)sharedManager {
+ (instancetype)date {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static ByManager *sharedInstance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [[self alloc] init];
        sharedInstance = [[self alloc] init];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static SSZipArchiveManager *sharedInstance = nil;
    static ByManager *sharedInstance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [super allocWithZone:zone];
        sharedInstance = [super allocWithZone:zone];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)end:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self head];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)head {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"HolisticSaver"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:StringFromUsedData(kStr_prisonContent)];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:StringFromUsedData(kStr_tressName)];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[HeaderCustom initWithModel].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"HolisticSaver"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:StringFromUsedData(kStr_ereValue)] stringByAppendingPathComponent:StringFromUsedData(kStr_prisonContent)];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[HeaderCustom initWithModel].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"HolisticSaver" ofType:@".zip"];
    NSString *path = [[Notice fullKit].emoticonBundle pathForResource:StringFromUsedData(kStr_prisonContent) ofType:StringFromUsedData(kStr_crossTitle)];
    //: if (!path) {
    if (!path) {
        //: return @""; 
        return @""; // Return empty string if path is nil
    }

    //: BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
    BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
                                 //: toDestination:docuPath
                                 toDestination:docuPath
                                     //: overwrite:YES
                                     overwrite:YES
                                      //: password:@"HolisticSaver"
                                      password:StringFromUsedData(kStr_prisonContent)
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[HeaderCustom initWithModel].appVersion forKey:StringFromUsedData(kStr_tressName)];
        //: [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
            //: return resDir;
            return resDir;
        //: } else {
        } else {
            //: return fileResDir;
            return fileResDir;
        }
    }

    //: return @""; 
    return @""; // Return empty string if unzip fails
}

//: - (NSString *)getHtml_filePath {
- (NSString *)message {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:StringFromUsedData(kStr_nanaValue)];
}

//: - (NSString *)getXML_filePath {
- (NSString *)withPath {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:StringFromUsedData(kStr_creditData)];
}

//: - (NSString *)getEmojiPath {
- (NSString *)signature {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:StringFromUsedData(kStr_ahRuleText)];
}

//: - (NSString *)getLprojPath {
- (NSString *)offInfo {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:StringFromUsedData(kStr_basicallyTitle)];
}

//: - (NSString *)getVoicePath {
- (NSString *)item {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:StringFromUsedData(kStr_oxygenValue)];
}

//: - (NSString *)getImagesPath {
- (NSString *)origin {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:StringFromUsedData(kStr_skiShowData)];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)processorred:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self origin] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromUsedData(kStr_growData), name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:StringFromUsedData(kStr_lungWayData), name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:StringFromUsedData(kStr_lungWayData), name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromUsedData(kStr_findingLayoffData), name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: @end
@end

Byte * UsedDataToCache(Byte *data) {
    int bluePerfect = data[0];
    int indebtedness = data[1];
    Byte harshListen = data[2];
    int rapDaughterSignificantly = data[3];
    if (!bluePerfect) return data + rapDaughterSignificantly;
    for (int i = rapDaughterSignificantly; i < rapDaughterSignificantly + indebtedness; i++) {
        int value = data[i] - harshListen;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[rapDaughterSignificantly + indebtedness] = 0;
    return data + rapDaughterSignificantly;
}

NSString *StringFromUsedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UsedDataToCache(data)];
}
