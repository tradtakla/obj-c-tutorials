//
//  ViewController.h
//  SnapAttack
//
//  Created by Karen Najem on 9/19/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer *timer;
    NSTimer *imageTimer;
    
    int timeInt;
    int scoreInt;
    int gameMode;
    
}
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView1;
@property (strong, nonatomic) IBOutlet UIImageView *imageView2;
@property (strong, nonatomic) IBOutlet UIButton *startGameButton;
- (IBAction)startGame:(id)sender;


@end

