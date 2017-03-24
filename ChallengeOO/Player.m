//  File: Player.m

#import "Player.h"

#define NAME_SIZE 40


@implementation Player


@synthesize name = _name;
@synthesize pokemons = _pokemons;
@synthesize city = _city;


- (instancetype)init
{
    self = [super init];
    if (self) {
        _pokemons = [[NSMutableArray alloc] init];
    }
    
    return self;
}


- (void) findPokemon {
    
    do{
        Pokemon * pokemon = [[ObjectsFactory getRandomsPokemons: 1] objectAtIndex: 0];
        
        NSLog(@"\nA wild pokemon has appeared");
        NSLog(@"\n%@", pokemon);
        
        if([[Scanner NSStringScanner: 2 instruction:@"\nDeseja capturar este pokemon?\n 1 - Sim\n 2 - Não"] isEqualToString:@"1"]){
            if([self catchPokemon]) {
                if([_pokemons count] < 5){
                    NSLog(@"\nCongratz, you caught %@",pokemon.name);
                    [_pokemons addObject: pokemon];
                }else {
                    NSLog(@"\nBag full!");
                }
            }else{
                NSLog(@"\nThe Pokemon run away");
            }
        }
    }while([_pokemons count] < 5);
}

- (BOOL) catchPokemon {
    
    int randomNumber = arc4random() % 100;
    int anotherRandomNumber = arc4random() % 100;
    
    return (randomNumber > anotherRandomNumber);
}


-(NSArray *) sortPokemons {
    
    NSArray * sortedPokemons = [_pokemons sortedArrayUsingSelector:@selector(compare:)];
    return sortedPokemons;
}


@end
