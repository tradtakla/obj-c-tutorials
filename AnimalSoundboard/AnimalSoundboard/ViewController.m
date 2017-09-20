//
//  ViewController.m
//  AnimalSoundboard
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
    
    NSURL *soundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    NSURL *soundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Dog" ofType:@"wav"]];
    NSURL *soundURL3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Frog" ofType:@"wav"]];
    NSURL *soundURL4 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sheep" ofType:@"wav"]];
    NSURL *soundURL5 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Horse" ofType:@"mp3"]];
    NSURL *soundURL6 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Pig" ofType:@"wav"]];
    
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL1, &soundID1);
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL2, &soundID2);
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL3, &soundID3);
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL4, &soundID4);
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL5, &soundID5);
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL6, &soundID6);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cat:(id)sender {
    
    AudioServicesPlaySystemSound(soundID1);
    
}

- (IBAction)dog:(id)sender {
    
    AudioServicesPlaySystemSound(soundID2);
    
}

- (IBAction)frog:(id)sender {
    AudioServicesPlaySystemSound(soundID3);
}

- (IBAction)horse:(id)sender {
    AudioServicesPlaySystemSound(soundID5);
}

- (IBAction)pig:(id)sender {
    AudioServicesPlaySystemSound(soundID6);
}

- (IBAction)sheep:(id)sender {
    AudioServicesPlaySystemSound(soundID4);
}
@end
