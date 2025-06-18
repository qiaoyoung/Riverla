// __DEBUG__
// __CLOSE_PRINT__
//
//  OffPerson.m
//  sohunews
//
//  Created by tianyulong on 2019/8/14.
//  Copyright © 2019 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactPerson.h"
#import "OffPerson.h"
//: #import "NSString+LJExtension.h"
#import "NSString+Color.h"

//: @implementation CCCContactPerson
@implementation OffPerson

//: - (instancetype)initWithCNContact:(CNContact *)contact {
- (instancetype)initWithTitle:(CNContact *)contact {
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: self.contactType = contact.contactType == CNContactTypePerson ? SNContactTypePerson : SNContactTypeOrigination;
        self.contactType = contact.contactType == CNContactTypePerson ? SNContactTypePerson : SNContactTypeOrigination;

        //: self.fullName = [CNContactFormatter stringFromContact:contact style:CNContactFormatterStyleFullName];
        self.fullName = [CNContactFormatter stringFromContact:contact style:CNContactFormatterStyleFullName];
        //: self.familyName = contact.familyName;
        self.familyName = contact.familyName;
        //: self.givenName = contact.givenName;
        self.givenName = contact.givenName;
        //: self.nameSuffix = contact.nameSuffix;
        self.nameSuffix = contact.nameSuffix;
        //: self.namePrefix = contact.namePrefix;
        self.namePrefix = contact.namePrefix;
        //: self.nickname = contact.nickname;
        self.nickname = contact.nickname;
        //: self.middleName = contact.middleName;
        self.middleName = contact.middleName;

        //: if ([contact isKeyAvailable:CNContactPhoneticFamilyNameKey])
        if ([contact isKeyAvailable:CNContactPhoneticFamilyNameKey])
        {
            //: self.phoneticFamilyName = contact.phoneticFamilyName;
            self.phoneticFamilyName = contact.phoneticFamilyName;
        }
        //: if ([contact isKeyAvailable:CNContactPhoneticGivenNameKey])
        if ([contact isKeyAvailable:CNContactPhoneticGivenNameKey])
        {
            //: self.phoneticGivenName = contact.phoneticGivenName;
            self.phoneticGivenName = contact.phoneticGivenName;
        }

        //: if ([contact isKeyAvailable:CNContactPhoneticMiddleNameKey])
        if ([contact isKeyAvailable:CNContactPhoneticMiddleNameKey])
        {
            //: self.phoneticMiddleName = contact.phoneticMiddleName;
            self.phoneticMiddleName = contact.phoneticMiddleName;
        }

        //: if ([contact isKeyAvailable:CNContactPhoneNumbersKey])
        if ([contact isKeyAvailable:CNContactPhoneNumbersKey])
        {
            // 号码
            //: NSMutableArray *phones = [NSMutableArray array];
            NSMutableArray *phones = [NSMutableArray array];
            //: for (CNLabeledValue *labeledValue in contact.phoneNumbers)
            for (CNLabeledValue *labeledValue in contact.phoneNumbers)
            {
                //: if ([NIMContactPhone checkUserfulWithLabeledValue:labeledValue]) {
                if ([PhotoColor impression:labeledValue]) {
                    //: NIMContactPhone *phoneModel = [[NIMContactPhone alloc] initWithLabeledValue:labeledValue];
                    PhotoColor *phoneModel = [[PhotoColor alloc] initWithTrack:labeledValue];
                    //: [phones addObject:phoneModel];
                    [phones addObject:phoneModel];
                }
            }
            //: self.phones = phones;
            self.phones = phones;
        }
    }
    //: return self;
    return self;
}

//: @end
@end

//: @implementation NIMContactPhone
@implementation PhotoColor

//: - (instancetype)initWithLabeledValue:(CNLabeledValue *)labeledValue {
- (instancetype)initWithTrack:(CNLabeledValue *)labeledValue {
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: CNPhoneNumber *phoneValue = labeledValue.value;
        CNPhoneNumber *phoneValue = labeledValue.value;
        //: NSString *phoneNumber = phoneValue.stringValue;
        NSString *phoneNumber = phoneValue.stringValue;
        //: self.phone = [NSString lj_filterSpecialString:phoneNumber];
        self.phone = [NSString with:phoneNumber];
        //: self.label = [CNLabeledValue localizedStringForLabel:labeledValue.label];
        self.label = [CNLabeledValue localizedStringForLabel:labeledValue.label];
    }
    //: return self;
    return self;
}

//: + (BOOL)checkUserfulWithLabeledValue:(CNLabeledValue *)labeledValue {
+ (BOOL)impression:(CNLabeledValue *)labeledValue {
    //: CNPhoneNumber *phoneValue = labeledValue.value;
    CNPhoneNumber *phoneValue = labeledValue.value;
    //: NSString *phoneNumber = phoneValue.stringValue;
    NSString *phoneNumber = phoneValue.stringValue;
    //: NSString *userful = [NSString lj_filterSpecialString:phoneNumber];
    NSString *userful = [NSString with:phoneNumber];

    //: if (userful.length == 11 && [[userful substringToIndex:1] isEqualToString:@"1"]) {
    if (userful.length == 11 && [[userful substringToIndex:1] isEqualToString:@"1"]) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: @end
@end


//: @implementation LJSectionPerson
@implementation ViewPerson


//: @end
@end