//
//  Player.h
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "ObjectsFactory.h"

@interface Player : NSObject

@property(nonatomic) NSMutableArray * pokemons;
@property(nonatomic) NSString * name;
@property(nonatomic) NSString * city;


-(NSArray *) sortPokemons;
- (void) findPokemon;


@end
