//
//  ObjectsFactory.h
//  ChallengeOO
//
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "Player.h"
#import "Gymnasium.h"

@interface ObjectsFactory : NSObject

+ (Pokemon *) getPokemonName : (NSString*) name type: (PokemonType) type level: (NSNumber *) lvl experience: (NSNumber*) exp;
+ (Player *) getPlayerWithPokemons : (NSMutableArray*) pokemons name: (NSString*) name city : (NSString*) city;
+ (NSMutableArray *) getPokemons;
+ (NSMutableArray *) getPlayers;
+ (Gymnasium *) getGymnasiumWithName : (NSString*) name player: (Player*) player;
+ (NSMutableArray *) getGymnasiums;

@end
