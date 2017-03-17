//
//  Player.m
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "Player.h"

@implementation Player
-(NSMutableArray *) pokemons {
    return pokemons;
}

-(NSString *) name {
    return name;
}

-(NSString *) city {
    return city;
}

-(void) setPokemons : (NSMutableArray *) currentPokemons {
    pokemons = currentPokemons;
}

-(void) setName : (NSString *) currentName {
    name = currentName;
}

-(void) setCity : (NSString *) currentCity {
    city = currentCity;
}
@end
