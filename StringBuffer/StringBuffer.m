//
//  StringBuffer.m
//  StringBuffer
//
//  Created by rong on 2017/11/25.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import "StringBuffer.h"

@implementation StringBuffer

-(StringBuffer*)appendString:(NSString *)str{
    if (!_value) {
        _value = [NSMutableString new];
    }
    [_value appendString:str];
    return self;
}
@end
