//
//  Gymnasium.m
//  ChallengeOO
//
//  Created by Miguel Pimentel on 20/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "Gymnasium.h"

@implementation Gymnasium

@synthesize name = _name;
@synthesize leader = _leader;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leader = [[Player alloc]init];
    }
    return self;
}

@end
