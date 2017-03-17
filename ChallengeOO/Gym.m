//
//  Gym.m
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "Gym.h"

@implementation Gym
-(Player *) gymLeader {
    return gymLeader;
}
-(NSString *) name{
    return name;
}
-(NSString *) local {
    return local;
}
-(void) setGymLeader : (Player *) currentGymLeader{
    gymLeader = currentGymLeader;
}
-(void) setName : (NSString *) currentName {
    name =currentName;
}
-(void) setLocal : (NSString *) currentLocal {
    local = currentLocal;
}

@end
