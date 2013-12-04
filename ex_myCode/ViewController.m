//
//  ViewController.m
//  ex_myCode
//
//  Created by Chida Mitsuhiro on 13/12/04.
//  Copyright (c) 2013年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    int ans;
    ans = 1 + 2 + 3;
    NSLog(@"答え %d", ans);
    
    [ViewController ex_comment_1];
    [ViewController ex_comment_2];
    [ViewController ex_operator_1];
    [ViewController ex_operator_2];
    [ViewController ex_increment];
    [ViewController ex_NSInteger];
}

+ (void)ex_comment_1
{
    int a;
    a = 1;
    // b = 2;
    NSLog(@"%d", a);
}

+ (void)ex_comment_2
{
    int a;
    int b = 2;
    int /* コメント */ c;
    a = 1;
    c = 3;
    NSLog(@"%d %d %d", a,b,c);
}

+ (void)ex_operator_1
{
    int ans;
    ans = 10+15%4;
    NSLog(@"答え %d", ans);
}

+ (void)ex_operator_2
{
    int a = 10;
    a = 10;
    a += 5+2*2;
    NSLog(@"答え %d", a);
}

+ (void)ex_increment
{
    int a, b, c;
    a = 10;
    b = ++a;
    c = a++;
    NSLog(@"a=%d b=%d c=%d", a,b,c);
}

+ (void)ex_NSInteger
{
    NSInteger a=10, b=20, ans;
    ans = a + b;
    NSLog(@"ans = %d", ans);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
