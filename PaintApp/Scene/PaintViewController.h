//
//  PaintViewController.h
//  PaintApp
//
//  Created by Sergey on 25.02.21.
//

#import <UIKit/UIKit.h>
#import "PaintView.h"
#import "PaintModel.h"
#import "Shape.h"


@interface PaintViewController: UIViewController

-(Shape *)createShape:(NSInteger)shapeTag startPoint:(CGPoint)point isFilled:(BOOL)isFilled;
-(Shape *)updateShape:(CGPoint)endPoint;
-(NSArray *)addShapeToCanvas:(CGPoint)endPoint;

@end

