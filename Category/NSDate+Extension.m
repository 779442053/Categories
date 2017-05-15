//
//  NSDate+Extension.m
//  Test
//
//  Created by liwei on 2017/5/15.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)


/**
 
 judge date is today or not
 
 **/
- (BOOL)dateIsToday{

    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    int unit = NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear;
    
    NSDateComponents *currentCmps = [calendar components:unit fromDate:[NSDate date]];
    
    NSDateComponents *selfCmps = [calendar  components:unit fromDate:self];
    
    return (selfCmps.year == currentCmps.year) && (selfCmps.month == currentCmps.month) && (selfCmps.day == currentCmps.day);

}


- (NSDate *)transformDateToYearMonthDayFormat {

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";
    NSString *dateStr = [formatter stringFromDate:self];
    return [formatter dateFromString:dateStr];
}

/*
 
 judge date is yesterday or not
 
 **/
- (BOOL)dateIsYesterday {

    NSDate *currentDate = [[NSDate date] transformDateToYearMonthDayFormat];
    
    NSDate *selfDate = [self transformDateToYearMonthDayFormat];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *cmps = [calendar components:NSCalendarUnitDay fromDate:selfDate toDate:currentDate options:0];
    
    return cmps.day == 1;
}

/*
 
 judge date is this year or not
 
 **/
- (BOOL)dateIsThisYear {

    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    int unit = NSCalendarUnitYear;
    
    NSDateComponents *currentCmps = [calendar components:unit fromDate:[NSDate date]];
    
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    
    return selfCmps.year == currentCmps.year;
}

/*
 
 get components between currentDate and given date
 
 **/
- (NSDateComponents *)componentsBetweenCurrentDateAndSelfDate {

    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    int unit = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    return [calendar components:unit fromDate:self toDate:[NSDate date] options:0];
}


/*
 
 transform NSDate to NSString format
 
 **/
- (NSString *)transformDateToString {

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSString *dateStr = [formatter stringFromDate:self];

    return dateStr;
}

/*
 
 judge the date is between beginTime and endTime or not;
 **/
- (BOOL)isInTimeScaleWithBeginTime:(NSString *)beginTime endTime:(NSString *)endTime {

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    NSDate *beginDate = [formatter dateFromString:beginTime];
    
    NSDate *endDate = [formatter dateFromString:endTime];
    
    NSDate *currentDate = [NSDate date];
    
    NSString *currentTime = [formatter stringFromDate:currentDate];
    
    currentDate = [formatter dateFromString:currentTime];
    
    NSComparisonResult result = [beginDate compare:currentDate];
    
    if (result == NSOrderedAscending) {
        result = [currentDate compare:endDate];
        if (result == NSOrderedAscending) {
            return YES;
        }
    }
    return NO;
}


/**
 
 get week from given Date
 **/
- (NSString *)getWeekFromDate {

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    formatter.dateFormat = @"yyyy-MM-dd";
    
    NSString *selfStr = [formatter stringFromDate:self];
    
    NSArray *dateArray = [selfStr componentsSeparatedByString:@"-"];
    
    NSInteger year = [dateArray[0] integerValue];
    
    NSInteger month = [dateArray[1] integerValue];
    
    NSInteger day = [dateArray[2] integerValue];
    
    NSDateComponents *cmps = [[NSDateComponents alloc] init];
    
    [cmps setDay: day];
    [cmps setMonth:month];
    [cmps setYear: year];
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDate *date = [gregorian dateFromComponents:cmps];
    
    NSDateComponents *weekComponents = [gregorian components:NSCalendarUnitWeekday fromDate:date];
    
    NSInteger weekday = [weekComponents weekday];
    
    NSDictionary *weekDic = @{@"1" : @"一", @"2" : @"二", @"3" : @"三", @"4" : @"四", @"5" : @"五", @"6" : @"六", @"7" : @"日"};
    
    NSString *weekStr = [NSString stringWithFormat:@"%d",weekday - 1];
    
    if (weekday - 1 == 0) {
        return @"周日";
    }
    return [NSString stringWithFormat:@"周%@",weekStr];
}

@end
