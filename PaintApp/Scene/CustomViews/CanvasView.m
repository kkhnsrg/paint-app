//
//  CanvasView.m
//  PaintApp
//
//  Created by Sergey on 26.02.21.
//

#import <Foundation/Foundation.h>
#import "CanvasView.h"

#import "Drawable.h"

@implementation CanvasView

@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = UIColor.lightGrayColor;
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    CGPoint point = [[touches anyObject] locationInView:self];
    [delegate didTouchBeginAtPoint:point];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    CGPoint point = [[touches anyObject] locationInView:self];
    [delegate didTouchMovedToPoint:point];
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    CGPoint point = [[touches anyObject] locationInView:self];
    [delegate didTouchEndAtPoint:point];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 8);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetStrokeColorWithColor(context, UIColor.blackColor.CGColor);
    CGContextSetFillColorWithColor(context, UIColor.blackColor.CGColor);
    
    for (Shape *shape in delegate.shapes) {
        [shape drawShape:context];
        CGContextStrokePath(context);
    }
    
    if (delegate.currentShape) {
        CGContextSetStrokeColorWithColor(context, UIColor.darkGrayColor.CGColor);
        CGContextSetFillColorWithColor(context, UIColor.darkGrayColor.CGColor);
        [delegate.currentShape drawShape:context];
        CGContextStrokePath(context);
    }
    
}

@end
