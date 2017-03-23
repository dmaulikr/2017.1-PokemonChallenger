//  File: PokemonWorld.m
//  ChallengeOO
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.


#import "PokemonWorld.h"
#import "ObjectsFactory.h"
#import "Player.h"


@implementation PokemonWorld

@synthesize pokemons = _pokemons;
@synthesize players = _players;
@synthesize gymnasiums = _gymnasiums;
@synthesize gamer = _gamer;


- (instancetype)init
{
    self = [super init];
    if (self) {
        _pokemons = [[NSMutableArray alloc] init];
        _players = [[NSMutableArray alloc] init];
        _gymnasiums = [[NSMutableArray alloc] init];
        _gamer = [[Player alloc] init];
    }
    return self;
}


- (void) loadingObject {
    _pokemons = [ObjectsFactory getPokemons];
    _players = [ObjectsFactory getPlayers];
    _gymnasiums = [ObjectsFactory getGymnasiums];
}


- (void) runMenu {
    
    NSString * gameString =  @"\t\t\t\t\t\t\t\tPOKEMON GAME";
    //     [gameString appendString: @""];

    
//    [gameString appendString: @""];
//    
    
    NSLog(@"%@", gameString);
    _gamer = [ObjectsFactory createPlayerWithValidation  ];
    
    NSLog(@"Pofessor OAK: Let`s start by catching some pokemons\n");
    [_gamer findPokemon];
    
    
}


@end
