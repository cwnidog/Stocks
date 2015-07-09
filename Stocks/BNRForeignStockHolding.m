//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by John Leonard on 7/9/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float) costInDollars
{
  return self.purchasePrice * self.conversionRate;
}

- (float) valueInDollars
{
  return self.currentPrice * self.conversionRate;
}

@end
