//
//  NIMListCollectionCell.h
// MyUserKit
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NIMQuickComment;
@class FFFMessageModel;
NS_ASSUME_NONNULL_BEGIN

@interface FFFQuickCommentCell : UICollectionViewCell

- (void)refreshWithData:(NSArray *)comment model:(FFFMessageModel *)data;

@end

NS_ASSUME_NONNULL_END
