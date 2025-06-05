//
//  FFFInputEmoticonButton.h
// MyUserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NIMInputEmoticon;

@protocol NIMEmoticonButtonTouchDelegate <NSObject>

- (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;

@end



@interface FFFInputEmoticonButton : UIButton

@property (nonatomic, strong) NIMInputEmoticon *emoticonData;

@property (nonatomic, copy)   NSString         *catalogID;

@property (nonatomic, weak)   id<NIMEmoticonButtonTouchDelegate> delegate;

+ (FFFInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;

- (void)onIconSelected:(id)sender;

@end
