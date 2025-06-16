//
//  M80AttributedLabel.m
//  M80AttributedLabel
//
//  Created by amao on 13-9-1.
//  Copyright (c) 2013年 www.xiangwangfeng.com. All rights reserved.
//

#import "M80AttributedLabel.h"
#import "UIImage+NeeyoKit.h"
#import "FFFTextHighlight.h"

static NSString* const M80EllipsesCharacter = @"\u2026";

@interface M80AttributedLabel ()
@property (nonatomic,strong)    NSMutableAttributedString   *attributedString;
@property (nonatomic,strong)    NSMutableArray              *linkLocations;
@property (nonatomic,strong)    M80AttributedLabelURL       *touchedLink;

@property (nonatomic,assign)    CGFloat fontAscent;
@property (nonatomic,assign)    CGFloat fontDescent;
@property (nonatomic,assign)    CGFloat fontHeight;
@property (nonatomic,assign)    BOOL linkDetected;
@end

@implementation M80AttributedLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

#pragma mark - 初始化
- (void)commonInit
{
    _attributedString       = [[NSMutableAttributedString alloc]init];
    _linkLocations          = [[NSMutableArray alloc]init];
    _linkColor              = [UIColor blueColor];
//    _shadowColor = [UIColor clearColor];
    self.font               = [UIFont systemFontOfSize:14];
    self.textColor          = [UIColor whiteColor];
    _highlightColor         = [UIColor colorWithRed:0xd7/255.0
                                              green:0xf2/255.0
                                               blue:0xff/255.0
                                              alpha:1];
    self.textContainer.lineBreakMode = NSLineBreakByWordWrapping;
    _underLineForLink       = YES;
    _autoDetectLinks        = YES;
    _lineSpacing            = 0.0;
    _paragraphSpacing       = 0.0;
    self.textContainerInset = UIEdgeInsetsZero;
    self.textContainer.lineFragmentPadding = 0;

    if (self.backgroundColor == nil)
    {
        self.backgroundColor = [UIColor clearColor];
    }
    
    self.bounces = NO;
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
    
    NSUnderlineStyle style = _underLineForLink ? NSUnderlineStyleSingle : NSUnderlineStyleNone;
    UIColor *color = self.linkColor? :[UIColor whiteColor];
    self.linkTextAttributes = @{
                                NSForegroundColorAttributeName:color ,
                                NSUnderlineStyleAttributeName:@(style)};

    self.isShowTextSelection = NO;
    self.userInteractionEnabled = NO;
}

- (void)setIsShowTextSelection:(BOOL)isShowTextSelection {
    _isShowTextSelection = isShowTextSelection;
    self.userInteractionEnabled = isShowTextSelection;
}

#pragma mark - 辅助方法
- (NSAttributedString *)attributedString:(NSString *)text
{
    if ([text length])
    {
        NSMutableAttributedString *string = [[NSMutableAttributedString alloc]initWithString:text];
        return string;
    }
    else
    {
        return [[NSAttributedString alloc] init];
    }
}

- (NSInteger)numberOfDisplayedLines
{
    return _numberOfLines > 0 ? _numberOfLines : 0;
}

- (NSAttributedString *)attributedStringForDraw:(NSMutableAttributedString *)drawString
{
    if (drawString)
    {
        //添加排版格式
        
        //如果LineBreakMode为TranncateTail,那么默认排版模式改成kCTLineBreakByCharWrapping,使得尽可能地显示所有文字
        CTLineBreakMode lineBreakMode = self.lineBreakMode;
        if (self.lineBreakMode == kCTLineBreakByTruncatingTail)
        {
            lineBreakMode = _numberOfLines == 1 ? kCTLineBreakByTruncatingTail : kCTLineBreakByWordWrapping;
        }
        CGFloat fontLineHeight = self.font.lineHeight;  //使用全局fontHeight作为最小lineHeight
        
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.paragraphSpacing = _paragraphSpacing;//
        paragraphStyle.alignment = self.textAlignment;//
        paragraphStyle.lineBreakMode = self.lineBreakMode;//
        
        paragraphStyle.lineSpacing = self.lineSpacing;//
        paragraphStyle.minimumLineHeight = fontLineHeight;//
        paragraphStyle.lineBreakMode = self.lineBreakMode;//
        
        UIFont *font = self.font ? : [UIFont systemFontOfSize:20];
        UIColor *color = self.textColor? :[UIColor whiteColor];
        
        NSDictionary *attdic = @{NSParagraphStyleAttributeName : paragraphStyle , NSFontAttributeName: font, NSForegroundColorAttributeName:color};
                
        [drawString addAttributes:attdic range:drawString.yy_rangeOfAll];
        
        return drawString;
    }
    else
    {
        return nil;
    }
}

