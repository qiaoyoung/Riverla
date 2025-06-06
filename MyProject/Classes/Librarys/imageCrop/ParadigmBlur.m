
#import <Foundation/Foundation.h>
typedef struct {
    Byte enjoy;
    Byte *plungeSpire;
    unsigned int overnight;
    bool inherit;
	int upper;
} UnderlyEnemyData;

NSString *StringFromUnderlyEnemyData(UnderlyEnemyData *data);


//: linear
UnderlyEnemyData kStr_myMothText = (UnderlyEnemyData){96, (Byte []){12, 9, 14, 5, 1, 18, 55}, 6, false, 69};


//: bounds
UnderlyEnemyData kStr_worriedName = (UnderlyEnemyData){190, (Byte []){220, 209, 203, 208, 218, 205, 21}, 6, false, 182};


//: backgroundColor
UnderlyEnemyData kStr_pursueLearnName = (UnderlyEnemyData){99, (Byte []){1, 2, 0, 8, 4, 17, 12, 22, 13, 7, 32, 12, 15, 12, 17, 139}, 15, false, 66};


//: blurRadius
UnderlyEnemyData kStr_imposeValue = (UnderlyEnemyData){7, (Byte []){101, 107, 114, 117, 85, 102, 99, 110, 114, 116, 110}, 10, false, 111};


//: position
UnderlyEnemyData kStr_illustrateData = (UnderlyEnemyData){168, (Byte []){216, 199, 219, 193, 220, 193, 199, 198, 108}, 8, false, 46};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParadigmBlur.m
//
//  Version 1.6.2
//
//  Created by Nick Lockwood on 25/08/2013.
//  Copyright (c) 2013 Charcoal Design
//
//  Distributed under the permissive zlib License
//  Get the latest version from here:
//
//  https://github.com/nicklockwood/ParadigmBlur
//
//  This software is provided 'as-is', without any express or implied
//  warranty.  In no event will the authors be held liable for any damages
//  arising from the use of this software.
//
//  Permission is granted to anyone to use this software for any purpose,
//  including commercial applications, and to alter it and redistribute it
//  freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//  claim that you wrote the original software. If you use this software
//  in a product, an acknowledgment in the product documentation would be
//  appreciated but is not required.
//
//  2. Altered source versions must be plainly marked as such, and must not be
//  misrepresented as being the original software.
//
//  3. This notice may not be removed or altered from any source distribution.
//
//: #pragma GCC diagnostic ignored "-Wobjc-missing-property-synthesis"
#pragma GCC diagnostic ignored "-Wobjc-missing-property-synthesis"
//: #pragma GCC diagnostic ignored "-Wdirect-ivar-access"
#pragma GCC diagnostic ignored "-Wdirect-ivar-access"
//: #pragma GCC diagnostic ignored "-Wgnu"
#pragma GCC diagnostic ignored "-Wgnu"

// __M_A_C_R_O__
//: #import "FXBlurView.h"
#import "ParadigmBlur.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import <objc/message.h>
#import <objc/message.h>
//: #import <QuartzCore/QuartzCore.h>
#import <QuartzCore/QuartzCore.h>
//: #import <Accelerate/Accelerate.h>
#import <Accelerate/Accelerate.h>
//: #import <Availability.h>
#import <Availability.h>

//: @implementation UIImage (FXBlurView)
@implementation UIImage (ParadigmBlur)

