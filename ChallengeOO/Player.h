//
//  Player.h
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
{
    NSMutableArray * pokemons;
    NSString * name;
    NSString * city;
    
}

#pragma mark - Getters

- (NSMutableArray *) pokemons;
- (NSString *) name;
- (NSString *) city;

#pragma mark - Setter

- (void) setPokemons : (NSMutableArray* ) currentPokemons;
- (void) setName;
- (void) setCity : (NSString* ) currentCity;


- (Boolean) catchPokemon;



@end
