//
//  ViewController.m
//  ObjIfStatements
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
    
    BOOL state = false;
    if (state == true)
    {
        self.label1.text = @"Allow access";
    }
    else
    {
        self.label1.text = @"Deny access";
    }
    
    
    
    NSString *name = @"Steve";
    if ([name isEqualToString:@"john"])
    {
        self.label2.text = @"Nice Name";
    }
    else if ([name isEqualToString:@"Steve"])
    {
        self.label2.text = @"Really Nice Name";
    }
    else
    {
        self.label2.text = @"Terrible Name";
    }
    
    
    
    int number = 1501;
    if ( number <1500)
    {
        self.label3.text = @"Unlock Level 10";
    }
    else
    {
        self.label3.text = @"Try Again";
    }
    
    
    
    NSString *color = @"Black";
    if ([color isEqualToString:@"Black"] || [color isEqualToString:@"Yellow"])
    {
        self.label4.text = @"Nice color";
    }
    
    
    
    NSString *forname = @"r";
    NSString *surname = @"h";
    if ([forname isEqualToString:@"takla"] && [surname isEqualToString:@"trad"] )
    {
        self.label5.text = @"Grant Access";
    }
    else if ([forname isEqualToString:@"takla"])
    {
        self.label5.text = @"surname incorrect";
    }
    else if ([surname isEqualToString:@"trad"])
    {
        self.label5.text = @"forname incorrect";
    }
    else
    {
        self.label5.text = @"forname and surname incorrect";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
