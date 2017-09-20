//
//  ViewController.h
//  PlayingVideos
//
//  Created by Karen Najem on 9/20/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

- (IBAction)playVideo:(id)sender;
- (IBAction)streamVideo:(id)sender;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

