// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewInputProtocol.h
// Notice
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
@class ChangeMax;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol CourseOfActionDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item;
- (BOOL)infoItem:(ChangeMax *)item;

//: - (void)onTextChanged:(id)sender;
- (void)userred:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)visualAspect:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           value:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)item:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 along:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)manager:(NSString *)text start:(NSArray *)atUsers name:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)globule:(id)emoticon;

//: - (void)onCancelRecording;
- (void)endDay;

//: - (void)onStopRecording;
- (void)tingView;

//: - (void)onStartRecording;
- (void)betweenText;

//: - (void)onTapMoreBtn:(id)sender;
- (void)sub:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)records:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)images:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)views:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)taped:(id)sender;

//: - (void)didReplyCancelled;
- (void)scaleTitle;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)showRefer:(NSInteger)index content:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)withed:(NSArray<PHAsset *> *)assets;

//: @end
@end
