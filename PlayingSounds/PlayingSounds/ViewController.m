//
//  ViewController.m
//  PlayingSounds
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
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Sound" ofType:@"wav"];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundUrl, &soundId);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playSound:(id)sender {
    
    AudioServicesPlaySystemSound(soundId);
    
}
@end
