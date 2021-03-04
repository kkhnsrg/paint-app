//
//  PaintView.h
//  PaintApp
//
//  Created by Sergey on 3.03.21.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"

@interface PaintView : UIView<CanvasViewDelegate>

@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) UISwitch *fillSwitch;
@property (nonatomic, strong) UILabel *fillSwitchLabel;
@property (nonatomic, strong) UITabBar *shapesTabBar;
@property (nonatomic, strong) NSArray *shapesTabBarItems;

-(void) setViewController:(UIViewController *) vc;

@end
