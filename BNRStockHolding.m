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
  return self.purchasePrice * self.numberOfShares;
}

- (float)valueInDollars
{
  return self.currentPrice * self.numberOfShares;
}

@end
