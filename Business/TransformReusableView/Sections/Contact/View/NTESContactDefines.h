// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @protocol NTESContactItemCollection <NSObject>
@protocol CommentCollection <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)light;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)model;

//重用id
//: - (NSString*)reuseId;
- (NSString*)thanId;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)range;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol ImageItem<NSObject>
//: @required
@required
//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)vcName;
- (NSString*)vcName;

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)userId;
- (NSString*)userId;

//返回行高
//: - (CGFloat)uiHeight;
- (CGFloat)to;

//重用id
//: - (NSString*)reuseId;
- (NSString*)item;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)team;

//badge
//: - (NSString *)badge;
- (NSString *)bottom;

//显示名
//: - (NSString *)nick;
- (NSString *)reply;

//占位图
//: - (UIImage *)icon;
- (UIImage *)viewIcon;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)cell;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)counternalRepresentation;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)sendBackground;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol ShowCell <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)searchion:(id<ImageItem>)item;

//: - (void)addDelegate:(id)delegate;
- (void)index:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat kLet_kitName = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat kLet_commentName = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger kLet_strongData = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger kLet_needBottomName = 10;//头像和选择框之间的距离
