//
//  FFFInputToolBar.m
// MyUserKit
//
//  Created by chris
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "FFFInputToolBar.h"
#import "UIViewNimKit.h"
#import "UIImage+MyUserKit.h"
#import "FFFInputBarItemType.h"
#import "FFFInputEmoticonManager.h"
#import "YYText.h"
#import "FFFTextHighlight.h"
#import "FFFKitKeyboardInfo.h"

@interface FFFInputToolBar()<FFFGrowingTextViewDelegate>

@property (nonatomic,copy)  NSArray<NSNumber *> *types;

@property (nonatomic,copy)  NSDictionary *dict;

@property (nonatomic,assign) NIMInputStatus status;

@end

@implementation FFFInputToolBar

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        _voiceButton.backgroundColor = ThemeColor;
//        _voiceButton.layer.cornerRadius = 14;
        [_voiceButton setImage:[UIImage imageNamed:@"icon_toolview_keyboard_normal"] forState:UIControlStateNormal];
        [self addSubview:_voiceButton];
        
        _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_emoticonBtn setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
        [self addSubview:_emoticonBtn];
        
//        _emoticonBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateSelected];
//        _emoticonBtn2.hidden = YES;
//        [self addSubview:_emoticonBtn2];
        
        _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_albunBtn setImage:[UIImage imageNamed:@"icon_toolview_album_normal"] forState:UIControlStateNormal];
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
        
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sendButton setImage:[UIImage imageNamed:@"icon_toolview_send"] forState:UIControlStateNormal];
        _sendButton.hidden = YES;
        [self addSubview:_sendButton];
//        [_sendButton sizeToFit];
//        _sendButton.hitTestEdgeInsets = UIEdgeInsetsMake(-10, -10, -10, -10);
        
//        _inputTextBkgImage = [[UIImageView alloc] initWithFrame:CGRectZero];
//        [_inputTextBkgImage setImage:[[UIImage imageNamed:@"icon_input_text_bg_"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch]];
        
        _inputTextView = [[FFFGrowingTextView alloc] initWithFrame:CGRectZero];
        _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        _inputTextView.minNumberOfLines = 1;
        _inputTextView.textColor = [UIColor blackColor];
        _inputTextView.backgroundColor = [UIColor clearColor];
        _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;
        
        _inputTextView.textViewDelegate = self;
//        _inputTextView.returnKeyType = UIReturnKeySend;
        _inputTextView.returnKeyType = UIReturnKeyDefault;
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
        
        self.types = @[
//            @(FFFInputBarItemTypeMore),
//            @(FFFInputBarItemTypeEmoticon),
//                         @(FFFInputBarItemTypeVoice),
                         @(FFFInputBarItemTypeTextAndRecord),
                         @(FFFInputBarItemTypeSend),

                       ];
        
        
        
    }
    return self;
}



- (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
    self.types = types;
    [self setNeedsLayout];
}

- (NSString *)contentText
{
    return self.inputTextView.text;
}

- (void)setContentText:(NSString *)contentText
{
    self.inputTextView.text = contentText;
}

- (NSArray *)inputBarItemTypes
{
    return self.types;
}


- (CGSize)sizeThatFits:(CGSize)size
{
    CGFloat viewHeight = 0.0f;
  if(self.status == NIMInputStatusText){
        //算出 TextView 的宽度
        [self adjustTextViewWidth:size.width];
        // TextView 自适应高度
        [self.inputTextView layoutIfNeeded];
        viewHeight = (int)self.inputTextView.frame.size.height;
        //得到 ToolBar 自身高度
        viewHeight = viewHeight + 2*self.spacing;
      
    }else {
        viewHeight = 51;
     
    }
    
    return CGSizeMake(size.width,viewHeight);
}

