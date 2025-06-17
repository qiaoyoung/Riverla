
#import <Foundation/Foundation.h>
typedef struct {
    Byte withEntitle;
    Byte *fog;
    unsigned int innerCircle;
    bool cellPale;
	int overlook;
	int auPair;
} InjureData;

NSString *StringFromInjureData(InjureData *data);


//: HolisticSaver
InjureData kStr_maxSparkName = (InjureData){200, (Byte []){128, 167, 164, 161, 187, 188, 161, 171, 155, 169, 190, 173, 186, 151}, 13, false, 231, 102};


//: file
InjureData kStr_pionValue = (InjureData){160, (Byte []){198, 201, 204, 197, 24}, 4, false, 110, 152};


//: Emoji
InjureData kStr_promCruiseTitle = (InjureData){231, (Byte []){162, 138, 136, 141, 142, 194}, 5, false, 81, 199};


//: %@.png
InjureData kStr_modelName = (InjureData){139, (Byte []){174, 203, 165, 251, 229, 236, 200}, 6, false, 75, 104};


//: html
InjureData kStr_poolName = (InjureData){138, (Byte []){226, 254, 231, 230, 122}, 4, false, 43, 78};


//: Voice
InjureData kStr_oofSupermarketValue = (InjureData){19, (Byte []){69, 124, 122, 112, 118, 61}, 5, false, 53, 8};


//: %@@%dx.png
InjureData kStr_heapData = (InjureData){235, (Byte []){206, 171, 171, 206, 143, 147, 197, 155, 133, 140, 140}, 10, false, 131, 253};


//: .zip
InjureData kStr_dancingPaintName = (InjureData){91, (Byte []){117, 33, 50, 43, 70}, 4, false, 247, 74};


//: kSSZipArchiveManagerVersionKey
InjureData kStr_complaintTitle = (InjureData){61, (Byte []){86, 110, 110, 103, 84, 77, 124, 79, 94, 85, 84, 75, 88, 112, 92, 83, 92, 90, 88, 79, 107, 88, 79, 78, 84, 82, 83, 118, 88, 68, 219}, 30, false, 32, 248};


//: %@.imageset
InjureData kStr_peelName = (InjureData){155, (Byte []){190, 219, 181, 242, 246, 250, 252, 254, 232, 254, 239, 251}, 11, false, 206, 105};


//: Lproj
InjureData kStr_priestTitle = (InjureData){13, (Byte []){65, 125, 127, 98, 103, 248}, 5, false, 251, 160};


//: xml_file
InjureData kStr_storeMiddleValue = (InjureData){247, (Byte []){143, 154, 155, 168, 145, 158, 155, 146, 240}, 8, false, 32, 43};


//: Image
InjureData kStr_instantlyName = (InjureData){136, (Byte []){193, 229, 233, 239, 237, 170}, 5, false, 38, 251};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "ArchiveManager.h"
//: #import "NTESMigrateHeader.h"
#import "ButtonHeader.h"

//: @interface SSZipArchiveManager()
@interface ArchiveManager()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation ArchiveManager

//: + (instancetype)sharedManager {
+ (instancetype)block {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static ArchiveManager *sharedInstance = nil;
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
    static ArchiveManager *sharedInstance = nil;
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
- (id)bubble:(NSZone *)zone {
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
        _appResPath = [self expanse];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)expanse {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"HolisticSaver"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:StringFromInjureData(&kStr_maxSparkName)];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:StringFromInjureData(&kStr_complaintTitle)];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[ButtonHeader initWithMessage].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"HolisticSaver"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:StringFromInjureData(&kStr_pionValue)] stringByAppendingPathComponent:StringFromInjureData(&kStr_maxSparkName)];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[ButtonHeader initWithMessage].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"HolisticSaver" ofType:@".zip"];
    NSString *path = [[Afterwards blue].emoticonBundle pathForResource:StringFromInjureData(&kStr_maxSparkName) ofType:StringFromInjureData(&kStr_dancingPaintName)];
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
                                      password:StringFromInjureData(&kStr_maxSparkName)
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[ButtonHeader initWithMessage].appVersion forKey:StringFromInjureData(&kStr_complaintTitle)];
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
- (NSString *)messageDevice {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:StringFromInjureData(&kStr_poolName)];
}

//: - (NSString *)getXML_filePath {
- (NSString *)with {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:StringFromInjureData(&kStr_storeMiddleValue)];
}

//: - (NSString *)getEmojiPath {
- (NSString *)framework {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:StringFromInjureData(&kStr_promCruiseTitle)];
}

//: - (NSString *)getLprojPath {
- (NSString *)show {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:StringFromInjureData(&kStr_priestTitle)];
}

//: - (NSString *)getVoicePath {
- (NSString *)image {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:StringFromInjureData(&kStr_oofSupermarketValue)];
}

//: - (NSString *)getImagesPath {
- (NSString *)disable {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:StringFromInjureData(&kStr_instantlyName)];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)streetwised:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self disable] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromInjureData(&kStr_peelName), name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:StringFromInjureData(&kStr_heapData), name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:StringFromInjureData(&kStr_heapData), name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromInjureData(&kStr_modelName), name]];
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

Byte *InjureDataToByte(InjureData *data) {
    if (data->cellPale) return data->fog;
    for (int i = 0; i < data->innerCircle; i++) {
        data->fog[i] ^= data->withEntitle;
    }
    data->fog[data->innerCircle] = 0;
    data->cellPale = true;
	if (data->innerCircle >= 2) {
		data->overlook = data->fog[0];
		data->auPair = data->fog[1];
	}
    return data->fog;
}

NSString *StringFromInjureData(InjureData *data) {
    return [NSString stringWithUTF8String:(char *)InjureDataToByte(data)];
}
