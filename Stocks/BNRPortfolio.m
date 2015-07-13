//
//  BNRPortfolio.m
//  Stocks
//
//  Created by John Leonard on 7/13/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRPortfolio.h"

@implementation BNRPortfolio

- (BNRPortfolio *)initWithHoldings:(NSMutableArray*) stockList;
{
  self = [super init];
  
  if(self)
  {
    _holdings = stockList;
  }
  return self;
} // initWithHoldings()

- (float)totalValue
{
  float total = 0.0;
  for (BNRStockHolding *h in _holdings)
  {
    total += [h valueInDollars];
  }
  
  return total;
}

- (NSMutableArray *)getHoldings
{
  return _holdings;
}


@end
