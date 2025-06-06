
#import <Foundation/Foundation.h>

NSString *StringFromDonData(Byte *data);        


//: icon_toolview_send
Byte kStr_snakeTitle[] = {91, 18, 95, 13, 150, 34, 226, 17, 46, 43, 163, 121, 134, 10, 4, 16, 15, 0, 21, 16, 16, 13, 23, 10, 6, 24, 0, 20, 6, 15, 5, 187};


//: icon_toolview_album_normal
Byte kStr_voluntaryPinionNeighboringTitle[] = {90, 26, 32, 4, 73, 67, 79, 78, 63, 84, 79, 79, 76, 86, 73, 69, 87, 63, 65, 76, 66, 85, 77, 63, 78, 79, 82, 77, 65, 76, 115};


//: icon_toolview_keyboard_normal
Byte kStr_bubbleAccessText[] = {79, 29, 8, 7, 53, 90, 137, 97, 91, 103, 102, 87, 108, 103, 103, 100, 110, 97, 93, 111, 87, 99, 93, 113, 90, 103, 89, 106, 92, 87, 102, 103, 106, 101, 89, 100, 112};


//: icon_toolview_keybord
Byte kStr_variousData[] = {78, 21, 76, 10, 42, 242, 75, 197, 35, 143, 29, 23, 35, 34, 19, 40, 35, 35, 32, 42, 29, 25, 43, 19, 31, 25, 45, 22, 35, 38, 24, 213};


//: icon_toolview_emotion_normal
Byte kStr_partVersionTitle[] = {97, 28, 93, 6, 199, 82, 12, 6, 18, 17, 2, 23, 18, 18, 15, 25, 12, 8, 26, 2, 8, 16, 18, 23, 12, 18, 17, 2, 17, 18, 21, 16, 4, 15, 252};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxKeyView.m
// Notice
//
//  Created by chris
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputToolBar.h"
#import "MaxKeyView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "ViewInputBarItemType.h"
#import "ViewInputBarItemType.h"
//: #import "FFFInputEmoticonManager.h"
#import "AppManager.h"
//: #import "YYText.h"
#import "YYText.h"
//: #import "FFFTextHighlight.h"
#import "SmartNameHighlight.h"
//: #import "FFFKitKeyboardInfo.h"
#import "TitleMessage.h"

//: @interface FFFInputToolBar()<FFFGrowingTextViewDelegate>
@interface MaxKeyView()<LinkBackDelegate>

//: @property (nonatomic,copy) NSArray<NSNumber *> *types;
@property (nonatomic,copy) NSArray<NSNumber *> *types;

//: @property (nonatomic,copy) NSDictionary *dict;
@property (nonatomic,copy) NSDictionary *dict;

//: @property (nonatomic,assign) NIMInputStatus status;
@property (nonatomic,assign) NIMInputStatus status;

//: @end
@end

//: @implementation FFFInputToolBar
@implementation MaxKeyView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setBackgroundColor:[UIColor whiteColor]];
        [self setBackgroundColor:[UIColor whiteColor]];

        //: _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        _voiceButton.backgroundColor = ThemeColor;
//        _voiceButton.layer.cornerRadius = 14;
        //: [_voiceButton setImage:[UIImage imageNamed:@"icon_toolview_keyboard_normal"] forState:UIControlStateNormal];
        [_voiceButton setImage:[UIImage imageNamed:StringFromDonData(kStr_bubbleAccessText)] forState:UIControlStateNormal];
        //: [self addSubview:_voiceButton];
        [self addSubview:_voiceButton];

        //: _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_emoticonBtn setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
        [_emoticonBtn setImage:[UIImage imageNamed:StringFromDonData(kStr_partVersionTitle)] forState:UIControlStateNormal];
        //: [self addSubview:_emoticonBtn];
        [self addSubview:_emoticonBtn];