//: - (UIImage *)blurredImageWithRadius:(CGFloat)radius iterations:(NSUInteger)iterations tintColor:(UIColor *)tintColor
- (UIImage *)afloat:(CGFloat)radius with:(NSUInteger)iterations centerBy:(UIColor *)tintColor
{
    //image must be nonzero size
    //: if (floorf(self.size.width) * floorf(self.size.height) <= 0.0f) return self;
    if (floorf(self.size.width) * floorf(self.size.height) <= 0.0f) return self;

    //boxsize must be an odd integer
    //: uint32_t boxSize = (uint32_t)(radius * self.scale);
    uint32_t boxSize = (uint32_t)(radius * self.scale);
    //: if (boxSize % 2 == 0) boxSize ++;
    if (boxSize % 2 == 0) boxSize ++;

    //create image buffers
    //: CGImageRef imageRef = self.CGImage;
    CGImageRef imageRef = self.CGImage;
    //: vImage_Buffer buffer1, buffer2;
    vImage_Buffer buffer1, buffer2;
    //: buffer1.width = buffer2.width = CGImageGetWidth(imageRef);
    buffer1.width = buffer2.width = CGImageGetWidth(imageRef);
    //: buffer1.height = buffer2.height = CGImageGetHeight(imageRef);
    buffer1.height = buffer2.height = CGImageGetHeight(imageRef);
    //: buffer1.rowBytes = buffer2.rowBytes = CGImageGetBytesPerRow(imageRef);
    buffer1.rowBytes = buffer2.rowBytes = CGImageGetBytesPerRow(imageRef);
    //: size_t bytes = buffer1.rowBytes * buffer1.height;
    size_t bytes = buffer1.rowBytes * buffer1.height;
    //: buffer1.data = malloc(bytes);
    buffer1.data = malloc(bytes);
    //: buffer2.data = malloc(bytes);
    buffer2.data = malloc(bytes);

    //create temp buffer
    //: void *tempBuffer = malloc((size_t)vImageBoxConvolve_ARGB8888(&buffer1, &buffer2, NULL, 0, 0, boxSize, boxSize,
    void *tempBuffer = malloc((size_t)vImageBoxConvolve_ARGB8888(&buffer1, &buffer2, NULL, 0, 0, boxSize, boxSize,
                                                                 //: NULL, kvImageEdgeExtend + kvImageGetTempBufferSize));
                                                                 NULL, kvImageEdgeExtend + kvImageGetTempBufferSize));

    //copy image data
    //: CFDataRef dataSource = CGDataProviderCopyData(CGImageGetDataProvider(imageRef));
    CFDataRef dataSource = CGDataProviderCopyData(CGImageGetDataProvider(imageRef));
    //: memcpy(buffer1.data, CFDataGetBytePtr(dataSource), bytes);
    memcpy(buffer1.data, CFDataGetBytePtr(dataSource), bytes);
    //: CFRelease(dataSource);
    CFRelease(dataSource);

    //: for (NSUInteger i = 0; i < iterations; i++)
    for (NSUInteger i = 0; i < iterations; i++)
    {
        //perform blur
        //: vImageBoxConvolve_ARGB8888(&buffer1, &buffer2, tempBuffer, 0, 0, boxSize, boxSize, NULL, kvImageEdgeExtend);
        vImageBoxConvolve_ARGB8888(&buffer1, &buffer2, tempBuffer, 0, 0, boxSize, boxSize, NULL, kvImageEdgeExtend);

        //swap buffers
        //: void *temp = buffer1.data;
        void *temp = buffer1.data;
        //: buffer1.data = buffer2.data;
        buffer1.data = buffer2.data;
        //: buffer2.data = temp;
        buffer2.data = temp;
    }

    //free buffers
    //: free(buffer2.data);
    free(buffer2.data);
    //: free(tempBuffer);
    free(tempBuffer);

    //create image context from buffer
    //: CGContextRef ctx = CGBitmapContextCreate(buffer1.data, buffer1.width, buffer1.height,
    CGContextRef ctx = CGBitmapContextCreate(buffer1.data, buffer1.width, buffer1.height,
                                             //: 8, buffer1.rowBytes, CGImageGetColorSpace(imageRef),
                                             8, buffer1.rowBytes, CGImageGetColorSpace(imageRef),
                                             //: CGImageGetBitmapInfo(imageRef));
                                             CGImageGetBitmapInfo(imageRef));

    //apply tint
    //: if (tintColor && CGColorGetAlpha(tintColor.CGColor) > 0.0f)
    if (tintColor && CGColorGetAlpha(tintColor.CGColor) > 0.0f)
    {
        //: CGContextSetFillColorWithColor(ctx, [tintColor colorWithAlphaComponent:0.25].CGColor);
        CGContextSetFillColorWithColor(ctx, [tintColor colorWithAlphaComponent:0.25].CGColor);
        //: CGContextSetBlendMode(ctx, kCGBlendModePlusDarker);
        CGContextSetBlendMode(ctx, kCGBlendModePlusDarker);
        //: CGContextFillRect(ctx, CGRectMake(0, 0, buffer1.width, buffer1.height));
        CGContextFillRect(ctx, CGRectMake(0, 0, buffer1.width, buffer1.height));
    }

    //create image from context
    //: imageRef = CGBitmapContextCreateImage(ctx);
    imageRef = CGBitmapContextCreateImage(ctx);
    //: UIImage *image = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
    UIImage *image = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
    //: CGImageRelease(imageRef);
    CGImageRelease(imageRef);
    //: CGContextRelease(ctx);
    CGContextRelease(ctx);
    //: free(buffer1.data);
    free(buffer1.data);
    //: return image;
    return image;
}

//: @end
@end


