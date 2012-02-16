#import <Foundation/Foundation.h>

@interface Calculator:NSObject
    -(double) add: (double) a;
    -(double) subtract: (double) s;
    -(double) multiply: (double) m;
    -(double) divide: (double) d;

    -(void) setAccumulator: (double) n;
    -(double) accumulator;
    -(void) clear;
@end

@implementation Calculator {
    double accumulator;
}

-(void) setAccumulator: (double) n {
    accumulator = n;
}

-(void) clear {
    accumulator = 0;
}

-(double) add: (double) a {
    return accumulator += a;
}

-(double) subtract: (double) s {
    return accumulator -= s;
}

-(double) multiply: (double) m {
    return accumulator *= m;
}

-(double) divide: (double) d {
    return accumulator /= d;
}

-(double) accumulator {
    return accumulator;
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc;
        deskCalc = [[Calculator alloc] init];
        [deskCalc setAccumulator: 100];
        [deskCalc add: 200];
        [deskCalc divide: 15];
        [deskCalc subtract: 10];
        [deskCalc multiply: 7];
        NSLog(@"Result is %f", [deskCalc accumulator]);

        //NSLog(@"%.2f Fahrenheit is %.2f Celsius", 27.0, (27.0 - 32.0) / 1.8);
    }
    return 0;
}