//        _emoticonBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateSelected];
//        _emoticonBtn2.hidden = YES;
//        [self addSubview:_emoticonBtn2];

        //: _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_albunBtn setImage:[UIImage imageNamed:@"icon_toolview_album_normal"] forState:UIControlStateNormal];
        [_albunBtn setImage:[UIImage imageNamed:StringFromDonData(kStr_voluntaryPinionNeighboringTitle)] forState:UIControlStateNormal];
        //: [self addSubview:_albunBtn];
        [self addSubview:_albunBtn];

//        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn setImage:[UIImage imageNamed:@"icon_toolview_camera_normal"] forState:UIControlStateNormal];
////        [_cameraBtn sizeToFit];
//        [self addSubview:_cameraBtn];

//        _moreMediaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_moreMediaBtn setImage:[UIImage imageNamed:@"icon_toolview_add_normal"] forState:UIControlStateNormal];
//        [_moreMediaBtn sizeToFit];

//        _recordButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_recordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [_recordButton.titleLabel setFont:[UIFont systemFontOfSize:14.f]];
//        [_recordButton setBackgroundImage:[[UIImage imageNamed:@"icon_input_text_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
//        _recordButton.exclusiveTouch = YES;
//        [_recordButton sizeToFit];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"icon_toolview_send"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:StringFromDonData(kStr_snakeTitle)] forState:UIControlStateNormal];
        //: _sendButton.hidden = YES;
        _sendButton.hidden = YES;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];
//        [_sendButton sizeToFit];
//        _sendButton.hitTestEdgeInsets = UIEdgeInsetsMake(-10, -10, -10, -10);

//        _inputTextBkgImage = [[UIImageView alloc] initWithFrame:CGRectZero];
//        [_inputTextBkgImage setImage:[[UIImage imageNamed:@"icon_input_text_bg_"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch]];

        //: _inputTextView = [[FFFGrowingTextView alloc] initWithFrame:CGRectZero];
        _inputTextView = [[ImageScrollView alloc] initWithFrame:CGRectZero];
        //: _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        //: _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        //: _inputTextView.minNumberOfLines = 1;
        _inputTextView.minNumberOfLines = 1;
        //: _inputTextView.textColor = [UIColor blackColor];
        _inputTextView.textColor = [UIColor blackColor];
        //: _inputTextView.backgroundColor = [UIColor clearColor];
        _inputTextView.backgroundColor = [UIColor clearColor];
        //: _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        //: _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;
        _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;

        //: _inputTextView.textViewDelegate = self;
        _inputTextView.textViewDelegate = self;
//        _inputTextView.returnKeyType = UIReturnKeySend;
        //: _inputTextView.returnKeyType = UIReturnKeyDefault;
        _inputTextView.returnKeyType = UIReturnKeyDefault;
        //: [self addSubview:self.inputTextView];
        [self addSubview:self.inputTextView];

        //顶部分割线
//        UIView *sep = [[UIView alloc] initWithFrame:CGRectZero];
//        sep.backgroundColor = [UIColor lightGrayColor];
//        sep.nim_size = CGSizeMake(self.nim_width, .5f);
//        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//        [self addSubview:sep];
//
//        //底部分割线
//        _bottomSep = [[UIView alloc] initWithFrame:CGRectZero];
//        _bottomSep.backgroundColor = [UIColor lightGrayColor];
//        [self addSubview:_bottomSep];

        //: self.types = @[
        self.types = @[
//            @(ViewInputBarItemTypeMore),
//            @(ViewInputBarItemTypeEmoticon),
//                         @(ViewInputBarItemTypeVoice),
                         //: @(ViewInputBarItemTypeTextAndRecord),
                         @(ViewInputBarItemTypeTextAndRecord),
                         //: @(ViewInputBarItemTypeSend),
                         @(ViewInputBarItemTypeSend),

                       //: ];
                       ];



    }
    //: return self;
    return self;
}



