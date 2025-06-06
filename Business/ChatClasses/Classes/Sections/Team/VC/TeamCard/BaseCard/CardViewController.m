
#import <Foundation/Foundation.h>
typedef struct {
    Byte unwilling;
    Byte *abet;
    unsigned int holism;
    bool about;
	int ago;
} ShapeData;

NSString *StringFromShapeData(ShapeData *data);


//: TableSwitch%ld%ld
ShapeData kStr_pressOptionName = (ShapeData){20, (Byte []){64, 117, 118, 120, 113, 71, 99, 125, 96, 119, 124, 49, 120, 112, 49, 120, 112, 51}, 17, false, 179};


//: #2C3042
ShapeData kStr_ruleDifficultyValue = (ShapeData){181, (Byte []){150, 135, 246, 134, 133, 129, 135, 235}, 7, false, 202};


//: tableButtonCell
ShapeData kStr_ereData = (ShapeData){120, (Byte []){12, 25, 26, 20, 29, 58, 13, 12, 12, 23, 22, 59, 29, 20, 20, 202}, 15, false, 208};


//: back_arrow_bl
ShapeData kStr_denyName = (ShapeData){172, (Byte []){206, 205, 207, 199, 243, 205, 222, 222, 195, 219, 243, 206, 192, 163}, 13, false, 154};


//: #F6F7FA
ShapeData kStr_gradualContent = (ShapeData){61, (Byte []){30, 123, 11, 123, 10, 123, 124, 171}, 7, false, 195};


//: tableMemberCell
ShapeData kStr_bedroomInvolvedValue = (ShapeData){244, (Byte []){128, 149, 150, 152, 145, 185, 145, 153, 150, 145, 134, 183, 145, 152, 152, 136}, 15, false, 121};


//: builidCommonCell%ld%ld
ShapeData kStr_goldTitle = (ShapeData){151, (Byte []){245, 226, 254, 251, 254, 243, 212, 248, 250, 250, 248, 249, 212, 242, 251, 251, 178, 251, 243, 178, 251, 243, 201}, 22, false, 34};


//: contact_tag_fragment_cancel
ShapeData kStr_cattleSignalText = (ShapeData){223, (Byte []){188, 176, 177, 171, 190, 188, 171, 128, 171, 190, 184, 128, 185, 173, 190, 184, 178, 186, 177, 171, 128, 188, 190, 177, 188, 186, 179, 3}, 27, false, 208};


//: personCard_bg
ShapeData kStr_ventureLeaseName = (ShapeData){227, (Byte []){147, 134, 145, 144, 140, 141, 160, 130, 145, 135, 188, 129, 132, 71}, 13, false, 254};


//: tableButtonCell%ld%ld
ShapeData kStr_deployContent = (ShapeData){64, (Byte []){52, 33, 34, 44, 37, 2, 53, 52, 52, 47, 46, 3, 37, 44, 44, 101, 44, 36, 101, 44, 36, 71}, 21, false, 192};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CardViewController.m
// Notice
//
//  Created by Netease on 2019/6/11.
//  Copyright © 2019 NetEase. All rights reserved.
//  

// __M_A_C_R_O__
//: #import "FFFTeamCardViewController.h"
#import "CardViewController.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitColorButtonCell.h"
#import "OriginViewCell.h"
//: #import "FFFTeamMemberListCell.h"
#import "MemberMessageViewCell.h"
//: #import "ViewKitDependency.h"
#import "ViewKitDependency.h"
//: #import "FFFTeamCardSelectedViewController.h"
#import "HeritageViewController.h"
//: #import "FFFGroupEditTableViewCell.h"
#import "NewsView.h"

//: @interface FFFTeamCardViewController () <UITableViewDataSource,
@interface CardViewController () <UITableViewDataSource,
                                         //: UITableViewDelegate,
                                         UITableViewDelegate,
                                         //: UIImagePickerControllerDelegate,
                                         UIImagePickerControllerDelegate,
                                         //: UINavigationControllerDelegate>
                                         UINavigationControllerDelegate>
//: @property (nonatomic, copy) NIMTeamCardPickerHandle pickerSelectedBlock;
@property (nonatomic, copy) NIMTeamCardPickerHandle pickerSelectedBlock;
//: @end
@end

