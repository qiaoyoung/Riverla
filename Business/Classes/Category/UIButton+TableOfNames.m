
#import <Foundation/Foundation.h>

NSString *StringFromMusicalOrganisationData(Byte *data);


//: bounceAnimation
Byte kStr_ingredientName[] = {54, 15, 61, 14, 39, 253, 233, 61, 228, 222, 22, 120, 70, 109, 159, 172, 178, 171, 160, 162, 126, 171, 166, 170, 158, 177, 166, 172, 171, 210};


//: transform.scale
Byte kStr_logTodayTitle[] = {30, 15, 14, 7, 58, 132, 28, 130, 128, 111, 124, 129, 116, 125, 128, 123, 60, 129, 113, 111, 122, 115, 73};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "UIButton+Badge.h"
#import "UIButton+TableOfNames.h"

//: NSString const *UIButton_badgeKey = @"UIButton_badgeKey";
NSString const *kLet_edgeValue = @"UIButton_badgeKey";
//: NSString const *UIButton_badgeBGColorKey = @"UIButton_badgeBGColorKey";
NSString const *kLet_viewBoxName = @"UIButton_badgeBGColorKey";
//: NSString const *UIButton_badgeTextColorKey = @"UIButton_badgeTextColorKey";
NSString const *kLet_topCommentData = @"UIButton_badgeTextColorKey";
//: NSString const *UIButton_badgeFontKey = @"UIButton_badgeFontKey";
NSString const *kLet_infoTitle = @"UIButton_badgeFontKey";
//: NSString const *UIButton_badgePaddingKey = @"UIButton_badgePaddingKey";
NSString const *kLet_memberBottomValue = @"UIButton_badgePaddingKey";
//: NSString const *UIButton_badgeMinSizeKey = @"UIButton_badgeMinSizeKey";
NSString const *kLet_sessionName = @"UIButton_badgeMinSizeKey";
//: NSString const *UIButton_badgeOriginXKey = @"UIButton_badgeOriginXKey";
NSString const *kLet_windowName = @"UIButton_badgeOriginXKey";
//: NSString const *UIButton_badgeOriginYKey = @"UIButton_badgeOriginYKey";
NSString const *kLet_toValue = @"UIButton_badgeOriginYKey";
//: NSString const *UIButton_shouldHideBadgeAtZeroKey = @"UIButton_shouldHideBadgeAtZeroKey";
NSString const *kLet_arrayText = @"UIButton_shouldHideBadgeAtZeroKey";
//: NSString const *UIButton_shouldAnimateBadgeKey = @"UIButton_shouldAnimateBadgeKey";
NSString const *kLet_optionData = @"UIButton_shouldAnimateBadgeKey";
//: NSString const *UIButton_badgeValueKey = @"UIButton_badgeValueKey";
NSString const *kLet_flowFromData = @"UIButton_badgeValueKey";

//: @implementation UIButton (Badge)
@implementation UIButton (TableOfNames)

//: @dynamic badgeValue, badgeBGColor, badgeTextColor, badgeFont;
@dynamic badgeValue, badgeBGColor, badgeTextColor, badgeFont;
//: @dynamic badgePadding, badgeMinSize, badgeOriginX, badgeOriginY;
@dynamic badgePadding, badgeMinSize, badgeOriginX, badgeOriginY;
//: @dynamic shouldHideBadgeAtZero, shouldAnimateBadge;
@dynamic shouldHideBadgeAtZero, shouldAnimateBadge;
//: - (void)badgeInit
- (void)titleCell
{
    // Default design initialization
    //: self.badgeBGColor = [UIColor redColor];
    self.badgeBGColor = [UIColor redColor];
    //: self.badgeTextColor = [UIColor whiteColor];
    self.badgeTextColor = [UIColor whiteColor];
    //: self.badgeFont = [UIFont systemFontOfSize:12.0];
    self.badgeFont = [UIFont systemFontOfSize:12.0];
    //: self.badgePadding = 3;
    self.badgePadding = 3;
    //: self.badgeMinSize = 10;
    self.badgeMinSize = 10;
    //: self.badgeOriginX = self.frame.size.width - self.badge.frame.size.width/2;
    self.badgeOriginX = self.frame.size.width - self.badge.frame.size.width/2;
    //: self.badgeOriginY = -5;
    self.badgeOriginY = -5;
    //: self.shouldHideBadgeAtZero = YES;
    self.shouldHideBadgeAtZero = YES;
    //: self.shouldAnimateBadge = YES;
    self.shouldAnimateBadge = YES;
    // Avoids badge to be clipped when animating its scale
    //: self.clipsToBounds = NO;
    self.clipsToBounds = NO;
}

