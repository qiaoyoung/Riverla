// __DEBUG__
// __CLOSE_PRINT__
//
//  AVAsset+Afterwards.h
// Afterwards
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface AVAsset (MyUserKit)
@interface AVAsset (Afterwards)

//: - (AVMutableVideoComposition *)nim_videoComposition;
- (AVMutableVideoComposition *)session;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END