//
//  Ellipse.m
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import <Foundation/Foundation.h>
#import "Ellipse.h"

@implementation Ellipse

- (void)drawShape:(CGContextRef)context  {
    CGRect rectangle = CGRectMake(self.startPoint.x, self.startPoint.y, self.endPoint.x-self.startPoint.x, self.endPoint.y-self.startPoint.y);
    CGContextAddEllipseInRect(context, rectangle);
    if(self.isFilled) {
        CGContextFillEllipseInRect(context, rectangle);
    }
}

@end
