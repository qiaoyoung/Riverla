//
//  FFFInputEmoticonButton.m
// NeeyoKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "FFFInputEmoticonButton.h"
#import "UIImage+NeeyoKit.h"
#import "FFFInputEmoticonManager.h"
#import "FFFInputEmoticonDefine.h"
#import "NeeyoKit.h"
#import "FFFKitDevice.h"
#import "NSBundle+NeeyoKit.h"
#import "SSZipArchiveManager.h"

@implementation FFFInputEmoticonButton

+ (FFFInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate{
    FFFInputEmoticonButton* icon = [[FFFInputEmoticonButton alloc] init];
    [icon addTarget:icon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    
    icon.emoticonData    = data;
    icon.catalogID              = catalogID;
    icon.userInteractionEnabled = YES;
    icon.exclusiveTouch         = YES;
    icon.contentMode            = UIViewContentModeScaleToFill;
    icon.delegate               = delegate;
    
    switch (data.type) {
        case NIMEmoticonTypeUnicode:
        {
            [icon setTitle:data.unicode forState:UIControlStateNormal];
            [icon setTitle:data.unicode forState:UIControlStateHighlighted];
            icon.titleLabel.font = [UIFont systemFontOfSize:32];
            break;
        }
        case NIMEmoticonTypeGif:
        {
//            NSBundle *bundle = [NeeyoKit sharedKit].emoticonBundle;
//            NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:data.filename ofType:nil inDirectory:NEEKIT_EmojiPath]];
            NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
            NSString *imagePath = [emojiPath stringByAppendingPathComponent:data.filename];
            NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
            UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
            [icon setImage:gif forState:UIControlStateNormal];
            [icon setImage:gif forState:UIControlStateHighlighted];
            
            break;
        }
        case NIMEmoticonTypeFile:
        default:
        {
            UIImage *image = [UIImage nim_emoticonInKit:data.filename];
            [icon setImage:image forState:UIControlStateNormal];
            [icon setImage:image forState:UIControlStateHighlighted];
            break;
        }
    }
    return icon;
}



- (void)onIconSelected:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(selectedEmoticon:catalogID:)])
    {
        [self.delegate selectedEmoticon:self.emoticonData catalogID:self.catalogID];
    }
}

@end
