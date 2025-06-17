// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentImage.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol ProtocolStatusDisable <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)title;
//: - (NSString *)memberId;
- (NSString *)marginTing;
//: - (id)sortKey;
- (id)user;

//: @end
@end

//: @interface NTESGroupedDataCollection : NSObject
@interface IndependentImage : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)member:(id<ProtocolStatusDisable>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)atGroup:(id<ProtocolStatusDisable>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)inputTitle:(NSString *)title statuteNameSearched:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)measure:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)key:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<ProtocolStatusDisable>)index:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<ProtocolStatusDisable>)of:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)shouldOf;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)fit:(NSInteger)groupIndex;

//: @end
@end