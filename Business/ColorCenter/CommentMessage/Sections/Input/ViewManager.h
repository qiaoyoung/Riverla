// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESEmoticonManager
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger,NIMEmoticonType) {
typedef NS_ENUM(NSInteger,NIMEmoticonType) {
    //: NIMEmoticonTypeFile = 0,
    NIMEmoticonTypeFile = 0,
    //: NIMEmoticonTypeUnicode,
    NIMEmoticonTypeUnicode,
    //: NIMEmoticonTypeGif,
    NIMEmoticonTypeGif,
//: };
};

//: @interface NIMInputEmoticon : NSObject
@interface CommentToTemp : NSObject
//: @property (nonatomic,readonly) NIMEmoticonType type;
@property (nonatomic,readonly) NIMEmoticonType type;
//: @property (nonatomic,strong) NSString *emoticonID;
@property (nonatomic,strong) NSString *emoticonID;
//: @property (nonatomic,strong) NSString *tag;
@property (nonatomic,strong) NSString *tag;
//: @property (nonatomic,strong) NSString *filename;
@property (nonatomic,strong) NSString *filename;
//: @property (nonatomic,copy) NSString *unicode;
@property (nonatomic,copy) NSString *unicode;
//: @property (nonatomic,copy) NSString *gif;
@property (nonatomic,copy) NSString *gif;
//: @end
@end

//: @interface NIMInputEmoticonLayout : NSObject
@interface TingLayout : NSObject
//: @property (nonatomic, assign) NSInteger rows; 
@property (nonatomic, assign) NSInteger rows; //行数
//: @property (nonatomic, assign) NSInteger columes; 
@property (nonatomic, assign) NSInteger columes; //列数
//: @property (nonatomic, assign) NSInteger itemCountInPage; 
@property (nonatomic, assign) NSInteger itemCountInPage; //每页显示几项
//: @property (nonatomic, assign) CGFloat cellWidth; 
@property (nonatomic, assign) CGFloat cellWidth; //单个单元格宽
//: @property (nonatomic, assign) CGFloat cellHeight; 
@property (nonatomic, assign) CGFloat cellHeight; //单个单元格高
//: @property (nonatomic, assign) CGFloat imageWidth; 
@property (nonatomic, assign) CGFloat imageWidth; //显示图片的宽
//: @property (nonatomic, assign) CGFloat imageHeight; 
@property (nonatomic, assign) CGFloat imageHeight; //显示图片的高
//: @property (nonatomic, assign) BOOL emoji;
@property (nonatomic, assign) BOOL emoji;

//: - (id)initEmojiLayout:(CGFloat)width;
- (id)initTimeEmoji:(CGFloat)width;

//: - (id)initCharletLayout:(CGFloat)width;
- (id)initContainerLayout:(CGFloat)width;

//: @end
@end

//: @interface NIMInputEmoticonCatalog : NSObject
@interface ImageHigh : NSObject
//: @property (nonatomic,strong) NIMInputEmoticonLayout *layout;
@property (nonatomic,strong) TingLayout *layout;
//: @property (nonatomic,strong) NSString *catalogID;
@property (nonatomic,strong) NSString *catalogID;
//: @property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *title;
//: @property (nonatomic,strong) NSDictionary *id2Emoticons;
@property (nonatomic,strong) NSDictionary *id2Emoticons;
//: @property (nonatomic,strong) NSDictionary *tag2Emoticons;
@property (nonatomic,strong) NSDictionary *tag2Emoticons;
//: @property (nonatomic,strong) NSArray *emoticons;
@property (nonatomic,strong) NSArray *emoticons;
//: @property (nonatomic,strong) NSString *icon; 
@property (nonatomic,strong) NSString *icon; //图标
//: @property (nonatomic,strong) NSString *iconPressed; 
@property (nonatomic,strong) NSString *iconPressed; //小图标按下效果
//: @property (nonatomic,assign) NSInteger pagesCount; 
@property (nonatomic,assign) NSInteger pagesCount; //分页数
//: @end
@end

//: @interface FFFInputEmoticonManager : NSObject
@interface ViewManager : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)common;

//: - (void)start;
- (void)date;

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID;
- (ImageHigh *)message:(NSString *)catalogID;
//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag;
- (CommentToTemp *)mark:(NSString *)tag;
//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID;
- (CommentToTemp *)deviceId:(NSString *)emoticonID;
//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (CommentToTemp *)tapId:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID;
                           picture:(NSString *)emoticonID;
//: @end
@end