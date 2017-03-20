//
//  Player.m
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "Player.h"

#define NAME_SIZE 40


@implementation Player



- (NSMutableArray* ) pokemons {
    return pokemons;
}

- (NSString* ) name {
    return name;
}

- (NSString* ) city {
    return city;
}

- (void) setPokemons : (NSMutableArray* ) currentPokemons {
    pokemons = currentPokemons;
}

- (void) setName {
    name = [self scanPlayerWithValidation];
}

- (void) setCity : (NSString* ) currentCity {
    city = currentCity;
}


- (NSString* ) scanPlayerWithValidation {

    char PlayerName[NAME_SIZE];
    scanf("%s", PlayerName);
    NSString* newPlayerName = [NSString stringWithCString:PlayerName encoding:1];
    
    
    if(newPlayerName.length < 3) {
        NSLog(@"This player name is not valid");
    }
    
    
    
    return newPlayerName;
}

- (Boolean) catchPokemon {
    
    int randomNumber = arc4random() % 100;
    
    printf("%d", randomNumber);
    
    if(randomNumber > 30)
        return false;
    else
        return true;
}




@end
