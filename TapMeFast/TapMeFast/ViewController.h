//
//  ViewController.h
//  TapMeFast
//
//  Created by Karen Najem on 9/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer *timer;
    int timeInt;
    int tapInt;
    
}

@property (strong, nonatomic) IBOutlet UILabel *timeLable;
@property (strong, nonatomic) IBOutlet UIButton *tapMeButton;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UIButton *startGamebutton;

- (IBAction)startbutton:(id)sender;
- (IBAction)tapButton:(id)sender;


@end

