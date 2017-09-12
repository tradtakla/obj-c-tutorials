//
//  ViewController.h
//  TrafficLights
//
//  Created by Karen Najem on 9/7/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    NSTimer *scoreTimer;
    
    int timerInt;
    int scoreInt;
    
}
@property (strong, nonatomic) IBOutlet UIImageView *trafficLights;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIButton *stopButton;


- (IBAction)startAction:(id)sender;
@end

