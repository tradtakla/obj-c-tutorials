//
//  ViewController.m
//  FadingObjects
//
//  Created by Karen Najem on 9/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)fadeIn:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    
    [self.label setAlpha:1.0];
    [self.segmentControl setAlpha:1.0];
    [self.switchControl setAlpha:1.0];
    
    [UIView commitAnimations];
}

- (IBAction)fadeOut:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1.0];
    
    [self.label setAlpha:0];
    [self.segmentControl setAlpha:0];
    [self.switchControl setAlpha:0];
    
    [UIView commitAnimations];
    
}

- (IBAction)whatsMyAlpha:(id)sender {
    
    if ( self.label.alpha == 1) {
        self.label2.text = @"the alpha is at 1";
        
    }
    else if (self.label.alpha == 0){
        self.label2.text = @"the alpha is at 0";
    }
    
}
@end
