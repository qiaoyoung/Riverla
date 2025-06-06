
#import <Foundation/Foundation.h>
typedef struct {
    Byte representative;
    Byte *dependingRed;
    unsigned int featShould;
    bool optionItemSuccess;
	int approximateAdd;
} HolisticTheoryData;

NSString *StringFromHolisticTheoryData(HolisticTheoryData *data);


//: photo_delete
HolisticTheoryData kStr_alleyContent = (HolisticTheoryData){155, (Byte []){235, 243, 244, 239, 244, 196, 255, 254, 247, 254, 239, 254, 245}, 12, false, 208};


//: GIF
HolisticTheoryData kStr_tonightName = (HolisticTheoryData){92, (Byte []){27, 21, 26, 236}, 3, false, 95};


//: filename
HolisticTheoryData kStr_reverseFeatPlanningName = (HolisticTheoryData){204, (Byte []){170, 165, 160, 169, 162, 173, 161, 169, 87}, 8, false, 182};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamViewCell.m
//  TZImagePickerController
//
//  Created by 谭真 on 16/1/3.
//  Copyright © 2016年 谭真. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZTestCell.h"
#import "TeamViewCell.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"

//: @implementation TZTestCell
@implementation TeamViewCell

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: _imageView = [[UIImageView alloc] init];
        _imageView = [[UIImageView alloc] init];
        //: _imageView.backgroundColor = [UIColor colorWithWhite:1.000 alpha:0.500];
        _imageView.backgroundColor = [UIColor colorWithWhite:1.000 alpha:0.500];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;

//        _videoImageView = [[UIImageView alloc] init];
//        _videoImageView.image = [UIImage tz_imageNamedFromMyBundle:@"MMVideoPreviewPlay"];
//        _videoImageView.contentMode = UIViewContentModeScaleAspectFill;
//        _videoImageView.hidden = YES;
//        [self addSubview:_videoImageView];

        //: _deleteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _deleteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_deleteBtn setImage:[UIImage imageNamed:@"photo_delete"] forState:UIControlStateNormal];
        [_deleteBtn setImage:[UIImage imageNamed:StringFromHolisticTheoryData(&kStr_alleyContent)] forState:UIControlStateNormal];
        //: _deleteBtn.imageEdgeInsets = UIEdgeInsetsMake(-10, 0, 0, -10);
        _deleteBtn.imageEdgeInsets = UIEdgeInsetsMake(-10, 0, 0, -10);
        //: _deleteBtn.alpha = 0.6;
        _deleteBtn.alpha = 0.6;
        //: [self addSubview:_deleteBtn];
        [self addSubview:_deleteBtn];

//        _gifLable = [[UILabel alloc] init];
//        _gifLable.text = @"GIF";
//        _gifLable.textColor = [UIColor whiteColor];
//        _gifLable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
//        _gifLable.textAlignment = NSTextAlignmentCenter;
//        _gifLable.font = [UIFont systemFontOfSize:10];
//        [self addSubview:_gifLable];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _imageView.frame = self.bounds;
    _imageView.frame = self.bounds;
    //: _gifLable.frame = CGRectMake(self.tz_width - 25, self.tz_height - 14, 25, 14);
    _gifLable.frame = CGRectMake(self.tz_width - 25, self.tz_height - 14, 25, 14);
    //: _deleteBtn.frame = CGRectMake(self.tz_width - 36, 0, 36, 36);
    _deleteBtn.frame = CGRectMake(self.tz_width - 36, 0, 36, 36);
    //: CGFloat width = self.tz_width / 3.0;
    CGFloat width = self.tz_width / 3.0;
    //: _videoImageView.frame = CGRectMake(width, width, width, width);
    _videoImageView.frame = CGRectMake(width, width, width, width);
}

//: - (void)setAsset:(PHAsset *)asset {
- (void)setAsset:(PHAsset *)asset {
    //: _asset = asset;
    _asset = asset;
    //: _videoImageView.hidden = asset.mediaType != PHAssetMediaTypeVideo;
    _videoImageView.hidden = asset.mediaType != PHAssetMediaTypeVideo;
    //: _gifLable.hidden = ![[asset valueForKey:@"filename"] containsString:@"GIF"];
    _gifLable.hidden = ![[asset valueForKey:StringFromHolisticTheoryData(&kStr_reverseFeatPlanningName)] containsString:StringFromHolisticTheoryData(&kStr_tonightName)];
}

//: - (void)setRow:(NSInteger)row {
- (void)setRow:(NSInteger)row {
    //: _row = row;
    _row = row;
    //: _deleteBtn.tag = row;
    _deleteBtn.tag = row;
}

//: - (UIView *)snapshotView {
- (UIView *)lightView {
    //: UIView *snapshotView = [[UIView alloc]init];
    UIView *snapshotView = [[UIView alloc]init];

    //: UIView *cellSnapshotView = nil;
    UIView *cellSnapshotView = nil;

    //: if ([self respondsToSelector:@selector(snapshotViewAfterScreenUpdates:)]) {
    if ([self respondsToSelector:@selector(snapshotViewAfterScreenUpdates:)]) {
        //: cellSnapshotView = [self snapshotViewAfterScreenUpdates:NO];
        cellSnapshotView = [self snapshotViewAfterScreenUpdates:NO];
    //: } else {
    } else {
        //: CGSize size = CGSizeMake(self.bounds.size.width + 20, self.bounds.size.height + 20);
        CGSize size = CGSizeMake(self.bounds.size.width + 20, self.bounds.size.height + 20);
        //: UIGraphicsBeginImageContextWithOptions(size, self.opaque, 0);
        UIGraphicsBeginImageContextWithOptions(size, self.opaque, 0);
        //: [self.layer renderInContext:UIGraphicsGetCurrentContext()];
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
        //: UIImage * cellSnapshotImage = UIGraphicsGetImageFromCurrentImageContext();
        UIImage * cellSnapshotImage = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: cellSnapshotView = [[UIImageView alloc] initWithImage:cellSnapshotImage];
        cellSnapshotView = [[UIImageView alloc] initWithImage:cellSnapshotImage];
    }

    //: snapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);
    snapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);
    //: cellSnapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);
    cellSnapshotView.frame = CGRectMake(0, 0, cellSnapshotView.frame.size.width, cellSnapshotView.frame.size.height);

    //: [snapshotView addSubview:cellSnapshotView];
    [snapshotView addSubview:cellSnapshotView];
    //: return snapshotView;
    return snapshotView;
}

//: @end
@end

Byte *HolisticTheoryDataToByte(HolisticTheoryData *data) {
    if (data->optionItemSuccess) return data->dependingRed;
    for (int i = 0; i < data->featShould; i++) {
        data->dependingRed[i] ^= data->representative;
    }
    data->dependingRed[data->featShould] = 0;
    data->optionItemSuccess = true;
	if (data->featShould >= 1) {
		data->approximateAdd = data->dependingRed[0];
	}
    return data->dependingRed;
}

NSString *StringFromHolisticTheoryData(HolisticTheoryData *data) {
    return [NSString stringWithUTF8String:(char *)HolisticTheoryDataToByte(data)];
}
