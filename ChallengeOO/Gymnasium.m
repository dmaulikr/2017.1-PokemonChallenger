//  FIle: Gymnasium.m
//  ChallengeOO
//
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.


#import "Gymnasium.h"
#import "Player.h"

@implementation Gymnasium

@synthesize name = _name;
@synthesize leader = _leader;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leader = [[Player alloc]init];
    }
    return self;
}




- (void) fightLeader: (Player *) challenger {
    
    NSArray * pokemonsLeader = _leader.sortPokemons;
    NSArray * pokemonsChallenger = challenger.sortPokemons;
    
    int leaderPoints = 0;
    int challengerPoints = 0;

    for (int i = 0; i < 3; i++) {
        if([self fightPokemonWithLeader: [pokemonsLeader objectAtIndex: i] challenger:[pokemonsChallenger objectAtIndex: i]]) {
            leaderPoints++;
        }
        else {
            challengerPoints++;
        }
    }

    if(challengerPoints > leaderPoints)
        NSLog(@"Congrats, you win!");
    else
        NSLog(@"Oh, try again ):");
        
}


//SE RETURN TRUE = LIDER GANHAR
-(BOOL) fightPokemonWithLeader: (Pokemon *) pokemonLeader challenger: (Pokemon *) pokemonChallenger {
    
//    
//   int challengerPoints =  0;
//   int leaderPoints = 0;
//    
   if((pokemonLeader.level.intValue - pokemonChallenger.level.intValue) >= 3) {
        return YES;
       
    } else if((pokemonChallenger.level.intValue - pokemonLeader.level.intValue) >= 3) {
        return NO;
    }

    BOOL fightForEqualsType = [self fightPokemonWithLeader: pokemonLeader challenger: pokemonChallenger];
    
    return fightForEqualsType;
   
    
    
}



- (BOOL) fightPokemonTypes: (Pokemon *) pokemonLeader challenger: (Pokemon *) pokemonChallenger{
  
    BOOL random = arc4random() > arc4random();
    
    if(pokemonLeader.type == pokemonChallenger.type)
        return random;
    
    if(pokemonLeader.type == WATER){
        if(pokemonChallenger.type == FIRE){
            return YES;
        }
        return NO;
    }
    if(pokemonLeader.type == FIRE){
        if(pokemonChallenger.type == FLY)
            return YES;
        return NO;
        
    }
    if(pokemonLeader.type == FLY){
        if(pokemonChallenger.type == WATER)
            return YES;
        return NO;
        
    }
    
    
    return YES;

}


@end
