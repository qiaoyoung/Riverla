// __DEBUG__
// __CLOSE_PRINT__
//
//  IngredientModel.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/9.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUImageRenderViewModelDelegate <NSObject>
@protocol BottomColor <NSObject>

//: - (void)imageRenderDidOutputPixelBuffer:(CVPixelBufferRef)imageBuffer;
- (void)ting:(CVPixelBufferRef)imageBuffer;

//: @optional
@optional
/// 跟踪状态
//: - (void)imageRenderShouldCheckDetectingStatus:(FUDetectingParts)parts;
- (void)chromatogramTeam:(FUDetectingParts)parts;

//: @end
@end

//: @interface FUImageRenderViewModel : NSObject
@interface IngredientModel : NSObject

/// 是否渲染，默认为YES
//: @property (nonatomic, assign, getter=isRendering) BOOL rendering;
@property (nonatomic, assign, getter=isRendering) BOOL rendering;
/// 需要跟踪的部位，默认为FUDetectingPartsFace
//: @property (nonatomic, assign) FUDetectingParts detectingParts;
@property (nonatomic, assign) FUDetectingParts detectingParts;

/// 需要加载的AI模型，默认为FUAIModelTypeFace
//: @property (nonatomic, assign, readonly) FUAIModelType necessaryAIModelTypes;
@property (nonatomic, assign, readonly) FUAIModelType necessaryAIModelTypes;
/// 保存按钮到屏幕底部距离
//: @property (nonatomic, assign, readonly) CGFloat downloadButtonBottomConstant;
@property (nonatomic, assign, readonly) CGFloat downloadButtonBottomConstant;

//: @property (nonatomic, weak) id<FUImageRenderViewModelDelegate> delegate;
@property (nonatomic, weak) id<BottomColor> delegate;

//: @property (nonatomic, copy, nullable) void (^captureImageHandler)(UIImage *image);
@property (nonatomic, copy, nullable) void (^captureImageHandler)(UIImage *image);

//: - (instancetype)initWithImage:(UIImage *)image;
- (instancetype)initWithLand:(UIImage *)image;

//: - (void)start;
- (void)color;

//: - (void)stop;
- (void)hand;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END