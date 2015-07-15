//
//  BNRPortfolio.m
//  Stocks
//
//  Created by John Leonard on 7/13/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio()
{
  NSMutableArray *_holdings;
}

@end

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

- (void)addHolding:(float)purchasePrice currentPrice:(float)currPrice numberOfShares:(int)numShares symbol:(NSString *)sym
{
  // create the stock holding
  BNRStockHolding *stock = [[BNRStockHolding alloc] init];
  stock.purchasePrice = purchasePrice;
  stock.currentPrice = currPrice;
  stock.numberOfShares = numShares;
  stock.symbol = sym;
  
  // add it to the portfolio's list of stock holdings
  [_holdings addObject:stock];
}

- (void)removeHolding:(NSString *)symbol
{
  BNRStockHolding *targetHolding;
  
  // check each of the stock holdings in the list
  for (BNRStockHolding *h in _holdings)
  {
    if ([h.symbol isEqualToString:symbol]) // found it
    {
      targetHolding = h;
    } // if holding found in the list
  } // for each holding in the list
  
  // delete the stock holding from the list
  if (targetHolding != nil)
  {
    [_holdings removeObject:targetHolding];
  }
  else
  {
    NSLog(@"Target stock holding %@ not found for deletion", symbol);
  }
  
} // removeHolding()

@end
