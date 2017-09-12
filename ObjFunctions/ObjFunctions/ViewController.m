//
//  ViewController.m
//  objFunctions
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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button:(id)sender {
    
    self.label.text = @"Hello";
    self.textView.text = self.textField.text;
    
    [self resignFirstResponder];
    
}

- (IBAction)setColour:(id)sender {
    self.label2.textColor = [UIColor redColor];
}

- (IBAction)SetBackgroound:(id)sender {
    self.label2.backgroundColor = [UIColor blackColor];
}

- (IBAction)fontsize:(id)sender {
    [self.label2 setFont:[UIFont fontWithName:@"Verdana" size:30]];
}

- (IBAction)setShadow:(id)sender {
    self.label2.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.label2.layer.shadowOpacity = 0.5;
    self.label2.layer.shadowRadius = 1.0f;
    self.label2.layer.shadowOffset = CGSizeMake(-5, 5);
}

- (IBAction)shadowColour:(id)sender {
    self.label2.layer.shadowColor = [[UIColor greenColor] CGColor];
}

- (IBAction)left:(id)sender {
    self.label2.textAlignment =NSTextAlignmentLeft;
}

- (IBAction)right:(id)sender {
    self.label2.textAlignment =NSTextAlignmentRight;
}

- (IBAction)center:(id)sender {
    self.label2.textAlignment =NSTextAlignmentCenter;
}

- (IBAction)customFont:(id)sender {
    [self.label2 setFont:[UIFont fontWithName:@"Geovana" size:40]];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
        return YES;
    }
    [textView resignFirstResponder];
    return NO;
}
@end
