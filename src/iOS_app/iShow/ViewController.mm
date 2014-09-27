//
//  ViewController.m
//  iShow
//
//  Created by erik on 14-6-6.
//  Copyright (c) 2014年 erik. All rights reserved.
//

#import "ViewController.h"
#import "say.h"
#import "math.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Hello GYP\n");
    
    sayHello();
    NSLog(@"add: %d \n", add(3, 5));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
