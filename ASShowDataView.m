//
//  ASShowDataView.m
//  UpDemo
//
//  Created by WangM on 12-11-26.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASShowDataView.h"

@implementation ASShowDataView

-(id)init:(UIImageView *)aImageBackground
{
    self = [super init];
    if (self != nil) {
        m_changeableUpDemoInfo = [[ASChangeableStockInfo alloc] init];
        m_imageBackground = aImageBackground;
    }
    return self;
}

-(void)ShowIndex:(double)aIndex 
{
    [m_changeableUpDemoInfo SetIndex:aIndex];
    
    //Index
    UILabel * labelIndex = [[UILabel alloc] initWithFrame:CGRectMake(5, 0, 170, 80)];
    NSString * strIndex = [[NSString alloc] initWithFormat:@"%.2f",aIndex];
    labelIndex.text = strIndex;
    [labelIndex setFont:[UIFont fontWithName:@"Helvetica-Bold" size:40]];
    labelIndex.textColor = [UIColor greenColor];
    labelIndex.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelIndex];
}
-(void)ShowAddOrSubPrice:(double)aAddOrSubPrice
{
    [m_changeableUpDemoInfo SetAddOrSubPrice:aAddOrSubPrice];
    
    //增加减少额
    UILabel * labelAddOrSubPrice = [[UILabel alloc] initWithFrame:CGRectMake(5, 60, 80, 40)];
    NSString * strAddOrSubPrice = [[NSString alloc]initWithFormat:@"%.2f",aAddOrSubPrice];
    labelAddOrSubPrice.text = strAddOrSubPrice;
    [labelAddOrSubPrice setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];
    labelAddOrSubPrice.textColor = [UIColor greenColor];
    labelAddOrSubPrice.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelAddOrSubPrice];
}
-(void)ShowAddOrSubRate:(double)aAddOrSubRate
{
    [m_changeableUpDemoInfo SetAddOrSubRate:aAddOrSubRate];

    //增加减少额率
    UILabel * labelAddOrSubRate = [[UILabel alloc] initWithFrame:CGRectMake(100, 60, 80, 40)];
    NSString * strAddOrSubRate = [[NSString alloc]initWithFormat:@"%.2f%%",aAddOrSubRate];
    labelAddOrSubRate.text = strAddOrSubRate;
    [labelAddOrSubRate setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];
    //labelAddOrSubRate.lineBreakMode  = UILineBreakModeClip;
    labelAddOrSubRate.textColor = [UIColor greenColor];
    labelAddOrSubRate.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelAddOrSubRate];
}

-(void)ShowTodayBeginPrice:(double)aTodayBeginPrice
{
    [m_changeableUpDemoInfo SetTodayBeginPrice:aTodayBeginPrice];
    
    //今开价
    UILabel * labelTodayBeginPrice = [[UILabel alloc] initWithFrame:CGRectMake(175, 28, 50, 40)];
    NSString * strTodayBeginPrice = [[NSString alloc]initWithFormat:@"%f.2",aTodayBeginPrice];
    labelTodayBeginPrice.text = strTodayBeginPrice;
    [labelTodayBeginPrice setFont:[UIFont fontWithName:@"Helvetica-Bold" size:12]];
    labelTodayBeginPrice.textColor = [UIColor whiteColor];
    labelTodayBeginPrice.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelTodayBeginPrice];

}
-(void)ShowYesterdayEndPrice:(double)aYesterdayEndPrice
{
    [m_changeableUpDemoInfo SetYesterdayEndPrice:aYesterdayEndPrice];
    
    //昨收价
    UILabel * labelYesterdayEndPrice = [[UILabel alloc] initWithFrame:CGRectMake(235, 28, 50, 40)];
    NSString * strYesterdayEndPrice = [[NSString alloc]initWithFormat:@"%f.2",aYesterdayEndPrice];
    labelYesterdayEndPrice.text = strYesterdayEndPrice;
    [labelYesterdayEndPrice setFont:[UIFont fontWithName:@"Helvetica-Bold" size:12]];
    labelYesterdayEndPrice.textColor = [UIColor whiteColor];
    labelYesterdayEndPrice.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelYesterdayEndPrice];
}
-(void)ShowDoneDealPrice:(double)aDoneDealPrice
{
    [m_changeableUpDemoInfo SetDoneDealPrice:aDoneDealPrice];
    
    //成交额价
    UILabel * labelDoneDealPrice = [[UILabel alloc] initWithFrame:CGRectMake(175, 62, 50, 40)];
    NSString * strDoneDealPrice = [[NSString alloc]initWithFormat:@"%.2f亿",aDoneDealPrice];
    labelDoneDealPrice.text = strDoneDealPrice;
    [labelDoneDealPrice setFont:[UIFont fontWithName:@"Helvetica-Bold" size:12]];
    labelDoneDealPrice.textColor = [UIColor whiteColor];
    labelDoneDealPrice.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelDoneDealPrice];
}
-(void)ShowSwingPercent:(double)aSwingPercent
{
    [m_changeableUpDemoInfo SetSwingPercent:aSwingPercent];
    
    //振幅%
    UILabel * labelSwingPercent = [[UILabel alloc] initWithFrame:CGRectMake(235, 62, 50, 40)];
    NSString * strSwingPercent = [[NSString alloc]initWithFormat:@"%.2f%%",aSwingPercent];
    labelSwingPercent.text = strSwingPercent;
    [labelSwingPercent setFont:[UIFont fontWithName:@"Helvetica-Bold" size:12]];
    labelSwingPercent.textColor = [UIColor whiteColor];
    labelSwingPercent.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelSwingPercent];
}

