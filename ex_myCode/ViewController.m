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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
