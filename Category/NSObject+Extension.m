//
//  NSObject+Extension.m
//  Test
//
//  Created by liwei on 2017/5/13.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "NSObject+Extension.h"

@implementation NSObject (Extension)

- (NSString *)jsonStrFromData {
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonStr;
}

- (BOOL)objectIsEmpty {

    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([self isEqual:@"null"] || [self isEqual:@"<null>"] || [self isEqual:@"(null)"]) {
        return YES;
    }
    if (!self) {
        return YES;
    }
    if ([self isKindOfClass:[NSDictionary class]]) {
        
        if (((NSDictionary *)self).count == 0) {
            return YES;
        }
        
    }
    if ([self isKindOfClass:[NSString class]]) {
        if (((NSString *)self).length == 0) {
            return YES;
        }
    }
    return NO;

}

@end