//: @implementation FFFTeamCardViewController
@implementation CardViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor isView:StringFromShapeData(&kStr_gradualContent)];
    //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
    UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
    //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
    Bg.image = [UIImage imageNamed:StringFromShapeData(&kStr_ventureLeaseName)];
    //: [self.view addSubview:Bg];
    [self.view addSubview:Bg];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight], 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice table], 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromShapeData(&kStr_denyName)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
}
//: - (void)backAction{
- (void)messageView{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - Public
#pragma mark - Public
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type
- (void)imageBe:(UIImagePickerControllerSourceType)type
             //: completion:(NIMTeamCardPickerHandle)completion {
             at:(NIMTeamCardPickerHandle)completion {
    //: _pickerSelectedBlock = [completion copy];
    _pickerSelectedBlock = [completion copy];
    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES;
    picker.allowsEditing = YES;
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}

//: - (UIAlertController *)makeAlertSheetWithTitle:(NSString *)title
- (UIAlertController *)whereaboutsActions:(NSString *)title
                                       //: actions:(NSArray <UIAlertAction *>*)actions {
                                       show:(NSArray <UIAlertAction *>*)actions {

    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   //: message:nil
                                                                   message:nil
                                                            //: preferredStyle:UIAlertControllerStyleActionSheet];
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    //: [actions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [actions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: [alert addAction:obj];
        [alert addAction:obj];
    //: }];
    }];

    //: [alert addAction:[self makeCancelAction]];
    [alert addAction:[self flush]];
    //: return alert;
    return alert;
}

//: - (UIAlertAction *)makeCancelAction {
- (UIAlertAction *)flush {
    //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromShapeData(&kStr_cattleSignalText)]
                                                     //: style:UIAlertActionStyleCancel
                                                     style:UIAlertActionStyleCancel
                                                   //: handler:nil];
                                                   handler:nil];
    //: return cancel;
    return cancel;
}

//: - (void)showAlert:(UIAlertController *)alert {
- (void)alertEnable:(UIAlertController *)alert {
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:alert animated:YES completion:nil];
    [self presentViewController:alert animated:YES completion:nil];
}

