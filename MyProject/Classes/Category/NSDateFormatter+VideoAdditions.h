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
@interface NSDateFormatter (VideoAdditions)

//: + (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
+ (NSString *)disableIn:(NSString *)format read:(NSDate *)date;

//: - (NSString *)weekday:(NSDate *)date;
- (NSString *)toUser:(NSDate *)date;

//: - (NSString *)day:(NSDate *)date;
- (NSString *)astatine:(NSDate *)date;

//: - (NSString *)month:(NSDate *)date;
- (NSString *)distance:(NSDate *)date;

//: - (NSString *)year:(NSDate *)date;
- (NSString *)display:(NSDate *)date;

//: - (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
- (NSString *)viewBy:(NSString *)format add:(NSDate *)date;

//: @end
@end