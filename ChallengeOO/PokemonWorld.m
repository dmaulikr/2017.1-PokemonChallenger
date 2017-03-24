//  File: PokemonWorld.m

#import "PokemonWorld.h"
#import "ObjectsFactory.h"
#import "Player.h"
#import "Scanner.h"
#import "Gymnasium.h"

@implementation PokemonWorld

/*! @brief This sinthesize knows gymnasium. */
@synthesize gymnasiums = _gymnasiums;

/*! @brief This synthesize knows gamer. */
@synthesize gamer = _gamer;


- (instancetype)init
{
    self = [super init];
    if (self) {
        _gymnasiums = [[NSMutableArray alloc] init];
        
        _gamer = [[Player alloc] init];
    }
    return self;
}

/*!
     @brief It loads some required objects
     @discussion This methos not require any params
*/
- (void) loadingObject {
    _gymnasiums = [ObjectsFactory getGymnasiums];
}


/*!
     @brief It runs the menu game
     @discussion This methos not require any params
 
*/
- (void) runMenu {
    [self loadingObject];
    NSString * gameString =  @"\t\t\t\t\t\t\t\tPOKEMON GAME";
    int goAhead = 0;

    NSLog(@"%@", gameString);
    _gamer = [ObjectsFactory createPlayerWithValidation  ];
    
    NSLog(@"Pofessor OAK: Let`s start by catching some pokemons\n");
    [_gamer findPokemon];
    do{
        [self showGyms];
        NSString *choose = [Scanner NSStringScanner:2];
        int opt = [choose intValue];
        Gymnasium *gymBattle = [_gymnasiums objectAtIndex: opt-1];
        [gymBattle fightLeader:_gamer];
        
        NSLog(@"\nDo you want to battle again ?\n1 - YES\n2 - NO\n");
        scanf("%d", &goAhead);
    }while(goAhead == 1);
}

-(void) showGyms {
    NSLog(@"Choose a Gym to battle");
    for (int i = 0; i < [_gymnasiums count]; i++) {
        NSLog(@"%d - %@", i+1, _gymnasiums[i]);
    }
}


@end
