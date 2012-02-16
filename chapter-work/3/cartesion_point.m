#import <Foundation/Foundation.h>

@interface CartesianPoint: NSObject
    -(void) setX: (int) x_in;
    -(void) setY: (int) y_in;
    -(void) print;
@end

@implementation CartesianPoint {
    int x;
    int y;
}
-(void) setX: (int) x_in {
    x = x_in;
}
-(void) setY: (int) y_in {
    y = y_in;
}
-(void) print {
    NSLog(@"(%i,%i)", x, y);
}
@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        CartesianPoint *testPoint;
        testPoint = [CartesianPoint alloc];
        testPoint = [testPoint init];
        [testPoint setX: 3];
        [testPoint setY: 12];
        [testPoint print];
    }
    return 0;
}