//: #pragma mark - Utility methods
#pragma mark - Utility methods

// Handle badge display when its properties have been changed (color, font, ...)
//: - (void)refreshBadge
- (void)keyBy
{
    // Change new attributes
    //: self.badge.textColor = self.badgeTextColor;
    self.badge.textColor = self.badgeTextColor;
    //: self.badge.backgroundColor = self.badgeBGColor;
    self.badge.backgroundColor = self.badgeBGColor;
    //: self.badge.font = self.badgeFont;
    self.badge.font = self.badgeFont;
}

//: - (CGSize) badgeExpectedSize
- (CGSize) image
{
    // When the value changes the badge could need to get bigger
    // Calculate expected size to fit new value
    // Use an intermediate label to get expected size thanks to sizeToFit
    // We don't call sizeToFit on the true label to avoid bad display
    //: UILabel *frameLabel = [self duplicateLabel:self.badge];
    UILabel *frameLabel = [self display:self.badge];
    //: [frameLabel sizeToFit];
    [frameLabel sizeToFit];

    //: CGSize expectedLabelSize = frameLabel.frame.size;
    CGSize expectedLabelSize = frameLabel.frame.size;
    //: return expectedLabelSize;
    return expectedLabelSize;
}

//: - (void)updateBadgeFrame
- (void)timeFrame
{

    //: CGSize expectedLabelSize = [self badgeExpectedSize];
    CGSize expectedLabelSize = [self image];

    // Make sure that for small value, the badge will be big enough
    //: CGFloat minHeight = expectedLabelSize.height;
    CGFloat minHeight = expectedLabelSize.height;

    // Using a const we make sure the badge respect the minimum size
    //: minHeight = (minHeight < self.badgeMinSize) ? self.badgeMinSize : expectedLabelSize.height;
    minHeight = (minHeight < self.badgeMinSize) ? self.badgeMinSize : expectedLabelSize.height;
    //: CGFloat minWidth = expectedLabelSize.width;
    CGFloat minWidth = expectedLabelSize.width;
    //: CGFloat padding = self.badgePadding;
    CGFloat padding = self.badgePadding;

    // Using const we make sure the badge doesn't get too smal
    //: minWidth = (minWidth < minHeight) ? minHeight : expectedLabelSize.width;
    minWidth = (minWidth < minHeight) ? minHeight : expectedLabelSize.width;
    //: self.badge.frame = CGRectMake(self.badgeOriginX, self.badgeOriginY, minWidth + padding, minHeight + padding);
    self.badge.frame = CGRectMake(self.badgeOriginX, self.badgeOriginY, minWidth + padding, minHeight + padding);
    //: self.badge.layer.cornerRadius = (minHeight + padding) / 2;
    self.badge.layer.cornerRadius = (minHeight + padding) / 2;
    //: self.badge.layer.masksToBounds = YES;
    self.badge.layer.masksToBounds = YES;
}

