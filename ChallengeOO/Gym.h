//
//  Gym.h
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@interface Gym : NSObject
{
    Player * gymLeader;
    NSString * name;
    
}

-(Player *) gymLeader;
-(NSString *) name;
-(NSString *) local;
-(void) setGymLeader : (Player *) currentLeader;
-(void) setName : (NSString *) currentName;
-(void) setLocal : (NSString *) currentLocal;

@end