//: - (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
- (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
    //: self.types = types;
    self.types = types;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (NSString *)contentText
- (NSString *)contentText
{
    //: return self.inputTextView.text;
    return self.inputTextView.text;
}

//: - (void)setContentText:(NSString *)contentText
- (void)setContentText:(NSString *)contentText
{
    //: self.inputTextView.text = contentText;
    self.inputTextView.text = contentText;
}

//: - (NSArray *)inputBarItemTypes
- (NSArray *)inputBarItemTypes
{
    //: return self.types;
    return self.types;
}


//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: CGFloat viewHeight = 0.0f;
    CGFloat viewHeight = 0.0f;
  //: if(self.status == NIMInputStatusText){
  if(self.status == NIMInputStatusText){
        //算出 TextView 的宽度
        //: [self adjustTextViewWidth:size.width];
        [self proportion:size.width];
        // TextView 自适应高度
        //: [self.inputTextView layoutIfNeeded];
        [self.inputTextView layoutIfNeeded];
        //: viewHeight = (int)self.inputTextView.frame.size.height;
        viewHeight = (int)self.inputTextView.frame.size.height;
        //得到 ToolBar 自身高度
        //: viewHeight = viewHeight + 2*self.spacing;
        viewHeight = viewHeight + 2*self.keyThan;

    //: }else {
    }else {
        //: viewHeight = 51;
        viewHeight = 51;

    }

    //: return CGSizeMake(size.width,viewHeight);
    return CGSizeMake(size.width,viewHeight);
}

//: - (void)adjustTextViewWidth:(CGFloat)width
- (void)proportion:(CGFloat)width
{
//    CGFloat textViewWidth = 0;
//    for (NSNumber *type in self.types) {
//        if (type.integerValue == ViewInputBarItemTypeTextAndRecord) {
//            continue;
//        }
//        UIView *view = [self subViewForType:type.integerValue];
//        textViewWidth += view.nim_width;
//    }
//    textViewWidth += (self.spacing * (self.types.count + 1));
    //: self.inputTextView.nim_width = width - 140 - 4*self.textViewPadding;
    self.inputTextView.nim_width = width - 140 - 4*self.past;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.emoticonBtn.frame = CGRectMake(12, self.spacing+2, 32, 32);
    self.emoticonBtn.frame = CGRectMake(12, self.keyThan+2, 32, 32);
    //: self.albunBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32-15-32, self.spacing+2, 32, 32);
    self.albunBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32-15-32, self.keyThan+2, 32, 32);

    //: self.inputTextView.nim_left = 56;
    self.inputTextView.nim_left = 56;
    //: self.inputTextView.nim_top = self.spacing;
    self.inputTextView.nim_top = self.keyThan;

    //: self.voiceButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, self.spacing+2, 32, 32);
    self.voiceButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, self.keyThan+2, 32, 32);

    //: self.emoticonBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.emoticonBtn.nim_centerY = self.inputTextView.nim_centerY;
    //: self.albunBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.albunBtn.nim_centerY = self.inputTextView.nim_centerY;
    //: self.voiceButton.nim_centerY = self.inputTextView.nim_centerY;
    self.voiceButton.nim_centerY = self.inputTextView.nim_centerY;



    //: self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, self.spacing, 48, 32);
    self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, self.keyThan, 48, 32);
    //: self.sendButton.nim_centerY = self.inputTextView.nim_centerY;
    self.sendButton.nim_centerY = self.inputTextView.nim_centerY;

    //: self.sendButton.hidden = YES;
    self.sendButton.hidden = YES;
    //: self.albunBtn.hidden = NO;
    self.albunBtn.hidden = NO;
    //: self.emoticonBtn.hidden = NO;
    self.emoticonBtn.hidden = NO;
    //: self.voiceButton.hidden = NO;
    self.voiceButton.hidden = NO;

    //: if (self.inputTextView.text.length > 0) {
    if (self.inputTextView.text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
    }
}