// Handle the badge changing value
//: - (void)updateBadgeValueAnimated:(BOOL)animated
- (void)center:(BOOL)animated
{
    // Bounce animation on badge if value changed and if animation authorized
    //: if (animated && self.shouldAnimateBadge && ![self.badge.text isEqualToString:self.badgeValue]) {
    if (animated && self.shouldAnimateBadge && ![self.badge.text isEqualToString:self.badgeValue]) {
        //: CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:StringFromMusicalOrganisationData(kStr_logTodayTitle)];
        //: [animation setFromValue:[NSNumber numberWithFloat:1.5]];
        [animation setFromValue:[NSNumber numberWithFloat:1.5]];
        //: [animation setToValue:[NSNumber numberWithFloat:1]];
        [animation setToValue:[NSNumber numberWithFloat:1]];
        //: [animation setDuration:0.2];
        [animation setDuration:0.2];
        //: [animation setTimingFunction:[CAMediaTimingFunction functionWithControlPoints:.4f :1.3f :1.f :1.f]];
        [animation setTimingFunction:[CAMediaTimingFunction functionWithControlPoints:.4f :1.3f :1.f :1.f]];
        //: [self.badge.layer addAnimation:animation forKey:@"bounceAnimation"];
        [self.badge.layer addAnimation:animation forKey:StringFromMusicalOrganisationData(kStr_ingredientName)];
    }

    // Set the new value
    //: self.badge.text = self.badgeValue;
    self.badge.text = self.badgeValue;

    // Animate the size modification if needed
    //: NSTimeInterval duration = animated ? 0.2 : 0;
    NSTimeInterval duration = animated ? 0.2 : 0;
    //: [UIView animateWithDuration:duration animations:^{
    [UIView animateWithDuration:duration animations:^{
        //: [self updateBadgeFrame];
        [self timeFrame];
    //: }];
    }];
}

//: - (UILabel *)duplicateLabel:(UILabel *)labelToCopy
- (UILabel *)display:(UILabel *)labelToCopy
{
    //: UILabel *duplicateLabel = [[UILabel alloc] initWithFrame:labelToCopy.frame];
    UILabel *duplicateLabel = [[UILabel alloc] initWithFrame:labelToCopy.frame];
    //: duplicateLabel.text = labelToCopy.text;
    duplicateLabel.text = labelToCopy.text;
    //: duplicateLabel.font = labelToCopy.font;
    duplicateLabel.font = labelToCopy.font;

    //: return duplicateLabel;
    return duplicateLabel;
}

//: - (void)removeBadge
- (void)totalervalBadge
{
    // Animate badge removal
    //: [UIView animateWithDuration:0.2 animations:^{
    [UIView animateWithDuration:0.2 animations:^{
        //: self.badge.transform = CGAffineTransformMakeScale(0, 0);
        self.badge.transform = CGAffineTransformMakeScale(0, 0);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self.badge removeFromSuperview];
        [self.badge removeFromSuperview];
        //: self.badge = nil;
        self.badge = nil;
    //: }];
    }];
}

