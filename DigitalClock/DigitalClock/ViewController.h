//
//  ViewController.h
//  DigitalClock
//
//  Created by Karen Najem on 9/12/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer  *timer;
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIView *settingsView;
@property (strong, nonatomic) IBOutlet UIButton *settingButton;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentClock;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentBackground;

- (IBAction)settings:(id)sender;
- (IBAction)backgroundColour:(id)sender;
- (IBAction)clockColour:(id)sender;

@end

