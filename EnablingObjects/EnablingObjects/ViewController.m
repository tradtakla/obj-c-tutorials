//
//  ViewController.m
//  EnablingObjects
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


- (IBAction)enable:(id)sender {
    
    self.button.enabled = YES;
    self.segmentControl.enabled = YES;
    self.switchControl.enabled = YES;
}

- (IBAction)disable:(id)sender {
    
    self.button.enabled = NO;
    self.segmentControl.enabled = NO;
    self.switchControl.enabled = NO;
}

- (IBAction)amIEnabled:(id)sender {
    
    if (self.button.enabled == YES) {
        self.label2.text = @"the objects are enbaled";
    }
    else {
        self.label2.text = @"the objects are disabled";
    }
    
}
@end
