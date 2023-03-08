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

- (NSString *) setDotControl : (int) myValue {
    string myReturn = calc -> setDotControl(myValue);
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) myClear {
    string myReturn = calc -> myClear();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) myNegative {
    string myReturn = calc -> myNegative();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) backSpace {
    string myReturn = calc -> backSpace();
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

- (NSString *) sendNumber : (NSString *) mySend {
    string myReturn = calc -> sendNumber([mySend UTF8String]);
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) sendOperator : (int) mySend {
    string myReturn = calc -> sendOperator(mySend);
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) sendDot {
    string myReturn = calc -> sendDot();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

- (NSString *) getResult {
    string myReturn = calc -> getResult();
    return [NSString stringWithUTF8String:myReturn.c_str()];
}

@end
