//
//  ViewController.m
//  MyScrollView
//
//  Created by Anthony Coelho on 2016-05-16.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUpViews];

    
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    CGRect newBounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds));
    self.view.bounds = newBounds;
    
}

- (void)setUpViews {
    
    MyScrollView *scrollView = [[MyScrollView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    
    scrollView.backgroundColor = [UIColor orangeColor];
    [scrollView setUpSubviews];
    
    [self.view addSubview:scrollView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
