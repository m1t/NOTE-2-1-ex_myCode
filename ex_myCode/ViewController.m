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
    
    [self ex_comment_1];
    [self ex_comment_2];
    [self ex_operator_1];
    [self ex_operator_2];
    [self ex_increment];
    [self ex_NSInteger];
    [self ex_float];
    [self ex_float_cast];
    [self ex_BOOL];
    [self ex_char];
    [self ex_typedef];
    [self ex_pointer];
    [self ex_const];
    [self ex_enum_1];
    [self ex_enum_2];
    [self ex_define];
    [self ex_define_func];
    [self ex_arc4random];
    [self ex_round];
    [self ex_cos];
    [self ex_NSLog_at];
    [self ex_NSLog_d];
    [self ex_NSLog_f];
    [self ex_NSLog_E];
}

- (void)ex_comment_1
{
    int a;
    a = 1;
    // b = 2;
    NSLog(@"%d", a);
}

- (void)ex_comment_2
{
    int a;
    int b = 2;
    int /* コメント */ c;
    a = 1;
    c = 3;
    NSLog(@"%d %d %d", a,b,c);
}

- (void)ex_operator_1
{
    int ans;
    ans = 10+15%4;
    NSLog(@"答え %d", ans);
}

- (void)ex_operator_2
{
    int a = 10;
    a = 10;
    a += 5+2*2;
    NSLog(@"答え %d", a);
}

- (void)ex_increment
{
    int a, b, c;
    a = 10;
    b = ++a;
    c = a++;
    NSLog(@"a=%d b=%d c=%d", a,b,c);
}

- (void)ex_NSInteger
{
    NSInteger a=10, b=20, ans;
    ans = a + b;
    NSLog(@"ans = %d", ans);
}

- (void)ex_float
{
    int a = 7, b = 2;
    float ans1 = a/b;
    NSLog(@"ans1 = %.1f", ans1);
}

- (void)ex_float_cast
{
    int a = 7, b = 2;
    float ans2 = (float)a/b;
    NSLog(@"ans2 = %.1f", ans2);
}

- (void)ex_BOOL
{
    BOOL isDone;
    isDone = YES;
    
    if (isDone) {
        NSLog(@"完了");
    } else {
        NSLog(@"まだまだ");
    }
}

- (void)ex_char
{
    char rank = 'D';
    NSLog(@"rank - %c", rank);
}

- (void)ex_typedef
{
    typedef NSUInteger Dayes;
    Dayes workdays = 60;
    Dayes vacation = 25;
    NSLog(@"就労日%d日 休み%d日", workdays,vacation);
}

- (void)ex_pointer
{
    NSString *msg;
    NSData *now;
    msg = @"ありがとう";
    now = [NSDate date];
    NSLog(@"%@ %@", msg,now);
}

- (void)ex_const
{
    const int LEVEL = 27;
    NSString * const COLOR = @"緑色";
    NSLog(@"%d %@", LEVEL,COLOR);
}

- (void)ex_enum_1
{
    enum {
        NUM_A = 10,
        NUM_B,
        NUM_C,
        NUM_D
    };
    int sum = NUM_A + NUM_B + NUM_C + NUM_D;
    NSLog(@"%d", sum);
}

- (void)ex_enum_2
{
    enum {
        NUM_A = 10,
        NUM_B,
        NUM_C,
        NUM_F = 15,
        NUM_G,
        NUM_Z = 99
    };
    int ans1 = NUM_A + NUM_C;
    int ans2 = NUM_G * 2;
    NSLog(@"ans1=%d, ans2=%d", ans1,ans2);
}

- (void)ex_define
{
#define VOL 100
#define URL @"oshige.com"
    
    NSLog(@" 量は %d, 連絡は %@", VOL,URL);
}

- (void)ex_define_func
{
#define test(a, b) a+b
    
    NSInteger ans = test(3, 5);
    NSLog(@"ans %d", ans);
}

- (void)ex_arc4random
{
    int a, b, c;
    a = arc4random() % 10;
    b = arc4random() % 10;
    c = arc4random() % 10;
    NSLog(@"%d %d %d", a,b,c);
}

- (void)ex_round
{
    double ans, val;
    val = 23.17;
    ans = round(val * 10) / 10;
    NSLog(@"ans=%.1f", ans);
}

- (void)ex_cos
{
    double ans, degree;
    degree = 25;
    ans = cos(degree * (M_PI/180));
    NSLog(@"cos(%.0f 度)は=%f", degree,ans);
}

- (void)ex_NSLog_at
{
    NSString *msg = @"ありがとう。";
    NSLog(@"%@ みなさん。", msg);
}

- (void)ex_NSLog_d
{
    NSInteger a, b;
    a = 10;
    b = 20;
    NSLog(@"変数aの値は%d、変数bは%dです", a,b);
}

- (void)ex_NSLog_f
{
    double v = 12.3456;
    NSLog(@"v = %.2f", v);
}

- (void)ex_NSLog_E
{
    double v = 1234567.89;
    NSLog(@"v = %.3E", v);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
