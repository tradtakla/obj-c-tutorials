//
//  ViewController.h
//  NSTimers
//
//  Created by Karen Najem on 9/7/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    int countInt;
}



@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)startTimer:(id)sender;
- (IBAction)stoptimer:(id)sender;


@end