+ (NSRegularExpression *)regexEmoticon {
    static NSRegularExpression *regex;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        regex = [NSRegularExpression regularExpressionWithPattern:@"\\[[^ \\[\\]]+?\\]" options:kNilOptions error:NULL];
    });
    return regex;
}

- (NSMutableAttributedString *)transformEmojiDescToEomjiImageWithAttributedString:(NSAttributedString *)attributedString {
    // 匹配 [表情]
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    if (attrM.length > 0) {
        
        NSArray<NSTextCheckingResult *> *emoticonResults = [[M80AttributedLabel regexEmoticon] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        UIFont *fontSize = self.font ? : [UIFont systemFontOfSize:20];

        NSTextAlignment textAlignment = attrM.yy_alignment;
        CGFloat lineSpacing = attrM.yy_lineSpacing;
        
        [emoticonResults enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult * _Nonnull emo, NSUInteger idx, BOOL * _Nonnull stop) {
            NSRange range = emo.range;
            if (range.location == NSNotFound && range.length <= 1) return;
            
            if ([attrM yy_attribute:YYTextHighlightAttributeName atIndex:range.location]) return;
            if ([attrM yy_attribute:YYTextAttachmentAttributeName atIndex:range.location]) return;
            NSString *emoString = [attrM.string substringWithRange:range];
            
            NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:emoString];
            
            UIImage *image = [UIImage nim_emoticonInKit:emoticon.filename];

            if (image != nil || emoticon.unicode) {
                
                NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
                attachment.image = image;
                CGFloat emojiHeight = fontSize.lineHeight;
                attachment.bounds = CGRectMake(0, fontSize.descender, emojiHeight*1.3, emojiHeight*1.3);
                
                NSMutableAttributedString *emoText = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
                [emoText appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
                [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
                [emoText yy_setAttachment:attachment range:emoText.yy_rangeOfAll];
                
                if (!image && emoticon.unicode){
                    emoText = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
                    [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
                }
                
                FFFTextHighlight *highlight = [[FFFTextHighlight alloc] init];
                highlight.type = FFFTextHighlightTypeEmoji;
                highlight.text = emoString;
                [emoText yy_setTextHighlight:highlight range:NSMakeRange(0, emoText.length)];
                if (image || (!image && emoticon.unicode)) {
                    [attrM replaceCharactersInRange:range withAttributedString:emoText];
                }
            }
            
        }];
        attrM.yy_font = fontSize;
        attrM.yy_alignment = textAlignment;
        attrM.yy_lineSpacing = lineSpacing;
    }
    return attrM;
}


- (NSMutableAttributedString*)needHightText:(NSMutableAttributedString *)wholeText {

    //点击事件用的YYLabel框架
    NSMutableAttributedString *text = wholeText;
    NSError *error;
    NSDataDetector *dataDetector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypeLink|NSTextCheckingTypePhoneNumber error:&error];
    NSArray *arrayOfAllMatches = [dataDetector matchesInString:wholeText.string options:NSMatchingReportProgress range:NSMakeRange(0, wholeText.length)];
    //NSMatchingOptions匹配方式也有好多种，我选择NSMatchingReportProgress，一直匹配
    
    //我们得到一个数组，这个数组中NSTextCheckingResult元素中包含我们要找的URL的range，当然可能找到多个URL，找到相应的URL的位置，用YYlabel的高亮点击事件处理跳转网页
    [arrayOfAllMatches enumerateObjectsUsingBlock:^(NSTextCheckingResult *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                
        if (obj.URL && obj.URL.absoluteString.length > 0) {
            [text addAttribute:NSLinkAttributeName value:obj.URL.absoluteString range:obj.range];
        }
        
//        NSUnderlineStyle style = _underLineForLink ? NSUnderlineStyleSingle : NSUnderlineStyleNone;
//        UIColor *color = self.linkColor? :[UIColor whiteColor];
//        UIColor *highlightColor = self.highlightColor? :[UIColor whiteColor];
//
//        [text addAttribute:NSUnderlineStyleAttributeName value:@(style) range:obj.range];
//        [text addAttribute:NSForegroundColorAttributeName value:color range:obj.range];
//        [text addAttribute:NSBackgroundColorAttributeName value:highlightColor range:obj.range];

    }];
    
    return text;
}


#pragma mark - 设置文本
- (void)setText:(NSString *)text
{
    NSAttributedString *attributedText = [self attributedString:text];
    [self setAttributedText:attributedText];
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
    NSAttributedString *attString = [self attributedStringForDraw:[[NSMutableAttributedString alloc] initWithAttributedString:attributedText]];
    _attributedString = [self needHightText:[self transformEmojiDescToEomjiImageWithAttributedString:attString]];
    [super setAttributedText:_attributedString];
}

- (NSString *)text
{
    return [_attributedString string];
}

- (NSAttributedString *)attributedText
{
    return [_attributedString copy];
}

#pragma mark - 添加文本
- (void)appendText:(NSString *)text
{
    NSAttributedString *attributedText = [self attributedString:text];
    [self appendAttributedText:attributedText];
}

- (void)appendAttributedText:(NSAttributedString *)attributedText
{
    [_attributedString appendAttributedString:attributedText];
    [self setAttributedText:_attributedString];
}


#pragma mark - 计算大小
- (CGSize)intrinsicContentSize
{
    CGSize size = [self sizeThatFits:CGSizeMake(CGRectGetWidth(self.bounds), CGFLOAT_MAX)];
    return CGSizeMake(ceilf(size.width)+1, ceilf(size.height)+1);
}

#pragma mark - 属性设置

- (void)setHighlightColor:(UIColor *)highlightColor
{
    if (_highlightColor != highlightColor)
    {
        _highlightColor = highlightColor;
        
    }
}

- (void)setLinkColor:(UIColor *)linkColor
{
    if (_linkColor != linkColor)
    {
        _linkColor = linkColor;
        
    }
}

- (void)setShadowColor:(UIColor *)shadowColor
{
    if (_shadowColor != shadowColor)
    {
        _shadowColor = shadowColor;
        
    }
}

- (void)setShadowOffset:(CGSize)shadowOffset
{
    if (!CGSizeEqualToSize(_shadowOffset, shadowOffset))
    {
        _shadowOffset = shadowOffset;
        
    }
}

- (void)setShadowBlur:(CGFloat)shadowBlur
{
    if (_shadowBlur != shadowBlur)
    {
        _shadowBlur = shadowBlur;
        
    }
}

- (void)setUnderLineForLink:(BOOL)underLineForLink
{
    if (_underLineForLink != underLineForLink)
    {
        _underLineForLink = underLineForLink;
        
    }
}

- (void)setAutoDetectLinks:(BOOL)autoDetectLinks
{
    if (_autoDetectLinks != autoDetectLinks)
    {
        _autoDetectLinks = autoDetectLinks;
        
    }
}

- (void)setNumberOfLines:(NSInteger)numberOfLines
{
    if (_numberOfLines != numberOfLines)
    {
        _numberOfLines = numberOfLines;
        self.textContainer.maximumNumberOfLines = numberOfLines;
        
    }
}

- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode
{
    if (_lineBreakMode != lineBreakMode)
    {
        _lineBreakMode = lineBreakMode;
        self.textContainer.lineBreakMode = lineBreakMode;
        
    }
}

- (void)setLineSpacing:(CGFloat)lineSpacing
{
    if (_lineSpacing != lineSpacing)
    {
        _lineSpacing = lineSpacing;
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpacing;// 字体的行间距
        self.typingAttributes = @{NSParagraphStyleAttributeName : paragraphStyle};

    }
}

- (void)setParagraphSpacing:(CGFloat)paragraphSpacing
{
    if (_paragraphSpacing != paragraphSpacing)
    {
        _paragraphSpacing = paragraphSpacing;
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.paragraphSpacing = paragraphSpacing;//
        self.typingAttributes = @{NSParagraphStyleAttributeName : paragraphStyle};
 
    }
}


@end
