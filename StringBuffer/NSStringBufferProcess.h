//
//  NSStringBufferProcess.h
//  StringBuffer
//
//  Created by rong on 2017/11/27.
//  Copyright © 2017年 zcr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSStringBufferProcess : NSObject
@property(nonatomic,copy)NSMutableString *resultString;
-(NSStringBufferProcess* (^)(NSString*))append;
@end
