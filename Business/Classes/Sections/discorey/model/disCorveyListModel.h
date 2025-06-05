//
//  disCorveyListModel.h
//  Neeyo
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface disCorveyListModel : NSObject

@property (nonatomic, strong) NSString *fsId;
@property (nonatomic, strong) NSString *user_id;
@property (nonatomic, strong) NSString *headsmall;
@property (nonatomic, strong) NSString *nickname;
@property (nonatomic, strong) NSArray *pictureArray;

@property (nonatomic, strong) NSString *ispraise;
@property (nonatomic, strong) NSString *praises;

@end

NS_ASSUME_NONNULL_END
