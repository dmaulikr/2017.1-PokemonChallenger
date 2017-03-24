//  File: PokemonWorld.h
//  Descrption: This class unify all objects that is required to play the game

#import <Foundation/Foundation.h>

@class Player;
@interface PokemonWorld : NSObject

/*! @brief This property knows gymnasium. */
@property(nonatomic) NSMutableArray * gymnasiums;

/*! @brief This property knows gamer. */
@property(nonatomic) Player *  gamer;


- (void) loadingObject;
- (void) runMenu;


@end
