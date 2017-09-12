//
//  ViewController.m
//  Factbank
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
    
    [self.label.layer setCornerRadius:20.0];
    self.label.clipsToBounds = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)randomFact:(id)sender {
    
    
    NSArray *facts = @[@"Banging your head against the wall burns 150 calories an hour."
                       ,@"When hippos are upset, their sweat turns red."
                       ,@"A flock of cows is know as a murder"
                       ,@"Human saliva has a boiling point three times that og regular water."];
    int randomWord = arc4random() %facts.count;
    
    self.label.text = facts[randomWord];
}
@end
