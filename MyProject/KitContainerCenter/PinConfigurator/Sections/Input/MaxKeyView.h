// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxKeyView.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFGrowingTextView.h"
#import "ImageScrollView.h"

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
@protocol ItemDelegate <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)itemAfter;

//: - (void)textViewDidEndEditing;
- (void)postBackVersion;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)colorChangeTitle:(NSRange)range message:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)recordOn;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)highnessing:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)toolDisableGraduate:(CGFloat)height;

//: @end
@end


//: @interface FFFInputToolBar : UIView
@interface MaxKeyView : UIView

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
@property (nonatomic,weak) id<ItemDelegate> delegate;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,strong) FFFGrowingTextView *inputTextView;
@property (nonatomic,strong) ImageScrollView *inputTextView;

//: - (void)update:(NIMInputStatus)status;
- (void)off:(NIMInputStatus)status;

//: @end
@end

//: @interface FFFInputToolBar(InputText)
@interface MaxKeyView(InputText)

//: - (NSRange)selectedRange;
- (NSRange)bluish;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setPin:(NSString *)placeHolder;
//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)requisite:(NSString *)placeHolder shared:(UIColor *)placeholderColor;

//: - (void)insertText:(NSString *)text;
- (void)saveAccount:(NSString *)text;

//: - (void)deleteText:(NSRange)range;
- (void)window:(NSRange)range;

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)day:(NSString *)text segment:(BOOL)isEmoji;

//: @end
@end