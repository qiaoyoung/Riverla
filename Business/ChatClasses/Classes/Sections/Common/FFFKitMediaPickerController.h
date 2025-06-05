//
//  FFFKitMediaPickerController.h
// NeeyoKit
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "TZImagePickerController.h"
#import "FFFKitMediaPickerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface FFFKitMediaPickerController : TZImagePickerController

- (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;

@property (nonatomic, weak) id<FFFKitMediaPickerDelegate> nim_delegate;

@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

@end

NS_ASSUME_NONNULL_END
