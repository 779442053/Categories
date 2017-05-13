//
//  NSObject+Extension.h
//  Test
//
//  Created by liwei on 2017/5/13.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

/**
 convert data to json
 
 data can be NSData,NSArray,NSString,NSDictionary and so on
 */
- (NSString *)jsonStrFromData;

/*
 judge object is empty or not
 **/
- (BOOL)objectIsEmpty;

@end
