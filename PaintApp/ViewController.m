//
//  ViewController.m
//  PaintApp
//
//  Created by Sergey on 25.02.21.
//

#import "PaintViewController.h"
#import "CanvasView.h"

#import "Shape.h"
#import "Ellipse.h"
#import "Rectangle.h"
#import "Line.h"
#import "Star.h"
#import "CanvasPoint.h"

#import "Model.h"
#import "View.h"


@interface PaintViewController ()

//@property (nonatomic, strong) CanvasView *viewMain;
//@property (nonatomic, strong) UISwitch *fillSwitch;
//@property (nonatomic, strong) UILabel *fillSwitchLabel;
//@property (nonatomic, strong) UITabBar *figuresTabBar;
//@property (nonatomic, strong) NSArray *tbItems;

@property (nonatomic, strong) View *viewMain;

//@property (nonatomic, strong) Model *model;

@end

@implementation PaintViewController

- (void)loadView {
    [super loadView]; //unnessecary
    _viewMain = [[View alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_viewMain];
//    _viewMain = [[CanvasView alloc] init];
//    _viewMain.delegate = self;
//
//    _fillSwitch = [[UISwitch alloc] init];
//    _fillSwitchLabel = [[UILabel alloc] init];
//    _figuresTabBar = [[UITabBar alloc] init];
//    UITabBarItem * itemNew1 = [[UITabBarItem alloc] initWithTitle:@"Point" image:[UIImage imageNamed:@"PointerIcon"] tag:0];
//    UITabBarItem * itemNew2 = [[UITabBarItem alloc] initWithTitle:@"Line" image:[UIImage imageNamed:@"LineIcon"] tag:1];
//    UITabBarItem * itemNew3 = [[UITabBarItem alloc] initWithTitle:@"Rectangle" image:[UIImage imageNamed:@"RectangleIcon"] tag:2];
//    UITabBarItem * itemNew4 = [[UITabBarItem alloc] initWithTitle:@"Ellipse" image:[UIImage imageNamed:@"EllipseIcon"] tag:3];
//    UITabBarItem * itemNew5 = [[UITabBarItem alloc] initWithTitle:@"Star" image:[UIImage imageNamed:@"StarIcon"] tag:4];
//
//    _tbItems = [NSArray arrayWithObjects:itemNew1, itemNew2, itemNew3, itemNew4, itemNew5, nil];
//
//    [_figuresTabBar setItems:_tbItems];
//    _figuresTabBar.itemPositioning = UITabBarItemPositioningFill;
//    [_figuresTabBar setSelectedItem:_tbItems[0]];
//
//    _fillSwitchLabel.text = @"Fill figure";
//
//    [self.view addSubview:_viewMain];
//    [self.view addSubview:_fillSwitchLabel];
//    [self.view addSubview:_fillSwitch];
//    [self.view addSubview:_figuresTabBar];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setupView];
//    _model = [[Model alloc] init];
//    _viewMain.shapes = _model.shapes;
//    _viewMain.currentShape = _model.currentShape;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
//    const CGRect screen = self.view.bounds;
//
//    _viewMain.frame = CGRectMake(0, 0, screen.size.width, screen.size.height/1.25);
//    _fillSwitchLabel.frame = CGRectMake(10, _viewMain.frame.size.height, screen.size.width - 61, 31);
//    _fillSwitch.frame = CGRectMake(_fillSwitchLabel.frame.size.width, _fillSwitchLabel.frame.origin.y, 0, 0);
//    _figuresTabBar.frame = CGRectMake(0, _fillSwitchLabel.frame.origin.y + _fillSwitchLabel.frame.size.height, screen.size.width, screen.size.height - _fillSwitchLabel.frame.origin.y - _fillSwitchLabel.frame.size.height);
//
//    const int tabBarHeight = _figuresTabBar.frame.size.height * 1.05;
//
//    for (UITabBarItem *item in _tbItems) {
//        const int inset = item.image.size.height - tabBarHeight;
//        item.imageInsets = UIEdgeInsetsMake(inset, 0, inset, 0);
//    }
    
}

- (void)setupView {
    self.view.backgroundColor = UIColor.whiteColor;
}


//- (void)addShapeToCanvas {
//    NSLog(@"add shape");
//    [_model addShapeToArray:];
//    return;
//}

- (void)createShapeWithPoint:(CGPoint)point canvas:(CanvasView *)sender {
    NSLog(@"createShape");
    NSLog(@"%f", point.x);
    
//    Shape *currentShape;
//    BOOL filledFlag = _fillSwitch.on;
//
//    switch (_figuresTabBar.selectedItem.tag) {
//        case 0:
//            currentShape = [[CanvasPoint alloc] initWithStartPoint:point isFilled:filledFlag];
//            break;
//        case 1:
//            currentShape = [[Line alloc] initWithStartPoint:point isFilled:filledFlag];
//            break;
//        case 2:
//            currentShape = [[Rectangle alloc] initWithStartPoint:point isFilled:filledFlag];
//            break;
//        case 3:
//            currentShape = [[Ellipse alloc] initWithStartPoint:point isFilled:filledFlag];
//            break;
//        case 4:
//            currentShape = [[Star alloc] initWithStartPoint:point isFilled:filledFlag];
//            break;
//        default:
//            break;
//    }
//
//    [_model setCurrentShape:currentShape];
//    _viewMain.currentShape = _model.currentShape;
    
//    return currentShape; //[[Star alloc] initWithStartPoint:point isFilled:YES];
}

- (void)addShapeToCanvas:(CGPoint)point {
    NSLog(@"add shape");
//    [_model addShapeToArray:point];
    return;
}

- (void)updateShapeEndPoint:(CGPoint)point {
//    [_model updateCurrentShape:point];
}

@end

