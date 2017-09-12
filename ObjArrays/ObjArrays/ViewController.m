//
//  ViewController.m
//  ObjArrays
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
    
    NSArray *array = @[@"Apple",@"Banana", @"Orange"];
    
    NSMutableArray *array2 = [[NSMutableArray alloc] initWithObjects:@"Apple", @"Banana", @"Orange", nil];
    
    
    self.label.text = array[2];
    self.label2.text = array2[0];
    
    [array2 addObject:@"Melon"];
    self.label2.text = array2[3];
    
    [array2 insertObject:@"Strawberry" atIndex:3];
    
    NSLog(@"%lu", array2.count);
    
    [array2 removeObjectAtIndex:2];
    NSLog(@"%@", array2);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