- (void)adjustTextViewWidth:(CGFloat)width
{
//    CGFloat textViewWidth = 0;
//    for (NSNumber *type in self.types) {
//        if (type.integerValue == FFFInputBarItemTypeTextAndRecord) {
//            continue;
//        }
//        UIView *view = [self subViewForType:type.integerValue];
//        textViewWidth += view.nim_width;
//    }
//    textViewWidth += (self.spacing * (self.types.count + 1));
    self.inputTextView.nim_width  = width - 140 - 4*self.textViewPadding;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
    self.emoticonBtn.frame = CGRectMake(12, self.spacing+2, 32, 32);
    self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-15-32-15-32, self.spacing+2, 32, 32);
    
    self.inputTextView.nim_left = 56;
    self.inputTextView.nim_top = self.spacing;
    
    self.voiceButton.frame = CGRectMake(SCREEN_WIDTH-15-32, self.spacing+2, 32, 32);
    
    self.emoticonBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.albunBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.voiceButton.nim_centerY = self.inputTextView.nim_centerY;
    
    
    
    self.sendButton.frame = CGRectMake(SCREEN_WIDTH-15-48, self.spacing, 48, 32);
    self.sendButton.nim_centerY = self.inputTextView.nim_centerY;
    
    self.sendButton.hidden = YES;
    self.albunBtn.hidden = NO;
    self.emoticonBtn.hidden = NO;
    self.voiceButton.hidden = NO;
    
    if (self.inputTextView.text.length > 0) {
        self.sendButton.hidden = NO;
        self.albunBtn.hidden = YES;
        self.voiceButton.hidden = YES;
    } else {
        self.sendButton.hidden = YES;
        self.albunBtn.hidden = NO;
        self.voiceButton.hidden = NO;
    }
}



