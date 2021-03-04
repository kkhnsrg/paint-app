//
//  Star.m
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import <Foundation/Foundation.h>
#import "Star.h"

@implementation Star

- (void)drawShape:(CGContextRef)context {
    
    CGPoint center = CGPointMake((self.endPoint.x - self.startPoint.x) / 2 + self.startPoint.x, (self.endPoint.y - self.startPoint.y) / 2 + self.startPoint.y);
    CGFloat offsetY = (self.startPoint.y - self.endPoint.y) / 5;

    CGContextMoveToPoint(context, center.x, self.startPoint.y);
    CGContextAddLineToPoint(context, self.endPoint.x, self.endPoint.y + offsetY);
    CGContextAddLineToPoint(context, self.startPoint.x, self.endPoint.y + offsetY);
    CGContextAddLineToPoint(context, center.x, self.startPoint.y);
    
    CGContextMoveToPoint(context, center.x, self.endPoint.y);
    CGContextAddLineToPoint(context, self.startPoint.x, self.startPoint.y - offsetY);
    CGContextAddLineToPoint(context, self.endPoint.x, self.startPoint.y - offsetY);
    CGContextAddLineToPoint(context, center.x, self.endPoint.y);
    
    if(self.isFilled) {
        CGContextFillPath(context);
    }
}

@end
