//
//  ViewController.m
//  Calculator
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


- (IBAction)digitPressed:(id)sender {
    
    currentNumber = currentNumber *10 + (float)[sender tag];
    self.label.text = [NSString stringWithFormat:@"%2.0f", currentNumber];

}

- (IBAction)operationPressed:(id)sender {
    
    
    
}

- (IBAction)cancelOperation:(id)sender {
    currentNumber =0;
    self.label.text = @"0";
    
    
}

@end
