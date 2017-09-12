//
//  ViewController.m
//  DelayedActions
//
//  Created by Karen Najem on 9/12/17.
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


- (IBAction)delayAction:(id)sender {
    
    [self performSelector:@selector(delay) withObject:nil afterDelay:5.0];
    
}

-(void)delay{
    self.label.text = @"Hello";
}
@end
