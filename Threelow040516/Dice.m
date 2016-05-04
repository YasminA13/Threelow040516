//
//  Dice.m
//  Threelow040516
//
//  Created by Yasmin Ahmad on 2016-05-04.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)rollDice{
    
    _diceValue = 1 + arc4random_uniform(6); 
}

@end
