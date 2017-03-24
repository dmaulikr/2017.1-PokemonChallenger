//  File: Pokemon.h
//  Desctiption: Represent a gymnasium and your actions

#import <Foundation/Foundation.h>
#import "TypePokemon.h"

@interface Pokemon : NSObject

#pragma mark - Properties

@property(nonatomic) PokemonType type;
@property(nonatomic) NSNumber * level;
@property(nonatomic) NSNumber * exp;
@property(nonatomic) NSString * name;


#pragma mark - Setters

-(void) setLevel : (NSNumber*) currentLevel;
-(void) setExp : (NSNumber*)currentExp;


@end
