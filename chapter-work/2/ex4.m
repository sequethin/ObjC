#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int val1, val2, diff;
        val1 = 87;
        val2 = 15;
        diff = val1 - val2;

        NSLog(@"The difference of %i and %i is %i", val1, val2, diff);
    }
    return 0;
}
