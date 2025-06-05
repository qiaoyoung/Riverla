
#import <Foundation/Foundation.h>
typedef struct {
    Byte giveCare;
    Byte *liable;
    unsigned int falsification;
    bool desperate;
} FromData;

NSString *StringFromFromData(FromData *data);


//: You must override %@ in %@
FromData kStr_valeProduceName = (FromData){132, (Byte []){221, 235, 241, 164, 233, 241, 247, 240, 164, 235, 242, 225, 246, 246, 237, 224, 225, 164, 161, 196, 164, 237, 234, 164, 161, 196, 252}, 26, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AbstractWithView.m
//  PictureControl
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAbstractDotView.h"
#import "AbstractWithView.h"

//: @implementation TAAbstractDotView
@implementation AbstractWithView


//: - (id)init
- (id)init
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:StringFromFromData(&kStr_valeProduceName), NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}


//: - (void)changeActivityState:(BOOL)active
- (void)sessions:(BOOL)active
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:StringFromFromData(&kStr_valeProduceName), NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}

//: @end
@end

Byte *FromDataToByte(FromData *data) {
    if (data->desperate) return data->liable;
    for (int i = 0; i < data->falsification; i++) {
        data->liable[i] ^= data->giveCare;
    }
    data->liable[data->falsification] = 0;
    data->desperate = true;
    return data->liable;
}

NSString *StringFromFromData(FromData *data) {
    return [NSString stringWithUTF8String:(char *)FromDataToByte(data)];
}
