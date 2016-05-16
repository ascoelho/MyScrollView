//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Anthony Coelho on 2016-05-16.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView


//A CGSize property called contentSize
@property CGSize contentSize;
@property CGPoint startPoint;


- (void)setUpSubviews;

@end
