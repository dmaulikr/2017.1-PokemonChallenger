//
//  PokemonWorld.m
//  ChallengeOO
//
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "PokemonWorld.h"

@implementation PokemonWorld

@synthesize pokemons = _pokemons;
@synthesize players = _players;
@synthesize gymnasiums = _gymnasiums;


- (instancetype)init
{
    self = [super init];
    if (self) {
        _pokemons = [[NSMutableArray alloc] init];
        _players = [[NSMutableArray alloc] init];
        _gymnasiums = [[NSMutableArray alloc] init];
    }
    return self;
}


@end
