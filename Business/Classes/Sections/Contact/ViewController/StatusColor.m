
#import <Foundation/Foundation.h>

NSString *StringFromTableSumervalData(Byte *data);


//: 您的通讯录暂未允许访问，请去设置->隐私里面授权!
Byte kStr_itemContent[] = {96, 69, 78, 14, 80, 40, 188, 130, 62, 141, 190, 178, 209, 16, 52, 208, 246, 53, 232, 210, 55, 206, 232, 54, 252, 253, 51, 11, 227, 52, 232, 208, 52, 234, 248, 51, 211, 207, 54, 252, 6, 54, 252, 13, 55, 229, 252, 61, 10, 218, 54, 253, 5, 51, 220, 9, 54, 252, 12, 53, 11, 252, 123, 140, 55, 232, 222, 53, 245, 207, 55, 213, 218, 55, 235, 240, 52, 220, 214, 52, 235, 209, 111, 250};


//: SELF MATCHES %@
Byte kStr_blueKeyValue[] = {23, 15, 28, 14, 103, 226, 201, 212, 48, 117, 111, 125, 206, 81, 111, 97, 104, 98, 60, 105, 93, 112, 95, 100, 97, 111, 60, 65, 92, 191};


//: 温馨提示
Byte kStr_contentTitle[] = {91, 12, 60, 8, 219, 107, 2, 169, 34, 244, 229, 37, 226, 228, 34, 203, 204, 35, 224, 246, 79};


//: 去设置
Byte kStr_onObjectDirectionData[] = {19, 9, 38, 14, 20, 46, 27, 202, 89, 107, 198, 30, 194, 2, 11, 180, 225, 14, 212, 228, 13, 227, 212, 7};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusColor.m
//  sohunews
//
//  Created by tianyulong on 2019/8/14.
//  Copyright © 2019 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCAddressBookManager.h"
#import "StatusColor.h"
//: #import <Contacts/Contacts.h>
#import <Contacts/Contacts.h>
//: #import <ContactsUI/ContactsUI.h>
#import <ContactsUI/ContactsUI.h>
//: #import "NSString+LJExtension.h"
#import "NSString+Color.h"

//: @interface CCCAddressBookManager () <CNContactViewControllerDelegate, CNContactPickerDelegate>
@interface StatusColor () <CNContactViewControllerDelegate, CNContactPickerDelegate>

//: @property (nonatomic, copy) NSArray *keys;
@property (nonatomic, copy) NSArray *keys;
//: @property (nonatomic, strong) CNContactStore *contactStore;
@property (nonatomic, strong) CNContactStore *contactStore;
//: @property (nonatomic) dispatch_queue_t queue;
@property (nonatomic) dispatch_queue_t queue;

//: @end
@end

//: @implementation CCCAddressBookManager
@implementation StatusColor

//: + (instancetype)sharedInstance { static CCCAddressBookManager *sharedCCCAddressBookManager = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedCCCAddressBookManager = [[CCCAddressBookManager alloc] init]; }); return sharedCCCAddressBookManager; };
+ (instancetype)commonToInstance { static StatusColor *sharedCCCAddressBookManager = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedCCCAddressBookManager = [[StatusColor alloc] init]; }); return sharedCCCAddressBookManager; };

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _queue = dispatch_queue_create("com.addressBook.queue", NULL);
        _queue = dispatch_queue_create("com.addressBook.queue", NULL);
        //: _contactStore = [CNContactStore new];
        _contactStore = [CNContactStore new];
    }
    //: return self;
    return self;
}

//: - (NSArray *)keys {
- (NSArray *)keys {
    //: if (!_keys)
    if (!_keys)
    {
        //: _keys = @[[CNContactFormatter descriptorForRequiredKeysForStyle:CNContactFormatterStyleFullName],
        _keys = @[[CNContactFormatter descriptorForRequiredKeysForStyle:CNContactFormatterStyleFullName],
                  //: CNContactPhoneNumbersKey,
                  CNContactPhoneNumbersKey,
                  //: CNContactPhoneticGivenNameKey,
                  CNContactPhoneticGivenNameKey,
                  //: CNContactPhoneticFamilyNameKey,
                  CNContactPhoneticFamilyNameKey,
                  //: CNContactPhoneticMiddleNameKey,
                  CNContactPhoneticMiddleNameKey,
                  //: CNContactBirthdayKey,
                  CNContactBirthdayKey,
                  //: CNContactNonGregorianBirthdayKey];
                  CNContactNonGregorianBirthdayKey];

    }
    //: return _keys;
    return _keys;
}

