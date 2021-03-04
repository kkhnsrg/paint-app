//
//  Line.m
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import <Foundation/Foundation.h>
#import "Line.h"

@implementation Line

- (void)drawShape:(CGContextRef)context {
    CGPoint points[2] = { self.endPoint, self.startPoint };
    CGContextAddLines(context, points, 2);
    CGContextStrokePath(context);
}

@end
