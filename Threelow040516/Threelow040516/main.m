//
//  main.m
//  Threelow040516
//
//  Created by Yasmin Ahmad on 2016-05-04.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
   
        GameController *gameController = [[GameController alloc]init];
        
        char inputChars[10];

        while (true) {
       
        printf("If you want to play, type in 'roll'");
        fgets(inputChars, 10, stdin);
        NSString *playerRolled = [NSString stringWithUTF8String:inputChars];
            playerRolled = [playerRolled stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        
        if ([playerRolled isEqualToString:@"roll"]) {
        
            [gameController roll];
            
            
            printf("Which die do you wish to remove. Enter die: ");
            fgets(inputChars, 10, stdin);
            NSString *removeDie = [NSString stringWithUTF8String:inputChars];
            removeDie = [removeDie stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            [gameController holdDie:[removeDie integerValue]];
            
            BOOL running = YES;
            
            printf("Do you want to hold another dice?");
            fgets(inputChars, 10, stdin);
            NSString *holdAnother = [NSString stringWithUTF8String:inputChars];
            holdAnother = [holdAnother stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            
            if ([holdAnother isEqualToString:@"yes"]) {
                
                printf("Enter another die");
                fgets(inputChars, 10, stdin);
                NSString *removeDie = [NSString stringWithUTF8String:inputChars];
                removeDie = [removeDie stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                [gameController holdDie:[removeDie integerValue]];

            }
            
            
            }
                
            
        }
    }
    return 0;
}
