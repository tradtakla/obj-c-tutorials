//
//  ViewController.h
//  UISegmentedControls
//
//  Created by Karen Najem on 9/12/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;

- (IBAction)segmentAction:(id)sender;

@end

