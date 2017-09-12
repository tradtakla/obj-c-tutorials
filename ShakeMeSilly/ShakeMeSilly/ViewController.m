//
//  ViewController.m
//  ShakeMeSilly
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
    
    
    timeInt = 10;
    scoreInt = 0;
    modeInt = 0;
    imageInt = 1;
    
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startGame:(id)sender {
    
    if (timeInt == 10) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateConuter) userInfo:nil repeats:YES];
        
        self.startGameButton.enabled = NO;
        self.startGameButton.alpha = 0.5;
        
        modeInt =1;
    }
    if (timeInt == 0) {
        timeInt = 10;
        scoreInt = 0;
        
        self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
        
        [self.startGameButton setTitle:@"Start Game" forState:UIControlStateNormal];

    }
    
}

-(void)updateConuter{
    timeInt -=1;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    
    if (timeInt == 0) {
        [timer invalidate];
        
        self.startGameButton.enabled = YES;
        self.startGameButton.alpha = 1;
        
        [self.startGameButton setTitle:@"Restart" forState:UIControlStateNormal];
        modeInt =0;
        
    }
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    
    if (event.subtype == UIEventSubtypeMotionShake) {
        
        if (modeInt ==1) {
            scoreInt +=1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
            imageInt +=1;
            
            if (imageInt == 5) {
                imageInt = 1;
            }
            NSString *image = [NSString stringWithFormat:@"Maracas%i.png", imageInt];
            self.imageView.image = [UIImage imageNamed:image];
        }
    }
}

@end
