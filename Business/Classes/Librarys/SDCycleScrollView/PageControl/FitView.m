
#import <Foundation/Foundation.h>

NSString *StringFromDoingData(Byte *data);


//: You must override %@ in %@
Byte kStr_gasSizeTitle[] = {63, 26, 98, 10, 37, 94, 232, 110, 234, 181, 187, 209, 215, 130, 207, 215, 213, 214, 130, 209, 216, 199, 212, 212, 203, 198, 199, 130, 135, 162, 130, 203, 208, 130, 135, 162, 231};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FitView.m
//  UserControl
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAbstractDotView.h"
#import "FitView.h"

//: @implementation TAAbstractDotView
@implementation FitView


//: - (id)init
- (id)init
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:StringFromDoingData(kStr_gasSizeTitle), NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}


//: - (void)changeActivityState:(BOOL)active
- (void)developments:(BOOL)active
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:StringFromDoingData(kStr_gasSizeTitle), NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}

//: @end
@end

Byte * DoingDataToCache(Byte *data) {
    int hungerMax = data[0];
    int concession = data[1];
    Byte flueHe = data[2];
    int secretarySelect = data[3];
    if (!hungerMax) return data + secretarySelect;
    for (int i = secretarySelect; i < secretarySelect + concession; i++) {
        int value = data[i] - flueHe;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[secretarySelect + concession] = 0;
    return data + secretarySelect;
}

NSString *StringFromDoingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DoingDataToCache(data)];
}
