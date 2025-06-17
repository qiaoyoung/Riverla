// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusToolView.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFGrowingTextView.h"
#import "NameScrollView.h"

//: typedef NS_ENUM(NSInteger,NIMInputStatus)
typedef NS_ENUM(NSInteger,NIMInputStatus)
{
    //: NIMInputStatusText,
    NIMInputStatusText,
    //: NIMInputStatusAudio,
    NIMInputStatusAudio,
    //: NIMInputStatusEmoticon,
    NIMInputStatusEmoticon,
    //: NIMInputStatusMore
    NIMInputStatusMore
//: };
};


//: @protocol FFFInputToolBarDelegate <NSObject>
@protocol MarginDelegate <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)viewCell;

//: - (void)textViewDidEndEditing;
- (void)colorTeam;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)voice:(NSRange)range disabled:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)titleChange;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)taps:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)sessions:(CGFloat)height;

//: @end
@end


//: @interface FFFInputToolBar : UIView
@interface StatusToolView : UIView

//: @property (nonatomic,strong) UIButton *voiceButton;
@property (nonatomic,strong) UIButton *voiceButton;
//: @property (nonatomic,strong) UIButton *emoticonBtn;
@property (nonatomic,strong) UIButton *emoticonBtn;
//@property (nonatomic,strong) UIButton    *emoticonBtn2;

//: @property (nonatomic,strong) UIButton *albunBtn;
@property (nonatomic,strong) UIButton *albunBtn;

//@property (nonatomic,strong) UIButton    *cameraBtn;

//@property (nonatomic,strong) UIButton    *moreMediaBtn;
//
//@property (nonatomic,strong) UIButton    *recordButton;

//: @property (nonatomic,strong) UIButton *sendButton;
@property (nonatomic,strong) UIButton *sendButton;

//@property (nonatomic,strong) UIImageView *inputTextBkgImage;

//: @property (nonatomic,strong) UIView *bottomSep;
@property (nonatomic,strong) UIView *bottomSep;

//: @property (nonatomic,copy) NSString *contentText;
@property (nonatomic,copy) NSString *contentText;

//: @property (nonatomic,weak) id<FFFInputToolBarDelegate> delegate;
@property (nonatomic,weak) id<MarginDelegate> delegate;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,strong) FFFGrowingTextView *inputTextView;
@property (nonatomic,strong) NameScrollView *inputTextView;

//: - (void)update:(NIMInputStatus)status;
- (void)secret:(NIMInputStatus)status;

//: @end
@end

//: @interface FFFInputToolBar(InputText)
@interface StatusToolView(InputText)

//: - (NSRange)selectedRange;
- (NSRange)messageRange;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setMarshal:(NSString *)placeHolder;
//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)viewInColor:(NSString *)placeHolder postposeData:(UIColor *)placeholderColor;

//: - (void)insertText:(NSString *)text;
- (void)rubric:(NSString *)text;

//: - (void)deleteText:(NSRange)range;
- (void)to:(NSRange)range;

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)attributed:(NSString *)text emojiSize:(BOOL)isEmoji;

//: @end
@end