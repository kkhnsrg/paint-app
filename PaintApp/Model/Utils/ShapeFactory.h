//
//  ShapeFactory.h
//  PaintApp
//
//  Created by Sergey on 3.03.21.
//

#import "Shape.h"

@interface ShapeFactory : NSObject

+ (id)shared;
- (Shape*)createShapeByTag:(NSInteger)shapeTag startPoint:(CGPoint)point isFilled:(BOOL)isFilled;

@end
