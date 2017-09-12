//
//  ViewController.h
//  EnablingObjects
//
//  Created by Karen Najem on 9/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UISwitch *switchControl;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (strong, nonatomic) IBOutlet UILabel *label2;

- (IBAction)enable:(id)sender;
- (IBAction)disable:(id)sender;
- (IBAction)amIEnabled:(id)sender;

@end

