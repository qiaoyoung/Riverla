//
//  PhotoContainerView.m
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "PhotoContainerView.h"


@interface PhotoContainerView ()<CustomMediaPickerViewDelegate,UIGestureRecognizerDelegate>


@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;
@property (nonatomic, assign) CGFloat initialHeight;
@property (nonatomic, assign) BOOL isScrollViewAtTop;

@property (nonatomic, assign) CGFloat minHeight;  // 最小高度
@property (nonatomic, assign) CGFloat maxHeight;  // 最大高度

@end

@implementation PhotoContainerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        
//        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
////        singleTapclose.delegate = self;
//        singleTapclose.cancelsTouchesInView = NO; // 允许触摸事件继续传递
//        [self addGestureRecognizer:singleTapclose];
        // 添加拖拽手势
         
        
        _minHeight = 480;
        _maxHeight = 720;
        
        [self initUI];
        
    }
    return self;
}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
//    CGPoint touchLocation = [touch locationInView:self];
//    
//    // 检查触摸点是否在子视图上
//    if (CGRectContainsPoint(self.albumPickerView.frame, touchLocation)) {
//        return NO; // 不接收这个触摸事件
//    }
//    
//    return YES; // 接收这个触摸事件
//}

#pragma mark - 手势处理
- (void)handlePanGesture:(UIPanGestureRecognizer *)gesture
{
    CGPoint velocity = [gesture velocityInView:self];
   
           // 根据滑动速度决定是展开还是收起
           if (velocity.y < 0) {
               // 向上快速滑动 - 展开
               [self expandWithAnimation];
           } else if (velocity.y > 0) {
               // 向下快速滑动 - 收起
               [self collapseWithAnimation];
           } else {
               // 根据当前位置决定
               CGFloat currentHeight = self.frame.size.height;
               if (currentHeight > (self.maxHeight + self.minHeight) / 2) {
                   [self expandWithAnimation];
               } else {
                   [self collapseWithAnimation];
               }
           }
    
    
   
    
}
    


#pragma mark - 展开/收起动画
- (void)expandWithAnimation{

        self.viewBg.frame = CGRectMake(0, SCREEN_HEIGHT-_maxHeight, SCREEN_WIDTH, _maxHeight);
        self.line.frame = CGRectMake((SCREEN_WIDTH-40)/2, 12, 40, 4);
        self.albumPickerView.frame = CGRectMake(20, 30, SCREEN_WIDTH-40, _maxHeight-120);
        self.albumPickerView.collectionView.frame = CGRectMake(0, 0, SCREEN_WIDTH-40, _maxHeight-120);
        self.confirmButton.frame = CGRectMake(20, _maxHeight-70, SCREEN_WIDTH-40, 48);
    
}

- (void)collapseWithAnimation {
    
        self.viewBg.frame = CGRectMake(0, SCREEN_HEIGHT-_minHeight, SCREEN_WIDTH, _minHeight);
        self.line.frame = CGRectMake((SCREEN_WIDTH-40)/2, 12, 40, 4);
        self.albumPickerView.frame = CGRectMake(20, 30, SCREEN_WIDTH-40, _minHeight-120);
        self.albumPickerView.collectionView.frame = CGRectMake(0, 0, SCREEN_WIDTH-40, _minHeight-120);
        self.confirmButton.frame = CGRectMake(20, _minHeight-70, SCREEN_WIDTH-40, 48);
    
}

- (void)initUI {
   
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT-_minHeight, SCREEN_WIDTH, _minHeight)];
    _viewBg.backgroundColor = RGB_COLOR_String(@"#ffffff");
    _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.cornerRadius = 12;
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    [self addSubview:_viewBg];
    _viewBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _viewBg.layer.shadowOffset = CGSizeMake(0,-4);
    _viewBg.layer.shadowOpacity = 1;
    _viewBg.layer.shadowRadius = 16;
    _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    _panGesture.delegate = self;
    [_viewBg addGestureRecognizer:_panGesture];
    
    _line = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-40)/2, 12, 40, 4)];
    _line.backgroundColor = RGB_COLOR_String(@"#8A8E98");
    _line.layer.cornerRadius = 2;
    [_viewBg addSubview:_line];
    
    // 创建相册选择器视图
    _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 30, SCREEN_WIDTH-40, _minHeight-120)];
    _albumPickerView.delegate = self;
    _albumPickerView.allowCamera = YES; // 显示拍照按钮
//    _albumPickerView.exclusiveTouch = YES;
    [_viewBg addSubview:_albumPickerView];
    
    [_viewBg addSubview:self.confirmButton];
    self.confirmButton.frame = CGRectMake(20, _minHeight-70, SCREEN_WIDTH-40, 48);
   
}

- (UIButton *)confirmButton
{
    if (!_confirmButton) {
        _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _confirmButton.layer.cornerRadius = 24;
        [_confirmButton setTitle:LangKey(@"user_profile_avtivity_send") forState:UIControlStateNormal];
        [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        _confirmButton.backgroundColor = ThemeColor;
        [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    }
    return _confirmButton;
}


#pragma mark - CustomAlbumPickerViewDelegate
- (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
{
    NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);
    self.selectedPhoto = assets;
    [self.confirmButton setTitle:[NSString stringWithFormat:@"%@(%lu)",LangKey(@"user_profile_avtivity_send"),(unsigned long)self.selectedPhoto.count] forState:UIControlStateNormal];
}

- (void)mediaPickerDidTapCamera {
    NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectCamera)]) {
        [self.delegate CustomPickerDidSelectCamera];
    }
}

- (void)confirmButtonTapped {
    [self animationClose];
    if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectAssets:)]) {
        [self.delegate CustomPickerDidSelectAssets:self.selectedPhoto];
    }
}

- (void)animationClose
{
    self.hidden = YES;
}

- (void)animationShow
{
    self.hidden = NO;
}

@end
