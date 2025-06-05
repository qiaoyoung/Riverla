// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickModel.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/9.
//

// __M_A_C_R_O__
//: #import "FUImageRenderViewModel.h"
#import "ClickModel.h"

//: @interface FUImageRenderViewModel ()
@interface ClickModel ()

//: @property (nonatomic, strong) CADisplayLink *displayLink;
@property (nonatomic, strong) CADisplayLink *displayLink;

//: @property (nonatomic, strong) NSOperationQueue *renderOperationQueue;
@property (nonatomic, strong) NSOperationQueue *renderOperationQueue;

//: @property (nonatomic, strong) UIImage *renderImage;
@property (nonatomic, strong) UIImage *renderImage;

//: @end
@end

//: @implementation FUImageRenderViewModel
@implementation ClickModel


//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithImage:(UIImage *)image {
- (instancetype)initWithProvider:(UIImage *)image {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.rendering = YES;
        self.rendering = YES;
        //: self.detectingParts = FUDetectingPartsFace;
        self.detectingParts = FUDetectingPartsFace;
        //: if (self.necessaryAIModelTypes & FUAIModelTypeFace) {
        if (self.necessaryAIModelTypes & FUAIModelTypeFace) {
            //: [FURenderKitManager setFaceProcessorDetectMode:FUFaceProcessorDetectModeImage];
            [LanguagePin setTingOf:FUFaceProcessorDetectModeImage];
        }
//        if (self.necessaryAIModelTypes & FUAIModelTypeHuman) {
//            [LanguagePin setHumanProcessorDetectMode:FUHumanProcessorDetectModeVideo];
//        }
        //: self.renderImage = [UIImage imageWithData:UIImageJPEGRepresentation(image, 1)];
        self.renderImage = [UIImage imageWithData:UIImageJPEGRepresentation(image, 1)];
    }
    //: return self;
    return self;
}

//: - (void)dealloc {
- (void)dealloc {
    //: NSLog(@"FUImageRenderViewModel dealloc");
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)start {
- (void)team {
    //: [FURenderKitManager resetTrackedResult];
    [LanguagePin gray];
    //: if (!_displayLink) {
    if (!_displayLink) {
        //: self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayLinkAction)];
        self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(videoText)];
        //: [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
        [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
        //: self.displayLink.frameInterval = 10;
        self.displayLink.frameInterval = 10;
    }
    //: self.displayLink.paused = NO;
    self.displayLink.paused = NO;
}

//: - (void)stop {
- (void)beforeLabel {
    //: self.displayLink.paused = YES;
    self.displayLink.paused = YES;
    //: [self.displayLink invalidate];
    [self.displayLink invalidate];
    //: self.displayLink = nil;
    self.displayLink = nil;
    //: [self.renderOperationQueue cancelAllOperations];
    [self.renderOperationQueue cancelAllOperations];
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)displayLinkAction {
- (void)videoText {
    //: [self.renderOperationQueue addOperationWithBlock:^{
    [self.renderOperationQueue addOperationWithBlock:^{
        //: [FURenderKitManager updateBeautyBlurEffect];
        [LanguagePin assemblage];
        //: @autoreleasepool {
        @autoreleasepool {
            //: CVPixelBufferRef buffer = [FUImageHelper pixelBufferFromImage:self.renderImage];
            CVPixelBufferRef buffer = [FUImageHelper pixelBufferFromImage:self.renderImage];
            //: if (self.isRendering) {
            if (self.isRendering) {
                //: FURenderInput *input = [[FURenderInput alloc] init];
                FURenderInput *input = [[FURenderInput alloc] init];
                //: switch (self.renderImage.imageOrientation) {
                switch (self.renderImage.imageOrientation) {
                    //: case UIImageOrientationUp:
                    case UIImageOrientationUp:
                    //: case UIImageOrientationUpMirrored:
                    case UIImageOrientationUpMirrored:
                        //: input.renderConfig.imageOrientation = FUImageOrientationUP;
                        input.renderConfig.imageOrientation = FUImageOrientationUP;
                        //: break;
                        break;
                    //: case UIImageOrientationLeft:
                    case UIImageOrientationLeft:
                    //: case UIImageOrientationLeftMirrored:
                    case UIImageOrientationLeftMirrored:
                        //: input.renderConfig.imageOrientation = FUImageOrientationRight;
                        input.renderConfig.imageOrientation = FUImageOrientationRight;
                        //: break;
                        break;
                    //: case UIImageOrientationDown:
                    case UIImageOrientationDown:
                    //: case UIImageOrientationDownMirrored:
                    case UIImageOrientationDownMirrored:
                        //: input.renderConfig.imageOrientation = FUImageOrientationDown;
                        input.renderConfig.imageOrientation = FUImageOrientationDown;
                        //: break;
                        break;
                    //: case UIImageOrientationRight:
                    case UIImageOrientationRight:
                    //: case UIImageOrientationRightMirrored:
                    case UIImageOrientationRightMirrored:
                        //: input.renderConfig.imageOrientation = FUImageOrientationLeft;
                        input.renderConfig.imageOrientation = FUImageOrientationLeft;
                        //: break;
                        break;
                }
                //: input.pixelBuffer = buffer;
                input.pixelBuffer = buffer;
                //: FURenderOutput *output = [[FURenderKit shareRenderKit] renderWithInput:input];
                FURenderOutput *output = [[FURenderKit shareRenderKit] renderWithInput:input];
                //: [self processOutputResult:output.pixelBuffer];
                [self text:output.pixelBuffer];
            //: } else {
            } else {
                // 原图
                //: [self processOutputResult:buffer];
                [self text:buffer];
            }
            //: CVPixelBufferRelease(buffer);
            CVPixelBufferRelease(buffer);
        }

        //: if (self.detectingParts != FUDetectingPartsNone) {
        if (self.detectingParts != FUDetectingPartsNone) {
            // 需要检查人脸/人体/手势检测状态
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(imageRenderShouldCheckDetectingStatus:)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(languages:)]) {
                //: [self.delegate imageRenderShouldCheckDetectingStatus:self.detectingParts];
                [self.delegate languages:self.detectingParts];
            }
        }
    //: }];
    }];
}

