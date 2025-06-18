// __DEBUG__
// __CLOSE_PRINT__
//
//  FitPickerController.h
// Afterwards
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "FFFKitMediaPickerDelegate.h"
#import "AlongDelegate.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFKitMediaPickerController : TZImagePickerController
@interface FitPickerController : TZImagePickerController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;
- (instancetype)initWithScoopCount:(NSInteger)maxImagesCount;

//: @property (nonatomic, weak) id<FFFKitMediaPickerDelegate> nim_delegate;
@property (nonatomic, weak) id<AlongDelegate> nim_delegate;

//: @property(nonatomic, strong) NSArray<NSString *> *mediaTypes;
@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END