//: - (void)showToastMsg:(NSString *)msg {
- (void)bull:(NSString *)msg {
    //: if (msg) {
    if (msg) {
        //: [self.view makeToast:msg
        [self.view makeToast:msg
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (id<NTESCardBodyData>)bodyDataAtIndexPath:(NSIndexPath*)indexpath{
- (id<NTESCardBodyData>)cavityUponPath:(NSIndexPath*)indexpath{
    //: NSArray *sectionData = self.datas[indexpath.section];
    NSArray *sectionData = self.datas[indexpath.section];
    //: return sectionData[indexpath.row];
    return sectionData[indexpath.row];
}
//: #pragma mark - UITableViewDelegate, UITableViewDataSource
#pragma mark - UITableViewDelegate, UITableViewDataSource
//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{

    // 圆角弧度半径
    //: CGFloat cornerRadius = 8.f;
    CGFloat cornerRadius = 8.f;
    // 设置cell的背景色为透明，如果不设置这个的话，则原来的背景色不会被覆盖
    //: cell.backgroundColor = UIColor.clearColor;
    cell.backgroundColor = UIColor.clearColor;

    // 创建一个shapeLayer
    //: CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    //: CAShapeLayer *backgroundLayer = [[CAShapeLayer alloc] init]; 
    CAShapeLayer *backgroundLayer = [[CAShapeLayer alloc] init]; //显示选中
    // 创建一个可变的图像Path句柄，该路径用于保存绘图信息
    //: CGMutablePathRef pathRef = CGPathCreateMutable();
    CGMutablePathRef pathRef = CGPathCreateMutable();
    // 获取cell的size
    // 第一个参数,是整个 cell 的 bounds, 第二个参数是距左右两端的距离,第三个参数是距上下两端的距离
    //: CGRect bounds = CGRectInset(cell.bounds, 0, 0);
    CGRect bounds = CGRectInset(cell.bounds, 0, 0);

    // CGRectGetMinY：返回对象顶点坐标
    // CGRectGetMaxY：返回对象底点坐标
    // CGRectGetMinX：返回对象左边缘坐标
    // CGRectGetMaxX：返回对象右边缘坐标
    // CGRectGetMidX: 返回对象中心点的X坐标
    // CGRectGetMidY: 返回对象中心点的Y坐标

    // 这里要判断分组列表中的第一行，每组section的第一行，每组section的中间行
    //: NSInteger row = indexPath.row;
    NSInteger row = indexPath.row;
    //最后一行
    //: NSInteger lastRow =[tableView numberOfRowsInSection:indexPath.section] - 1;
    NSInteger lastRow =[tableView numberOfRowsInSection:indexPath.section] - 1;

    //如果即使第一行也是最后一行,只有一个cell 四个圆角
    //: if (row == 0 && row == lastRow) {
    if (row == 0 && row == lastRow) {

            //: CGPoint p = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds) - cornerRadius);
            CGPoint p = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds) - cornerRadius);
            //: CGPoint p1 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMinY(bounds));
            CGPoint p1 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMinY(bounds));
            //用最小 minX  + cornerRadius
            //: CGPoint p2 = CGPointMake(CGRectGetMinX(bounds) + cornerRadius, CGRectGetMinY(bounds));
            CGPoint p2 = CGPointMake(CGRectGetMinX(bounds) + cornerRadius, CGRectGetMinY(bounds));
            //: CGPoint p3 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
            CGPoint p3 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
            //: CGPoint p4 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds) +cornerRadius);
            CGPoint p4 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds) +cornerRadius);
            //: CGPoint p5 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
            CGPoint p5 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
            //: CGPoint p6 = CGPointMake(CGRectGetMaxX(bounds)- cornerRadius, CGRectGetMaxY(bounds));
            CGPoint p6 = CGPointMake(CGRectGetMaxX(bounds)- cornerRadius, CGRectGetMaxY(bounds));
            //: CGPoint p7 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
            CGPoint p7 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds));

            //: CGPathMoveToPoint(pathRef, nil, p.x, p.y);
            CGPathMoveToPoint(pathRef, nil, p.x, p.y);
            //左上角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p1.x, p1.y, p2.x, p2.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p1.x, p1.y, p2.x, p2.y, cornerRadius);
            //右上角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p3.x, p3.y, p4.x, p4.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p3.x, p3.y, p4.x, p4.y, cornerRadius);
            //右下角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p5.x, p5.y, p6.x, p6.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p5.x, p5.y, p6.x, p6.y, cornerRadius);
            // 左下角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p7.x, p7.y, p.x, p.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p7.x, p7.y, p.x, p.y, cornerRadius);

        //: cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: cell.layer.shadowOffset = CGSizeMake(0,4);
        cell.layer.shadowOffset = CGSizeMake(0,4);
        //: cell.layer.shadowOpacity = 1;
        cell.layer.shadowOpacity = 1;
        //: cell.layer.shadowRadius = 16;
        cell.layer.shadowRadius = 16;
    }
    //第一行
    //: else if(row == 0)
    else if(row == 0)
    {
        // 初始起点为cell的左下角坐标
        //: CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
        CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
        // 起始坐标为左下角，设为p，（CGRectGetMinX(bounds), CGRectGetMinY(bounds)）为左上角的点，设为p1(x1,y1)，(CGRectGetMidX(bounds), CGRectGetMinY(bounds))为顶部中点的点，设为p2(x2,y2)。然后连接p1和p2为一条直线l1，连接初始点p到p1成一条直线l，则在两条直线相交处绘制弧度为r的圆角。
        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), cornerRadius);

        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        // 终点坐标为右下角坐标点，把绘图信息都放到路径中去,根据这些路径就构成了一块区域了
        //: CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
        CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));

    }
    //最后一行
    //: else if (row == lastRow)
    else if (row == lastRow)
    {
        // 初始起点为cell的左上角坐标
        //: CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
        CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), cornerRadius);
        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        // 添加一条直线，终点坐标为右下角坐标点并放到路径中去
        //: CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
        CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));