//: #pragma mark - Public
#pragma mark - Public

//: - (void)accessContactsWithMobileComplection:(void (^)(BOOL succeed, NSArray <NSDictionary *> *mobileContacts))completcion {
- (void)need:(void (^)(BOOL succeed, NSArray <NSDictionary *> *mobileContacts))completcion {
    //: [self accessContactsComplection:^(BOOL succeed, NSArray<CCCContactPerson *> *contacts) {
    [self willAcross:^(BOOL succeed, NSArray<OffPerson *> *contacts) {

        /// 用户禁止授权访问通讯录权限
        //: if (!succeed) {
        if (!succeed) {
            //: completcion(succeed,nil);
            completcion(succeed,nil);
            //: return ;
            return ;
        }

        /// 通讯录联系人列表数量
        //: NSMutableArray *mobileContactsResult = [NSMutableArray array];
        NSMutableArray *mobileContactsResult = [NSMutableArray array];
        //: if (contacts.count > 0) {
        if (contacts.count > 0) {
            //: for (CCCContactPerson *person in contacts) {
            for (OffPerson *person in contacts) {
                //: for (NIMContactPhone *model in person.phones) {
                for (PhotoColor *model in person.phones) {
                    //: NSDictionary *personResult = @{
                    NSDictionary *personResult = @{
                                                   //: @"n":person.fullName ? person.fullName : model.phone,
                                                   @"n":person.fullName ? person.fullName : model.phone,
                                                   //: @"m":model.phone
                                                   @"m":model.phone
                                                   //: };
                                                   };
                    //: [mobileContactsResult addObject:personResult];
                    [mobileContactsResult addObject:personResult];
                }
            }
            //: completcion(succeed,mobileContactsResult);
            completcion(succeed,mobileContactsResult);
        //: } else {
        } else {
            //: completcion(succeed,mobileContactsResult);
            completcion(succeed,mobileContactsResult);
        }
    //: }];
    }];
}


