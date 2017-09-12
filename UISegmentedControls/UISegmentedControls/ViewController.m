//
//  ViewController.m
//  UISegmentedControls
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


- (IBAction)segmentAction:(id)sender {
    
    if (self.segmentControl.selectedSegmentIndex == 0){
        self.label.text = @"segment one was selected";
    }
    if (self.segmentControl.selectedSegmentIndex == 1){
        self.label.text = @"segment two was selected";
    }
    if (self.segmentControl.selectedSegmentIndex == 2){
        self.label.text = @"segment three was selected";
    }
    if (self.segmentControl.selectedSegmentIndex == 3){
        self.label.text = @"segment four was selected";
    }
    
    
}
@end
