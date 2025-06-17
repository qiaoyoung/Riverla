
#import <Foundation/Foundation.h>

NSString *StringFromCheckData(Byte *data);        


//: dealloc
Byte kStr_flueValue[] = {70, 7, 62, 10, 157, 31, 21, 168, 65, 207, 38, 39, 35, 46, 46, 49, 37, 249};


//: font
Byte kStr_paintValue[] = {10, 4, 23, 5, 17, 79, 88, 87, 93, 43};


//: frame
Byte kStr_willCurrentTitle[] = {42, 5, 50, 12, 246, 191, 133, 226, 247, 35, 76, 49, 52, 64, 47, 59, 51, 126};


//: textAlignment
Byte kStr_mumName[] = {29, 13, 71, 6, 92, 86, 45, 30, 49, 45, 250, 37, 34, 32, 39, 38, 30, 39, 45, 74};


//: bounds
Byte kStr_burningText[] = {76, 6, 26, 5, 27, 72, 85, 91, 84, 74, 89, 27};


//: text
Byte kStr_naturallyTitle[] = {79, 4, 50, 11, 34, 214, 245, 116, 109, 20, 115, 66, 51, 70, 66, 40};


//: textContainerInset
Byte kStr_viewStatusApologyData[] = {18, 18, 4, 11, 223, 203, 8, 134, 109, 15, 250, 112, 97, 116, 112, 63, 107, 106, 112, 93, 101, 106, 97, 110, 69, 106, 111, 97, 112, 57};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UITextView+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/6/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//
// 占位文字

// __M_A_C_R_O__
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: static const void *WZBPlaceholderViewKey = &WZBPlaceholderViewKey;
static const void *kLet_viewMainData = &kLet_viewMainData;
// 占位文字颜色
//: static const void *WZBPlaceholderColorKey = &WZBPlaceholderColorKey;
static const void *kLet_customValue = &kLet_customValue;
// 最大高度
//: static const void *WZBTextViewMaxHeightKey = &WZBTextViewMaxHeightKey;
static const void *kLet_labelName = &kLet_labelName;
// 最小高度
//: static const void *WZBTextViewMinHeightKey = &WZBTextViewMinHeightKey;
static const void *kLet_dotName = &kLet_dotName;
// 高度变化的block
//: static const void *WZBTextViewHeightDidChangedBlockKey = &WZBTextViewHeightDidChangedBlockKey;
static const void *kLet_fieldData = &kLet_fieldData;
// 存储添加的图片
//: static const void *WZBTextViewImageArrayKey = &WZBTextViewImageArrayKey;
static const void *kLet_modelText = &kLet_modelText;
// 存储最后一次改变高度后的值
//: static const void *WZBTextViewLastHeightKey = &WZBTextViewLastHeightKey;
static const void *kLet_pathName = &kLet_pathName;
//: @interface UITextView ()
@interface UITextView ()
// 存储添加的图片
//: @property (nonatomic, strong) NSMutableArray *imageArray;
@property (nonatomic, strong) NSMutableArray *imageArray;
// 存储最后一次改变高度后的值
//: @property (nonatomic, assign) CGFloat lastHeight;
@property (nonatomic, assign) CGFloat lastHeight;

//: @end
@end

//: @implementation UITextView (Util)
@implementation UITextView (Util)

//: #pragma mark - Swizzle Dealloc
#pragma mark - Swizzle Dealloc
//: + (void)load {
+ (void)load {
    // 交换dealoc
    //: Method dealoc = class_getInstanceMethod(self.class, NSSelectorFromString(@"dealloc"));
    Method dealoc = class_getInstanceMethod(self.class, NSSelectorFromString(StringFromCheckData(kStr_flueValue)));
    //: Method myDealoc = class_getInstanceMethod(self.class, @selector(myDealoc));
    Method myDealoc = class_getInstanceMethod(self.class, @selector(startMessage));
    //: method_exchangeImplementations(dealoc, myDealoc);
    method_exchangeImplementations(dealoc, myDealoc);
}

//: - (void)myDealoc {
- (void)startMessage {
    // 移除监听
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, kLet_viewMainData);

    // 如果有值才去调用，这步很重要
    //: if (placeholderView) {
    if (placeholderView) {
        //: NSArray *propertys = @[@"frame", @"bounds", @"font", @"text", @"textAlignment", @"textContainerInset"];
        NSArray *propertys = @[StringFromCheckData(kStr_willCurrentTitle), StringFromCheckData(kStr_burningText), StringFromCheckData(kStr_paintValue), StringFromCheckData(kStr_naturallyTitle), StringFromCheckData(kStr_mumName), StringFromCheckData(kStr_viewStatusApologyData)];
        //: for (NSString *property in propertys) {
        for (NSString *property in propertys) {
            //: @try {
            @try {
                //: [self removeObserver:self forKeyPath:property];
                [self removeObserver:self forKeyPath:property];
            //: } @catch (NSException *exception) {}
            } @catch (NSException *exception) {}
        }
    }
    //: [self myDealoc];
    [self startMessage];
}

