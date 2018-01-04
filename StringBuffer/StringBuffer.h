//
//  StringBuffer.h
//  StringBuffer
//
//  Created by rong on 2017/11/25.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringBuffer : NSObject
@property(nonatomic,strong)NSMutableString * value;

-(StringBuffer*)appendString:(NSString *)str;
@end
