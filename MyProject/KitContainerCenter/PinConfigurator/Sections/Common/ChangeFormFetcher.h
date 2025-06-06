// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeFormFetcher.h
// Notice
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

//: @class NIMMessage;
@class NIMMessage;

//: typedef void(^NIMKitLibraryFetchResult)(NSArray *images, NSString *path, PHAssetMediaType type);
typedef void(^NIMKitLibraryFetchResult)(NSArray *images, NSString *path, PHAssetMediaType type);

//: typedef void(^NIMKitCameraFetchResult)(NSString *path, UIImage *image);
typedef void(^NIMKitCameraFetchResult)(NSString *path, UIImage *image);

//: @interface FFFKitMediaFetcher : NSObject
@interface ChangeFormFetcher : NSObject

//: @property (nonatomic,assign) NSInteger limit;
@property (nonatomic,assign) NSInteger limit;

//: @property (nonatomic,strong) NSArray *mediaTypes; 
@property (nonatomic,strong) NSArray *mediaTypes; //kUTTypeMovie,kUTTypeImage,kUTTypeGIF

//: - (void)fetchPhotoFromLibrary:(NIMKitLibraryFetchResult)result;
- (void)instanceLibrary:(NIMKitLibraryFetchResult)result;

//: - (void)fetchMediaFromCamera:(NIMKitCameraFetchResult)result;
- (void)searchedData:(NIMKitCameraFetchResult)result;

//: @end
@end