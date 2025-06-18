// __DEBUG__
// __CLOSE_PRINT__
//
//  UserInputProtocol.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

// __M_A_C_R_O__

//: @class FFFMediaItem;
@class ImageRecent;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol SizeDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item;
- (BOOL)keeping:(ImageRecent *)item;

//: - (void)onTextChanged:(id)sender;
- (void)ofed:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)trademark:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           searched:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)along:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 will:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)sleepingTablet:(NSString *)text title:(NSArray *)atUsers duringSend:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)with:(id)emoticon;

//: - (void)onCancelRecording;
- (void)showPerformance;

//: - (void)onStopRecording;
- (void)keyOrigin;

//: - (void)onStartRecording;
- (void)retortRecording;

//: - (void)onTapMoreBtn:(id)sender;
- (void)view:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)findOff:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)heritaging:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)pressed:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)languaging:(id)sender;

//: - (void)didReplyCancelled;
- (void)alongFrom;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)elect:(NSInteger)index showHolder:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)usering:(NSArray<PHAsset *> *)assets;

//: @end
@end
