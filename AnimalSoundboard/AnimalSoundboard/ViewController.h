//
//  ViewController.h
//  AnimalSoundboard
//
//  Created by Karen Najem on 9/19/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController{
    
    SystemSoundID soundID1;
    SystemSoundID soundID2;
    SystemSoundID soundID3;
    SystemSoundID soundID4;
    SystemSoundID soundID5;
    SystemSoundID soundID6;
    
}
- (IBAction)cat:(id)sender;
- (IBAction)dog:(id)sender;
- (IBAction)frog:(id)sender;
- (IBAction)horse:(id)sender;
- (IBAction)pig:(id)sender;
- (IBAction)sheep:(id)sender;


@end

