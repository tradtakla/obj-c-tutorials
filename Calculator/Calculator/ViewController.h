//
//  ViewController.h
//  Calculator
//
//  Created by Karen Najem on 9/12/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    int currentOperation;
    
    float result;
    float currentNumber;
    
}

@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)digitPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;
- (IBAction)cancelOperation:(id)sender;

@end

