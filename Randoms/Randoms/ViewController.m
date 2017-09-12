//
//  ViewController.m
//  Randoms
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


- (IBAction)randomNumber:(id)sender {
    
    int randNum = arc4random() % 10;
    self.label.text = [NSString stringWithFormat:@"%i", randNum];
    
}

- (IBAction)randomWord:(id)sender {
    
    NSArray *words = @[@"Apple",@"Banana",@"Carrot",@"Lemon",@"Potato"];
    
    int randWord = arc4random() % words.count;
    
    self.label2.text = words[randWord];
    
}
@end