//        cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        cell.layer.shadowOffset = CGSizeMake(0,3);
//        cell.layer.shadowOpacity = 1;
//        cell.layer.shadowRadius = 0;

        //: cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: cell.layer.shadowOffset = CGSizeMake(0,4);
        cell.layer.shadowOffset = CGSizeMake(0,4);
        //: cell.layer.shadowOpacity = 1;
        cell.layer.shadowOpacity = 1;
        //: cell.layer.shadowRadius = 16;
        cell.layer.shadowRadius = 16;



    //: }else
    }else
    {
        //添加cell的rectangle信息到path中（不包括圆角）
        //: CGPathAddRect(pathRef, nil, bounds);
        CGPathAddRect(pathRef, nil, bounds);
    }


    // 把已经绘制好的可变图像路径赋值给图层，然后图层根据这图像path进行图像渲染render
    //: layer.path = pathRef;
    layer.path = pathRef;
    //: backgroundLayer.path = pathRef;
    backgroundLayer.path = pathRef;
    // 注意：但凡通过Quartz2D中带有creat/copy/retain方法创建出来的值都必须要释放
    //: CFRelease(pathRef);
    CFRelease(pathRef);
    // 按照shape layer的path填充颜色，类似于渲染render
    // layer.fillColor = [UIColor colorWithWhite:1.f alpha:0.8f].CGColor;
    //: layer.fillColor = [UIColor whiteColor].CGColor;
    layer.fillColor = [UIColor whiteColor].CGColor;
//    layer.strokeColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;

    // view大小与cell一致
    //: UIView *roundView = [[UIView alloc] initWithFrame:bounds];
    UIView *roundView = [[UIView alloc] initWithFrame:bounds];
    // 添加自定义圆角后的图层到roundView中
    //: [roundView.layer insertSublayer:layer atIndex:0];
    [roundView.layer insertSublayer:layer atIndex:0];
    //: roundView.backgroundColor = UIColor.clearColor;
    roundView.backgroundColor = UIColor.clearColor;
    // cell的背景view
    //: cell.backgroundView = roundView;
    cell.backgroundView = roundView;


}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: id<NTESCardBodyData> bodyData = [self bodyDataAtIndexPath:indexPath];
    id<NTESCardBodyData> bodyData = [self cavityUponPath:indexPath];
    //: return bodyData.rowHeight;
    return bodyData.rowHeight;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.datas.count;
    return self.datas.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: NSArray *sectionData = self.datas[section];
    NSArray *sectionData = self.datas[section];
    //: return sectionData.count;
    return sectionData.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: id<NTESCardBodyData> bodyData = [self bodyDataAtIndexPath:indexPath];
    id<NTESCardBodyData> bodyData = [self cavityUponPath:indexPath];
    //: UITableViewCell * cell;
    UITableViewCell * cell;
    //: NIMKitTeamCardRowItemType type = bodyData.type;
    NIMKitTeamCardRowItemType type = bodyData.type;
    //: switch (type) {
    switch (type) {
        //: case TeamCardRowItemTypeCommon:
        case TeamCardRowItemTypeCommon:
            //: cell = [self builidCommonCell:bodyData indexPath:indexPath];
            cell = [self customWill:bodyData textLabel:indexPath];
            //: break;
            break;
        //: case TeamCardRowItemTypeRedButton:
        case TeamCardRowItemTypeRedButton:
            //: cell = [self builidRedButtonCell:bodyData indexPath:indexPath];
            cell = [self withPath:bodyData session:indexPath];
            //: break;
            break;
        //: case TeamCardRowItemTypeBlueButton:
        case TeamCardRowItemTypeBlueButton:
            //: cell = [self builidBlueButtonCell:bodyData ];
            cell = [self cell:bodyData ];
            //: break;
            break;
        //: case TeamCardRowItemTypeTeamMember:
        case TeamCardRowItemTypeTeamMember:
            //: cell = [self builidTeamMemberCell:bodyData];
            cell = [self textSheet:bodyData];
            //: break;
            break;
        //: case TeamCardRowItemTypeSwitch:
        case TeamCardRowItemTypeSwitch:
            //: cell = [self buildTeamSwitchCell:bodyData indexPath:indexPath];
            cell = [self frameWithPath:bodyData info:indexPath];
            //: break;
            break;
        //: case TeamCardRowItemTypeSelected:
        case TeamCardRowItemTypeSelected:
            //: cell = [self builidCommonCell:bodyData indexPath:indexPath];
            cell = [self customWill:bodyData textLabel:indexPath];
        //: default:
        default:
            //: break;
            break;
    }
    //: return cell;
    return cell;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 16.f;
    return 16.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}


