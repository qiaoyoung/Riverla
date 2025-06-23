#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataSourceThoroughMarsh : NSObject

@property (nonatomic) BOOL checkReflectFilter;
@property (nonatomic) NSString *smartToneInside;

+ (instancetype)dataSourceThoroughMarshWithDictionary:(NSDictionary *)dict;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

- (NSMutableArray *)handleTrain;

- (NSString *)detectSourceVisitorHelper;

- (NSMutableSet *)alongClass;

- (NSMutableSet *)withinHeaderScrollPortrait;

@end

NS_ASSUME_NONNULL_END
