//
//  ViewController.m
//  正则表达式
//
//  Created by dc0061 on 16/9/14.
//  Copyright © 2016年 dc0061. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *phoneNum=@"13345678910";
    NSString *regex=@"^1[3|4|5|7|8|9][0-9]{9}$";
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
    NSLog(@"%d",[predicate evaluateWithObject:phoneNum]);
    
    NSString *num=@"61052419930228125X";
    NSString *numI=@"^\\d{17}[0-9|x|X]$";
    NSPredicate *predicat=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",numI];
    NSLog(@"%d",[predicat evaluateWithObject:num]);
    
    NSString *email=@"fichen112@163.com";
    NSString *emailI=@"^[(.|_|%|+|-)*a-z|A-Z|0-9]{6,18}@[(0-9|a-z)*].com$";
    NSPredicate *predica=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailI];
    NSLog(@"%d",[predica evaluateWithObject:email]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
