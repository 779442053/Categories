//
//  NSDate+Extension.h
//  Test
//
//  Created by liwei on 2017/5/15.
//  Copyright © 2017年 liwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

/**
 
 judge date is today or not
 
 **/
- (BOOL)dateIsToday;


/*
 
 judge date is yesterday or not
 
 **/
- (BOOL)dateIsYesterday;

/*
 
 judge date is this year or not
 
 **/
- (BOOL)dateIsThisYear;

/*
 
 get NSDate with year,month,year format
 
 **/
- (NSDate *)transformDateToYearMonthDayFormat;



/*
 
 get components between currentDate and given date
 
 **/
- (NSDateComponents *)componentsBetweenCurrentDateAndSelfDate;



/*
 
 transform NSDate to NSString format
 
 **/
- (NSString *)transformDateToString;


/*
 
 judge the date is between beginTime and endTime or not;
 **/
- (BOOL)isInTimeScaleWithBeginTime:(NSString *)beginTime endTime:(NSString *)endTime;

/**
 
 get week from given Date
 **/
- (NSString *)getWeekFromDate;

@end
