//
//  Shape.h
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import "Drawable.h"
#import <UIKit/UIKit.h>

@interface Shape : NSObject<Drawable>

-(Shape*) initWithStartPoint: (CGPoint) point isFilled:(BOOL) isFilled;

@end

typedef NS_ENUM(NSUInteger, ShapeEnum) {
    PointShape,
    LineShape,
    RectangleShape,
    EllipseShape,
    StarShape,
};