- (void)adjustTextAndRecordView
{
    if ([self.types containsObject:@(FFFInputBarItemTypeTextAndRecord)])
    {
//        self.inputTextView.center  = self.inputTextBkgImage.center;
        
        if (!self.inputTextView.superview)
        {
            //输入框
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

- (BOOL)showsKeyboard
{
    return [self.inputTextView isFirstResponder];
}


- (void)setShowsKeyboard:(BOOL)showsKeyboard
{
    if (showsKeyboard)
    {
        [self.inputTextView becomeFirstResponder];
    }
    else
    {
        [self.inputTextView resignFirstResponder];
    }
}


- (void)update:(NIMInputStatus)status
{
    self.status = status;
    [self sizeToFit];
    
    if (status == NIMInputStatusText || status == NIMInputStatusMore)
    {
        [self.inputTextView setHidden:NO];
        [self updateEmotAndTextBtnImages:YES];
        [self layoutSubviews];
        
    }
    else if(status == NIMInputStatusAudio)
    {
        [self.inputTextView setHidden:YES];
        [self updateEmotAndTextBtnImages:YES];
    }
    else
    {
        [self.inputTextView setHidden:NO];
        [self updateEmotAndTextBtnImages:NO];
    }
}

- (void)updateEmotAndTextBtnImages:(BOOL)selected
{
    [self.emoticonBtn setImage:selected?[UIImage imageNamed:@"icon_toolview_emotion_normal"]:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateNormal];
}


#pragma mark - FFFGrowingTextViewDelegate
- (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText
{
    BOOL should = YES;
    if ([self.delegate respondsToSelector:@selector(shouldChangeTextInRange:replacementText:)]) {
        should = [self.delegate shouldChangeTextInRange:range replacementText:replacementText];
    }
    return should;
}


- (BOOL)textViewShouldBeginEditing:(FFFGrowingTextView *)growingTextView
{
    BOOL should = YES;
    if ([self.delegate respondsToSelector:@selector(textViewShouldBeginEditing)]) {
        should = [self.delegate textViewShouldBeginEditing];
    }
    return should;
}

- (void)textViewDidEndEditing:(FFFGrowingTextView *)growingTextView
{
    if ([self.delegate respondsToSelector:@selector(textViewDidEndEditing)]) {
        [self.delegate textViewDidEndEditing];
    }
}


- (void)textViewDidChange:(FFFGrowingTextView *)growingTextView
{
    if ([self.delegate respondsToSelector:@selector(textViewDidChange)]) {
        [self.delegate textViewDidChange];
    }
    
    if (_inputTextView.text.length > 0) {
        self.sendButton.hidden = NO;
        self.albunBtn.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);
        
        
    } else {
        self.sendButton.hidden = YES;
        self.albunBtn.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }
}

- (void)willChangeHeight:(CGFloat)height
{
    CGFloat toolBarHeight = height + 2 * self.spacing +50 ;
    if ([self.delegate respondsToSelector:@selector(toolBarWillChangeHeight:)]) {
        [self.delegate toolBarWillChangeHeight:toolBarHeight];
    }
}

- (void)didChangeHeight:(CGFloat)height
{
    //去掉了+50
    self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding;
//    self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding ;
    if ([self.delegate respondsToSelector:@selector(toolBarDidChangeHeight:)]) {
        [self.delegate toolBarDidChangeHeight:self.nim_height];
    }
}


#pragma mark - Get
- (UIView *)subViewForType:(FFFInputBarItemType)type{
    if (!_dict) {
        _dict = @{
//                  @(FFFInputBarItemTypeVoice) : self.voiceButton,
//                  @(FFFInputBarItemTypeTextAndRecord)  : self.inputTextBkgImage,
                  @(FFFInputBarItemTypeEmoticon) : self.emoticonBtn,
//                  @(FFFInputBarItemTypeMore)     : self.moreMediaBtn,
                  @(FFFInputBarItemTypeSend)     : self.sendButton,
                };
    }
    return _dict[@(type)];
}

- (CGFloat)spacing{
    return 6.f;
}

- (CGFloat)textViewPadding
{
    return 3.f;
}


@end


@implementation FFFInputToolBar(InputText)

- (NSRange)selectedRange
{
    return self.inputTextView.selectedRange;
}

- (void)setPlaceHolder:(NSString *)placeHolder
{
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
}

- (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor
{
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
}

- (void)insertText:(NSString *)text
{
//    NSRange range = self.inputTextView.selectedRange;
//    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
//    range = NSMakeRange(range.location + text.length, 0);
//    self.inputTextView.text = replaceText;
//    self.inputTextView.selectedRange = range;
    
    [self insertAttributedText:text withEmoji:NO];
}

- (void)deleteText:(NSRange)range
{
    NSString *text = self.contentText;
    if (range.location + range.length <= [text length]
        && range.location != NSNotFound && range.length != 0)
    {
        NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        NSRange newSelectRange = NSMakeRange(range.location, 0);
        [self.inputTextView setText:newText];
        self.inputTextView.selectedRange = newSelectRange;
    }
}

//// 2022年08月25日 emoji处理
- (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji {
    
//    if (text.length > 0) {
//        self.inputTextView.placeholderAttributedText = nil;
//    }
    if (text.length > 0) {
        self.sendButton.hidden = NO;
        self.inputTextView.placeholderAttributedText = nil;
        self.albunBtn.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);
    } else {
        self.sendButton.hidden = YES;
        self.albunBtn.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.emoticonBtn2.hidden = YES;
        
//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;
        
        
//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }
    
    if (isEmoji) {
        
        NSRange range = self.inputTextView.selectedRange;
        self.inputTextView.attributedText = [self nim_setText:text];
        range = NSMakeRange(range.location + 2, 0);
        self.inputTextView.selectedRange = range;
        [self.inputTextView scrollRangeToVisible:self.inputTextView.selectedRange];
        
        return;
    }
    
    
    NSRange range = self.inputTextView.selectedRange;
    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    range = NSMakeRange(range.location + text.length, 0);
    
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    self.inputTextView.attributedText = attributedStringM;
    self.inputTextView.selectedRange = range;
}

- (NSMutableAttributedString *)nim_setText:(NSString *)text
{
    
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];

    NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:text];
    UIImage *image = nil;
    
    if(emoticon.filename &&
       emoticon.filename.length>0 &&
        (image = [UIImage nim_emoticonInKit:emoticon.filename])!= nil) {

        NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        attachment.image = image;
        CGFloat emojiHeight = _inputTextView.font.lineHeight;
        attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);
        
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];
        
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        
        FFFTextHighlight *highlight = [[FFFTextHighlight alloc] init];
        highlight.type = FFFTextHighlightTypeEmoji;
        highlight.text = emoticon.tag;
        
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        attributedStringM.yy_font = _inputTextView.font;

    }
     
    else {
        
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        FFFTextHighlight *highlight = [[FFFTextHighlight alloc] init];
        highlight.type = FFFTextHighlightTypeEmoji;
        highlight.text = emoticon.tag;
     
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        attributedStringM.yy_font = _inputTextView.font;
    }

    return attributedStringM;
}

@end
