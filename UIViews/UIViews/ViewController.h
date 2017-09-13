//
//  ViewController.h
//  UIViews
//
//  Created by Karen Najem on 9/13/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *viewOne;
@property (strong, nonatomic) IBOutlet UIView *viewTwo;
- (IBAction)showViewTwo:(id)sender;
- (IBAction)dismissOne:(id)sender;
- (IBAction)dismissTwo:(id)sender;

- (IBAction)showViewOne:(id)sender;
@end