//: - (void)accessContactsComplection:(void (^)(BOOL, NSArray<CCCContactPerson *> *))completcion {
- (void)willAcross:(void (^)(BOOL, NSArray<OffPerson *> *))completcion {
    //: [self requestAddressBookAuthorization:^(BOOL authorization) {
    [self systemWith:^(BOOL authorization) {

        //: if (authorization)
        if (authorization)
        {
            //: [self _asynAccessContactStoreWithSort:NO completcion:^(NSArray *datas, NSArray *keys) {
            [self size:NO storeCompletcion:^(NSArray *datas, NSArray *keys) {
                //: if (nil != completcion) {
                if (nil != completcion) {
                    //: completcion(YES, datas);
                    completcion(YES, datas);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completcion)
            if (completcion)
            {
                //: completcion(NO, nil);
                completcion(NO, nil);
            }
        }
    //: }];
    }];
}

//: - (void)accessSectionContactsComplection:(void (^)(BOOL, NSArray<LJSectionPerson *> *, NSArray<NSString *> *))completcion {
- (void)text:(void (^)(BOOL, NSArray<ViewPerson *> *, NSArray<NSString *> *))completcion {

    //: [self requestAddressBookAuthorization:^(BOOL authorization) {
    [self systemWith:^(BOOL authorization) {

        //: if (authorization)
        if (authorization)
        {
            //: [self _asynAccessContactStoreWithSort:YES completcion:^(NSArray *datas, NSArray *keys) {
            [self size:YES storeCompletcion:^(NSArray *datas, NSArray *keys) {

                //: if (nil != completcion) {
                if (nil != completcion) {
                    //: completcion(YES, datas, keys);
                    completcion(YES, datas, keys);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completcion)
            if (completcion)
            {
                //: completcion(NO, nil, nil);
                completcion(NO, nil, nil);
            }
        }
    //: }];
    }];
}

//: - (void)requestAddressBookAuthorization:(void (^)(BOOL authorization))completion {
- (void)systemWith:(void (^)(BOOL authorization))completion {
    //: CNAuthorizationStatus status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];
    CNAuthorizationStatus status = [CNContactStore authorizationStatusForEntityType:CNEntityTypeContacts];

    //: if (status == CNAuthorizationStatusNotDetermined)
    if (status == CNAuthorizationStatusNotDetermined)
    {
        //: [self _authorizationAddressBook:^(BOOL succeed) {
        [self visualImage:^(BOOL succeed) {
            //: _blockExecute(completion, succeed);
            _blockExecute(completion, succeed);
        //: }];
        }];
    }
    //: else
    else
    {
        //: _blockExecute(completion, status == CNAuthorizationStatusAuthorized);
        _blockExecute(completion, status == CNAuthorizationStatusAuthorized);
    }
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)_authorizationAddressBook:(void (^) (BOOL succeed))completion {
- (void)visualImage:(void (^) (BOOL succeed))completion {
    //: [_contactStore requestAccessForEntityType:CNEntityTypeContacts completionHandler:^(BOOL granted, NSError * _Nullable error) {
    [_contactStore requestAccessForEntityType:CNEntityTypeContacts completionHandler:^(BOOL granted, NSError * _Nullable error) {
        //: if (nil != completion) {
        if (nil != completion) {
            //: completion(granted);
            completion(granted);
        }
    //: }];
    }];
}

//: void _blockExecute(void (^completion)(BOOL authorizationA), BOOL authorizationB) {
void _blockExecute(void (^completion)(BOOL authorizationA), BOOL authorizationB) {
    //: if (completion)
    if (completion)
    {
        //: if ([NSThread isMainThread])
        if ([NSThread isMainThread])
        {
            //: completion(authorizationB);
            completion(authorizationB);
        }
        //: else
        else
        {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: completion(authorizationB);
                completion(authorizationB);
            //: });
            });
        }
    }
}

//: - (void)showAlertFromController:(UIViewController *)controller {
- (void)success:(UIViewController *)controller {
    //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"您的通讯录暂未允许访问，请去设置->隐私里面授权!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:StringFromTableSumervalData(kStr_contentTitle) message:StringFromTableSumervalData(kStr_itemContent) preferredStyle:UIAlertControllerStyleAlert];
    //: [alertControl addAction:([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    [alertControl addAction:([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    //: }])];
    }])];
    //: [alertControl addAction:([UIAlertAction actionWithTitle:@"去设置" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertControl addAction:([UIAlertAction actionWithTitle:StringFromTableSumervalData(kStr_onObjectDirectionData) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        //: if ([[UIApplication sharedApplication] canOpenURL:url]) {
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            //: }];
            }];
        }
    //: }])];
    }])];
    //: [controller presentViewController:alertControl animated:YES completion:nil];
    [controller presentViewController:alertControl animated:YES completion:nil];
}

//: - (void)_asynAccessContactStoreWithSort:(BOOL)isSort completcion:(void (^)(NSArray *, NSArray *))completcion {
- (void)size:(BOOL)isSort storeCompletcion:(void (^)(NSArray *, NSArray *))completcion {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: dispatch_async(_queue, ^{
    dispatch_async(_queue, ^{

        //: NSMutableArray *datas = [NSMutableArray array];
        NSMutableArray *datas = [NSMutableArray array];
        //: CNContactFetchRequest *request = [[CNContactFetchRequest alloc] initWithKeysToFetch:self.keys];
        CNContactFetchRequest *request = [[CNContactFetchRequest alloc] initWithKeysToFetch:self.keys];
        //: [weakSelf.contactStore enumerateContactsWithFetchRequest:request error:nil usingBlock:^(CNContact * _Nonnull contact, BOOL * _Nonnull stop) {
        [weakSelf.contactStore enumerateContactsWithFetchRequest:request error:nil usingBlock:^(CNContact * _Nonnull contact, BOOL * _Nonnull stop) {

            //: CCCContactPerson *person = [[CCCContactPerson alloc] initWithCNContact:contact];
            OffPerson *person = [[OffPerson alloc] initWithTitle:contact];
            //: [datas addObject:person];
            [datas addObject:person];

        //: }];
        }];

        //: if (!isSort)
        if (!isSort)
        {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{

                //: if (completcion)
                if (completcion)
                {
                    //: completcion(datas, nil);
                    completcion(datas, nil);
                }

            //: });
            });

            //: return;
            return;
        }

        //: [self _sortNameWithDatas:datas completcion:^(NSArray *persons, NSArray *keys) {
        [self background:datas disabled:^(NSArray *persons, NSArray *keys) {

            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{

                //: if (completcion)
                if (completcion)
                {
                    //: completcion(persons, keys);
                    completcion(persons, keys);
                }

            //: });
            });

        //: }];
        }];

    //: });
    });
}

