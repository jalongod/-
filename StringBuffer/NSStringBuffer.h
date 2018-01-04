//
//  NSStringBuffer.h
//  StringBuffer
//
//  Created by rong on 2017/11/27.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSStringBuffer : NSMutableString
@property(nonatomic,copy)NSString *value;

-(NSStringBuffer* (^)(NSString*))append;
@end
