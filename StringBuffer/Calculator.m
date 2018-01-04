//
//  Calculator.m
//  StringBuffer
//
//  Created by rong on 2017/11/25.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import "Calculator.h"

@implementation CalculatorMaker
- (CalculatorMaker *(^)(int))add {
    CalculatorMaker *(^addmaker)(int) =^(int num){
        self.result += num;
        return self;
    };
    return addmaker;
}

- (CalculatorMaker *(^)(int))sub {
    return ^(int num){
        self.result -= num;
        return self;
    };
}

- (CalculatorMaker *(^)(int))multi {
    return ^(int num){
        self.result *= num;
        return self;
    };
}

- (CalculatorMaker *(^)(int))divide {
    return ^(int num){
        self.result /= num;
        return self;
    };
}
@end