-(void)ShowTodayHighestPrice:(double)aTodayHighestPrice
{
    [m_changeableUpDemoInfo SetTodayHighestPrice:aTodayHighestPrice];
    
    //最高
    UILabel * labelTodayHighestPrice = [[UILabel alloc] initWithFrame:CGRectMake(5, 92, 120, 40)];
    NSString * strTodayHighestPrice = [[NSString alloc]initWithFormat:@"最 高:%.2f",aTodayHighestPrice];
    labelTodayHighestPrice.text = strTodayHighestPrice;
    [labelTodayHighestPrice setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    labelTodayHighestPrice.textColor = [UIColor grayColor];
    labelTodayHighestPrice.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelTodayHighestPrice];
}
-(void)ShowTodayLowestPrice:(double)aTodayLowestPrice
{
    [m_changeableUpDemoInfo SetTodayLowestPrice:aTodayLowestPrice];
    
    //最低
    UILabel * labelTodayLowestPrice = [[UILabel alloc] initWithFrame:CGRectMake(95, 92, 120, 40)];
    NSString * strTodayLowestPrice = [[NSString alloc]initWithFormat:@"最 高:%.2f",aTodayLowestPrice];
    labelTodayLowestPrice.text = strTodayLowestPrice;
    [labelTodayLowestPrice setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    labelTodayLowestPrice.textColor = [UIColor grayColor];
    labelTodayLowestPrice.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelTodayLowestPrice];
}
-(void)ShowDealNumber:(double)aDealNumber
{
    [m_changeableUpDemoInfo SetDealNumber:aDealNumber];
    
    //成交量
    UILabel * labelDealNumber = [[UILabel alloc] initWithFrame:CGRectMake(185, 92, 120, 40)];
    NSString * strDealNumber = [[NSString alloc]initWithFormat:@"成交量:%.2f万手",aDealNumber];
    labelDealNumber.text = strDealNumber;
    [labelDealNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    labelDealNumber.textColor = [UIColor grayColor];
    labelDealNumber.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelDealNumber];
}
-(void)ShowRiseNumber:(int)aRiseNumber
{
    [m_changeableUpDemoInfo SetRiseNumber:aRiseNumber];
    
    //涨家数
    UILabel * labelRiseNumber = [[UILabel alloc] initWithFrame:CGRectMake(5, 112, 120, 40)];
    NSString * strRiseNumber = [[NSString alloc]initWithFormat:@"涨价数:%.2d",aRiseNumber];
    labelRiseNumber.text = strRiseNumber;
    [labelRiseNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    labelRiseNumber.textColor = [UIColor grayColor];
    labelRiseNumber.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelRiseNumber];
}
-(void)ShowSmoothNumber:(int)aSmoothNumber
{
    [m_changeableUpDemoInfo SetSmoothNumber:aSmoothNumber];
    
    //平家数
    UILabel * labelSmoothNumber = [[UILabel alloc] initWithFrame:CGRectMake(95, 112, 120, 40)];
    NSString * strSmoothNumber = [[NSString alloc]initWithFormat:@"平家数:%.2d",aSmoothNumber];
    labelSmoothNumber.text = strSmoothNumber;
    [labelSmoothNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    labelSmoothNumber.textColor = [UIColor grayColor];
    labelSmoothNumber.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelSmoothNumber];
}
-(void)ShowFallNumber:(int)aFallNumber
{
    [m_changeableUpDemoInfo SetSmoothNumber:aFallNumber];
    
    //跌家数
    UILabel * labelFallNumber = [[UILabel alloc] initWithFrame:CGRectMake(185, 112, 120, 40)];
    NSString * strFallNumber = [[NSString alloc]initWithFormat:@"涨家数:%.2d",aFallNumber];
    labelFallNumber.text = strFallNumber;
    [labelFallNumber setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    labelFallNumber.textColor = [UIColor grayColor];
    labelFallNumber.backgroundColor = [UIColor clearColor];
    [m_imageBackground addSubview:labelFallNumber];
}

@end
