//
//  Rectangle.m
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle

- (void)drawShape:(CGContextRef)context {
    CGRect rectangle = CGRectMake(self.startPoint.x, self.startPoint.y, self.endPoint.x-self.startPoint.x, self.endPoint.y-self.startPoint.y);
    CGContextAddRect(context, rectangle);
    
    if(self.isFilled) {
        CGContextFillRect(context, rectangle);
    }
}

@end
