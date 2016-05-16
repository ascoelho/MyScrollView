//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Anthony Coelho on 2016-05-16.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)setUpSubviews {

        
        //    A red UIView at (20,20) x, y coordinates and with width 100 and height 100
        UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
        redView.backgroundColor = [UIColor redColor];
        //    A green UIView at (150,150) x, y coordinates and with width 150 and height 200
        UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(300, 150, 150, 200)];
        greenView.backgroundColor = [UIColor greenColor];
        //    A blue UIView at (40,400) x, y coordinates and with width 200 and height 150
        UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
        blueView.backgroundColor = [UIColor blueColor];
        //    A yellow UIView at (100,600) x, y coordinates and with width 180 and height 150
        UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
        yellowView.backgroundColor = [UIColor yellowColor];
        
        [self addSubview:redView];
        [self addSubview:greenView];
        [self addSubview:blueView];
        [self addSubview:yellowView];
        
        
        self.contentSize = CGSizeMake(480, 780);
    
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveView:)];
        
        
        [self addGestureRecognizer:pan];

    

}

- (void)moveView:(UIPanGestureRecognizer *)pan {
    
    if (pan.state == UIGestureRecognizerStateBegan) {
        self.startPoint = self.bounds.origin;
    }
    
    CGPoint newPoint = [pan translationInView:self];
    CGRect newBounds = CGRectMake(self.startPoint.x-newPoint.x, self.startPoint.y-newPoint.y, self.bounds.size.width, self.bounds.size.height);
   
    if (newBounds.origin.y + self.frame.size.height <= self.contentSize.height && newBounds.origin.y > self.frame.origin.y){
        
        if (newBounds.origin.x + self.frame.size.width <= self.contentSize.width && newBounds.origin.x > self.frame.origin.x){
            self.bounds = newBounds;
        }
        
        
    }

//    NSLog(@"x: %f, y: %f", -newPoint.x, -newPoint.y);
//    NSLog(@"x: %f, y: %f", self.bounds.origin.x, self.bounds.origin.y);

    
}





@end
