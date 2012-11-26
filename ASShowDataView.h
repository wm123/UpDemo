//
//  ASShowDataView.h
//  UpDemo
//
//  Created by WangM on 12-11-26.
//  Copyright (c) 2012年 WangM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASChangeableStockInfo.h"

@interface ASShowDataView : UIView
{
    ASChangeableStockInfo * m_changeableUpDemoInfo;
    UIImageView * m_imageBackground;
}

-(id)init:(UIImageView *)aImageBackground;

-(void)ShowIndex:(double)aIndex;
-(void)ShowAddOrSubPrice:(double)aAddOrSubPrice;
-(void)ShowAddOrSubRate:(double)aAddOrSubRate;

-(void)ShowTodayBeginPrice:(double)aTodayBeginPrice;
-(void)ShowYesterdayEndPrice:(double)aYesterdayEndPrice;
-(void)ShowDoneDealPrice:(double)aDoneDealPrice;
-(void)ShowSwingPercent:(double)aSwingPercent;

-(void)ShowTodayHighestPrice:(double)aTodayHighestPrice;
-(void)ShowTodayLowestPrice:(double)aTodayLowestPrice;
-(void)ShowDealNumber:(double)aDealNumber;
-(void)ShowRiseNumber:(int)aRiseNumber;
-(void)ShowSmoothNumber:(int)aSmoothNumber;
-(void)ShowFallNumber:(int)aFallNumber;
@end
