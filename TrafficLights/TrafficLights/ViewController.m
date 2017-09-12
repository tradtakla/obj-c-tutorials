//
//  ViewController.m
//  TrafficLights
//
//  Created by Karen Najem on 9/7/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    scoreInt = 0;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startAction:(id)sender {
    
    if (scoreInt == 0) {
        timerInt = 3;
        self.trafficLights.image = [UIImage imageNamed:@"TrafficLight"];
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        self.stopButton.enabled = NO;
        [self.stopButton setTitle:@"" forState:UIControlStateNormal];
        
    }
    else {
        [scoreTimer invalidate];
        
        [self.stopButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
    if (timerInt == 0) {
        scoreInt = 0;
        
    }
    
}



-(void)startCounter {
    timerInt-= 1;
    
    if (timerInt == 2) {
        self.trafficLights.image = [UIImage imageNamed:@"TrafficLight3"];
    }
    else if ( timerInt == 1){
        self.trafficLights.image = [UIImage imageNamed:@"TrafficLight2"];
    }
    else if ( timerInt == 0){
        self.trafficLights.image =[UIImage imageNamed:@"TrafficLight1"];
        [timer invalidate];
        
        [self.stopButton setTitle:@"Stop" forState:UIControlStateNormal];
        self.stopButton.enabled = YES;
        
        scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
    }
}

-(void)scoreCounter {
    
    scoreInt +=1;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    
    
}








@end
