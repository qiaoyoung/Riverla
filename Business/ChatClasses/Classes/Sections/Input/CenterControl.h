// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterControl.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class CellEmoticon;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol PictureDelegate <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)praise:(CellEmoticon*)emoticon courseCatalog_strong:(NSString*)catalogID;

//: @end
@end



//: @interface FFFInputEmoticonButton : UIButton
@interface CenterControl : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) CellEmoticon *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<PictureDelegate> delegate;

//: + (FFFInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (CenterControl*)date:(CellEmoticon*)data delegate:(NSString*)catalogID find:( id<PictureDelegate>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)greenDown:(id)sender;

//: @end
@end