//
//  main.m
//  ChallengeOO
//
//  Created by Isaias Fernandes on 16/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Pokemon.h"
#import "TypePokemon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        Player *p  = [[Player alloc] init];
        
        [p setName];
        
        NSLog(@"%@", [p name]);
        
        
        
    }
    return 0;
}
