//
//  ViewController.m
//  DeviceDetection
//
//  Created by Karen Najem on 9/21/17.
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


- (IBAction)whatAmI:(id)sender {
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        
        self.label.text = @"I am an iPhone";
        self.imageView.image = [UIImage imageNamed:@"iphone"];
        
    } if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        
        self.label.text = @"I am an iPad";
        self.imageView.image = [UIImage imageNamed:@"ipad"];
        
    }
    
}
@end
