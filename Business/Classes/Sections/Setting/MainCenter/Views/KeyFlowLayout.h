// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyFlowLayout.h
//  LxGridView
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

/*
 此类来源于DeveloperLx的优秀开源项目：LxGridView
 github链接：https://github.com/DeveloperLx/LxGridView
 我对这个类的代码做了一些修改；
 感谢DeveloperLx的优秀代码~
 */

//: @interface LxGridViewFlowLayout : UICollectionViewFlowLayout
@interface KeyFlowLayout : UICollectionViewFlowLayout

//: @property (nonatomic,assign) BOOL panGestureRecognizerEnable;
@property (nonatomic,assign) BOOL panGestureRecognizerEnable;

//: @end
@end

//: @protocol LxGridViewDataSource <UICollectionViewDataSource>
@protocol HeadwaterSource <UICollectionViewDataSource>

//: @optional
@optional

//: - (void)collectionView:(UICollectionView *)collectionView
- (void)tingFor:(UICollectionView *)collectionView
       //: itemAtIndexPath:(NSIndexPath *)sourceIndexPath
       name:(NSIndexPath *)sourceIndexPath
   //: willMoveToIndexPath:(NSIndexPath *)destinationIndexPath;
   option:(NSIndexPath *)destinationIndexPath;
//: - (void)collectionView:(UICollectionView *)collectionView
- (void)viewName:(UICollectionView *)collectionView
       //: itemAtIndexPath:(NSIndexPath *)sourceIndexPath
       content:(NSIndexPath *)sourceIndexPath
    //: didMoveToIndexPath:(NSIndexPath *)destinationIndexPath;
    imagePath:(NSIndexPath *)destinationIndexPath;

//: - (BOOL)collectionView:(UICollectionView *)collectionView
- (BOOL)collectionView:(UICollectionView *)collectionView
//: canMoveItemAtIndexPath:(NSIndexPath *)indexPath;
canMoveItemAtIndexPath:(NSIndexPath *)indexPath;
//: - (BOOL)collectionView:(UICollectionView *)collectionView
- (BOOL)remove:(UICollectionView *)collectionView
       //: itemAtIndexPath:(NSIndexPath *)sourceIndexPath
       date:(NSIndexPath *)sourceIndexPath
    //: canMoveToIndexPath:(NSIndexPath *)destinationIndexPath;
    path:(NSIndexPath *)destinationIndexPath;

//: @end
@end

//: @protocol LxGridViewDelegateFlowLayout <UICollectionViewDelegateFlowLayout>
@protocol StatusIndependent <UICollectionViewDelegateFlowLayout>

//: @optional
@optional

//: - (void)collectionView:(UICollectionView *)collectionView
- (void)should:(UICollectionView *)collectionView
                //: layout:(UICollectionViewLayout *)collectionViewLayout
                quick:(UICollectionViewLayout *)collectionViewLayout
//: willBeginDraggingItemAtIndexPath:(NSIndexPath *)indexPath;
parent:(NSIndexPath *)indexPath;
//: - (void)collectionView:(UICollectionView *)collectionView
- (void)cell:(UICollectionView *)collectionView
                //: layout:(UICollectionViewLayout *)collectionViewLayout
                background:(UICollectionViewLayout *)collectionViewLayout
//: didBeginDraggingItemAtIndexPath:(NSIndexPath *)indexPath;
manageressPath:(NSIndexPath *)indexPath;
//: - (void)collectionView:(UICollectionView *)collectionView
- (void)begin:(UICollectionView *)collectionView
                //: layout:(UICollectionViewLayout *)collectionViewLayout
                languageOf:(UICollectionViewLayout *)collectionViewLayout
//: willEndDraggingItemAtIndexPath:(NSIndexPath *)indexPath;
soundPath:(NSIndexPath *)indexPath;
//: - (void)collectionView:(UICollectionView *)collectionView
- (void)nameIndex:(UICollectionView *)collectionView
                //: layout:(UICollectionViewLayout *)collectionViewLayout
                show:(UICollectionViewLayout *)collectionViewLayout
//: didEndDraggingItemAtIndexPath:(NSIndexPath *)indexPath;
draggingReloadVoice:(NSIndexPath *)indexPath;

//: @end
@end