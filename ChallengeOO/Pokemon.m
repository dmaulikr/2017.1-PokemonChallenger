//
//  Pokemon.m
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "Pokemon.h"
#import "TypePokemon.h"
@implementation Pokemon

-(PokemonType) type {
    return type;
}
-(NSNumber *) level {
    return level;
}

-(NSNumber *) exp {
    return exp;
}

-(NSString *) name {
    return name;
}

-(void) type : (PokemonType) currentType {
    type = currentType;
}
-(void) level : (NSNumber*) currentLevel {
    level = currentLevel;
}

-(void) exp : (NSNumber*)currentExp {
    exp = currentExp;
}
-(void) name : (NSString*)currentName {
    name = currentName;
}

@end
