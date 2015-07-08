//
//  BNRStockHolding.m
//  Stocks
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
  return _purchasePrice * _numberOfShares;
}

- (float)valueInDollars
{
  return _currentPrice * _numberOfShares;
}

- (float)purchasePrice
{
  return _purchasePrice;
}

- (void)setPurchasePrice:(float)price
{
  _purchasePrice = price;
}

- (float)currentPrice
{
  return _currentPrice;
}

- (void)setCurrentPrice:(float)price
{
  _currentPrice = price;
}

- (int)numberOfShares
{
  return _numberOfShares;
}

- (void)setNumberOfShares:(int)shares
{
  _numberOfShares = shares;
}


@end
