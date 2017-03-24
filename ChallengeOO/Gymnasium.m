//  File: Gymnasium.m

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

- (NSString *)description
{
    return [NSString stringWithFormat:@"\nGym Name: %@\nGym Leader: %@\n", _name, _leader];
}


/*!
     @brief It creater and define a fight between a leader and challenger player
     @discussion This methos not require any paramms
     @param challenger  present a challenger player that will fight with a leader
 */

- (void) fightLeader: (Player *) challenger {
    
    NSArray * pokemonsLeader = _leader.sortPokemons;
    NSArray * pokemonsChallenger = challenger.sortPokemons;
    
    int leaderPoints = 0;
    int challengerPoints = 0;

    for (int i = 0; i < 3; i++) {
        
        Pokemon * pokemonLeader = [pokemonsLeader objectAtIndex: i];
        Pokemon * pokemonChallenger = [pokemonsChallenger objectAtIndex: i];
        
        int cuurentLevelLeader = pokemonLeader.level.intValue;
        int cuurentLevelChallenger = pokemonChallenger.level.intValue;
        
        
        NSLog(@"\n------------------------- BATTLE 0%d -----------------------", i+1);
        
        NSLog(@"\n%@ choose %@ and Level %@\n", challenger.name, pokemonChallenger.name, pokemonChallenger.level);
        NSLog(@"\n%@ choose %@ and Level %@\n", _leader.name, pokemonLeader.name, pokemonLeader.level);
    
        if([self fightPokemonWithLeader: pokemonLeader challenger:pokemonChallenger]) {
            leaderPoints++;
            [pokemonLeader setExp:[NSNumber numberWithInt:35]];
            [pokemonChallenger setExp:[NSNumber numberWithInt:10]];
            NSLog(@"\n%@ with %@ won!\n", _leader.name, pokemonLeader.name);
        }
        else {
            challengerPoints++;
            
            NSLog(@"\n%@ with %@ won\n", challenger.name, pokemonChallenger.name);
            [pokemonLeader setExp:[NSNumber numberWithInt:10] ];
            [pokemonChallenger setExp:[NSNumber numberWithInt:35]];

        }
        
        
        [self checkIfChangeLevel:pokemonLeader level: cuurentLevelLeader];
        [self checkIfChangeLevel:pokemonChallenger level: cuurentLevelChallenger];
        
        NSLog(@"\nPreparing to Battle...");
        
        if(i != 2)
            [NSThread sleepForTimeInterval:5.0f];
        
        
    }

    if(challengerPoints > leaderPoints)
        NSLog(@"Congrats, you win!");
    else
        NSLog(@"Oh, try again ):");
        
}


//Return true if the leader won
-(BOOL) fightPokemonWithLeader: (Pokemon *) pokemonLeader challenger: (Pokemon *) pokemonChallenger {
 
   if((pokemonLeader.level.intValue - pokemonChallenger.level.intValue) >= 3) {
        return YES;
       
    } else if((pokemonChallenger.level.intValue - pokemonLeader.level.intValue) >= 3) {
        return NO;
    }

    BOOL fightForEqualsType = [self fightPokemonTypes: pokemonLeader challenger: pokemonChallenger];
    
    return fightForEqualsType;
   
    
    
}

- (void) checkIfChangeLevel: (Pokemon *) pokemon level: (int) lvl  {
    if(pokemon.level.intValue != lvl)
    {
        NSLog(@"\n******The pokemon %@ grow to level %@******\n", pokemon.name, pokemon.level);
        
    }
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
