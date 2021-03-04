//
//  Shape.m
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import <UIKit/UIKit.h>

@implementation Shape

@synthesize startPoint;
@synthesize endPoint;
@synthesize isFilled;

- (instancetype)initWithStartPoint:(CGPoint) point isFilled:(BOOL) isFilled {
    self = [super init];
    if (self) {
        self.startPoint = point;
        self.isFilled = isFilled;
    }
    return self;
}

- (void)drawShape:(CGContextRef)context {
    printf("drawing");
}

- (void)updateShape:(CGPoint)currentPoint {
    self.endPoint = currentPoint;
}


@end