//: - (void)adjustTextAndRecordView
- (void)belowLoad
{
    //: if ([self.types containsObject:@(ViewInputBarItemTypeTextAndRecord)])
    if ([self.types containsObject:@(ViewInputBarItemTypeTextAndRecord)])
    {
//        self.inputTextView.center  = self.inputTextBkgImage.center;

        //: if (!self.inputTextView.superview)
        if (!self.inputTextView.superview)
        {
            //输入框
            //: [self addSubview:self.inputTextView];
            [self addSubview:self.inputTextView];
        }
//        if (!self.recordButton.superview)
//        {
//            //中间点击录音按钮
//            self.recordButton.frame    = self.inputTextBkgImage.frame;
//            [self addSubview:self.recordButton];
//        }
    }
}

//: - (BOOL)showsKeyboard
- (BOOL)showsKeyboard
{
    //: return [self.inputTextView isFirstResponder];
    return [self.inputTextView isFirstResponder];
}


//: - (void)setShowsKeyboard:(BOOL)showsKeyboard
- (void)setShowsKeyboard:(BOOL)showsKeyboard
{
    //: if (showsKeyboard)
    if (showsKeyboard)
    {
        //: [self.inputTextView becomeFirstResponder];
        [self.inputTextView becomeFirstResponder];
    }
    //: else
    else
    {
        //: [self.inputTextView resignFirstResponder];
        [self.inputTextView resignFirstResponder];
    }
}


//: - (void)update:(NIMInputStatus)status
- (void)off:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self sizeToFit];
    [self sizeToFit];

    //: if (status == NIMInputStatusText || status == NIMInputStatusMore)
    if (status == NIMInputStatusText || status == NIMInputStatusMore)
    {
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
        //: [self updateEmotAndTextBtnImages:YES];
        [self session:YES];
        //: [self layoutSubviews];
        [self layoutSubviews];

    }
    //: else if(status == NIMInputStatusAudio)
    else if(status == NIMInputStatusAudio)
    {
        //: [self.inputTextView setHidden:YES];
        [self.inputTextView setHidden:YES];
        //: [self updateEmotAndTextBtnImages:YES];
        [self session:YES];
    }
    //: else
    else
    {
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
        //: [self updateEmotAndTextBtnImages:NO];
        [self session:NO];
    }
}

//: - (void)updateEmotAndTextBtnImages:(BOOL)selected
- (void)session:(BOOL)selected
{
    //: [self.emoticonBtn setImage:selected?[UIImage imageNamed:@"icon_toolview_emotion_normal"]:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateNormal];
    [self.emoticonBtn setImage:selected?[UIImage imageNamed:StringFromDonData(kStr_partVersionTitle)]:[UIImage imageNamed:StringFromDonData(kStr_variousData)] forState:UIControlStateNormal];
}


//: #pragma mark - FFFGrowingTextViewDelegate
#pragma mark - LinkBackDelegate
//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText
- (BOOL)colorChangeTitle:(NSRange)range message:(NSString *)replacementText
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(shouldChangeTextInRange:replacementText:)]) {
    if ([self.delegate respondsToSelector:@selector(colorChangeTitle:message:)]) {
        //: should = [self.delegate shouldChangeTextInRange:range replacementText:replacementText];
        should = [self.delegate colorChangeTitle:range message:replacementText];
    }
    //: return should;
    return should;
}


//: - (BOOL)textViewShouldBeginEditing:(FFFGrowingTextView *)growingTextView
- (BOOL)canEditing:(ImageScrollView *)growingTextView
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(textViewShouldBeginEditing)]) {
    if ([self.delegate respondsToSelector:@selector(itemAfter)]) {
        //: should = [self.delegate textViewShouldBeginEditing];
        should = [self.delegate itemAfter];
    }
    //: return should;
    return should;
}

//: - (void)textViewDidEndEditing:(FFFGrowingTextView *)growingTextView
- (void)cleanDoing:(ImageScrollView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidEndEditing)]) {
    if ([self.delegate respondsToSelector:@selector(postBackVersion)]) {
        //: [self.delegate textViewDidEndEditing];
        [self.delegate postBackVersion];
    }
}


