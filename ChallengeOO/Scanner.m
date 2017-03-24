//  File: Scanner.m


#import "Scanner.h"

@implementation Scanner

+ (NSString *) NSStringScanner: (int) sizeOfExpression {
    
    char array[sizeOfExpression];
    scanf("%s", array);
    NSString * NSStringExpression = [NSString stringWithCString:array encoding:1];
    return NSStringExpression;

}

+ (NSString *) NSStringScanner: (int) sizeOfExpression instruction : (NSString*) instruction {

    NSLog(@"%@", instruction);
    return [self NSStringScanner: sizeOfExpression];
}

@end
