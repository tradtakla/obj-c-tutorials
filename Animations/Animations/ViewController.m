//
//  ViewController.m
//  Animations
//
//  Created by Karen Najem on 9/19/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imageView.animationImages = [NSArray arrayWithObjects:
                                      [UIImage imageNamed:@"Image1.png"],
                                      [UIImage imageNamed:@"Image2.png"],
                                      [UIImage imageNamed:@"Image3.png"],
                                      [UIImage imageNamed:@"Image4.png"],
                                      [UIImage imageNamed:@"Image5.png"],
                                      [UIImage imageNamed:@"Image6.png"],
                                      [UIImage imageNamed:@"Image7.png"],
                                      [UIImage imageNamed:@"Image8.png"], nil];
    
    [self.imageView setAnimationRepeatCount:6];
    self.imageView.animationDuration = 1;
    [self.imageView startAnimating];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
