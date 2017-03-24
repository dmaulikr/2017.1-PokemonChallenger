//  File: Scanner.h
//  Description: Simulates scanner methods

#import <Foundation/Foundation.h>

@interface Scanner : NSObject

+ (NSString *) NSStringScanner: (int) sizeOfExpression;
+ (NSString *) NSStringScanner: (int) sizeOfExpression instruction : (NSString*) instruction;

@end
