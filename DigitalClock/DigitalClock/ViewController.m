//
//  ViewController.m
//  DigitalClock
//
//  Created by Karen Najem on 9/12/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label.text = @"";
    self.settingsView.hidden = YES;
    self.settingButton.alpha = 0.25;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateClock{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.label.text = [formatter stringFromDate:[NSDate date]];
}

- (IBAction)settings:(id)sender {
    
    if (self.settingsView.hidden == NO) {
        self.settingsView.hidden = YES;
        self.settingButton.alpha = 0.25;
        [self.settingButton setTitle:@"Show Settings" forState:UIControlStateNormal];
    } else if (self.settingsView.hidden == YES) {
        self.settingsView.hidden = NO;
        self.settingButton.alpha = 1.0;
        [self.settingButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
    }
}

- (IBAction)backgroundColour:(id)sender {
    
    if (self.segmentBackground.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor blackColor];
    }
    if (self.segmentBackground.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    if (self.segmentBackground.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor blueColor];
    }
    if (self.segmentBackground.selectedSegmentIndex == 3) {
        self.view.backgroundColor = [UIColor yellowColor];
    }
    
}

- (IBAction)clockColour:(id)sender {
    
    if (self.segmentClock.selectedSegmentIndex == 0) {
        self.label.textColor = [UIColor whiteColor];
    }
    if (self.segmentClock.selectedSegmentIndex == 1) {
        self.label.textColor = [UIColor blackColor];
    }
    if (self.segmentClock.selectedSegmentIndex == 2) {
        self.label.textColor = [UIColor greenColor];
    }
    if (self.segmentClock.selectedSegmentIndex == 3) {
        self.label.textColor = [UIColor redColor];
    }
    
}
@end