//: - (void)processOutputResult:(CVPixelBufferRef)pixelBuffer {
- (void)text:(CVPixelBufferRef)pixelBuffer {
    //: if (!pixelBuffer) {
    if (!pixelBuffer) {
        //: return;
        return;
    }
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(imageRenderDidOutputPixelBuffer:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(messageTo:)]) {
        //: [self.delegate imageRenderDidOutputPixelBuffer:pixelBuffer];
        [self.delegate messageTo:pixelBuffer];
    }
    //: if (self.captureImageHandler) {
    if (self.captureImageHandler) {
        // 保存图片
        //: UIImage *captureImage = [FUImageHelper imageFromPixelBuffer:pixelBuffer];
        UIImage *captureImage = [FUImageHelper imageFromPixelBuffer:pixelBuffer];
        //: self.captureImageHandler(captureImage);
        self.captureImageHandler(captureImage);
        //: self.captureImageHandler = nil;
        self.captureImageHandler = nil;
    }
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (NSOperationQueue *)renderOperationQueue {
- (NSOperationQueue *)renderOperationQueue {
    //: if (!_renderOperationQueue) {
    if (!_renderOperationQueue) {
        //: _renderOperationQueue = [[NSOperationQueue alloc] init];
        _renderOperationQueue = [[NSOperationQueue alloc] init];
        //: _renderOperationQueue.maxConcurrentOperationCount = 1;
        _renderOperationQueue.maxConcurrentOperationCount = 1;
    }
    //: return _renderOperationQueue;
    return _renderOperationQueue;
}

//: #pragma mark - Overriding attributes
#pragma mark - Overriding attributes

//: - (FUAIModelType)necessaryAIModelTypes {
- (FUAIModelType)necessaryAIModelTypes {
    //: return FUAIModelTypeFace;
    return FUAIModelTypeFace;
}

//: - (CGFloat)downloadButtonBottomConstant {
- (CGFloat)downloadButtonBottomConstant {
    //: return FUHeightIncludeBottomSafeArea(10);
    return FUHeightIncludeBottomSafeArea(10);
}

//: @end
@end