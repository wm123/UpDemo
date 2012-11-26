//
//  ASUpDemoViewController.m
//  UpDemo
//
//  Created by WangM on 12-11-23.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASShowStockAllInfoView.h"

@interface ASShowStockAllInfoView ()

@end

@implementation ASShowStockAllInfoView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImageView * imageBackGround = [[UIImageView alloc] initWithFrame:CGRectMake(5, 10, 310, 150)];
    imageBackGround.backgroundColor = [UIColor blackColor];
    [self.view addSubview:imageBackGround];
    
    m_showDataView = [[ASShowDataView alloc] init:imageBackGround];
    
    //今开
    UILabel * labelTodayBegin = [[UILabel alloc] initWithFrame:CGRectMake(175, 10, 50, 40)];
    labelTodayBegin.text = @"今开";
    labelTodayBegin.adjustsFontSizeToFitWidth = YES;
    [labelTodayBegin setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    labelTodayBegin.textColor = [UIColor grayColor];
    labelTodayBegin.backgroundColor = [UIColor clearColor];
    [imageBackGround addSubview:labelTodayBegin];
    
    
    //昨收
    UILabel * labelYesterdayEnd = [[UILabel alloc] initWithFrame:CGRectMake(235, 10, 50, 40)];
    labelYesterdayEnd.text = @"昨收";
    [labelYesterdayEnd setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    labelYesterdayEnd.textColor = [UIColor grayColor];
    labelYesterdayEnd.backgroundColor = [UIColor clearColor];
    [imageBackGround addSubview:labelYesterdayEnd];
    
    
    //成交额
    UILabel * labelDoneDeal = [[UILabel alloc] initWithFrame:CGRectMake(175, 45, 50, 40)];
    labelDoneDeal.text = @"成交额";
    labelDoneDeal.adjustsFontSizeToFitWidth = YES;
    [labelDoneDeal setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    labelDoneDeal.textColor = [UIColor grayColor];
    labelDoneDeal.backgroundColor = [UIColor clearColor];
    [imageBackGround addSubview:labelDoneDeal];
    
    //振幅
    UILabel * labelSwing = [[UILabel alloc] initWithFrame:CGRectMake(235, 45, 50, 40)];
    labelSwing.text = @"振幅";
    labelSwing.adjustsFontSizeToFitWidth = YES;
    [labelSwing setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    labelSwing.textColor = [UIColor grayColor];
    labelSwing.backgroundColor = [UIColor clearColor];
    [imageBackGround addSubview:labelSwing];
    
    [m_showDataView ShowIndex:2010.90];
    [m_showDataView ShowAddOrSubPrice:-19.42];
    [m_showDataView ShowAddOrSubRate:-0.96];
    [m_showDataView ShowTodayBeginPrice:2021.21];
    [m_showDataView ShowYesterdayEndPrice:2030.32];
    [m_showDataView ShowDoneDealPrice:227.8];
    [m_showDataView ShowSwingPercent:0.61];
    [m_showDataView ShowTodayHighestPrice:2023.08];
    [m_showDataView ShowTodayLowestPrice:2010.80];
    [m_showDataView ShowDealNumber:3036.7];
    [m_showDataView ShowRiseNumber:100];
    [m_showDataView ShowSmoothNumber:36];
    [m_showDataView ShowFallNumber:805];
    
    
    
    
    
//    //成交量
//    UILabel * labelDealNumber = [[UILabel alloc] initWithFrame:CGRectMake(185, 92, 120, 40)];
//    labelDealNumber.text = @"成交量:3036.7万手";
//    [labelDealNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
//    labelDealNumber.textColor = [UIColor grayColor];
//    labelDealNumber.backgroundColor = [UIColor clearColor];
//    [imageBackGround addSubview:labelDealNumber];
//    
//    //涨家数
//    UILabel * labelRiseNumber = [[UILabel alloc] initWithFrame:CGRectMake(5, 112, 120, 40)];
//    labelRiseNumber.text = @"涨家数:100";
//    [labelRiseNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
//    labelRiseNumber.textColor = [UIColor grayColor];
//    labelRiseNumber.backgroundColor = [UIColor clearColor];
//    [imageBackGround addSubview:labelRiseNumber];
//    
//    //平家数
//    UILabel * labelSmoothNumber = [[UILabel alloc] initWithFrame:CGRectMake(95, 112, 120, 40)];
//    labelSmoothNumber.text = @"平家数:36";
//    [labelSmoothNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
//    labelSmoothNumber.textColor = [UIColor grayColor];
//    labelSmoothNumber.backgroundColor = [UIColor clearColor];
//    [imageBackGround addSubview:labelSmoothNumber];
//    
//    //跌家数
//    UILabel * labelFallNumber = [[UILabel alloc] initWithFrame:CGRectMake(185, 112, 120, 40)];
//    labelFallNumber.text = @"跌家数:805";
//    [labelFallNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
//    labelFallNumber.textColor = [UIColor grayColor];
//    labelFallNumber.backgroundColor = [UIColor clearColor];
//    [imageBackGround addSubview:labelFallNumber];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
