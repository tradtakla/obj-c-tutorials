//
//  ViewController.h
//  FadingObjects
//
//  Created by Karen Najem on 9/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (strong, nonatomic) IBOutlet UISwitch *switchControl;
@property (strong, nonatomic) IBOutlet UILabel *label2;

- (IBAction)fadeIn:(id)sender;
- (IBAction)fadeOut:(id)sender;
- (IBAction)whatsMyAlpha:(id)sender;

@end

