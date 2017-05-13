//
//  NSArray+Extension.m
//  Test
//
//  Created by liwei on 2017/5/13.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)
- (BOOL)isEqualToAnotherArray:(NSArray *)array {
    
    BOOL equal = YES;//默认相等
    
    if (self.count != array.count) {//肯定是不等的
        equal = NO;
        return equal;
    }
    for (NSString *son in self) {
        if (![array containsObject:son]) {//只要A数组中有一个元素不在B数组，就不相等
            equal = NO;
            break;
        }
    }
    
    
    return equal;
}




@end
