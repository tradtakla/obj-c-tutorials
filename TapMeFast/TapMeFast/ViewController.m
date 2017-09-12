//
//  ViewController.m
//  TapMeFast
//
//  Created by Karen Najem on 9/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timeInt =10;
    tapInt =0;
    
    self.timeLable.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    
    self.tapMeButton.enabled = NO;
    self.tapMeButton.alpha = 0.5;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startbutton:(id)sender {
    
    if (timeInt == 10) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        
        self.tapMeButton.enabled = YES;
        self.tapMeButton.alpha = 1.0;
        self.startGamebutton.enabled = NO;
        self.startGamebutton.alpha = 0.5;
    }
    else if (timeInt == 0){
        timeInt = 10;
        tapInt = 0;
        self.timeLable.text = [NSString stringWithFormat:@"%i", timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
        
        [self.startGamebutton setTitle:@"Start" forState:UIControlStateNormal];
    }
}

- (IBAction)tapButton:(id)sender {
    
    tapInt+=1;
    self.scoreLabel.text =[NSString stringWithFormat:@"%i", tapInt];
    
}

-(void)startCounter {
    
    timeInt -= 1;
    
    self.timeLable.text = [NSString stringWithFormat:@"%i", timeInt];
    
    
    
    if (timeInt ==0 ) {
        [timer invalidate];
        
        self.tapMeButton.enabled = NO;
        self.tapMeButton.alpha =0.5;
        
        self.startGamebutton.enabled = YES;
        self.startGamebutton.alpha = 1.0;
        
        [self.startGamebutton setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
}
@end
