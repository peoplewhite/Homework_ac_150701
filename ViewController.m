//
//  ViewController.m
//  
//
//  Created by Po-Hao Cheng on 2015/7/1.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    _btnAssignDate.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
//    _btnAssignDate.titleLabel.minimumScaleFactor = 0.5;
//    _btnAssignDate.titleLabel.adjustsFontSizeToFitWidth = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)showResult:(NSDate *)dateData {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateStyle = NSDateFormatterLongStyle;
    dateFormatter.timeStyle = NSDateFormatterLongStyle;
    
    NSString *str = [dateFormatter stringFromDate:dateData];
    _labShowResult.text = str;
    
}
- (void)showResultString:(NSString *)str {
    _labShowResult.text = str;
}
- (IBAction)btn1:(id)sender {
    NSDate *date = _datePicker.date;
    [self showResult:date];
}
- (IBAction)btn2:(id)sender {
    NSDate *date = _datePicker.date;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateFormat = @"yyyy/MM/dd  HH:mm";
    NSLog(@"In Taiwan:  %@", [dateFormatter stringFromDate:date]);
    [self showResultString:[dateFormatter stringFromDate:date]];
    
    dateFormatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
    NSLog(@"In GMT style:   %@", [dateFormatter stringFromDate:date]);
}
- (IBAction)btn3:(id)sender {
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = _datePicker.date;
    NSDate *theDayAfterDateIPicked = [cal dateByAddingUnit:NSCalendarUnitDay value:1 toDate:date options:0];
    [self showResult:theDayAfterDateIPicked];
}
- (IBAction)btn4:(id)sender {
    //3:20
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *futureTime = [cal dateByAddingUnit:NSCalendarUnitMinute value:200 toDate:_datePicker.date options:0];
    [self showResult:futureTime];
    
}
- (IBAction)btn5:(id)sender {
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = [cal nextDateAfterDate:_datePicker.date matchingHour:9 minute:30 second:0 options:NSCalendarMatchNextTime];
    [self showResult:date];
}
- (IBAction)btn6:(id)sender {
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = [cal nextDateAfterDate:_datePicker.date matchingUnit:NSCalendarUnitWeekday value:1 options:NSCalendarMatchNextTime];
    [self showResult:date];
}
- (IBAction)btn7:(id)sender {
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = [cal nextDateAfterDate:_datePicker.date matchingUnit:NSCalendarUnitWeekday value:1 options:NSCalendarSearchBackwards | NSCalendarMatchNextTime];
    [self showResult:date];
}
- (IBAction)btn8:(id)sender {
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = [cal dateWithEra:0 year:1987 month:9 day:23 hour:0 minute:0 second:0 nanosecond:0];
    [self showResult:date];
}
- (IBAction)btn9:(id)sender {
    
    [self showResultString:@"Please See Log"];
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = _datePicker.date;
    //1
    NSInteger numEra, numYear, numMonth, numDay;
    [cal getEra:&numEra year:&numYear month:&numMonth day:&numDay fromDate:date];
    
    NSLog(@"era = %ld", numEra);
    NSLog(@"year = %ld", numYear);
    NSLog(@"month = %ld", numMonth);
    NSLog(@"day = %ld", numDay);
    
    //2
    NSInteger numHour, numMin, numSec, numNanoSec;
    [cal getHour:&numHour minute:&numMin second:&numSec nanosecond:&numNanoSec fromDate:date];
    
    NSLog(@"Hour = %ld", numHour);
    NSLog(@"Min = %ld", numMin);
    NSLog(@"Sec = %ld", numSec);
    NSLog(@"NanoSec = %ld", numNanoSec);
    
    //3
    NSInteger numYearForWeekOfYear, numWeekOfYear, numWeekDay;
    [cal getEra:&numEra yearForWeekOfYear:&numYearForWeekOfYear weekOfYear:&numYearForWeekOfYear weekday:&numWeekDay fromDate:date];
    
    NSLog(@"NanoSec = %ld", numYearForWeekOfYear);
    NSLog(@"Weekofyear = %ld", numWeekOfYear);
    NSLog(@"WeekDay = %ld", numWeekDay);
}
- (IBAction)btn10:(id)sender {
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *date = _datePicker.date;
   
    NSString *strResult = @"";
    
    if ([cal isDateInToday:date]) {
        strResult = [strResult stringByAppendingString:@"[是今天]"];
    }
    else {
        strResult = [strResult stringByAppendingString:@"[不是今天]"];
    }
   
    if ([cal isDateInTomorrow:date]) {
        strResult = [strResult stringByAppendingString:@"[是明天]"];
    }
    else {
        strResult =  [strResult stringByAppendingString:@"[不是明天]"];
    }
    
    if ([cal isDateInYesterday:date]) {
        strResult =  [strResult stringByAppendingString:@"[是昨天]"];
    }
    else {
        strResult = [strResult stringByAppendingString:@"[不是昨天]"];
    }
    
    [self showResultString:strResult];
    
}
- (IBAction)btn11:(id)sender {
}
- (IBAction)btn12:(id)sender {
}

@end
