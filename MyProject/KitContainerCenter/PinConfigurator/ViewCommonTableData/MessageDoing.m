
#import <Foundation/Foundation.h>

NSString *StringFromOakTreeData(Byte *data);


//: nimkit.url.query
Byte kStr_rimaImageName[] = {26, 16, 5, 237, 132, 121, 114, 101, 117, 113, 46, 108, 114, 117, 46, 116, 105, 107, 109, 105, 110, 86};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageDoing.m
// Notice
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitUrlManager.h"
#import "MessageDoing.h"
//: #import "FFFKitTimerHolder.h"
#import "BarHolder.h"
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NSString *const kNIMKitUrlDataKey = @"kNIMKitUrlDataKey";
NSString *const let_localName = @"kNIMKitUrlDataKey";

//: @interface FFFKitUrlManager ()<FFFKitTimerHolderDelegate>
@interface MessageDoing ()<MoveEvaluate>

//: @property (nonatomic, strong) NSMutableDictionary *dic;
@property (nonatomic, strong) NSMutableDictionary *dic;

//: @property (nonatomic, strong) FFFKitTimerHolder *timer;
@property (nonatomic, strong) BarHolder *timer;

//: @property (nonatomic, assign) BOOL needSync;
@property (nonatomic, assign) BOOL needSync;

//: @end
@end

//: @implementation FFFKitUrlManager
@implementation MessageDoing

//: + (instancetype)shareManager {
+ (instancetype)manager {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static id instance = nil;
    static id instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFKitUrlManager alloc] init];
        instance = [[MessageDoing alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _dic = [self loadLocalFile];
        _dic = [self localBackground];
        //: if (!_dic) {
        if (!_dic) {
            //: _dic = [NSMutableDictionary dictionary];
            _dic = [NSMutableDictionary dictionary];
        }
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[BarHolder alloc] init];
        //: [_timer startTimer:5.0f delegate:self repeats:YES];
        [_timer name:5.0f up:self from:YES];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onEnterBackground:)
                                                 selector:@selector(items:)
                                                     //: name:UIApplicationDidEnterBackgroundNotification
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onTerminate:)
                                                 selector:@selector(scales:)
                                                     //: name:UIApplicationWillTerminateNotification
                                                     name:UIApplicationWillTerminateNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)queryQriginalUrlWithShortUrl:(NSString *)shortUrl
- (void)streetwiseVersion:(NSString *)shortUrl
                          //: completion:(NIMKitUrlCompletion)completion {
                          move:(NIMKitUrlCompletion)completion {
    //: NSError *error = nil;
    NSError *error = nil;
    //: if (!shortUrl) {
    if (!shortUrl) {
        //: error = [NSError errorWithDomain:@"nimkit.url.query" code:0x1000 userInfo:nil];
        error = [NSError errorWithDomain:StringFromOakTreeData(kStr_rimaImageName) code:0x1000 userInfo:nil];
        //: if (completion) {
        if (completion) {
            //: completion(nil, error);
            completion(nil, error);
        }
        //: return;
        return;
    }

    //: NSString *ret = _dic[shortUrl];
    NSString *ret = _dic[shortUrl];
    //: if (ret.length != 0) {
    if (ret.length != 0) {
        //: if (completion) {
        if (completion) {
            //: completion(ret, nil);
            completion(ret, nil);
        }
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
    [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
                                                //: completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
                                                completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
        //: if (!error && urlString) {
        if (!error && urlString) {
            //: [weakSelf storeShortUrl:shortUrl originalUrl:urlString];
            [weakSelf table:shortUrl key:urlString];
        }
        //: if (completion) {
        if (completion) {
            //: completion(urlString, error);
            completion(urlString, error);
        }
    //: }];
    }];

}

//: - (void)storeShortUrl:(NSString *)shortUrl originalUrl:(NSString *)originalUrl {
- (void)table:(NSString *)shortUrl key:(NSString *)originalUrl {
    //: if (!shortUrl || !originalUrl) {
    if (!shortUrl || !originalUrl) {
        //: return;
        return;
    }
    //: if ([shortUrl isEqualToString:originalUrl]) {
    if ([shortUrl isEqualToString:originalUrl]) {
        //: return;
        return;
    }
    //: if (!_dic[shortUrl]) {
    if (!_dic[shortUrl]) {
        //: _dic[shortUrl] = [originalUrl copy];
        _dic[shortUrl] = [originalUrl copy];
        //: _needSync = YES;
        _needSync = YES;
    }
}

//: - (NSString *)originalUrlWithShortUrl:(NSString *)shortUrl {
- (NSString *)read:(NSString *)shortUrl {
    //: return _dic[shortUrl];
    return _dic[shortUrl];
}

//: - (NSMutableDictionary *)loadLocalFile {
- (NSMutableDictionary *)localBackground {
    //: NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:kNIMKitUrlDataKey];
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:let_localName];
    //: return [NSMutableDictionary dictionaryWithDictionary:dic];
    return [NSMutableDictionary dictionaryWithDictionary:dic];
}

//: - (void)syncToLocal {
- (void)bracketOut {
    //: if (_needSync) {
    if (_needSync) {
        //: [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:kNIMKitUrlDataKey];
        [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:let_localName];
        //: _needSync = NO;
        _needSync = NO;
    }
}

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder {
- (void)changes:(BarHolder *)holder {
    //: if (holder != _timer) {
    if (holder != _timer) {
        //: return;
        return;
    }
    //: [self syncToLocal];
    [self bracketOut];
}

//: - (void)onEnterBackground:(NSNotification *)note {
- (void)items:(NSNotification *)note {
    //: [self syncToLocal];
    [self bracketOut];
}

//: - (void)onTerminate:(NSNotification *)note {
- (void)scales:(NSNotification *)note {
    //: [self syncToLocal];
    [self bracketOut];
}

//: @end
@end

Byte * OakTreeDataToCache(Byte *data) {
    int gum = data[0];
    int pinion = data[1];
    int braveGlory = data[2];
    if (!gum) return data + braveGlory;
    for (int i = 0; i < pinion / 2; i++) {
        int begin = braveGlory + i;
        int end = braveGlory + pinion - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[braveGlory + pinion] = 0;
    return data + braveGlory;
}

NSString *StringFromOakTreeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OakTreeDataToCache(data)];
}  
