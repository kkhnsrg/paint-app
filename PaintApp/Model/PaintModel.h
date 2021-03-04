//
//  PaintModel.h
//  PaintApp
//
//  Created by Sergey on 2.03.21.
//

#import "Shape.h"

@interface PaintModel : NSObject

@property (nonatomic, strong) NSMutableArray * shapes;
@property (nonatomic, strong) Shape * currentShape;

-(NSArray *) addShapeToArray:(CGPoint)point;
-(Shape *) updateCurrentShape:(CGPoint)point;
-(Shape *) addCurrentShape:(Shape*)shape;

@end
