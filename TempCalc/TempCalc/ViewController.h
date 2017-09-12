//
//  ViewController.h
//  TempCalc
//
//  Created by Karen Najem on 9/12/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIImageView *tempImage;
@property (strong, nonatomic) IBOutlet UILabel *outputLabel;
@property (strong, nonatomic) IBOutlet UILabel *enterLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segControl;


- (IBAction)calculate:(id)sender;
- (IBAction)switchConversion:(id)sender;

@end

