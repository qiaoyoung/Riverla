// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongDelegate.h
// Afterwards
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FFFKitMediaPickerDelegate <NSObject>
@protocol AlongDelegate <NSObject>

//: - (void)onPickerSelectedWithType:(PHAssetMediaType)type
- (void)georgiaHomeBoy:(PHAssetMediaType)type
                          //: images:(nullable NSArray *)images
                          bill:(nullable NSArray *)images
                            //: path:(nullable NSString *)path;
                            electPath:(nullable NSString *)path;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END