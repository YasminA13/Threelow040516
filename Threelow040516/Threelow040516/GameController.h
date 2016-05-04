//
//  GameController.h
//  Threelow040516
//
//  Created by Yasmin Ahmad on 2016-05-04.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"


@interface GameController : NSObject

@property (nonatomic) NSMutableArray<Dice*> *dice;
@property (nonatomic) NSMutableArray<Dice*> *heldDice;


-(void)holdDie:(NSInteger)dieIdx;
-(void)roll;
-(NSInteger)totalScore:(NSMutableArray*)array;
-(void)reset; 



@end