//: - (void)textViewDidChange:(FFFGrowingTextView *)growingTextView
- (void)read:(ImageScrollView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidChange)]) {
    if ([self.delegate respondsToSelector:@selector(recordOn)]) {
        //: [self.delegate textViewDidChange];
        [self.delegate recordOn];
    }

    //: if (_inputTextView.text.length > 0) {
    if (_inputTextView.text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);


    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }
}

//: - (void)willChangeHeight:(CGFloat)height
- (void)finds:(CGFloat)height
{
    //: CGFloat toolBarHeight = height + 2 * self.spacing +50 ;
    CGFloat toolBarHeight = height + 2 * self.keyThan +50 ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarWillChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(highnessing:)]) {
        //: [self.delegate toolBarWillChangeHeight:toolBarHeight];
        [self.delegate highnessing:toolBarHeight];
    }
}

//: - (void)didChangeHeight:(CGFloat)height
- (void)managerHeight:(CGFloat)height
{
    //去掉了+50
    //: self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding;
    self.nim_height = height + 2 * self.keyThan + 2 * self.past;
//    self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarDidChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(toolDisableGraduate:)]) {
        //: [self.delegate toolBarDidChangeHeight:self.nim_height];
        [self.delegate toolDisableGraduate:self.nim_height];
    }
}


//: #pragma mark - Get
#pragma mark - Get
//: - (UIView *)subViewForType:(ViewInputBarItemType)type{
- (UIView *)rubric:(ViewInputBarItemType)type{
    //: if (!_dict) {
    if (!_dict) {
        //: _dict = @{
        _dict = @{
//                  @(ViewInputBarItemTypeVoice) : self.voiceButton,
//                  @(ViewInputBarItemTypeTextAndRecord)  : self.inputTextBkgImage,
                  //: @(ViewInputBarItemTypeEmoticon) : self.emoticonBtn,
                  @(ViewInputBarItemTypeEmoticon) : self.emoticonBtn,
//                  @(ViewInputBarItemTypeMore)     : self.moreMediaBtn,
                  //: @(ViewInputBarItemTypeSend) : self.sendButton,
                  @(ViewInputBarItemTypeSend) : self.sendButton,
                //: };
                };
    }
    //: return _dict[@(type)];
    return _dict[@(type)];
}

//: - (CGFloat)spacing{
- (CGFloat)keyThan{
    //: return 6.f;
    return 6.f;
}

//: - (CGFloat)textViewPadding
- (CGFloat)past
{
    //: return 3.f;
    return 3.f;
}


//: @end
@end


//: @implementation FFFInputToolBar(InputText)
@implementation MaxKeyView(InputText)

//: - (NSRange)selectedRange
- (NSRange)bluish
{
    //: return self.inputTextView.selectedRange;
    return self.inputTextView.selectedRange;
}

//: - (void)setPlaceHolder:(NSString *)placeHolder
- (void)setPin:(NSString *)placeHolder
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
}

//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor
- (void)requisite:(NSString *)placeHolder shared:(UIColor *)placeholderColor
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
}

//: - (void)insertText:(NSString *)text
- (void)saveAccount:(NSString *)text
{
//    NSRange range = self.inputTextView.selectedRange;
//    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
//    range = NSMakeRange(range.location + text.length, 0);
//    self.inputTextView.text = replaceText;
//    self.inputTextView.selectedRange = range;

    //: [self insertAttributedText:text withEmoji:NO];
    [self day:text segment:NO];
}

