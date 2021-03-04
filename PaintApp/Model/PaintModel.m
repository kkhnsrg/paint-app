//
//  PaintModel.m
//  PaintApp
//
//  Created by Sergey on 2.03.21.
//

#import <Foundation/Foundation.h>
#import "PaintModel.h"

#import "CanvasPoint.h"

@implementation PaintModel 

- (instancetype)init
{
    self = [super init];
    if (self) {
        _shapes = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)addShapeToArray:(CGPoint)point {
    [_shapes addObject:_currentShape];
    _currentShape = nil;
    return _shapes;
}

- (Shape *)updateCurrentShape:(CGPoint)point {
    [_currentShape updateShape:point];
    return _currentShape;
}

- (Shape *)addCurrentShape:(Shape *)shape {
    _currentShape = shape;
    return _currentShape;
}

@end
