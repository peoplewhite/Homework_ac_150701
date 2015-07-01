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
- (IBAction)btn1:(id)sender {
    NSDate *date = [NSDate date];
    [self showResult:date];
}
- (IBAction)btn2:(id)sender {
    
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateFormat = @"yyyy/MM/dd";
    NSLog(@"In Taiwan:  %@", [dateFormatter stringFromDate:date]);
    
    
    dateFormatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
    NSLog(@"In GMT style:   %@", [dateFormatter stringFromDate:date]);
    
    
}
- (IBAction)btn3:(id)sender {
}
- (IBAction)btn4:(id)sender {
}
- (IBAction)btn5:(id)sender {
}
- (IBAction)btn6:(id)sender {
}
- (IBAction)btn7:(id)sender {
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