//: - (void)deleteText:(NSRange)range
- (void)window:(NSRange)range
{
    //: NSString *text = self.contentText;
    NSString *text = self.contentText;
    //: if (range.location + range.length <= [text length]
    if (range.location + range.length <= [text length]
        //: && range.location != NSNotFound && range.length != 0)
        && range.location != NSNotFound && range.length != 0)
    {
        //: NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        //: NSRange newSelectRange = NSMakeRange(range.location, 0);
        NSRange newSelectRange = NSMakeRange(range.location, 0);
        //: [self.inputTextView setText:newText];
        [self.inputTextView setText:newText];
        //: self.inputTextView.selectedRange = newSelectRange;
        self.inputTextView.selectedRange = newSelectRange;
    }
}

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji {
- (void)day:(NSString *)text segment:(BOOL)isEmoji {

//    if (text.length > 0) {
//        self.inputTextView.placeholderAttributedText = nil;
//    }
    //: if (text.length > 0) {
    if (text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.inputTextView.placeholderAttributedText = nil;
        self.inputTextView.placeholderAttributedText = nil;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.emoticonBtn2.hidden = YES;

//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;


//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }

    //: if (isEmoji) {
    if (isEmoji) {

        //: NSRange range = self.inputTextView.selectedRange;
        NSRange range = self.inputTextView.selectedRange;
        //: self.inputTextView.attributedText = [self nim_setText:text];
        self.inputTextView.attributedText = [self withName:text];
        //: range = NSMakeRange(range.location + 2, 0);
        range = NSMakeRange(range.location + 2, 0);
        //: self.inputTextView.selectedRange = range;
        self.inputTextView.selectedRange = range;
        //: [self.inputTextView scrollRangeToVisible:self.inputTextView.selectedRange];
        [self.inputTextView comment:self.inputTextView.selectedRange];

        //: return;
        return;
    }


    //: NSRange range = self.inputTextView.selectedRange;
    NSRange range = self.inputTextView.selectedRange;
    //: NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    //: range = NSMakeRange(range.location + text.length, 0);
    range = NSMakeRange(range.location + text.length, 0);

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    //: self.inputTextView.attributedText = attributedStringM;
    self.inputTextView.attributedText = attributedStringM;
    //: self.inputTextView.selectedRange = range;
    self.inputTextView.selectedRange = range;
}

//: - (NSMutableAttributedString *)nim_setText:(NSString *)text
- (NSMutableAttributedString *)withName:(NSString *)text
{

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];

    //: NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:text];
    CellEmoticon *emoticon = [[AppManager administrator] doName:text];
    //: UIImage *image = nil;
    UIImage *image = nil;

    //: if(emoticon.filename &&
    if(emoticon.filename &&
       //: emoticon.filename.length>0 &&
       emoticon.filename.length>0 &&
        //: (image = [UIImage nim_emoticonInKit:emoticon.filename])!= nil) {
        (image = [UIImage disable:emoticon.filename])!= nil) {

        //: NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        //: attachment.image = image;
        attachment.image = image;
        //: CGFloat emojiHeight = _inputTextView.font.lineHeight;
        CGFloat emojiHeight = _inputTextView.font.lineHeight;
        //: attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);
        attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        //: [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        //: [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];
        [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: FFFTextHighlight *highlight = [[FFFTextHighlight alloc] init];
        SmartNameHighlight *highlight = [[SmartNameHighlight alloc] init];
        //: highlight.type = FFFTextHighlightTypeEmoji;
        highlight.type = FFFTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;

    }

    //: else {
    else {

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: FFFTextHighlight *highlight = [[FFFTextHighlight alloc] init];
        SmartNameHighlight *highlight = [[SmartNameHighlight alloc] init];
        //: highlight.type = FFFTextHighlightTypeEmoji;
        highlight.type = FFFTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;
    }

    //: return attributedStringM;
    return attributedStringM;
}

//: @end
@end

Byte * DonDataToCache(Byte *data) {
    int preconceive = data[0];
    int scoopScientist = data[1];
    Byte publicly = data[2];
    int knifeEdge = data[3];
    if (!preconceive) return data + knifeEdge;
    for (int i = knifeEdge; i < knifeEdge + scoopScientist; i++) {
        int value = data[i] + publicly;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[knifeEdge + scoopScientist] = 0;
    return data + knifeEdge;
}

NSString *StringFromDonData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DonDataToCache(data)];
}
