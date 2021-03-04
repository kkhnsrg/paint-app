//
//  ViewController.h
//  PaintApp
//
//  Created by Sergey on 25.02.21.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"

@interface PaintViewController : UIViewController<CanvasViewDelegate>

//@property (nonatomic, assign) UIStackView* stackView;
//@property (nonatomic, assign) UIButton* testButton;

- (void)setupView;

@end

