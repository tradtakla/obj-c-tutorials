//
//  ViewController.m
//  PlayingVideos
//
//  Created by Karen Najem on 9/20/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *embedCode = @"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_OBlgSz8sSM\" frameborder=\"0\" allowfullscreen></iframe>";
    [[self webView] loadHTMLString:embedCode baseURL:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playVideo:(id)sender {
    
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"Video" withExtension:@"mp4"];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    controller.player = player;
    [player play];
    
    [self presentViewController:controller animated:YES completion:nil];
    
}

- (IBAction)streamVideo:(id)sender {
    
    NSURL *videoURL = [NSURL URLWithString:@"http://www.sample-videos.com/video/mp4/480/big_buck_bunny_480p_2mb.mp4"];
                       
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    controller.player = player;
    [player play];
    [self presentViewController:controller animated:YES completion:nil];
                       
    
                       
                       
                       
}
@end
