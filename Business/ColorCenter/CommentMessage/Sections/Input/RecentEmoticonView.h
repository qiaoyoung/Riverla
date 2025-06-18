// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentEmoticonView.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class CommentToTemp;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol RandomDetail <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)info:(CommentToTemp*)emoticon to:(NSString*)catalogID;

//: @end
@end



//: @interface FFFInputEmoticonButton : UIButton
@interface RecentEmoticonView : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) CommentToTemp *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<RandomDetail> delegate;

//: + (FFFInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (RecentEmoticonView*)view:(CommentToTemp*)data success:(NSString*)catalogID isKey:( id<RandomDetail>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)statuses:(id)sender;

//: @end
@end