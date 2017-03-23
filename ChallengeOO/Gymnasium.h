//  Gymnasium.h
//  ChallengeOO
//
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectsFactory.h"
#import "Gymnasium.h"


@class Player;

@interface Gymnasium : NSObject

@property(nonatomic) NSString * name;
@property(nonatomic) Player * leader;

- (void) fightLeader: (Player *) challenger;


@end
