//
//  ObjectsFactory.h
//  ChallengeOO
//
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

//#import "Player.h"
//#import "Gymnasium.h"


#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "Scanner.h"

@class Gymnasium;
@class Player;

@interface ObjectsFactory : NSObject

+ (Pokemon *) getPokemonName : (NSString *) name type: (PokemonType) type level: (NSNumber *) lvl experience: (NSNumber *) exp;
+ (Player *) getPlayerWithPokemons : (NSMutableArray *) pokemons name: (NSString *) name city : (NSString *) city;
+ (NSMutableArray *) getPokemons;
+ (NSMutableArray *) getPlayers;
+ (Gymnasium *) getGymnasiumWithName : (NSString *)name Player: (Player *) Player;
+ (NSMutableArray *) getGymnasiums;
+ (NSMutableArray *) getRandomsPokemons: (int) numberOfPokemons;
+ (NSNumber *) convertIntToNSNumber: (int) i ;
+ (Player *) createPlayerWithValidation;

@end