//: - (void)_sortNameWithDatas:(NSArray *)datas completcion:(void (^)(NSArray *, NSArray *))completcion {
- (void)background:(NSArray *)datas disabled:(void (^)(NSArray *, NSArray *))completcion {
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];

    //: for (CCCContactPerson *person in datas)
    for (OffPerson *person in datas)
    {
        // 拼音首字母
        //: NSString *firstLetter = nil;
        NSString *firstLetter = nil;

        //: if (person.fullName.length == 0)
        if (person.fullName.length == 0)
        {
            //: firstLetter = @"#";
            firstLetter = @"#";
        }
        //: else
        else
        {
            //: NSString *pinyinString = [NSString lj_pinyinForString:person.fullName];
            NSString *pinyinString = [NSString domain:person.fullName];
            //: person.pinyin = pinyinString;
            person.pinyin = pinyinString;
            //: NSString *upperStr = [[pinyinString substringToIndex:1] uppercaseString];
            NSString *upperStr = [[pinyinString substringToIndex:1] uppercaseString];
            //: NSString *regex = @"^[A-Z]$";
            NSString *regex = @"^[A-Z]$";
            //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
            NSPredicate *predicate = [NSPredicate predicateWithFormat:StringFromTableSumervalData(kStr_blueKeyValue), regex];
            //: firstLetter = [predicate evaluateWithObject:upperStr] ? upperStr : @"#";
            firstLetter = [predicate evaluateWithObject:upperStr] ? upperStr : @"#";
        }

        //: if (dict[firstLetter])
        if (dict[firstLetter])
        {
            //: [dict[firstLetter] addObject:person];
            [dict[firstLetter] addObject:person];
        }
        //: else
        else
        {
            //: NSMutableArray *arr = [NSMutableArray arrayWithObjects:person, nil];
            NSMutableArray *arr = [NSMutableArray arrayWithObjects:person, nil];
            //: dict[firstLetter] = arr;
            dict[firstLetter] = arr;
        }
    }

    //: NSMutableArray *keys = [[[dict allKeys] sortedArrayUsingSelector:@selector(compare:)] mutableCopy];
    NSMutableArray *keys = [[[dict allKeys] sortedArrayUsingSelector:@selector(compare:)] mutableCopy];

    //: if ([keys.firstObject isEqualToString:@"#"])
    if ([keys.firstObject isEqualToString:@"#"])
    {
        //: [keys addObject:keys.firstObject];
        [keys addObject:keys.firstObject];
        //: [keys removeObjectAtIndex:0];
        [keys removeObjectAtIndex:0];
    }

    //: NSMutableArray *persons = [NSMutableArray array];
    NSMutableArray *persons = [NSMutableArray array];

    //: [keys enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL * _Nonnull stop) {
    [keys enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL * _Nonnull stop) {

        //: LJSectionPerson *person = [LJSectionPerson new];
        ViewPerson *person = [ViewPerson new];
        //: person.key = key;
        person.key = key;

        // 组内按照拼音排序
        //: NSArray *personsArr = [dict[key] sortedArrayUsingComparator:^NSComparisonResult(CCCContactPerson *person1, CCCContactPerson *person2) {
        NSArray *personsArr = [dict[key] sortedArrayUsingComparator:^NSComparisonResult(OffPerson *person1, OffPerson *person2) {

            //: NSComparisonResult result = [person1.pinyin compare:person2.pinyin];
            NSComparisonResult result = [person1.pinyin compare:person2.pinyin];
            //: return result;
            return result;
        //: }];
        }];

        //: person.persons = personsArr;
        person.persons = personsArr;

        //: [persons addObject:person];
        [persons addObject:person];
    //: }];
    }];

    //: if (completcion)
    if (completcion)
    {
        //: completcion(persons, keys);
        completcion(persons, keys);
    }
}

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:CNContactStoreDidChangeNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:CNContactStoreDidChangeNotification object:nil];
}


//: @end
@end

Byte * TableSumervalDataToCache(Byte *data) {
    int tableOpen = data[0];
    int orientation = data[1];
    Byte key = data[2];
    int message = data[3];
    if (!tableOpen) return data + message;
    for (int i = message; i < message + orientation; i++) {
        int value = data[i] - key;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[message + orientation] = 0;
    return data + message;
}

NSString *StringFromTableSumervalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TableSumervalDataToCache(data)];
}