//: #pragma mark - getters/setters
#pragma mark - getters/setters
//: -(UILabel*) badge {
-(UILabel*) badge {
    //: return objc_getAssociatedObject(self, &UIButton_badgeKey);
    return objc_getAssociatedObject(self, &kLet_edgeValue);
}
//: -(void)setBadge:(UILabel *)badgeLabel
-(void)setBadge:(UILabel *)badgeLabel
{
    //: objc_setAssociatedObject(self, &UIButton_badgeKey, badgeLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_edgeValue, badgeLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// TableOfNames value to be display
//: -(NSString *)badgeValue {
-(NSString *)badgeValue {
    //: return objc_getAssociatedObject(self, &UIButton_badgeValueKey);
    return objc_getAssociatedObject(self, &kLet_flowFromData);
}
//: -(void) setBadgeValue:(NSString *)badgeValue
-(void) setBadgeValue:(NSString *)badgeValue
{
    //: objc_setAssociatedObject(self, &UIButton_badgeValueKey, badgeValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_flowFromData, badgeValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    // When changing the badge value check if we need to remove the badge
    //: if (!badgeValue || [badgeValue isEqualToString:@""] || ([badgeValue isEqualToString:@"0"])) {
    if (!badgeValue || [badgeValue isEqualToString:@""] || ([badgeValue isEqualToString:@"0"])) {
        //: [self removeBadge];
        [self totalervalBadge];
    //: } else if (!self.badge) {
    } else if (!self.badge) {
        // Create a new badge because not existing
        //: self.badge = [[UILabel alloc] initWithFrame:CGRectMake(self.badgeOriginX, self.badgeOriginY, 20, 20)];
        self.badge = [[UILabel alloc] initWithFrame:CGRectMake(self.badgeOriginX, self.badgeOriginY, 20, 20)];
        //: self.badge.textColor = self.badgeTextColor;
        self.badge.textColor = self.badgeTextColor;
        //: self.badge.backgroundColor = self.badgeBGColor;
        self.badge.backgroundColor = self.badgeBGColor;
        //: self.badge.font = self.badgeFont;
        self.badge.font = self.badgeFont;
        //: self.badge.textAlignment = NSTextAlignmentCenter;
        self.badge.textAlignment = NSTextAlignmentCenter;
        //: [self badgeInit];
        [self titleCell];
        //: [self addSubview:self.badge];
        [self addSubview:self.badge];
        //: [self updateBadgeValueAnimated:NO];
        [self center:NO];
    //: } else {
    } else {
        //: [self updateBadgeValueAnimated:YES];
        [self center:YES];
    }
}

// TableOfNames background color
//: -(UIColor *)badgeBGColor {
-(UIColor *)badgeBGColor {
    //: return objc_getAssociatedObject(self, &UIButton_badgeBGColorKey);
    return objc_getAssociatedObject(self, &kLet_viewBoxName);
}
//: -(void)setBadgeBGColor:(UIColor *)badgeBGColor
-(void)setBadgeBGColor:(UIColor *)badgeBGColor
{
    //: objc_setAssociatedObject(self, &UIButton_badgeBGColorKey, badgeBGColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_viewBoxName, badgeBGColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self refreshBadge];
        [self keyBy];
    }
}

// TableOfNames text color
//: -(UIColor *)badgeTextColor {
-(UIColor *)badgeTextColor {
    //: return objc_getAssociatedObject(self, &UIButton_badgeTextColorKey);
    return objc_getAssociatedObject(self, &kLet_topCommentData);
}
//: -(void)setBadgeTextColor:(UIColor *)badgeTextColor
-(void)setBadgeTextColor:(UIColor *)badgeTextColor
{
    //: objc_setAssociatedObject(self, &UIButton_badgeTextColorKey, badgeTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_topCommentData, badgeTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self refreshBadge];
        [self keyBy];
    }
}

// TableOfNames font
//: -(UIFont *)badgeFont {
-(UIFont *)badgeFont {
    //: return objc_getAssociatedObject(self, &UIButton_badgeFontKey);
    return objc_getAssociatedObject(self, &kLet_infoTitle);
}
//: -(void)setBadgeFont:(UIFont *)badgeFont
-(void)setBadgeFont:(UIFont *)badgeFont
{
    //: objc_setAssociatedObject(self, &UIButton_badgeFontKey, badgeFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_infoTitle, badgeFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self refreshBadge];
        [self keyBy];
    }
}

// Padding value for the badge
//: -(CGFloat) badgePadding {
-(CGFloat) badgePadding {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgePaddingKey);
    NSNumber *number = objc_getAssociatedObject(self, &kLet_memberBottomValue);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgePadding:(CGFloat)badgePadding
-(void) setBadgePadding:(CGFloat)badgePadding
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgePadding];
    NSNumber *number = [NSNumber numberWithDouble:badgePadding];
    //: objc_setAssociatedObject(self, &UIButton_badgePaddingKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_memberBottomValue, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self timeFrame];
    }
}

// Minimum size badge to small
//: -(CGFloat) badgeMinSize {
-(CGFloat) badgeMinSize {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgeMinSizeKey);
    NSNumber *number = objc_getAssociatedObject(self, &kLet_sessionName);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgeMinSize:(CGFloat)badgeMinSize
