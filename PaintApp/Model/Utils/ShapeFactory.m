//
//  ShapeFactory.m
//  PaintApp
//
//  Created by Sergey on 3.03.21.
//

#import <Foundation/Foundation.h>
#import "ShapeFactory.h"
#import "Ellipse.h"
#import "Rectangle.h"
#import "Line.h"
#import "Star.h"
#import "CanvasPoint.h"

@implementation ShapeFactory

+ (id)shared {
    static ShapeFactory *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

- (Shape *)createShapeByTag:(NSInteger)shapeTag startPoint:(CGPoint)point isFilled:(BOOL)isFilled {
    
    Shape *currentShape;
    
    switch (shapeTag) {
        case PointShape:
            currentShape = [[CanvasPoint alloc] initWithStartPoint:point isFilled:isFilled];
            break;
        case LineShape:
            currentShape = [[Line alloc] initWithStartPoint:point isFilled:isFilled];
            break;
        case RectangleShape:
            currentShape = [[Rectangle alloc] initWithStartPoint:point isFilled:isFilled];
            break;
        case EllipseShape:
            currentShape = [[Ellipse alloc] initWithStartPoint:point isFilled:isFilled];
            break;
        case StarShape:
            currentShape = [[Star alloc] initWithStartPoint:point isFilled:isFilled];
            break;
        default:
            [super doesNotRecognizeSelector:_cmd];
            break;
    }
    
    return currentShape;
}

@end
