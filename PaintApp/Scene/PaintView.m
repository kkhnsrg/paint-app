//
//  PaintView.m
//  PaintApp
//
//  Created by Sergey on 3.03.21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PaintView.h"
#import "CanvasView.h"
#import "PaintViewController.h"

@implementation PaintView

@synthesize shapes;
@synthesize currentShape;

PaintViewController *viewController;


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;

        _canvasView = [[CanvasView alloc] init];
        _canvasView.delegate = self;
        
        _fillSwitchLabel = [[UILabel alloc] init];
        _fillSwitchLabel.text = @"Fill figure";
        _fillSwitch = [[UISwitch alloc] init];
        
        _shapesTabBar = [[UITabBar alloc] init];
        UITabBarItem * itemNew1 = [[UITabBarItem alloc] initWithTitle:@"Point" image:[UIImage imageNamed:@"PointerIcon"] tag:PointShape];
        UITabBarItem * itemNew2 = [[UITabBarItem alloc] initWithTitle:@"Line" image:[UIImage imageNamed:@"LineIcon"] tag:LineShape];
        UITabBarItem * itemNew3 = [[UITabBarItem alloc] initWithTitle:@"Rectangle" image:[UIImage imageNamed:@"RectangleIcon"] tag:RectangleShape];
        UITabBarItem * itemNew4 = [[UITabBarItem alloc] initWithTitle:@"Ellipse" image:[UIImage imageNamed:@"EllipseIcon"] tag:EllipseShape];
        UITabBarItem * itemNew5 = [[UITabBarItem alloc] initWithTitle:@"Star" image:[UIImage imageNamed:@"StarIcon"] tag:StarShape];
        _shapesTabBarItems = [NSArray arrayWithObjects:itemNew1, itemNew2, itemNew3, itemNew4, itemNew5, nil];
        [_shapesTabBar setItems:_shapesTabBarItems];
        _shapesTabBar.itemPositioning = UITabBarItemPositioningCentered;
        [_shapesTabBar setSelectedItem:_shapesTabBarItems[0]];
                
        [self addSubview:_canvasView];
        [self addSubview:_fillSwitchLabel];
        [self addSubview:_fillSwitch];
        [self addSubview:_shapesTabBar];
    }
    return self;
}

- (void)layoutSubviews {
    
    const CGRect screen = self.bounds;
    const float canvasSizeMultiplier = 0.85;
    
    _canvasView.frame = CGRectMake(0, 0, screen.size.width, screen.size.height * canvasSizeMultiplier);
    _fillSwitchLabel.frame = CGRectMake(10, _canvasView.frame.size.height, screen.size.width - 61, 31);
    _fillSwitch.frame = CGRectMake(_fillSwitchLabel.frame.size.width, _fillSwitchLabel.frame.origin.y, 0, 0);
    _shapesTabBar.frame = CGRectMake(0, _fillSwitchLabel.frame.origin.y + _fillSwitchLabel.frame.size.height, screen.size.width, screen.size.height - _fillSwitchLabel.frame.origin.y - _fillSwitchLabel.frame.size.height);
    
    const float tabBarHeight = _shapesTabBar.frame.size.height;

    for (UITabBarItem *item in _shapesTabBarItems) {
        const float verticalItemInset = (tabBarHeight - item.image.size.height) * 2;
        item.imageInsets = (UIEdgeInsets){ .top = verticalItemInset, .left = 0, .bottom = verticalItemInset, .right = 0 };
    }
}

- (void)setViewController:(PaintViewController *)vc {
    viewController = vc;
}

- (void)didTouchEndAtPoint:(CGPoint)point {
    shapes = [viewController addShapeToCanvas:point];
    currentShape = nil;
}

- (void)didTouchBeginAtPoint:(CGPoint)point {
    self.currentShape = [viewController createShape:_shapesTabBar.selectedItem.tag startPoint:point isFilled:_fillSwitch.on];
}

- (void)didTouchMovedToPoint:(CGPoint)point {
    self.currentShape = [viewController updateShape:point];
}

@end
