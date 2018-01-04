//
//  Calculator.h
//  StringBuffer
//
//  Created by rong on 2017/11/25.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSStringBufferProcess.h"

@interface CalculatorMaker : NSObject
@property (nonatomic, assign) int result;

/*
 相当于返回一个函数指针,该函数指针的返回值为CalculatorMaker,参数为一个int类型
 */
- (CalculatorMaker *(^)(int))add;
- (CalculatorMaker *(^)(int))sub;
- (CalculatorMaker *(^)(int))multi;
- (CalculatorMaker *(^)(int))divide;
-(void)testFunc;
@end

@interface NSObject (Calculator)
+ (int)calculate:(void (^)(CalculatorMaker *))calculator;
+ (NSString *)appendStr:(void (^)(NSStringBufferProcess *))strProcesser;
@end

@implementation NSObject (Calculator)
+ (int)calculate:(void (^)(CalculatorMaker *))calculator {
    CalculatorMaker *maker = [[CalculatorMaker alloc] init];
    
    calculator(maker);
    return maker.result;
}

+ (NSString *)appendStr:(void (^)(NSStringBufferProcess *))append{
    NSStringBufferProcess *bufferProcess = [NSStringBufferProcess new];
    append(bufferProcess);
    return  bufferProcess.resultString;
}
@end
