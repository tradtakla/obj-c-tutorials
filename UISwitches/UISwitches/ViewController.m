//
//  ViewController.m
//  UISwitches
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


- (IBAction)switchAction:(id)sender {
    
    if (self.theSwitch.on){
        self.label.text = @"the switch is on";
        self.button.enabled = YES;
    } else {
        self.label.text = @"the switch is off";
        self.button.enabled = NO;
    }
    
}
@end
