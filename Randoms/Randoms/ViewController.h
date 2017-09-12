//
//  ViewController.h
//  Randoms
//
//  Created by Karen Najem on 9/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UILabel *label2;

- (IBAction)randomNumber:(id)sender;
- (IBAction)randomWord:(id)sender;

@end