//: @interface FXBlurScheduler : NSObject
@interface ElementPicture : NSObject

//: @property (nonatomic, strong) NSMutableArray *views;
@property (nonatomic, strong) NSMutableArray *views;
//: @property (nonatomic, assign) NSUInteger viewIndex;
@property (nonatomic, assign) NSUInteger viewIndex;
//: @property (nonatomic, assign) NSUInteger updatesEnabled;
@property (nonatomic, assign) NSUInteger updatesEnabled;
//: @property (nonatomic, assign) BOOL blurEnabled;
@property (nonatomic, assign) BOOL blurEnabled;
//: @property (nonatomic, assign) BOOL updating;
@property (nonatomic, assign) BOOL updating;

//: @end
@end


//: @interface FXBlurLayer: CALayer
@interface InputLayer: CALayer

//: @property (nonatomic, assign) CGFloat blurRadius;
@property (nonatomic, assign) CGFloat blurRadius;

//: @end
@end


//: @implementation FXBlurLayer
@implementation InputLayer

//: @dynamic blurRadius;
@dynamic blurRadius;

//: + (BOOL)needsDisplayForKey:(NSString *)key
+ (BOOL)needsDisplayForKey:(NSString *)key
{
    //: if ([@[@"blurRadius", @"bounds", @"position"] containsObject:key])
    if ([@[StringFromUnderlyEnemyData(&kStr_imposeValue), StringFromUnderlyEnemyData(&kStr_worriedName), StringFromUnderlyEnemyData(&kStr_illustrateData)] containsObject:key])
    {
        //: return YES;
        return YES;
    }
    //: return [super needsDisplayForKey:key];
    return [super needsDisplayForKey:key];
}

//: @end
@end


//: @interface FXBlurView ()
@interface ParadigmBlur ()

//: @property (nonatomic, assign) BOOL iterationsSet;
@property (nonatomic, assign) BOOL iterationsSet;
//: @property (nonatomic, assign) BOOL blurRadiusSet;
@property (nonatomic, assign) BOOL blurRadiusSet;
//: @property (nonatomic, assign) BOOL dynamicSet;
@property (nonatomic, assign) BOOL dynamicSet;
//: @property (nonatomic, assign) BOOL blurEnabledSet;
@property (nonatomic, assign) BOOL blurEnabledSet;
//: @property (nonatomic, strong) NSDate *lastUpdate;
@property (nonatomic, strong) NSDate *lastUpdate;

//: - (UIImage *)snapshotOfUnderlyingView;
- (UIImage *)place;
//: - (BOOL)shouldUpdate;
- (BOOL)status;

//: @end
@end


//: @implementation FXBlurScheduler
@implementation ElementPicture