//: - (UITableViewCell*)builidCommonCell:(id<NTESCardBodyData>) bodyData indexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)customWill:(id<NTESCardBodyData>) bodyData textLabel:(NSIndexPath *)indexPath
{
    //: NSString *identifier = [NSString stringWithFormat:@"builidCommonCell%ld%ld",(long)indexPath.section,(long)indexPath.row];
    NSString *identifier = [NSString stringWithFormat:StringFromShapeData(&kStr_goldTitle),(long)indexPath.section,(long)indexPath.row];
    //: FFFGroupEditTableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    NewsView * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFGroupEditTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[NewsView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: CGFloat left = 60.f;
        CGFloat left = 60.f;
        //: CGFloat height = 1.f;
        CGFloat height = 1.f;
        //: UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.nim_height-height, cell.nim_width-90, height)];
        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.nim_height-height, cell.nim_width-90, height)];
        //: sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        //: [cell addSubview:sep];
        [cell addSubview:sep];
        //: [sep setTag:10001];
        [sep setTag:10001];
        //: sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    }

    //: UIView *sep = [cell viewWithTag:10001];
    UIView *sep = [cell viewWithTag:10001];
    //: sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);
    sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);

    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.titleLabel.text = bodyData.title;
    cell.titleLabel.text = bodyData.title;
    //: cell.iconImageView.image = bodyData.img;
    cell.iconImageView.image = bodyData.img;
//    cell.contentLabel.text = bodyData.subTitle;
//    if ([bodyData respondsToSelector:@selector(subTitle)]) {
//        cell.contentLabel.text = bodyData.subTitle ?: LangKey(@"未设置");
//    }

    //: return cell;
    return cell;

//    UITableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:TableCellReuseId];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:TableCellReuseId];
//        CGFloat left = 65.f;
//        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.nim_height-1, cell.nim_width-80, 1.f)];
//        sep.backgroundColor = NEEKIT_UIColorFromRGB(0xebebeb);
//        [sep setTag:TableSepTag];
//        [cell addSubview:sep];
//        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
//    }
//
//    UIView *sep = [cell viewWithTag:TableSepTag];
//    sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);
//
//    cell.textLabel.text = bodyData.title;
//    cell.textLabel.font = [UIFont systemFontOfSize:14];
//    cell.textLabel.textColor = [UIColor blackColor];
//
//    cell.imageView.image = bodyData.img;
//
//    if ([bodyData respondsToSelector:@selector(subTitle)]) {
//        cell.detailTextLabel.text = bodyData.subTitle;
//        cell.detailTextLabel.font = [UIFont systemFontOfSize:14];
//        cell.detailTextLabel.textColor = TextColor_3;
//        cell.detailTextLabel.frame = CGRectMake(65, cell.textLabel.bottom, cell.nim_width-85, 15);
//    }
//
//
//    if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }else{
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    }
//
//    if ([bodyData respondsToSelector:@selector(disableUserInteraction)] && bodyData.disableUserInteraction) {
//        cell.userInteractionEnabled = NO;
//    } else {
//        cell.userInteractionEnabled = YES;
//    }
//
//    return cell;

}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //: id<NTESCardBodyData> bodyData = [self bodyDataAtIndexPath:indexPath];
    id<NTESCardBodyData> bodyData = [self cavityUponPath:indexPath];
    //: if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
    if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
        //: return;
        return;
    }
    //: if (bodyData.type == TeamCardRowItemTypeSelected) {
    if (bodyData.type == TeamCardRowItemTypeSelected) {
        //: FFFTeamCardSelectedViewController *vc = [FFFTeamCardSelectedViewController instanceWithTitle:bodyData.title
        HeritageViewController *vc = [HeritageViewController net:bodyData.title
                                                                               //: items:bodyData.optionItems
                                                                               bar:bodyData.optionItems
                                                                              //: result:^(id<FFFKitSelectCardData> _Nonnull item) {
                                                                              withInfo:^(id<FFFKitSelectCardData> _Nonnull item) {
              //: if (bodyData.selectedBlock) {
              if (bodyData.selectedBlock) {
                  //: bodyData.selectedBlock(item);
                  bodyData.selectedBlock(item);
              }
          //: }];
          }];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: } else {
    } else {
        //: if ([bodyData respondsToSelector:@selector(action)]) {
        if ([bodyData respondsToSelector:@selector(action)]) {
            //: if (bodyData.action) {
            if (bodyData.action) {
                //: do {
                do {
                //: [self performSelector:bodyData.action];
                [self performSelector:bodyData.action];
                //: } while (0);
                } while (0);
            }
        }
    }
}

