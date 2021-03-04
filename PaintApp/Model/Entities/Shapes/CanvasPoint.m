//
//  CanvasPoint.m
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import <Foundation/Foundation.h>
#import "CanvasPoint.h"

@implementation CanvasPoint {
    UIBezierPath *path;
}

- (Shape *)initWithStartPoint:(CGPoint)point isFilled:(BOOL)isFilled {
    self = [super initWithStartPoint:point isFilled:isFilled];
    if (self) {
        path = [UIBezierPath bezierPath];
        [path setLineWidth:8];
        [path moveToPoint:self.startPoint];
    }
    return self;
}

- (void)drawShape:(CGContextRef)context {
    CGContextFillEllipseInRect(context, CGRectMake(self.startPoint.x - 4, self.startPoint.y - 4, 8, 8));
    [path stroke];
    CGContextFillEllipseInRect(context, CGRectMake(self.endPoint.x - 4, self.endPoint.y - 4, 8, 8));
}

- (void)updateShape:(CGPoint)currentPoint {
    self.endPoint = currentPoint;
    [path addLineToPoint:self.endPoint];
}

@end
