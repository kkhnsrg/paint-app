//
//  PaintViewController.m
//  PaintApp
//
//  Created by Sergey on 25.02.21.
//

#import "PaintViewController.h"
#import "PaintModel.h"
#import "PaintView.h"

#import "Shape.h"
#import "ShapeFactory.h"


@implementation PaintViewController

PaintView *mainView;
PaintModel *model;

- (void)loadView {
    mainView = [[PaintView alloc] init];
    self.view = mainView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [mainView setViewController:self];
    model = [[PaintModel alloc] init];
}

- (Shape *)createShape:(NSInteger)shapeTag startPoint:(CGPoint)point isFilled:(BOOL)isFilled {
    
    Shape *currentShape = [ShapeFactory.shared createShapeByTag:shapeTag startPoint:point isFilled:isFilled];
    [model setCurrentShape:currentShape];
    return currentShape;
}

- (Shape *)updateShape:(CGPoint)endPoint {
    Shape *shape = [model updateCurrentShape:endPoint];
    return shape;
}

- (NSArray *)addShapeToCanvas:(CGPoint)endPoint {
    return [model addShapeToArray:endPoint];
}

@end

