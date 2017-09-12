//
//  ViewController.h
//  objFunctions
//
//  Created by Karen Najem on 9/6/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate> {
}


@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *label2;


- (IBAction)button:(id)sender;
- (IBAction)setColour:(id)sender;
- (IBAction)SetBackgroound:(id)sender;
- (IBAction)fontsize:(id)sender;
- (IBAction)setShadow:(id)sender;
- (IBAction)shadowColour:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)center:(id)sender;
- (IBAction)customFont:(id)sender;


@end

