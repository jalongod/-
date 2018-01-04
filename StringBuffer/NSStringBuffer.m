//
//  NSStringBuffer.m
//  StringBuffer
//
//  Created by rong on 2017/11/27.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import "NSStringBuffer.h"

@implementation NSStringBuffer
-(NSStringBuffer* (^)(NSString*))append{
     NSStringBuffer *(^bloc)(NSString *) = ^(NSString * str){
        [self appendString:str];
        return self;
    };
    return bloc;
}
@end
