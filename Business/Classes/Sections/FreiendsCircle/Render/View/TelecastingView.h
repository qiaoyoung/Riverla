// __DEBUG__
// __CLOSE_PRINT__
//
//  TelecastingView.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/10.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUCaptureButtonDelegate <NSObject>
@protocol PictureColor <NSObject>

//: - (void)captureButtonDidTakePhoto;
- (void)selectBy;
//: - (void)captureButtonDidStartRecording;
- (void)deleteSign;
//: - (void)captureButtonDidFinishRecording;
- (void)managerFrom;

//: @end
@end

//: @interface FUCaptureButton : UIView
@interface TelecastingView : UIView

/// 是否可以录制视频，默认为YES
//: @property (nonatomic, assign) BOOL recordVideo;
@property (nonatomic, assign) BOOL recordVideo;

//: @property (nonatomic, weak) id<FUCaptureButtonDelegate> delegate;
@property (nonatomic, weak) id<PictureColor> delegate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END