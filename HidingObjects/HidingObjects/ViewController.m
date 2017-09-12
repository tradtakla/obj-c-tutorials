//
//  ViewController.m
//  HidingObjects
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


- (IBAction)hide:(id)sender {
    
    self.label.hidden = YES;
    self.segmentControl.hidden = YES;
    self.switchControl.hidden = YES;
    
}

- (IBAction)reveal:(id)sender {
    
    self.label.hidden = NO;
    self.segmentControl.hidden = NO;
    self.switchControl.hidden = NO;
    
}

- (IBAction)amIHidden:(id)sender {
    
    if (self.label.hidden== YES) {
        self.label2.text = @"the objects are hidden";
        
    }else {
        self.label2.text = @"the objects are not hidden";
    }
    
}
@end