//: + (instancetype)sharedInstance
+ (instancetype)decipher
{
    //: static FXBlurScheduler *sharedInstance = nil;
    static ElementPicture *sharedInstance = nil;
    //: if (!sharedInstance)
    if (!sharedInstance)
    {
        //: sharedInstance = [[FXBlurScheduler alloc] init];
        sharedInstance = [[ElementPicture alloc] init];
    }
    //: return sharedInstance;
    return sharedInstance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if ((self = [super init]))
    if ((self = [super init]))
    {
        //: _updatesEnabled = 1;
        _updatesEnabled = 1;
        //: _blurEnabled = YES;
        _blurEnabled = YES;
        //: _views = [[NSMutableArray alloc] init];
        _views = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)setBlurEnabled:(BOOL)blurEnabled
- (void)setBlurEnabled:(BOOL)blurEnabled
{
    //: _blurEnabled = blurEnabled;
    _blurEnabled = blurEnabled;
    //: if (blurEnabled)
    if (blurEnabled)
    {
        //: for (FXBlurView *view in self.views)
        for (ParadigmBlur *view in self.views)
        {
            //: [view setNeedsDisplay];
            [view setNeedsDisplay];
        }
        //: [self updateAsynchronously];
        [self withSuccess];
    }
}

//: - (void)setUpdatesEnabled
- (void)title
{
    //: _updatesEnabled ++;
    _updatesEnabled ++;
    //: [self updateAsynchronously];
    [self withSuccess];
}

//: - (void)setUpdatesDisabled
- (void)replyDisabled
{
    //: _updatesEnabled --;
    _updatesEnabled --;
}

//: - (void)addView:(FXBlurView *)view
- (void)topSuccess:(ParadigmBlur *)view
{
    //: if (![self.views containsObject:view])
    if (![self.views containsObject:view])
    {
        //: [self.views addObject:view];
        [self.views addObject:view];
        //: [self updateAsynchronously];
        [self withSuccess];
    }
}

//: - (void)removeView:(FXBlurView *)view
- (void)matter:(ParadigmBlur *)view
{
    //: NSUInteger index = [self.views indexOfObject:view];
    NSUInteger index = [self.views indexOfObject:view];
    //: if (index != NSNotFound)
    if (index != NSNotFound)
    {
        //: if (index <= self.viewIndex)
        if (index <= self.viewIndex)
        {
            //: self.viewIndex --;
            self.viewIndex --;
        }
        //: [self.views removeObjectAtIndex:index];
        [self.views removeObjectAtIndex:index];
    }
}

//: - (void)updateAsynchronously
- (void)withSuccess
{
    //: if (self.blurEnabled && !self.updating && self.updatesEnabled > 0 && [self.views count])
    if (self.blurEnabled && !self.updating && self.updatesEnabled > 0 && [self.views count])
    {
        //: NSTimeInterval timeUntilNextUpdate = 1.0 / 60;
        NSTimeInterval timeUntilNextUpdate = 1.0 / 60;

        //loop through until we find a view that's ready to be drawn
        //: self.viewIndex = self.viewIndex % [self.views count];
        self.viewIndex = self.viewIndex % [self.views count];
        //: for (NSUInteger i = self.viewIndex; i < [self.views count]; i++)
        for (NSUInteger i = self.viewIndex; i < [self.views count]; i++)
        {
            //: FXBlurView *view = self.views[i];
            ParadigmBlur *view = self.views[i];
            //: if (view.dynamic && !view.hidden && view.window && [view shouldUpdate])
            if (view.dynamic && !view.hidden && view.window && [view status])
            {
                //: NSTimeInterval nextUpdate = [view.lastUpdate timeIntervalSinceNow] + view.updateInterval;
                NSTimeInterval nextUpdate = [view.lastUpdate timeIntervalSinceNow] + view.updateInterval;
                //: if (!view.lastUpdate || nextUpdate <= 0)
                if (!view.lastUpdate || nextUpdate <= 0)
                {
                    //: self.updating = YES;
                    self.updating = YES;
                    //: [view updateAsynchronously:YES completion:^{
                    [view titleCompletion:YES background:^{

                        //render next view
                        //: self.updating = NO;
                        self.updating = NO;
                        //: self.viewIndex = i + 1;
                        self.viewIndex = i + 1;
                        //: [self updateAsynchronously];
                        [self withSuccess];
                    //: }];
                    }];
                    //: return;
                    return;
                }
                //: else
                else
                {
                    //: timeUntilNextUpdate = ((timeUntilNextUpdate) < (nextUpdate) ? (timeUntilNextUpdate) : (nextUpdate));
                    timeUntilNextUpdate = ((timeUntilNextUpdate) < (nextUpdate) ? (timeUntilNextUpdate) : (nextUpdate));
                }
            }
        }

        //try again, delaying until the time when the next view needs an update.
        //: self.viewIndex = 0;
        self.viewIndex = 0;
        //: [self performSelector:@selector(updateAsynchronously)
        [self performSelector:@selector(withSuccess)
                   //: withObject:nil
                   withObject:nil
                   //: afterDelay:timeUntilNextUpdate
                   afterDelay:timeUntilNextUpdate
                      //: inModes:@[NSDefaultRunLoopMode, UITrackingRunLoopMode]];
                      inModes:@[NSDefaultRunLoopMode, UITrackingRunLoopMode]];
    }
}

//: @end
@end


//: @implementation FXBlurView
@implementation ParadigmBlur

//: + (void)setBlurEnabled:(BOOL)blurEnabled
+ (void)setBlurEnabled:(BOOL)blurEnabled
{
    //: [FXBlurScheduler sharedInstance].blurEnabled = blurEnabled;
    [ElementPicture decipher].blurEnabled = blurEnabled;
}

//: + (void)setUpdatesEnabled
+ (void)with
{
    //: [[FXBlurScheduler sharedInstance] setUpdatesEnabled];
    [[ElementPicture decipher] title];
}

//: + (void)setUpdatesDisabled
+ (void)highlight
{
    //: [[FXBlurScheduler sharedInstance] setUpdatesDisabled];
    [[ElementPicture decipher] replyDisabled];
}

//: + (Class)layerClass
+ (Class)layerClass
{
    //: return [FXBlurLayer class];
    return [InputLayer class];
}

//: - (void)setUp
- (void)upward
{
    //: if (!_iterationsSet) _iterations = 3;
    if (!_iterationsSet) _iterations = 3;
    //: if (!_blurRadiusSet) [self blurLayer].blurRadius = 40;
    if (!_blurRadiusSet) [self add].blurRadius = 40;
    //: if (!_dynamicSet) _dynamic = YES;
    if (!_dynamicSet) _dynamic = YES;
    //: if (!_blurEnabledSet) _blurEnabled = YES;
    if (!_blurEnabledSet) _blurEnabled = YES;
    //: self.updateInterval = _updateInterval;
    self.updateInterval = _updateInterval;
    //: self.layer.magnificationFilter = @"linear"; 
    self.layer.magnificationFilter = StringFromUnderlyEnemyData(&kStr_myMothText); // kCAFilterLinear

    //: unsigned int numberOfMethods;
    unsigned int numberOfMethods;
    //: Method *methods = class_copyMethodList([UIView class], &numberOfMethods);
    Method *methods = class_copyMethodList([UIView class], &numberOfMethods);
    //: for (unsigned int i = 0; i < numberOfMethods; i++)
    for (unsigned int i = 0; i < numberOfMethods; i++)
    {
        //: Method method = methods[i];
        Method method = methods[i];
        //: SEL selector = method_getName(method);
        SEL selector = method_getName(method);
        //: if (selector == @selector(tintColor))
        if (selector == @selector(tintColor))
        {
            //: _tintColor = ((id (*)(id,SEL))method_getImplementation(method))(self, selector);
            _tintColor = ((id (*)(id,SEL))method_getImplementation(method))(self, selector);
            //: break;
            break;
        }
    }
    //: free(methods);
    free(methods);
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: if ((self = [super initWithFrame:frame]))
    if ((self = [super initWithFrame:frame]))
    {
        //: [self setUp];
        [self upward];
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;
    }
    //: return self;
    return self;
}

//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: if ((self = [super initWithCoder:aDecoder]))
    if ((self = [super initWithCoder:aDecoder]))
    {
        //: [self setUp];
        [self upward];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)setIterations:(NSUInteger)iterations
- (void)setIterations:(NSUInteger)iterations
{
    //: _iterationsSet = YES;
    _iterationsSet = YES;
    //: _iterations = iterations;
    _iterations = iterations;
    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (void)setBlurRadius:(CGFloat)blurRadius
- (void)setBlurRadius:(CGFloat)blurRadius
{
    //: _blurRadiusSet = YES;
    _blurRadiusSet = YES;
    //: [self blurLayer].blurRadius = blurRadius;
    [self add].blurRadius = blurRadius;
}

//: - (CGFloat)blurRadius
- (CGFloat)blurRadius
{
    //: return [self blurLayer].blurRadius;
    return [self add].blurRadius;
}

//: - (void)setBlurEnabled:(BOOL)blurEnabled
- (void)setBlurEnabled:(BOOL)blurEnabled
{
    //: _blurEnabledSet = YES;
    _blurEnabledSet = YES;
    //: if (_blurEnabled != blurEnabled)
    if (_blurEnabled != blurEnabled)
    {
        //: _blurEnabled = blurEnabled;
        _blurEnabled = blurEnabled;
        //: [self schedule];
        [self voteIn];
        //: if (_blurEnabled)
        if (_blurEnabled)
        {
            //: [self setNeedsDisplay];
            [self setNeedsDisplay];
        }
    }
}

//: - (void)setDynamic:(BOOL)dynamic
- (void)setDynamic:(BOOL)dynamic
{
    //: _dynamicSet = YES;
    _dynamicSet = YES;
    //: if (_dynamic != dynamic)
    if (_dynamic != dynamic)
    {
        //: _dynamic = dynamic;
        _dynamic = dynamic;
        //: [self schedule];
        [self voteIn];
        //: if (!dynamic)
        if (!dynamic)
        {
            //: [self setNeedsDisplay];
            [self setNeedsDisplay];
        }
    }
}

//: - (UIView *)underlyingView
- (UIView *)underlyingView
{
    //: return _underlyingView ?: self.superview;
    return _underlyingView ?: self.superview;
}

//: - (CALayer *)underlyingLayer
- (CALayer *)color
{
    //: return self.underlyingView.layer;
    return self.underlyingView.layer;
}

//: - (FXBlurLayer *)blurLayer
- (InputLayer *)add
{
    //: return (FXBlurLayer *)self.layer;
    return (InputLayer *)self.layer;
}

//: - (FXBlurLayer *)blurPresentationLayer
- (InputLayer *)screen
{
    //: FXBlurLayer *blurLayer = [self blurLayer];
    InputLayer *blurLayer = [self add];
    //: return (FXBlurLayer *)blurLayer.presentationLayer ?: blurLayer;
    return (InputLayer *)blurLayer.presentationLayer ?: blurLayer;
}

//: - (void)setUpdateInterval:(NSTimeInterval)updateInterval
- (void)setUpdateInterval:(NSTimeInterval)updateInterval
{
    //: _updateInterval = updateInterval;
    _updateInterval = updateInterval;
    //: if (_updateInterval <= 0) _updateInterval = 1.0/60;
    if (_updateInterval <= 0) _updateInterval = 1.0/60;
}

//: - (void)setTintColor:(UIColor *)tintColor
- (void)setTintColor:(UIColor *)tintColor
{
    //: _tintColor = tintColor;
    _tintColor = tintColor;
    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (void)didMoveToSuperview
- (void)didMoveToSuperview
{
    //: [super didMoveToSuperview];
    [super didMoveToSuperview];
    //: [self.layer setNeedsDisplay];
    [self.layer setNeedsDisplay];
}

//: - (void)didMoveToWindow
- (void)didMoveToWindow
{
    //: [super didMoveToWindow];
    [super didMoveToWindow];
    //: [self schedule];
    [self voteIn];
}

//: - (void)schedule
- (void)voteIn
{
    //: if (self.window && self.dynamic && self.blurEnabled)
    if (self.window && self.dynamic && self.blurEnabled)
    {
        //: [[FXBlurScheduler sharedInstance] addView:self];
        [[ElementPicture decipher] topSuccess:self];
    }
    //: else
    else
    {
        //: [[FXBlurScheduler sharedInstance] removeView:self];
        [[ElementPicture decipher] matter:self];
    }
}

//: - (void)setNeedsDisplay
- (void)setNeedsDisplay
{
    //: [super setNeedsDisplay];
    [super setNeedsDisplay];
    //: [self.layer setNeedsDisplay];
    [self.layer setNeedsDisplay];
}

//: - (BOOL)shouldUpdate
- (BOOL)status
{
    //: __strong CALayer *underlyingLayer = [self underlyingLayer];
    __strong CALayer *underlyingLayer = [self color];

    //: return
    return
    //: underlyingLayer && !underlyingLayer.hidden &&
    underlyingLayer && !underlyingLayer.hidden &&
    //: self.blurEnabled && [FXBlurScheduler sharedInstance].blurEnabled &&
    self.blurEnabled && [ElementPicture decipher].blurEnabled &&
    //: !CGRectIsEmpty([self.layer.presentationLayer ?: self.layer bounds]) && !CGRectIsEmpty(underlyingLayer.bounds);
    !CGRectIsEmpty([self.layer.presentationLayer ?: self.layer bounds]) && !CGRectIsEmpty(underlyingLayer.bounds);
}

//: - (void)displayLayer:(__unused CALayer *)layer
- (void)displayLayer:(__unused CALayer *)layer
{
    //: [self updateAsynchronously:NO completion:NULL];
    [self titleCompletion:NO background:NULL];
}

//: - (id<CAAction>)actionForLayer:(CALayer *)layer forKey:(NSString *)key
- (id<CAAction>)actionForLayer:(CALayer *)layer forKey:(NSString *)key
{
    //: if ([key isEqualToString:@"blurRadius"])
    if ([key isEqualToString:StringFromUnderlyEnemyData(&kStr_imposeValue)])
    {
        //animations are enabled
        //: CAAnimation *action = (CAAnimation *)[super actionForLayer:layer forKey:@"backgroundColor"];
        CAAnimation *action = (CAAnimation *)[super actionForLayer:layer forKey:StringFromUnderlyEnemyData(&kStr_pursueLearnName)];
        //: if ((NSNull *)action != [NSNull null])
        if ((NSNull *)action != [NSNull null])
        {
            //: CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:key];
            CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:key];
            //: animation.fromValue = [layer.presentationLayer valueForKey:key];
            animation.fromValue = [layer.presentationLayer valueForKey:key];

            //CAMediatiming attributes
            //: animation.beginTime = action.beginTime;
            animation.beginTime = action.beginTime;
            //: animation.duration = action.duration;
            animation.duration = action.duration;
            //: animation.speed = action.speed;
            animation.speed = action.speed;
            //: animation.timeOffset = action.timeOffset;
            animation.timeOffset = action.timeOffset;
            //: animation.repeatCount = action.repeatCount;
            animation.repeatCount = action.repeatCount;
            //: animation.repeatDuration = action.repeatDuration;
            animation.repeatDuration = action.repeatDuration;
            //: animation.autoreverses = action.autoreverses;
            animation.autoreverses = action.autoreverses;
            //: animation.fillMode = action.fillMode;
            animation.fillMode = action.fillMode;

            //CAAnimation attributes
            //: animation.timingFunction = action.timingFunction;
            animation.timingFunction = action.timingFunction;
            //: animation.delegate = action.delegate;
            animation.delegate = action.delegate;

            //: return animation;
            return animation;
        }
    }
    //: return [super actionForLayer:layer forKey:key];
    return [super actionForLayer:layer forKey:key];
}

//: - (UIImage *)snapshotOfUnderlyingView
- (UIImage *)place
{
    //: __strong FXBlurLayer *blurLayer = [self blurPresentationLayer];
    __strong InputLayer *blurLayer = [self screen];
    //: __strong CALayer *underlyingLayer = [self underlyingLayer];
    __strong CALayer *underlyingLayer = [self color];
    //: CGRect bounds = [blurLayer convertRect:blurLayer.bounds toLayer:underlyingLayer];
    CGRect bounds = [blurLayer convertRect:blurLayer.bounds toLayer:underlyingLayer];

    //: self.lastUpdate = [NSDate date];
    self.lastUpdate = [NSDate date];
    //: CGFloat scale = 0.5;
    CGFloat scale = 0.5;
    //: if (self.iterations)
    if (self.iterations)
    {
        //: CGFloat blockSize = 12.0f/self.iterations;
        CGFloat blockSize = 12.0f/self.iterations;
        //: scale = blockSize/((blockSize * 2) > (blurLayer.blurRadius) ? (blockSize * 2) : (blurLayer.blurRadius));
        scale = blockSize/((blockSize * 2) > (blurLayer.blurRadius) ? (blockSize * 2) : (blurLayer.blurRadius));
        //: scale = 1.0f/floorf(1.0f/scale);
        scale = 1.0f/floorf(1.0f/scale);
    }
    //: CGSize size = bounds.size;
    CGSize size = bounds.size;
    //: if (self.contentMode == UIViewContentModeScaleToFill ||
    if (self.contentMode == UIViewContentModeScaleToFill ||
        //: self.contentMode == UIViewContentModeScaleAspectFill ||
        self.contentMode == UIViewContentModeScaleAspectFill ||
        //: self.contentMode == UIViewContentModeScaleAspectFit ||
        self.contentMode == UIViewContentModeScaleAspectFit ||
        //: self.contentMode == UIViewContentModeRedraw)
        self.contentMode == UIViewContentModeRedraw)
    {
        //prevents edge artefacts
        //: size.width = floorf(size.width * scale) / scale;
        size.width = floorf(size.width * scale) / scale;
        //: size.height = floorf(size.height * scale) / scale;
        size.height = floorf(size.height * scale) / scale;
    }
    //: else if ([[UIDevice currentDevice].systemVersion floatValue] < 7.0f && [UIScreen mainScreen].scale == 1.0f)
    else if ([[UIDevice currentDevice].systemVersion floatValue] < 7.0f && [UIScreen mainScreen].scale == 1.0f)
    {
        //prevents pixelation on old devices
        //: scale = 1.0f;
        scale = 1.0f;
    }
    //: UIGraphicsBeginImageContextWithOptions(size, YES, scale);
    UIGraphicsBeginImageContextWithOptions(size, YES, scale);
    //: CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextRef context = UIGraphicsGetCurrentContext();
    //: CGContextTranslateCTM(context, -bounds.origin.x, -bounds.origin.y);
    CGContextTranslateCTM(context, -bounds.origin.x, -bounds.origin.y);

    //: NSArray *hiddenViews = [self prepareUnderlyingViewForSnapshot];
    NSArray *hiddenViews = [self labelMy];
    //: [underlyingLayer renderInContext:context];
    [underlyingLayer renderInContext:context];
    //: [self restoreSuperviewAfterSnapshot:hiddenViews];
    [self margin:hiddenViews];
    //: UIImage *snapshot = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *snapshot = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return snapshot;
    return snapshot;
}

//: - (NSArray *)prepareUnderlyingViewForSnapshot
- (NSArray *)labelMy
{
    //: __strong CALayer *blurlayer = [self blurLayer];
    __strong CALayer *blurlayer = [self add];
    //: __strong CALayer *underlyingLayer = [self underlyingLayer];
    __strong CALayer *underlyingLayer = [self color];
    //: while (blurlayer.superlayer && blurlayer.superlayer != underlyingLayer)
    while (blurlayer.superlayer && blurlayer.superlayer != underlyingLayer)
    {
        //: blurlayer = blurlayer.superlayer;
        blurlayer = blurlayer.superlayer;
    }
    //: NSMutableArray *layers = [NSMutableArray array];
    NSMutableArray *layers = [NSMutableArray array];
    //: NSUInteger index = [underlyingLayer.sublayers indexOfObject:blurlayer];
    NSUInteger index = [underlyingLayer.sublayers indexOfObject:blurlayer];
    //: if (index != NSNotFound)
    if (index != NSNotFound)
    {
        //: for (NSUInteger i = index; i < [underlyingLayer.sublayers count]; i++)
        for (NSUInteger i = index; i < [underlyingLayer.sublayers count]; i++)
        {
            //: CALayer *layer = underlyingLayer.sublayers[i];
            CALayer *layer = underlyingLayer.sublayers[i];
            //: if (!layer.hidden)
            if (!layer.hidden)
            {
                //: layer.hidden = YES;
                layer.hidden = YES;
                //: [layers addObject:layer];
                [layers addObject:layer];
            }
        }
    }
    //: return layers;
    return layers;
}

//: - (void)restoreSuperviewAfterSnapshot:(NSArray *)hiddenLayers
- (void)margin:(NSArray *)hiddenLayers
{
    //: for (CALayer *layer in hiddenLayers)
    for (CALayer *layer in hiddenLayers)
    {
        //: layer.hidden = NO;
        layer.hidden = NO;
    }
}

//: - (UIImage *)blurredSnapshot:(UIImage *)snapshot radius:(CGFloat)blurRadius
- (UIImage *)add:(UIImage *)snapshot titleOf:(CGFloat)blurRadius
{
    //: return [snapshot blurredImageWithRadius:blurRadius
    return [snapshot afloat:blurRadius
                                 //: iterations:self.iterations
                                 with:self.iterations
                                  //: tintColor:self.tintColor];
                                  centerBy:self.tintColor];
}

//: - (void)setLayerContents:(UIImage *)image
- (void)setUpendOriginBlankWith:(UIImage *)image
{
    //: self.layer.contents = (id)image.CGImage;
    self.layer.contents = (id)image.CGImage;
    //: self.layer.contentsScale = image.scale;
    self.layer.contentsScale = image.scale;
}

//: - (void)updateAsynchronously:(BOOL)async completion:(void (^)())completion
- (void)titleCompletion:(BOOL)async background:(void (^)())completion
{
    //: if ([self shouldUpdate])
    if ([self status])
    {
        //: UIImage *snapshot = [self snapshotOfUnderlyingView];
        UIImage *snapshot = [self place];
        //: if (async)
        if (async)
        {
            //: dispatch_async(dispatch_get_global_queue((-2), 0), ^{
            dispatch_async(dispatch_get_global_queue((-2), 0), ^{

                //: UIImage *blurredImage = [self blurredSnapshot:snapshot radius:self.blurRadius];
                UIImage *blurredImage = [self add:snapshot titleOf:self.blurRadius];
                //: dispatch_sync(dispatch_get_main_queue(), ^{
                dispatch_sync(dispatch_get_main_queue(), ^{

                    //: [self setLayerContents:blurredImage];
                    [self setUpendOriginBlankWith:blurredImage];
                    //: if (completion) completion();
                    if (completion) completion();
                //: });
                });
            //: });
            });
        }
        //: else
        else
        {
            //: [self setLayerContents:[self blurredSnapshot:snapshot radius:[self blurPresentationLayer].blurRadius]];
            [self setUpendOriginBlankWith:[self add:snapshot titleOf:[self screen].blurRadius]];
            //: if (completion) completion();
            if (completion) completion();
        }
    }
    //: else if (completion)
    else if (completion)
    {
        //: completion();
        completion();
    }
}

//: @end
@end

Byte *UnderlyEnemyDataToByte(UnderlyEnemyData *data) {
    if (data->inherit) return data->plungeSpire;
    for (int i = 0; i < data->overnight; i++) {
        data->plungeSpire[i] ^= data->enjoy;
    }
    data->plungeSpire[data->overnight] = 0;
    data->inherit = true;
	if (data->overnight >= 1) {
		data->upper = data->plungeSpire[0];
	}
    return data->plungeSpire;
}

NSString *StringFromUnderlyEnemyData(UnderlyEnemyData *data) {
    return [NSString stringWithUTF8String:(char *)UnderlyEnemyDataToByte(data)];
}
