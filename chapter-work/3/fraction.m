#import <Foundation/Foundation.h>

@interface Fraction: NSObject
    -(void) print;
    -(void) setNumerator: (int) n;
    -(void) setDenominator: (int) d;
    -(int) numerator;
    -(int) denominator;
@end

@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print {
    NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDenominator: (int) d {
    denominator = d;
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction;

        myFraction = [Fraction alloc];
        myFraction = [myFraction init];

        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];

        NSLog(@"The value of the fraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
        //[myFraction print];
    }
    return 0;
}
