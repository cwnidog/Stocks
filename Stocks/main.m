//
//  main.m
//  Stocks
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    NSMutableArray *stockList = [NSMutableArray array];

    // create and initialize the first BNRStockHolding instance and add it to the list
    BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
    stock1.purchasePrice = 2.30;
    stock1.currentPrice = 4.50;
    stock1.numberOfShares = 40;
    [stockList addObject:stock1];

    // create and initialize the second BNRStockHolding instance and add it to the list
    BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
    stock2.purchasePrice = 12.19;
    stock2.currentPrice = 10.56;
    stock2.numberOfShares = 90;
    [stockList addObject:stock2];

    // create and initialize the third BNRStockHolding instance and add it to the list
    BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
    stock3.purchasePrice = 45.10;
    stock3.currentPrice = 49.51;
    stock3.numberOfShares = 210;
    [stockList addObject:stock3];
    
    for (BNRStockHolding *stock in stockList)
    {
      NSLog(@"Stock: %d shares, purchase price: %.2f, current price: %.2f, cost: %.2f, value: %.2f\n", stock.numberOfShares, stock.purchasePrice, stock.currentPrice, [stock costInDollars], [stock valueInDollars]);
    }
    
  } // autoreleasepool
    return 0;
} // main()
