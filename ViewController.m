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
}
- (IBAction)btn9:(id)sender {
}
- (IBAction)btn10:(id)sender {
}
- (IBAction)btn11:(id)sender {
}
- (IBAction)btn12:(id)sender {
}

@end