//: - (UITableViewCell*)builidRedButtonCell:(id<NTESCardBodyData>) bodyData indexPath:(NSIndexPath *)indexPath{
- (UITableViewCell*)withPath:(id<NTESCardBodyData>) bodyData session:(NSIndexPath *)indexPath{
//    tableButtonCell
    //: NSString *identifier = [NSString stringWithFormat:@"tableButtonCell%ld%ld",(long)indexPath.section,(long)indexPath.row];
    NSString *identifier = [NSString stringWithFormat:StringFromShapeData(&kStr_deployContent),(long)indexPath.section,(long)indexPath.row];
    //: FFFKitColorButtonCell * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    OriginViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFKitColorButtonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[OriginViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.button.style = FFFKitColorButtonCellStyleRed;
    cell.button.style = FFFKitColorButtonCellStyleRed;
    //: [cell.button setTitle:bodyData.title forState:UIControlStateNormal];
    [cell.button setTitle:bodyData.title forState:UIControlStateNormal];
    //: return cell;
    return cell;
}

//: - (UITableViewCell*)builidBlueButtonCell:(id<NTESCardBodyData>) bodyData{
- (UITableViewCell*)cell:(id<NTESCardBodyData>) bodyData{
    //: FFFKitColorButtonCell * cell = [self.tableView dequeueReusableCellWithIdentifier:@"tableButtonCell"];
    OriginViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:StringFromShapeData(&kStr_ereData)];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFKitColorButtonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableButtonCell"];
        cell = [[OriginViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:StringFromShapeData(&kStr_ereData)];
    }
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.button.style = FFFKitColorButtonCellStyleBlue;
    cell.button.style = FFFKitColorButtonCellStyleBlue;
    //: [cell.button setTitle:bodyData.title forState:UIControlStateNormal];
    [cell.button setTitle:bodyData.title forState:UIControlStateNormal];
    //: return cell;
    return cell;
}

//: - (UITableViewCell*)builidTeamMemberCell:(id<NTESCardBodyData>) bodyData{
- (UITableViewCell*)textSheet:(id<NTESCardBodyData>) bodyData{
    //: FFFTeamMemberListCell * cell = [self.tableView dequeueReusableCellWithIdentifier:@"tableMemberCell"];
    MemberMessageViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:StringFromShapeData(&kStr_bedroomInvolvedValue)];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFTeamMemberListCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"tableMemberCell"];
        cell = [[MemberMessageViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:StringFromShapeData(&kStr_bedroomInvolvedValue)];
    }
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.textLabel.text = [NSString stringWithFormat:@"%@(%@)",bodyData.title,bodyData.subTitle];
    cell.textLabel.text = [NSString stringWithFormat:@"%@(%@)",bodyData.title,bodyData.subTitle];
    //: cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    //: cell.textLabel.textColor = [UIColor blackColor];
    cell.textLabel.textColor = [UIColor blackColor];

//    cell.imageView.image = bodyData.img;

    //: if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
    if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
        //: cell.accessoryType = UITableViewCellAccessoryNone;
        cell.accessoryType = UITableViewCellAccessoryNone;
    //: }else{
    }else{
        //: cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

    //: [self didBuildTeamMemberCell:cell];
    [self boardMember:cell];

    //: return cell;
    return cell;
//    UITableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:TableMemberCellReuseId];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:TableMemberCellReuseId];
//    }
//    
//    cell.textLabel.text = [NSString stringWithFormat:@"%@(%@)",bodyData.title,bodyData.subTitle];
//    cell.textLabel.font = [UIFont systemFontOfSize:14];
//    cell.textLabel.textColor = [UIColor blackColor];
//    
//    cell.imageView.image = bodyData.img;
//    
//    if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }else{
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    }
//    
//    return cell;
}

