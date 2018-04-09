//
//  NSDate+Utilities.h
//  YLCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 14/12/30.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//
// https://github.com/erica/NSDate-Extensions
#import <Foundation/Foundation.h>
#define YL_D_MINUTE	60
#define YL_D_HOUR	3600
#define YL_D_DAY	86400
#define YL_D_WEEK	604800
#define YL_D_YEAR	31556926
@interface NSDate (YLUtilities)
+ (NSCalendar *)yl_currentCalendar; // avoid bottlenecks
#pragma mark ---- Decomposing dates 分解的日期
@property (readonly) NSInteger yl_nearestHour;
@property (readonly) NSInteger yl_hour;
@property (readonly) NSInteger yl_minute;
@property (readonly) NSInteger yl_seconds;
@property (readonly) NSInteger yl_day;
@property (readonly) NSInteger yl_month;
@property (readonly) NSInteger yl_week;
@property (readonly) NSInteger yl_weekday;
@property (readonly) NSInteger yl_nthWeekday; // e.g. 2nd Tuesday of the month == 2
@property (readonly) NSInteger yl_year;

#pragma mark ----short time 格式化的时间
@property (nonatomic, readonly) NSString *yl_shortString;
@property (nonatomic, readonly) NSString *yl_shortDateString;
@property (nonatomic, readonly) NSString *yl_shortTimeString;
@property (nonatomic, readonly) NSString *yl_mediumString;
@property (nonatomic, readonly) NSString *yl_mediumDateString;
@property (nonatomic, readonly) NSString *yl_mediumTimeString;
@property (nonatomic, readonly) NSString *yl_longString;
@property (nonatomic, readonly) NSString *yl_longDateString;
@property (nonatomic, readonly) NSString *yl_longTimeString;

///使用dateStyle timeStyle格式化时间
- (NSString *)yl_stringWithDateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle;
///给定format格式化时间
- (NSString *)yl_stringWithFormat:(NSString *)format;

#pragma mark ---- 从当前日期相对日期时间
///明天
+ (NSDate *)yl_dateTomorrow;
///昨天
+ (NSDate *)yl_dateYesterday;
///今天后几天
+ (NSDate *)yl_dateWithDaysFromNow:(NSInteger)days;
///今天前几天
+ (NSDate *)yl_dateWithDaysBeforeNow:(NSInteger)days;
///当前小时后dHours个小时
+ (NSDate *)yl_dateWithHoursFromNow:(NSInteger)dHours;
///当前小时前dHours个小时
+ (NSDate *)yl_dateWithHoursBeforeNow:(NSInteger)dHours;
///当前分钟后dMinutes个分钟
+ (NSDate *)yl_dateWithMinutesFromNow:(NSInteger)dMinutes;
///当前分钟前dMinutes个分钟
+ (NSDate *)yl_dateWithMinutesBeforeNow:(NSInteger)dMinutes;


#pragma mark ---- Comparing dates 比较时间
///比较年月日是否相等
- (BOOL)yl_isEqualToDateIgnoringTime:(NSDate *)aDate;
///是否是今天
- (BOOL)yl_isToday;
///是否是明天
- (BOOL)yl_isTomorrow;
///是否是昨天
- (BOOL)yl_isYesterday;

///是否是同一周
- (BOOL)yl_isSameWeekAsDate:(NSDate *)aDate;
///是否是本周
- (BOOL)yl_isThisWeek;
///是否是本周的下周
- (BOOL)yl_isNextWeek;
///是否是本周的上周
- (BOOL)yl_isLastWeek;

///是否是同一月
- (BOOL)yl_isSameMonthAsDate:(NSDate *)aDate;
///是否是本月
- (BOOL)yl_isThisMonth;
///是否是本月的下月
- (BOOL)yl_isNextMonth;
///是否是本月的上月
- (BOOL)yl_isLastMonth;

///是否是同一年
- (BOOL)yl_isSameYearAsDate:(NSDate *)aDate;
///是否是今年
- (BOOL)yl_isThisYear;
///是否是今年的下一年
- (BOOL)yl_isNextYear;
///是否是今年的上一年
- (BOOL)yl_isLastYear;

///是否提前aDate
- (BOOL)yl_isEarlierThanDate:(NSDate *)aDate;
///是否晚于aDate
- (BOOL)yl_isLaterThanDate:(NSDate *)aDate;
///是否晚是未来
- (BOOL)yl_isInFuture;
///是否晚是过去
- (BOOL)yl_isInPast;


///是否是工作日
- (BOOL)yl_isTypicallyWorkday;
///是否是周末
- (BOOL)yl_isTypicallyWeekend;

#pragma mark ---- Adjusting dates 调节时间
///增加dYears年
- (NSDate *)yl_dateByAddingYears:(NSInteger)dYears;
///减少dYears年
- (NSDate *)yl_dateBySubtractingYears:(NSInteger)dYears;
///增加dMonths月
- (NSDate *)yl_dateByAddingMonths:(NSInteger)dMonths;
///减少dMonths月
- (NSDate *)yl_dateBySubtractingMonths:(NSInteger)dMonths;
///增加dDays天
- (NSDate *)yl_dateByAddingDays:(NSInteger)dDays;
///减少dDays天
- (NSDate *)yl_dateBySubtractingDays:(NSInteger)dDays;
///增加dHours小时
- (NSDate *)yl_dateByAddingHours:(NSInteger)dHours;
///减少dHours小时
- (NSDate *)yl_dateBySubtractingHours:(NSInteger)dHours;
///增加dMinutes分钟
- (NSDate *)yl_dateByAddingMinutes:(NSInteger)dMinutes;
///减少dMinutes分钟
- (NSDate *)yl_dateBySubtractingMinutes:(NSInteger)dMinutes;


#pragma mark ---- 时间间隔
///比aDate晚多少分钟
- (NSInteger)yl_minutesAfterDate:(NSDate *)aDate;
///比aDate早多少分钟
- (NSInteger)yl_minutesBeforeDate:(NSDate *)aDate;
///比aDate晚多少小时
- (NSInteger)yl_hoursAfterDate:(NSDate *)aDate;
///比aDate早多少小时
- (NSInteger)yl_hoursBeforeDate:(NSDate *)aDate;
///比aDate晚多少天
- (NSInteger)yl_daysAfterDate:(NSDate *)aDate;
///比aDate早多少天
- (NSInteger)yl_daysBeforeDate:(NSDate *)aDate;

///与anotherDate间隔几天
- (NSInteger)yl_distanceDaysToDate:(NSDate *)anotherDate;
///与anotherDate间隔几月
- (NSInteger)yl_distanceMonthsToDate:(NSDate *)anotherDate;
///与anotherDate间隔几年
- (NSInteger)yl_distanceYearsToDate:(NSDate *)anotherDate;
@end
