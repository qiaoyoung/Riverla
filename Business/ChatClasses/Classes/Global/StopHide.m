
#import <Foundation/Foundation.h>

NSString *StringFromBeefRecentData(Byte *data);


//: nimkit.url.query
Byte kStr_normalQuantityComedyContent[] = {2, 16, 11, 242, 220, 202, 63, 141, 24, 198, 158, 121, 114, 101, 117, 113, 46, 108, 114, 117, 46, 116, 105, 107, 109, 105, 110, 192};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StopHide.m
// Afterwards
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitUrlManager.h"
#import "StopHide.h"
//: #import "FFFKitTimerHolder.h"
#import "RandomHolder.h"
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NSString *const kNIMKitUrlDataKey = @"kNIMKitUrlDataKey";
NSString *const kLet_completeContent = @"kNIMKitUrlDataKey";

//: @interface FFFKitUrlManager ()<FFFKitTimerHolderDelegate>
@interface StopHide ()<OnAfter>

//: @property (nonatomic, strong) NSMutableDictionary *dic;
@property (nonatomic, strong) NSMutableDictionary *dic;

//: @property (nonatomic, strong) FFFKitTimerHolder *timer;
@property (nonatomic, strong) RandomHolder *timer;

//: @property (nonatomic, assign) BOOL needSync;
@property (nonatomic, assign) BOOL needSync;

//: @end
@end

//: @implementation FFFKitUrlManager
@implementation StopHide

//: + (instancetype)shareManager {
+ (instancetype)session {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static id instance = nil;
    static id instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFKitUrlManager alloc] init];
        instance = [[StopHide alloc] init];
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
        _dic = [self window];
        //: if (!_dic) {
        if (!_dic) {
            //: _dic = [NSMutableDictionary dictionary];
            _dic = [NSMutableDictionary dictionary];
        }
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[RandomHolder alloc] init];
        //: [_timer startTimer:5.0f delegate:self repeats:YES];
        [_timer begin:5.0f computerFileContentImage:self repeats:YES];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onEnterBackground:)
                                                 selector:@selector(handles:)
                                                     //: name:UIApplicationDidEnterBackgroundNotification
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onTerminate:)
                                                 selector:@selector(networkBy:)
                                                     //: name:UIApplicationWillTerminateNotification
                                                     name:UIApplicationWillTerminateNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)queryQriginalUrlWithShortUrl:(NSString *)shortUrl
- (void)with:(NSString *)shortUrl
                          //: completion:(NIMKitUrlCompletion)completion {
                          cut:(NIMKitUrlCompletion)completion {
    //: NSError *error = nil;
    NSError *error = nil;
    //: if (!shortUrl) {
    if (!shortUrl) {
        //: error = [NSError errorWithDomain:@"nimkit.url.query" code:0x1000 userInfo:nil];
        error = [NSError errorWithDomain:StringFromBeefRecentData(kStr_normalQuantityComedyContent) code:0x1000 userInfo:nil];
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
            [weakSelf firstAction:shortUrl size:urlString];
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
- (void)firstAction:(NSString *)shortUrl size:(NSString *)originalUrl {
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
- (NSString *)holderTag:(NSString *)shortUrl {
    //: return _dic[shortUrl];
    return _dic[shortUrl];
}

//: - (NSMutableDictionary *)loadLocalFile {
- (NSMutableDictionary *)window {
    //: NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:kNIMKitUrlDataKey];
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:kLet_completeContent];
    //: return [NSMutableDictionary dictionaryWithDictionary:dic];
    return [NSMutableDictionary dictionaryWithDictionary:dic];
}

//: - (void)syncToLocal {
- (void)user {
    //: if (_needSync) {
    if (_needSync) {
        //: [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:kNIMKitUrlDataKey];
        [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:kLet_completeContent];
        //: _needSync = NO;
        _needSync = NO;
    }
}

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder {
- (void)recording:(RandomHolder *)holder {
    //: if (holder != _timer) {
    if (holder != _timer) {
        //: return;
        return;
    }
    //: [self syncToLocal];
    [self user];
}

//: - (void)onEnterBackground:(NSNotification *)note {
- (void)handles:(NSNotification *)note {
    //: [self syncToLocal];
    [self user];
}

//: - (void)onTerminate:(NSNotification *)note {
- (void)networkBy:(NSNotification *)note {
    //: [self syncToLocal];
    [self user];
}

//: @end
@end

Byte * BeefRecentDataToCache(Byte *data) {
    int dayName = data[0];
    int groupAide = data[1];
    int soleText = data[2];
    if (!dayName) return data + soleText;
    for (int i = 0; i < groupAide / 2; i++) {
        int begin = soleText + i;
        int end = soleText + groupAide - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[soleText + groupAide] = 0;
    return data + soleText;
}

NSString *StringFromBeefRecentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BeefRecentDataToCache(data)];
}  
