//
//  ObjectsFactory.m
//  ChallengeOO
//
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "ObjectsFactory.h"
#import "Pokemon.h"
#import "Player.h"
#import "Gymnasium.h"

#define NAME_SIZE 20

@implementation ObjectsFactory

+ (Pokemon *) getPokemonName : (NSString *) name type: (PokemonType) type level: (NSNumber *) lvl experience: (NSNumber *) exp {
    
    Pokemon * ret = [[Pokemon alloc]init];
    
    ret.name = name;
    ret.level = lvl;
    ret.type = type;
    ret.exp = exp;
    
    return ret;
    
}

+ (Player *) getPlayerWithPokemons : (NSMutableArray *) pokemons name: (NSString *) name city : (NSString *) city {
    
    Player *ret = [[Player alloc]init];
    ret.city = city;
    ret.name = name;
    ret.pokemons = pokemons;
    return ret;
}

+ (NSMutableArray *) getPokemons {
   
    NSMutableArray *ret = [[NSMutableArray alloc]init];
    
    [ret addObject: [self getPokemonName:@"Squirtle" type: WATER level: [self convertIntToNSNumber: 7] experience: [self convertIntToNSNumber: 50]]];
    [ret addObject: [self getPokemonName:@"Poliwag" type: WATER level: [self convertIntToNSNumber: 4] experience: [self convertIntToNSNumber: 10]]];
    [ret addObject: [self getPokemonName:@"Magikarp" type: WATER level: [self convertIntToNSNumber: 1] experience: [self convertIntToNSNumber: 25]]];
    
    [ret addObject: [self getPokemonName:@"Arcanine" type: FIRE level: [self convertIntToNSNumber: 10] experience: [self convertIntToNSNumber: 25]]];
    [ret addObject: [self getPokemonName:@"Magmar" type: FIRE level: [self convertIntToNSNumber: 8] experience: [self convertIntToNSNumber: 0]]];
    [ret addObject: [self getPokemonName:@"Charmander" type: FIRE level: [self convertIntToNSNumber: 14] experience: [self convertIntToNSNumber: 0]]];
    
    [ret addObject: [self getPokemonName:@"Pidgey" type: FLY level: [self convertIntToNSNumber: 9] experience: [self convertIntToNSNumber: 50]]];
    [ret addObject: [self getPokemonName:@"Zubat" type: FLY level: [self convertIntToNSNumber: 10] experience: [self convertIntToNSNumber: 99] ]];
    [ret addObject: [self getPokemonName:@"Dragonite" type: FLY level: [self convertIntToNSNumber: 16] experience: [self convertIntToNSNumber: 50] ]];
   
    
    [ret addObject: [self getPokemonName:@"Rapidash" type: WATER level: [self convertIntToNSNumber: 3] experience: [self convertIntToNSNumber: 33] ]];
    
    return ret;
}

+ (NSMutableArray *) getPlayers {
    
    NSMutableArray *ret =  [[NSMutableArray alloc]init];
    
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Ash" city: @"Pallet"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Brock" city: @"Viridian"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"James" city: @"Pweter City"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Jessie" city: @"Pweter City"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Misty" city: @"Saffron City"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Tracey" city: @"Lavander"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Max" city: @"Vermillion City"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Braguinha" city: @"Bepid City"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Professor Carvalho" city: @"Sao Jose City"]];
    [ret addObject: [self getPlayerWithPokemons: [self getRandomsPokemons: 5] name: @"Dawn" city: @"Vermillion City"]];


    return ret;
}

+ (Gymnasium *) getGymnasiumWithName : (NSString*) name Player: (Player*) Player {
    Gymnasium * gym = [[Gymnasium alloc] init];
    gym.name = name;
    gym.leader = Player;
    return gym;
}

+ (NSMutableArray *) getGymnasiums{
    NSMutableArray *ret =  [[NSMutableArray alloc]init];
    
    
    [ret addObject: [self getGymnasiumWithName:@"Saffron Gym" Player: [[self getPlayers] objectAtIndex: 0]]];
    [ret addObject: [self getGymnasiumWithName:@"Vermillion Gym" Player: [[self getPlayers] objectAtIndex: 4]]];
    [ret addObject: [self getGymnasiumWithName:@"Bepid Gym" Player: [[self getPlayers] objectAtIndex: 8]]];
    
    return ret;
     
}



+ (NSNumber *) convertIntToNSNumber: (int) i {
    return [NSNumber numberWithInt: i];
}



+ (NSMutableArray *) getRandomsPokemons: (int) numberOfPokemons {

    NSMutableArray * arrayOfPokemons = [self  getPokemons];
    
    int index = arc4random() % 10;


    NSMutableArray * ret = [[NSMutableArray alloc] init];
    
    for(int i = 0; i < numberOfPokemons; ++i)
        [ret addObject: [arrayOfPokemons objectAtIndex: index]];
    

    return ret;
}

+ (Player *) createPlayerWithValidation {
    
    NSString * PlayerName = [Scanner NSStringScanner: NAME_SIZE instruction: @"\n\n\n\t\t\tHey, Im professor Oak. Let start this game.\n Please enter your name: "];
    
    if(PlayerName.length < 3) {
        NSLog(@"This Player name is not valid");
    }
    
    Player * newPlayer = [[Player alloc] init];

    
    newPlayer.name = PlayerName;
    newPlayer.city = @"Pallet";
    
    
    return newPlayer;
    
}
@end

