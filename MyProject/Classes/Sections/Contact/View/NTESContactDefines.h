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
@protocol FlushLength <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)view;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)minMembers;

//重用id
//: - (NSString*)reuseId;
- (NSString*)up;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)light;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol CornerTeam<NSObject>
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
- (CGFloat)selectBy;

//重用id
//: - (NSString*)reuseId;
- (NSString*)valueBy;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)compartment;

//badge
//: - (NSString *)badge;
- (NSString *)at;

//显示名
//: - (NSString *)nick;
- (NSString *)afterLoad;

//占位图
//: - (UIImage *)icon;
- (UIImage *)segment;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)smart;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)title;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)findObject;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol PlacementLayer <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)accountLanguage:(id<CornerTeam>)item;

//: - (void)addDelegate:(id)delegate;
- (void)nameUp:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat let_positionName = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat let_disableName = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger let_taskData = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger let_commentName = 10;//头像和选择框之间的距离
