//
//  ViewController.m
//  displayingImages
//
//  Created by Karen Najem on 9/14/17.
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


- (IBAction)showImage:(id)sender {
    
    [self.imageView setImage:[UIImage imageNamed:@"Dog"]];
    
}
@end
