// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteTitleView.h
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
@protocol JuvenilePersonDelegate <NSObject>

//: - (void)exportVideoViewDidClickCancel;
- (void)addModel;

//: @end
@end

//: @interface FUExportVideoView : UIView
@interface StatuteTitleView : UIView

//: @property (nonatomic, weak) id<FUExportVideoViewDelegate> delegate;
@property (nonatomic, weak) id<JuvenilePersonDelegate> delegate;

//: - (void)setExportProgress:(CGFloat)progress;
- (void)setTitleReasonProgress:(CGFloat)progress;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END