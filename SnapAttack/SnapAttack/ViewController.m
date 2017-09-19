//
//  ViewController.m
//  SnapAttack
//
//  Created by Karen Najem on 9/19/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timeInt = 20;
    scoreInt = 0;
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i",timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i",scoreInt];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startGame:(id)sender {
    
    if (timeInt == 20) {

        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        imageTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(cardUpdate) userInfo:nil repeats:YES];
        
        
        self.startGameButton.enabled = NO;
        self.startGameButton.alpha = 0.5;
        [self.startGameButton setTitle:@"Snap" forState:UIControlStateNormal];

    }
    
    if (timeInt == 0 ) {
        
        timeInt = 20;
        scoreInt = 0;
        self.timeLabel.text = [NSString stringWithFormat:@"Time: %i",timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i",scoreInt];
        
        self.imageView1.image = [UIImage imageNamed:@"blue_cover"];
        self.imageView2.image = [UIImage imageNamed:@"blue_cover"];
        
        [self.startGameButton setTitle:@"Start" forState:UIControlStateNormal];
    }
    
    if (gameMode ==1){
        
        if ([self.imageView1.image isEqual:self.imageView2.image]) {
            scoreInt+=1;
            self.scoreLabel.text =[NSString stringWithFormat:@"Score: %i", scoreInt];
        }else{
            scoreInt-=1;
            self.scoreLabel.text =[NSString stringWithFormat:@"Score: %i", scoreInt];
        }
        
    }
    
}

-(void)updateTimer{
    
    timeInt -=1;
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", timeInt];

    gameMode =1;
    
    self.startGameButton.enabled = YES;
    self.startGameButton.alpha = 1;
    if (timeInt == 0) {
        [timer invalidate];
        [imageTimer invalidate];
        gameMode =0;

        [self.startGameButton setTitle:@"Restart" forState:UIControlStateNormal];
    }

}

-(void)cardUpdate{
    
    NSArray *cardList = @[@"ace_of_hearts",
                          @"2_of_hearts",
                          @"3_of_hearts",
                          @"4_of_hearts",
                          @"5_of_hearts",
                          @"6_of_hearts",
                          @"7_of_hearts",
                          @"8_of_hearts",
                          @"9_of_hearts",
                          @"10_of_hearts"];
    
    int randomCard1 = arc4random() % cardList.count;
    self.imageView1.image =[UIImage imageNamed:cardList[randomCard1]];
                            int randomCard2 = arc4random() % cardList.count;
                            self.imageView2.image =[UIImage imageNamed:cardList[randomCard2]];
}

@end
