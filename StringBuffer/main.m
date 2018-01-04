//
//  main.m
//  StringBuffer
//
//  Created by rong on 2017/11/25.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringBuffer.h"
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        StringBuffer *buffer = [StringBuffer new];
        NSLog(@"buffer值=%@",[[buffer appendString:@"a" ] appendString:@"v" ].value);
        
        
        CalculatorMaker *maker = [CalculatorMaker new];
        int a = maker.add(1).add(2).result;
        NSLog(@"Result:%d", a);
    
        //相当于把上边的代码封装到一个函数中,该函数的输入值为maker
        //也就是说当要封装一段代码的实现的时候,可以将代码封装为函数,并将该函数的指针发送给第三方
        int result = [NSObject calculate:^(CalculatorMaker *maker) {
            maker.add(1).add(2).add(3).add(4).divide(2);
        }];
        NSLog(@"Result:%d", result);
        
//        NSString *str = [NSObject appendStr:^(NSStringBufferProcess * processor) {
//            processor.append(@"aa").append(@"bb");
//        }];
//        NSLog(@"str = %@",str);
    }
    return 0;
}