//: #pragma mark - set && get
#pragma mark - set && get
//: - (UITextView *)placeholderView {
- (UITextView *)imageRead {

    // 为了让占位文字和textView的实际文字位置能够完全一致，这里用UITextView
    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, kLet_viewMainData);

    //: if (!placeholderView) {
    if (!placeholderView) {

        // 初始化数组
        //: self.imageArray = [NSMutableArray array];
        self.imageArray = [NSMutableArray array];

        //: placeholderView = [[UITextView alloc] init];
        placeholderView = [[UITextView alloc] init];
        // 动态添加属性的本质是: 让对象的某个属性与值产生关联
        //: objc_setAssociatedObject(self, WZBPlaceholderViewKey, placeholderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        objc_setAssociatedObject(self, kLet_viewMainData, placeholderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        //: placeholderView = placeholderView;
        placeholderView = placeholderView;

        // 设置基本属性
        //: self.scrollEnabled = placeholderView.scrollEnabled = placeholderView.showsHorizontalScrollIndicator = placeholderView.showsVerticalScrollIndicator = placeholderView.userInteractionEnabled = NO;
        self.scrollEnabled = placeholderView.scrollEnabled = placeholderView.showsHorizontalScrollIndicator = placeholderView.showsVerticalScrollIndicator = placeholderView.userInteractionEnabled = NO;
        //: placeholderView.textColor = [UIColor colorWithInt:0xffc4c4c4];
        placeholderView.textColor = [UIColor with:0xffc4c4c4];
        //: placeholderView.backgroundColor = [UIColor clearColor];
        placeholderView.backgroundColor = [UIColor clearColor];
        //: [self refreshPlaceholderView];
        [self fast];
        //: [self addSubview:placeholderView];
        [self addSubview:placeholderView];

        // 监听文字改变
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextChange) name:UITextViewTextDidChangeNotification object:self];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(atomicNumber85) name:UITextViewTextDidChangeNotification object:self];

        // 这些属性改变时，都要作出一定的改变，尽管已经监听了TextDidChange的通知，也要监听text属性，因为通知监听不到setText：
        //: NSArray *propertys = @[@"frame", @"bounds", @"font", @"text", @"textAlignment", @"textContainerInset"];
        NSArray *propertys = @[StringFromCheckData(kStr_willCurrentTitle), StringFromCheckData(kStr_burningText), StringFromCheckData(kStr_paintValue), StringFromCheckData(kStr_naturallyTitle), StringFromCheckData(kStr_mumName), StringFromCheckData(kStr_viewStatusApologyData)];

        // 监听属性
        //: for (NSString *property in propertys) {
        for (NSString *property in propertys) {
            //: [self addObserver:self forKeyPath:property options:NSKeyValueObservingOptionNew context:nil];
            [self addObserver:self forKeyPath:property options:NSKeyValueObservingOptionNew context:nil];
        }
    }
    //: return placeholderView;
    return placeholderView;
}

//: - (void)setPlaceholder:(NSString *)placeholder
- (void)setPlaceholder:(NSString *)placeholder
{
    // 为placeholder赋值
    //: [self placeholderView].text = placeholder;
    [self imageRead].text = placeholder;
}

//: - (NSString *)placeholder
- (NSString *)placeholder
{
    // 如果有placeholder值才去调用，这步很重要
    //: if (self.placeholderExist) {
    if (self.item) {
        //: return [self placeholderView].text;
        return [self imageRead].text;
    }
    //: return nil;
    return nil;
}

