//  File: EnumTypePokemon.h
//  Description: Enumerate for pokemons

#import <Foundation/Foundation.h>

@interface TypePokemon : NSObject
   typedef enum {
       WATER = 1,
       FIRE,
       FLY
   }PokemonType;

@end
