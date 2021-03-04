//
//  Drawable.h
//  PaintApp
//
//  Created by Sergey on 1.03.21.
//

#import <UIKit/UIKit.h>

@protocol Drawable

@required
- (void)drawShape:(CGContextRef)context;
- (void)updateShape:(CGPoint)currentPoint;

@property (nonatomic) CGPoint startPoint;
@property (nonatomic) CGPoint endPoint;
@property (nonatomic) BOOL isFilled;

@end
