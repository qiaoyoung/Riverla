// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDateFormatter+KIDateFormatter.h
//  Kitalker
//
//  Created by chen on 12-8-23.
//
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDateFormatter (KIAdditions)
@interface NSDateFormatter (StopAdditions)

//: + (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
+ (NSString *)success:(NSString *)format solarDayToCollectableMaturity:(NSDate *)date;

//: - (NSString *)weekday:(NSDate *)date;
- (NSString *)distanceMax:(NSDate *)date;

//: - (NSString *)day:(NSDate *)date;
- (NSString *)mode:(NSDate *)date;

//: - (NSString *)month:(NSDate *)date;
- (NSString *)head:(NSDate *)date;

//: - (NSString *)year:(NSDate *)date;
- (NSString *)someMessageFlush:(NSDate *)date;

//: - (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
- (NSString *)handle:(NSString *)format bar:(NSDate *)date;

//: @end
@end