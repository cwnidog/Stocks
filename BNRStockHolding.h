//
//  BNRStockHolding.h
//  Stocks
//
//  Created by John Leonard on 7/7/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchasePrice;
@property (nonatomic) float currentPrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *symbol;



- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares

@end
