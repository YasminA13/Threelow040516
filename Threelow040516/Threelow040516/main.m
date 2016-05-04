//
//  main.m
//  Threelow040516
//
//  Created by Yasmin Ahmad on 2016-05-04.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSArray<Dice*> *dice = @[[[Dice alloc]init],
                          [[Dice alloc]init],
                          [[Dice alloc]init],
                          [[Dice alloc]init],
                          [[Dice alloc]init],
                          ];
        
        char inputChars[10];

        while (true) {
       
        printf("If you want to play, type in 'roll'");
        fgets(inputChars, 10, stdin);
        NSString *playerRolled = [NSString stringWithUTF8String:inputChars];
            playerRolled = [playerRolled stringByReplacingOccurrencesOfString:@"\n" withString:@""]; 
        
        
        if ([playerRolled isEqualToString:@"roll"]) {
            
        for (Dice *die in dice)
            [die rollDice];
        
        for (int idx = 0; idx < [dice count]; idx++) {
            NSLog(@"Die %d = %ld", idx + 1, dice[idx].diceValue);
        }
        }
        }
    }
    return 0;
}
