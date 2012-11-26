//
//  ASChangeableUpDemoInfo.m
//  UpDemo
//
//  Created by WangM on 12-11-26.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import "ASChangeableStockInfo.h"

@implementation ASChangeableStockInfo

-(void)SetIndex:(double)aIndex
{
    m_dbIndex = aIndex;
}
-(void)SetAddOrSubPrice:(double)aAddOrSubPrice
{
    m_dbAddOrSubPrice = aAddOrSubPrice;
}
-(void)SetAddOrSubRate:(double)aAddOrSubRate
{
    m_dbAddOrSubRate = aAddOrSubRate;
}
-(void)SetDoneDealPrice:(double)aDoneDealPrice
{
    m_dbDoneDealPrice = aDoneDealPrice;
}
-(void)SetSwingPercent:(double)aSwingPercent
{
    m_dbSwingPercent = aSwingPercent;
}
-(void)SetTodayBeginPrice:(double)aTodayBeginPrice
{
    m_dbTodayBeginPrice = aTodayBeginPrice;
}
-(void)SetYesterdayEndPrice:(double)aYesterdayEndPrice
{
    m_dbYesterdayEndPrice = aYesterdayEndPrice;
}
-(void)SetTodayHighestPrice:(double)aTodayHighestPrice
{
    m_dbTodayHighestPrice = aTodayHighestPrice;
}
-(void)SetTodayLowestPrice:(double)aTodayLowestPrice
{
    m_dbTodayLowestPrice = aTodayLowestPrice;
}
-(void)SetDealNumber:(double)aDealNumber
{
    m_dbDealNumber = aDealNumber;
}
-(void)SetRiseNumber:(double)aRiseNumber
{
    m_nRiseNumber = aRiseNumber;
}
-(void)SetSmoothNumber:(double)aSmoothNumber
{
    m_nSmoothNumber = aSmoothNumber;
}
-(void)SetFallNumber:(double)aFallNumber
{
    m_nFallNumber = aFallNumber;
}


-(double)GetIndex
{
    return m_dbIndex;
}
-(double)GetAddOrSubPrice
{
    return m_dbAddOrSubPrice;
}
-(double)GetAddOrSubRate
{
    return m_dbAddOrSubRate;
}
-(double)GetDoneDealPrice
{
    return m_dbDoneDealPrice;
}
-(double)GetSwingPercent
{
    return m_dbSwingPercent;
}
-(double)GetYesterdayEndPrice
{
    return m_dbYesterdayEndPrice;
}
-(double)GetDealNumber
{
    return m_dbDealNumber;
}
-(double)GetRiseNumber
{
    return m_nRiseNumber;
}
-(double)GetSmoothNumber
{
    return m_nSmoothNumber;
}
-(double)GetFallNumber
{
    return m_nFallNumber;
}


@end
