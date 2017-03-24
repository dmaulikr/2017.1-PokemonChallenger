//  File: Player.h
//  Description: Represent a Player and its actions


#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "ObjectsFactory.h"

@interface Player : NSObject

@property(nonatomic) NSMutableArray * pokemons;
@property(nonatomic) NSString * name;
@property(nonatomic) NSString * city;


-(NSArray *) sortPokemons;
- (void) findPokemon;


@end
