//
//  BNRPortfolio.h
//  Stocks
//
//  Created by John Leonard on 7/13/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "BNRStockHolding.h"
@class BNRPortfolio;


@interface BNRPortfolio : NSObject
{
  NSMutableArray *_holdings;
}

- (BNRPortfolio *)initWithHoldings:(NSMutableArray*) stockList;
- (NSMutableArray *)getHoldings;
- (float)totalValue;

@end
