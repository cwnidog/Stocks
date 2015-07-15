//
//  main.m
//  Stocks
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    
    // make up a list of stock holdings
    NSMutableArray *stockList = [NSMutableArray array];

    // create and initialize the first BNRStockHolding instance and add it to the list
    BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
    stock1.purchasePrice = 2.30;
    stock1.currentPrice = 4.50;
    stock1.numberOfShares = 40;
    stock1.symbol = @"STP";
    [stockList addObject:stock1];

    // create and initialize the second BNRStockHolding instance and add it to the list
    BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
    stock2.purchasePrice = 12.19;
    stock2.currentPrice = 10.56;
    stock2.numberOfShares = 90;
    stock2.symbol = @"M";
    [stockList addObject:stock2];

    // create and initialize the third BNRStockHolding instance and add it to the list
    BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
    stock3.purchasePrice = 45.10;
    stock3.currentPrice = 49.51;
    stock3.numberOfShares = 210;
    stock3.symbol = @"IBM";
    [stockList addObject:stock3];
    
    // create and initialize a BNRForeignSTockHolding and add it to the list
    BNRForeignStockHolding *stock4 = [[BNRForeignStockHolding alloc] init];
    stock4.purchasePrice = 100;
    stock4.currentPrice = 150;
    stock4.conversionRate = 1.5;
    stock4.numberOfShares = 100;
    stock4.symbol = @"BTR";
    [stockList addObject:stock4];
    
    // create and initialize a BNRForeignSTockHolding and add it to the list
    BNRForeignStockHolding *stock5 = [[BNRForeignStockHolding alloc] init];
    stock5.purchasePrice = 100;
    stock5.currentPrice = 125;
    stock5.conversionRate = 1.1;
    stock5.numberOfShares = 50;
    stock5.symbol = @"SNCF";
    [stockList addObject:stock5];
    
    // create and initialize a BNRForeignSTockHolding and add it to the list
    BNRForeignStockHolding *stock6 = [[BNRForeignStockHolding alloc] init];
    stock6.purchasePrice = 100;
    stock6.currentPrice = 100;
    stock6.conversionRate = 0.95;
    stock6.numberOfShares = 100;
    stock6.symbol = @"CP";
    [stockList addObject:stock6];
    
    // create the portfolio and add the stock holdings
    BNRPortfolio *portfolio = [[BNRPortfolio alloc] initWithHoldings:stockList];
    
    // add another stock to holdings
    [portfolio addHolding:125.0 currentPrice:156.75 numberOfShares:300 symbol:@"LUC"];
    
    // remove a holding
    [portfolio removeHolding:@"BTR"]; // will find this one & delete it
    [portfolio removeHolding:@"FRED"]; // won't be able to find this one
    
    for (BNRStockHolding *stock in [portfolio getHoldings])
    {
      NSLog(@"Stock %@: %d shares, purchase price: %.2f, current price: %.2f, cost: %.2f, value: %.2f\n", stock.symbol, stock.numberOfShares, stock.purchasePrice, stock.currentPrice, [stock costInDollars], [stock valueInDollars]);
    }
    NSLog(@"Portfolio total value: %.2f", [portfolio totalValue]);
    
  } // autoreleasepool
    return 0;
} // main()
