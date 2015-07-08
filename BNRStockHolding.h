//
//  BNRStockHolding.h
//  Stocks
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
  float _purchasePrice;
  float _currentPrice;
  int _numberOfShares;
}

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares
- (float)purchasePrice;
- (void)setPurchasePrice:(float)price;
- (float)currentPrice;
- (void)setCurrentPrice:(float)price;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)shares;

@end
