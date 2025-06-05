//
//  FFFChatUIManager.h
// NeeyoKit
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFChatUIManagerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface FFFChatUIManager : NSObject<FFFChatUIManager>

+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END
