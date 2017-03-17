//
//  Player.h
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
{
    NSMutableArray * pokemons;
    NSString * name;
    NSString * city;
    
}

-(NSMutableArray *) pokemons;
-(NSString *) name;
-(NSString *) city;
-(void) setPokemons : (NSMutableArray *) currentPokemons;
-(void) setName : (NSString *) currentName;
-(void) setCity : (NSString *) currentCity;
@end