-(void) setBadgeMinSize:(CGFloat)badgeMinSize
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgeMinSize];
    NSNumber *number = [NSNumber numberWithDouble:badgeMinSize];
    //: objc_setAssociatedObject(self, &UIButton_badgeMinSizeKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_sessionName, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self timeFrame];
    }
}

// Values for offseting the badge over the BarButtonItem you picked
//: -(CGFloat) badgeOriginX {
-(CGFloat) badgeOriginX {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgeOriginXKey);
    NSNumber *number = objc_getAssociatedObject(self, &kLet_windowName);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgeOriginX:(CGFloat)badgeOriginX
-(void) setBadgeOriginX:(CGFloat)badgeOriginX
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgeOriginX];
    NSNumber *number = [NSNumber numberWithDouble:badgeOriginX];
    //: objc_setAssociatedObject(self, &UIButton_badgeOriginXKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_windowName, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self timeFrame];
    }
}

//: -(CGFloat) badgeOriginY {
-(CGFloat) badgeOriginY {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_badgeOriginYKey);
    NSNumber *number = objc_getAssociatedObject(self, &kLet_toValue);
    //: return number.floatValue;
    return number.floatValue;
}
//: -(void) setBadgeOriginY:(CGFloat)badgeOriginY
-(void) setBadgeOriginY:(CGFloat)badgeOriginY
{
    //: NSNumber *number = [NSNumber numberWithDouble:badgeOriginY];
    NSNumber *number = [NSNumber numberWithDouble:badgeOriginY];
    //: objc_setAssociatedObject(self, &UIButton_badgeOriginYKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_toValue, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //: if (self.badge) {
    if (self.badge) {
        //: [self updateBadgeFrame];
        [self timeFrame];
    }
}

// In case of numbers, remove the badge when reaching zero
//: -(BOOL) shouldHideBadgeAtZero {
-(BOOL) shouldHideBadgeAtZero {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_shouldHideBadgeAtZeroKey);
    NSNumber *number = objc_getAssociatedObject(self, &kLet_arrayText);
    //: return number.boolValue;
    return number.boolValue;
}
//: - (void)setShouldHideBadgeAtZero:(BOOL)shouldHideBadgeAtZero
- (void)setShouldHideBadgeAtZero:(BOOL)shouldHideBadgeAtZero
{
    //: NSNumber *number = [NSNumber numberWithBool:shouldHideBadgeAtZero];
    NSNumber *number = [NSNumber numberWithBool:shouldHideBadgeAtZero];
    //: objc_setAssociatedObject(self, &UIButton_shouldHideBadgeAtZeroKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_arrayText, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// TableOfNames has a bounce animation when value changes
//: -(BOOL) shouldAnimateBadge {
-(BOOL) shouldAnimateBadge {
    //: NSNumber *number = objc_getAssociatedObject(self, &UIButton_shouldAnimateBadgeKey);
    NSNumber *number = objc_getAssociatedObject(self, &kLet_optionData);
    //: return number.boolValue;
    return number.boolValue;
}
//: - (void)setShouldAnimateBadge:(BOOL)shouldAnimateBadge
- (void)setShouldAnimateBadge:(BOOL)shouldAnimateBadge
{
    //: NSNumber *number = [NSNumber numberWithBool:shouldAnimateBadge];
    NSNumber *number = [NSNumber numberWithBool:shouldAnimateBadge];
    //: objc_setAssociatedObject(self, &UIButton_shouldAnimateBadgeKey, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_optionData, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: @end
@end

Byte * MusicalOrganisationDataToCache(Byte *data) {
    int unfit = data[0];
    int maxCount = data[1];
    Byte fictionFlush = data[2];
    int paint = data[3];
    if (!unfit) return data + paint;
    for (int i = paint; i < paint + maxCount; i++) {
        int value = data[i] - fictionFlush;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[paint + maxCount] = 0;
    return data + paint;
}

NSString *StringFromMusicalOrganisationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MusicalOrganisationDataToCache(data)];
}
