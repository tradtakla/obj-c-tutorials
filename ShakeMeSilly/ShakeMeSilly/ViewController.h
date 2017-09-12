//
//  ViewController.h
//  ShakeMeSilly
//
//  Created by Karen Najem on 9/12/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer *timer;
    
    int timeInt;
    int scoreInt;
    
    int modeInt;
    int imageInt;
    
}
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *startGameButton;

- (IBAction)startGame:(id)sender;

@end

