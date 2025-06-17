// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/10/21.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUExportVideoViewDelegate <NSObject>
@protocol KeyOn <NSObject>

//: - (void)exportVideoViewDidClickCancel;
- (void)atLength;

//: @end
@end

//: @interface FUExportVideoView : UIView
@interface MessageView : UIView

//: @property (nonatomic, weak) id<FUExportVideoViewDelegate> delegate;
@property (nonatomic, weak) id<KeyOn> delegate;

//: - (void)setExportProgress:(CGFloat)progress;
- (void)setCenterStride:(CGFloat)progress;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END