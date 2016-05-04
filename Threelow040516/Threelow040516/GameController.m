//
//  GameController.m
//  Threelow040516
//
//  Created by Yasmin Ahmad on 2016-05-04.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(instancetype)init{
    if (self = [super init]) {
        
        _dice = [NSMutableArray arrayWithArray:@[[[Dice alloc]init],
                                                 [[Dice alloc]init],
                                                 [[Dice alloc]init],
                                                 [[Dice alloc]init],
                                                 [[Dice alloc]init],
                                                 ]];
        
      
        _heldDice = [[NSMutableArray alloc] init];
        
    }
    
    return self;
}


-(void)roll{
    for (NSInteger i = 0; i < self.dice.count; ++i) {
        Dice *dice = self.dice[i];
//        if (![self.heldDice containsObject:dice]) {
        [dice randomize];
//        }
        NSLog(@"Die %ld = %ld", (long)i +1, dice.diceValue);
    }
    
}


-(void)holdDie:(NSInteger)dieIdx {
    dieIdx = dieIdx -1;
    Dice *die = self.dice[dieIdx];
    //[self.dice removeObjectAtIndex:dieIdx];
    [self.heldDice addObject:die];
    
  
    int i;
    int sum;
    int value;
    sum = 0;
    value = 0;
        
        for (i = 0; i < [_heldDice count]; i++) {
            value = (int)[[_heldDice objectAtIndex:i] diceValue];
            sum += value;
        }
    
    NSLog(@"Your score is %d", sum); 
       
    }
    
-(void)reset{
    
    
    
    
}

@end
