//
//  main.m
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Pokemon.h"
#import "TypePokemon.h"
#import "ObjectsFactory.h"
#import "TypePokemon.h"
#import "PokemonWorld.h"

@class PokemonWorld;



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PokemonWorld *world = [[PokemonWorld alloc]init];
        
        
        
        
        
        NSNumber * level = [NSNumber numberWithInt:10];
        NSNumber * exp = [NSNumber numberWithInt:25];
        Pokemon * pokemon = [ObjectsFactory getPokemonName:@"Pikachu" type: FIRE level:level experience:exp];
        
        NSLog(@"%@", pokemon);
    
        [world runMenu];
        
        
    }
    return 0;
}


