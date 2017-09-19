//
//  ViewController.h
//  PlayingSounds
//
//  Created by Karen Najem on 9/19/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface ViewController : UIViewController{
    
    SystemSoundID soundId;
    
}

- (IBAction)playSound:(id)sender;

@end

