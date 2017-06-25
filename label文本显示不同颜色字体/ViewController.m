//
//  ViewController.m
//  label文本显示不同颜色字体
//
//  Created by lidianchao on 15/8/12.
//  Copyright (c) 2015年 lidianchao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 300, 300)];
    NSString *labelString = @"123456789";
    testLabel.textColor = [UIColor redColor];
    testLabel.font = [UIFont boldSystemFontOfSize:25];
    UIColor *textColor = [UIColor greenColor];
    testLabel.attributedText = [self changeLabelTextColor:labelString andValue:textColor];
    [self.view addSubview:testLabel];
}
- (NSMutableAttributedString *)changeLabelTextColor:(NSString *)labelTextString andValue:(id)value
{
    NSMutableAttributedString *tempLabelString = [[NSMutableAttributedString alloc]initWithString:labelTextString];
    NSInteger leftRange = [[tempLabelString string] rangeOfString:@"2"].location;
    NSInteger rightRange = [[tempLabelString string] rangeOfString:@"6"].location;
    NSRange rangeToChange = {leftRange,rightRange - leftRange + 1};
    [tempLabelString addAttribute:NSForegroundColorAttributeName value:value range:rangeToChange];
    return tempLabelString;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
