//
//  AVAsset+MyUserKit.h
// MyUserKit
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AVAsset (MyUserKit)

- (AVMutableVideoComposition *)nim_videoComposition;

@end

NS_ASSUME_NONNULL_END