//: - (UITableViewCell *)buildTeamSwitchCell:(id<NTESCardBodyData>)bodyData indexPath:(NSIndexPath *)indexPath
- (UITableViewCell *)frameWithPath:(id<NTESCardBodyData>)bodyData info:(NSIndexPath *)indexPath
{
    //: NSString *identifier = [NSString stringWithFormat:@"TableSwitch%ld%ld",(long)indexPath.section,(long)indexPath.row];
    NSString *identifier = [NSString stringWithFormat:StringFromShapeData(&kStr_pressOptionName),(long)indexPath.section,(long)indexPath.row];
    //: FFFTeamSwitchTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    IndependentViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFTeamSwitchTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[IndependentViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: CGFloat left = 60.f;
        CGFloat left = 60.f;
        //: CGFloat height = 1.f;
        CGFloat height = 1.f;
        //: UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.nim_height-height, cell.nim_width-90, height)];
        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.nim_height-height, cell.nim_width-90, height)];
        //: sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        //: [cell addSubview:sep];
        [cell addSubview:sep];
        //: [sep setTag:10001];
        [sep setTag:10001];
        //: sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    }

    //: UIView *sep = [cell viewWithTag:10001];
    UIView *sep = [cell viewWithTag:10001];
    //: sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);
    sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);

    //: cell.textLabel.text = bodyData.title;
    cell.textLabel.text = bodyData.title;
    //: cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    //: cell.textLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
    cell.textLabel.textColor = [UIColor isView:StringFromShapeData(&kStr_ruleDifficultyValue)];
    //: cell.imageView.image = bodyData.img;
    cell.imageView.image = bodyData.img;

    //: cell.switcher.on = bodyData.switchOn;
    cell.switcher.on = bodyData.switchOn;
    //: cell.identify = bodyData.identify;
    cell.identify = bodyData.identify;

    //: [self didBuildTeamSwitchCell:cell];
    [self voice:cell];

    //: return cell;
    return cell;
}

//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [picker dismissViewControllerAnimated:YES completion:^{
    [picker dismissViewControllerAnimated:YES completion:^{
        //: if (weakSelf.pickerSelectedBlock) {
        if (weakSelf.pickerSelectedBlock) {
            //: weakSelf.pickerSelectedBlock(image);
            weakSelf.pickerSelectedBlock(image);
        }
        //: weakSelf.pickerSelectedBlock = nil;
        weakSelf.pickerSelectedBlock = nil;
    //: }];
    }];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark - Setter
#pragma mark - Setter
//: - (void)setDatas:(NSArray<NSArray<FFFTeamCardRowItem *> *> *)datas {
- (void)setDatas:(NSArray<NSArray<PictureItem *> *> *)datas {
    //: _datas = datas;
    _datas = datas;
    //: [_tableView reloadData];
    [_tableView reloadData];
}

//: #pragma mark - 旋转处理 (iOS7)
#pragma mark - 旋转处理 (iOS7)
//: - (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    //: NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    //: [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationNone];
    [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationNone];
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> _Nonnull context) {
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> _Nonnull context) {
        //: NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        //: [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    //: } completion:nil];
    } completion:nil];
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice table]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice table])) style:UITableViewStyleGrouped];
//        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//        _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
        //: _tableView.showsVerticalScrollIndicator = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}

//: #pragma mark - virtual function
#pragma mark - virtual function
//: - (UIView *)didGetHeaderView { return [UIView new]; }
- (UIView *)sum { return [UIView new]; }

//: - (void)didBuildTeamMemberCell:(FFFTeamMemberListCell *)cell {}
- (void)boardMember:(MemberMessageViewCell *)cell {}

//: - (void)didBuildTeamSwitchCell:(FFFTeamSwitchTableViewCell *)cell {}
- (void)voice:(IndependentViewCell *)cell {}

//: - (void)reloadTableViewData {};
- (void)reloadLikeRawData {};

//: - (void)reloadTableHeaderData {};
- (void)pressedData {};

//: - (void)reloadOtherData {};
- (void)voice {};

//: @end
@end

Byte *ShapeDataToByte(ShapeData *data) {
    if (data->about) return data->abet;
    for (int i = 0; i < data->holism; i++) {
        data->abet[i] ^= data->unwilling;
    }
    data->abet[data->holism] = 0;
    data->about = true;
	if (data->holism >= 1) {
		data->ago = data->abet[0];
	}
    return data->abet;
}

NSString *StringFromShapeData(ShapeData *data) {
    return [NSString stringWithUTF8String:(char *)ShapeDataToByte(data)];
}
