//
//  CanvasView.h
//  PaintApp
//
//  Created by Sergey on 26.02.21.
//

#import <UIKit/UIKit.h>
#import "Shape.h"

@class CanvasView;

@protocol CanvasViewDelegate <NSObject>

@property (nonatomic, strong) NSArray * shapes;
@property (nonatomic, strong) Shape * currentShape;

- (void)didTouchBeginAtPoint:(CGPoint)point;
- (void)didTouchMovedToPoint:(CGPoint)point;
- (void)didTouchEndAtPoint:(CGPoint)point;

@end

@interface CanvasView : UIView

@property (nonatomic, weak) id <CanvasViewDelegate> delegate;

@end