//: - (void)setPlaceholderColor:(UIColor *)placeholderColor
- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    // 如果有placeholder值才去调用，这步很重要
    //: if (!self.placeholderExist) {
    if (!self.item) {
        //: NSLog(@"Please set the placeholder value first!");
    //: } else {
    } else {
        //: self.placeholderView.textColor = placeholderColor;
        self.imageRead.textColor = placeholderColor;

        // 动态添加属性的本质是: 让对象的某个属性与值产生关联
        //: objc_setAssociatedObject(self, WZBPlaceholderColorKey, placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        objc_setAssociatedObject(self, kLet_customValue, placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

//: - (UIColor *)placeholderColor {
- (UIColor *)placeholderColor {
    //: return objc_getAssociatedObject(self, WZBPlaceholderColorKey);
    return objc_getAssociatedObject(self, kLet_customValue);
}

//: - (void)setMaxHeight:(CGFloat)maxHeight {
- (void)setMaxHeight:(CGFloat)maxHeight {

    //: CGFloat max = maxHeight;
    CGFloat max = maxHeight;
    //: [self placeholderView];
    [self imageRead];
    // 如果传入的最大高度小于textView本身的高度，则让最大高度等于本身高度
    //: if (maxHeight < self.frame.size.height) {
    if (maxHeight < self.frame.size.height) {
        //: max = self.frame.size.height;
        max = self.frame.size.height;
    }

    //: objc_setAssociatedObject(self, WZBTextViewMaxHeightKey, [NSString stringWithFormat:@"%lf", max], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, kLet_labelName, [NSString stringWithFormat:@"%lf", max], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (CGFloat)maxHeight {
- (CGFloat)maxHeight {
    //: return [objc_getAssociatedObject(self, WZBTextViewMaxHeightKey) doubleValue];
    return [objc_getAssociatedObject(self, kLet_labelName) doubleValue];
}

//: - (void)setMinHeight:(CGFloat)minHeight {
- (void)setMinHeight:(CGFloat)minHeight {
    //: objc_setAssociatedObject(self, WZBTextViewMinHeightKey, [NSString stringWithFormat:@"%lf", minHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, kLet_dotName, [NSString stringWithFormat:@"%lf", minHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (CGFloat)minHeight {
- (CGFloat)minHeight {
    //: return [objc_getAssociatedObject(self, WZBTextViewMinHeightKey) doubleValue];
    return [objc_getAssociatedObject(self, kLet_dotName) doubleValue];
}

//: - (void)setLastHeight:(CGFloat)lastHeight {
- (void)setLastHeight:(CGFloat)lastHeight {
    //: objc_setAssociatedObject(self, WZBTextViewLastHeightKey, [NSString stringWithFormat:@"%lf", lastHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, kLet_pathName, [NSString stringWithFormat:@"%lf", lastHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (CGFloat)lastHeight {
- (CGFloat)lastHeight {
    //: return [objc_getAssociatedObject(self, WZBTextViewLastHeightKey) doubleValue];
    return [objc_getAssociatedObject(self, kLet_pathName) doubleValue];
}

//: - (void)setTextViewHeightDidChanged:(textViewHeightDidChangedBlock)textViewHeightDidChanged {
- (void)setTextViewHeightDidChanged:(textViewHeightDidChangedBlock)textViewHeightDidChanged {
    //: objc_setAssociatedObject(self, WZBTextViewHeightDidChangedBlockKey, textViewHeightDidChanged, OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, kLet_fieldData, textViewHeightDidChanged, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (textViewHeightDidChangedBlock)textViewHeightDidChanged {
- (textViewHeightDidChangedBlock)textViewHeightDidChanged {
    //: void(^textViewHeightDidChanged)(CGFloat currentHeight) = objc_getAssociatedObject(self, WZBTextViewHeightDidChangedBlockKey);
    void(^textViewHeightDidChanged)(CGFloat currentHeight) = objc_getAssociatedObject(self, kLet_fieldData);
    //: return textViewHeightDidChanged;
    return textViewHeightDidChanged;
}

//: - (void)setImageArray:(NSMutableArray *)imageArray {
- (void)setImageArray:(NSMutableArray *)imageArray {
    //: objc_setAssociatedObject(self, WZBTextViewImageArrayKey, imageArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, kLet_modelText, imageArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: - (NSMutableArray *)imageArray {
- (NSMutableArray *)imageArray {
    //: return objc_getAssociatedObject(self, WZBTextViewImageArrayKey);
    return objc_getAssociatedObject(self, kLet_modelText);
}

//: - (NSArray *)getImages {
- (NSArray *)getSession {
    //: return self.imageArray;
    return self.imageArray;
}

//: #pragma mark - KVO监听属性改变
#pragma mark - KVO监听属性改变
//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    //: [self refreshPlaceholderView];
    [self fast];
    //: if ([keyPath isEqualToString:@"text"]) [self textViewTextChange];
    if ([keyPath isEqualToString:StringFromCheckData(kStr_naturallyTitle)]) [self atomicNumber85];
}

//: - (void)refreshPlaceholderView {
- (void)fast {

    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, kLet_viewMainData);

    // 如果有值才去调用，这步很重要
    //: if (placeholderView) {
    if (placeholderView) {
        //: self.placeholderView.frame = self.bounds;
        self.imageRead.frame = self.bounds;
        //: self.placeholderView.font = self.font;
        self.imageRead.font = self.font;
        //: self.placeholderView.textAlignment = self.textAlignment;
        self.imageRead.textAlignment = self.textAlignment;
        //: self.placeholderView.textContainerInset = self.textContainerInset;
        self.imageRead.textContainerInset = self.textContainerInset;
    }
}

//: - (void)textViewTextChange {
- (void)atomicNumber85 {
    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, kLet_viewMainData);

    // 如果有值才去调用，这步很重要
    //: if (placeholderView) {
    if (placeholderView) {
        //: self.placeholderView.hidden = (self.text.length > 0 && self.text);
        self.imageRead.hidden = (self.text.length > 0 && self.text);
    }

    //: if (self.maxHeight >= self.bounds.size.height) {
    if (self.maxHeight >= self.bounds.size.height) {

        // 计算高度
        //: NSInteger currentHeight = ceil([self sizeThatFits:CGSizeMake(self.bounds.size.width, 0x1.fffffep+127f)].height);
        NSInteger currentHeight = ceil([self sizeThatFits:CGSizeMake(self.bounds.size.width, 0x1.fffffep+127f)].height);

        // 如果高度有变化，调用block
        //: if (currentHeight != self.lastHeight) {
        if (currentHeight != self.lastHeight) {
            // 是否可以滚动
            //: self.scrollEnabled = currentHeight >= self.maxHeight;
            self.scrollEnabled = currentHeight >= self.maxHeight;
            //: CGFloat currentTextViewHeight = currentHeight >= self.maxHeight ? self.maxHeight : currentHeight;
            CGFloat currentTextViewHeight = currentHeight >= self.maxHeight ? self.maxHeight : currentHeight;
            // 改变textView的高度
            //: if (currentTextViewHeight >= self.minHeight) {
            if (currentTextViewHeight >= self.minHeight) {
                //: CGRect frame = self.frame;
                CGRect frame = self.frame;
                //: frame.size.height = currentTextViewHeight;
                frame.size.height = currentTextViewHeight;
                //: self.frame = frame;
                self.frame = frame;
                // 调用block
                //: if (self.textViewHeightDidChanged) self.textViewHeightDidChanged(currentTextViewHeight);
                if (self.textViewHeightDidChanged) self.textViewHeightDidChanged(currentTextViewHeight);
                // 记录当前高度
                //: self.lastHeight = currentTextViewHeight;
                self.lastHeight = currentTextViewHeight;
            }
        }
    }

    //: if (!self.isFirstResponder) [self becomeFirstResponder];
    if (!self.isFirstResponder) [self becomeFirstResponder];
}

//: - (void)autoHeightWithMaxHeight:(CGFloat)maxHeight {
- (void)imageName:(CGFloat)maxHeight {
    //: [self autoHeightWithMaxHeight:maxHeight textViewHeightDidChanged:nil];
    [self size:maxHeight device:nil];
}

//: - (void)autoHeightWithMaxHeight:(CGFloat)maxHeight textViewHeightDidChanged:(void(^)(CGFloat currentTextViewHeight))textViewHeightDidChanged {
- (void)size:(CGFloat)maxHeight device:(void(^)(CGFloat currentTextViewHeight))textViewHeightDidChanged {
    //: [self placeholderView];
    [self imageRead];
    //: self.maxHeight = maxHeight;
    self.maxHeight = maxHeight;
    //: if (textViewHeightDidChanged) self.textViewHeightDidChanged = textViewHeightDidChanged;
    if (textViewHeightDidChanged) self.textViewHeightDidChanged = textViewHeightDidChanged;
}

// 判断是否有placeholder值，这步很重要
//: - (BOOL)placeholderExist {
- (BOOL)item {

    // 获取对应属性的值
    //: UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);
    UITextView *placeholderView = objc_getAssociatedObject(self, kLet_viewMainData);

    // 如果有placeholder值
    //: if (placeholderView) return YES;
    if (placeholderView) return YES;

    //: return NO;
    return NO;
}

//: - (void)addImage:(UIImage *)image {
- (void)record:(UIImage *)image {
    //: [self addImage:image size:CGSizeZero];
    [self standard:image colorSize:CGSizeZero];
}

/* 添加一张图片 image:要添加的图片 size:图片大小 */
//: - (void)addImage:(UIImage *)image size:(CGSize)size {
- (void)standard:(UIImage *)image colorSize:(CGSize)size {
    //: [self insertImage:image size:size index:self.attributedText.length > 0 ? self.attributedText.length : 0];
    [self image:image max:size buttonForSum:self.attributedText.length > 0 ? self.attributedText.length : 0];
}
/* 插入一张图片 image:要添加的图片 size:图片大小 index:插入的位置 */
//: - (void)insertImage:(UIImage *)image size:(CGSize)size index:(NSInteger)index {
- (void)image:(UIImage *)image max:(CGSize)size buttonForSum:(NSInteger)index {
    //: [self addImage:image size:size index:index multiple:-1];
    [self info:image location:size comment:index text:-1];
}

/* 添加一张图片 image:要添加的图片 multiple:放大／缩小的倍数 */
//: - (void)addImage:(UIImage *)image multiple:(CGFloat)multiple {
- (void)onTrack:(UIImage *)image link:(CGFloat)multiple {
    //: [self addImage:image size:CGSizeZero index:self.attributedText.length > 0 ? self.attributedText.length : 0 multiple:multiple];
    [self info:image location:CGSizeZero comment:self.attributedText.length > 0 ? self.attributedText.length : 0 text:multiple];
}
/* 插入一张图片 image:要添加的图片 multiple:放大／缩小的倍数 index:插入的位置 */
//: - (void)insertImage:(UIImage *)image multiple:(CGFloat)multiple index:(NSInteger)index {
- (void)playUp:(UIImage *)image nameKey:(CGFloat)multiple data:(NSInteger)index {
    //: [self addImage:image size:CGSizeZero index:index multiple:multiple];
    [self info:image location:CGSizeZero comment:index text:multiple];
}

//: - (void)addImage:(UIImage *)image size:(CGSize)size index:(NSInteger)index multiple:(CGFloat)multiple {
- (void)info:(UIImage *)image location:(CGSize)size comment:(NSInteger)index text:(CGFloat)multiple {
    //: if (image) [self.imageArray addObject:image];
    if (image) [self.imageArray addObject:image];
    //: NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //: NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
    //: textAttachment.image = image;
    textAttachment.image = image;
    //: CGRect bounds = textAttachment.bounds;
    CGRect bounds = textAttachment.bounds;
    //: if (!__CGSizeEqualToSize(size, CGSizeZero)) {
    if (!__CGSizeEqualToSize(size, CGSizeZero)) {
        //: bounds.size = size;
        bounds.size = size;
        //: textAttachment.bounds = bounds;
        textAttachment.bounds = bounds;
    //: } else if (multiple <= 0) {
    } else if (multiple <= 0) {
        //: CGFloat oldWidth = textAttachment.image.size.width;
        CGFloat oldWidth = textAttachment.image.size.width;
        //: CGFloat scaleFactor = oldWidth / (self.frame.size.width - 10);
        CGFloat scaleFactor = oldWidth / (self.frame.size.width - 10);
        //: textAttachment.image = [UIImage imageWithCGImage:textAttachment.image.CGImage scale:scaleFactor orientation:UIImageOrientationUp];
        textAttachment.image = [UIImage imageWithCGImage:textAttachment.image.CGImage scale:scaleFactor orientation:UIImageOrientationUp];
    //: } else {
    } else {
        //: bounds.size = image.size;
        bounds.size = image.size;
        //: textAttachment.bounds = bounds;
        textAttachment.bounds = bounds;
    }

    //: NSAttributedString *attrStringWithImage = [NSAttributedString attributedStringWithAttachment:textAttachment];
    NSAttributedString *attrStringWithImage = [NSAttributedString attributedStringWithAttachment:textAttachment];
    //: [attributedString replaceCharactersInRange:NSMakeRange(index, 0) withAttributedString:attrStringWithImage];
    [attributedString replaceCharactersInRange:NSMakeRange(index, 0) withAttributedString:attrStringWithImage];
    //: self.attributedText = attributedString;
    self.attributedText = attributedString;
    //: [self textViewTextChange];
    [self atomicNumber85];
    //: [self refreshPlaceholderView];
    [self fast];

}
//: @end
@end

Byte * CheckDataToCache(Byte *data) {
    int frequently = data[0];
    int regulatoryGeneHero = data[1];
    Byte involved = data[2];
    int naturally = data[3];
    if (!frequently) return data + naturally;
    for (int i = naturally; i < naturally + regulatoryGeneHero; i++) {
        int value = data[i] + involved;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[naturally + regulatoryGeneHero] = 0;
    return data + naturally;
}

NSString *StringFromCheckData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CheckDataToCache(data)];
}
