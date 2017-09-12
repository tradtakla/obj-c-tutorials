//
//  ViewController.m
//  ObjVariables
//
//  Created by Karen Najem on 9/6/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *string1 = @"Hello";
    NSString *string2 = @"World";
    int int1 = 3;
    int int2 = 10;
    double double1 = 1000.002;
    double double2 = 737.9299;
    bool boolean1 = NO;
    bool boolean2 = false;
    
    self.label1.text = [NSString stringWithFormat:@"%@ %@", string1,string2];
    
    self.label2.text =[NSString stringWithFormat:@"%d", int1+int2];
    
    self.label3.text = [NSString stringWithFormat:@"%.4f //// %.0f", double1,double2];
    
    self.button1.enabled = boolean2;
    self.switch1.on = boolean1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
