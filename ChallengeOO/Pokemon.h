//
//  Pokemon.h
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TypePokemon.h"

@interface Pokemon : NSObject

@property(nonatomic) PokemonType type;
@property(nonatomic) NSNumber * level;
@property(nonatomic) NSNumber * exp;
@property(nonatomic) NSString * name;




//
//#pragma mark - Getters
//
//- (PokemonType) type;
//- (NSNumber *) level;
//- (NSNumber *) exp ;
//- (NSString *) name;
//
//#pragma mark - Setters
//
//- (void) type : (PokemonType) currentType;
//- (void) level : (NSNumber*) currentLevel;
//- (void) exp : (NSNumber*)currentExp;
//- (void) name : (NSString*)currentName;


@end
