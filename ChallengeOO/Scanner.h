//
//  Scanner.h
//  ChallengeOO
//
//  Created by Miguel Pimentel on 21/03/17.
//  Copyright © 2017 Isaias Fernandes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Scanner : NSObject
+ (NSString *) NSStringScanner: (int) sizeOfExpression;
+ (NSString *) NSStringScanner: (int) sizeOfExpression instruction : (NSString*) instruction;

@end
