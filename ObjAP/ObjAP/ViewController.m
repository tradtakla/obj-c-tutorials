//
//  ViewController.m
//  ObjAP
//
//  Created by Karen Najem on 9/21/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"
#define savePurchase @"Save"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *savedApp = [NSUserDefaults standardUserDefaults];
    bool saved = [savedApp boolForKey:savePurchase];
    
    
    
    if (!saved) {
        //not saved
    } else {
        [self purchased];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)purchased{
    
    _level2.enabled = YES;
    _purchase.enabled = NO;
    _purchase.hidden = YES;
    
    NSUserDefaults *savedApp = [NSUserDefaults standardUserDefaults];
    [savedApp setBool:YES forKey:savePurchase];
    [savedApp synchronize];
    
    
}

@end
