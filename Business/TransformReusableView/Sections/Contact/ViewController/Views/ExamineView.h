// __DEBUG__
// __CLOSE_PRINT__
//
//  ExamineView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZMONScanToolBar : UIView
@interface ExamineView : UIView

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction;
- (void)discount:(id)aTarget comment:(SEL)aAction;
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction;
- (void)sessionManager:(id)aTarget click:(SEL)aAction;

//: - (void)showTorch;
- (void)searchWith;
//: - (void)dismissTorch;
- (void)refreshLoad;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END