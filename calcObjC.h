#ifndef calcObjC_h
#define calcObjC_h

#import <Foundation/Foundation.h>

@interface calcObjC : NSObject

- (void) setOouControl : (int) myValue;
- (NSString *) setDotControl : (int) myValue;
- (NSString *) myClear;
- (NSString *) myNegative;
- (NSString *) backSpace;
- (NSString *) memoryRead;
- (void) memoryWrite;
- (NSString *) powTwo;
- (NSString *) mySqrt;
- (NSString *) sendNumber : (NSString *) mySend;
- (NSString *) sendOperator : (int) mySend;
- (NSString *) sendDot;
- (NSString *) getResult;

@end

#endif /* calcObjC_h */
