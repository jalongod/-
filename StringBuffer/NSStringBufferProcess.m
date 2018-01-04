//
//  NSStringBufferProcess.m
//  StringBuffer
//
//  Created by rong on 2017/11/27.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import "NSStringBufferProcess.h"

@implementation NSStringBufferProcess
-(NSStringBufferProcess* (^)(NSString *))append{
    return ^(NSString * append){
        if (!_resultString) {
            _resultString =[NSMutableString new];
        }
        [_resultString appendString:append];
        return  self;
    };
   
}
@end
