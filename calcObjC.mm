#include "calcObjC.h"
#include "calc.hpp"

@implementation calcObjC {
    Calc *calc;
}

- (id) init {
    self = [super init];
    calc = new Calc();
    return self;
}

- (void) dealloc {
    delete calc;
}

- (void) setOouControl : (int) myValue {
    calc -> setOouControl(myValue);
}

- (void) setDotControl : (int) myValue {
    calc -> setDotControl(myValue);
}

- (NSString *) myClear {
    string myReturn = calc -> myClear();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) myNegative {
    string myReturn = calc -> myNegative();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) memoryRead {
    string myReturn = calc -> memoryRead();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (void) memoryWrite {
    calc -> memoryWrite();
}

- (NSString *) powTwo {
    string myReturn = calc -> powTwo();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) mySqrt {
    string myReturn = calc -> mySqrt();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

@end
