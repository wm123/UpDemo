//
//  ASViewController.m
//  UpDemo
//
//  Created by WangM on 12-11-23.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    m_upDemoViewController = [[ASShowStockAllInfoView alloc] init];
    [self.view addSubview:m_upDemoViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
