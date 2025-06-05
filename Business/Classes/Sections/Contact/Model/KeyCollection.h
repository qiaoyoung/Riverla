// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyCollection.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol BlueProtocol <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)outsideWith;
//: - (NSString *)memberId;
- (NSString *)selectId;
//: - (id)sortKey;
- (id)link;

//: @end
@end

//: @interface NTESGroupedDataCollection : NSObject
@interface KeyCollection : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)outBlue:(id<BlueProtocol>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)humanBubble:(id<BlueProtocol>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)withEnd:(NSString *)title with:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)parameter:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)instillResolution:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<BlueProtocol>)magnitudeervalOf:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<BlueProtocol>)boardMemberPledgeChange:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)videoKey;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)prolusionComment:(NSInteger)groupIndex;

//: @end
@end