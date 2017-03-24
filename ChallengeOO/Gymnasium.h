//  File: Gymnasium.h
//  Description: Represent a gymnasium and your actions

#import <Foundation/Foundation.h>
#import "ObjectsFactory.h"
#import "Gymnasium.h"


@class Player;

@interface Gymnasium : NSObject

/*! @brief This property knows name. */
@property(nonatomic) NSString * name;

/*! @brief This property knows leader. */
@property(nonatomic) Player * leader;

- (void) fightLeader: (Player *) challenger;


@end
