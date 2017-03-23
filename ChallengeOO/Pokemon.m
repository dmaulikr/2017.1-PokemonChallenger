//
//  Pokemon.m
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import "Pokemon.h"
#import "TypePokemon.h"

@implementation Pokemon

@synthesize exp =_exp;
@synthesize level = _level;
@synthesize type = _type;
@synthesize name = _name;



- (NSString *)description
{
    return [NSString stringWithFormat:@"Nome: %@/n Nivel: %@/n", _name, _level];
}

- (NSComparisonResult)compare:(Pokemon *)otherObject {
    return [otherObject.level compare: self.level];
}

-(void) setLevel : (NSNumber *) currentLevel {
   int aux = _level.intValue;
    
   aux += currentLevel.intValue;
    
    _level = [NSNumber numberWithInt: aux];
}
-(void) setExp : (NSNumber*)currentExp {
    int aux = _exp.intValue;
    aux += currentExp.intValue;
    
    _exp = [NSNumber numberWithInt: aux];
    
    
    if(_exp.intValue >= 100) {
        [self setLevel:[NSNumber numberWithInt: 1]];
    
        _exp = [NSNumber numberWithInt: _exp.intValue - 100];
    }
    
}


@end
