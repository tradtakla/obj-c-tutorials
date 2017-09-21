//
//  PurchaseViewController.h
//  ObjAP
//
//  Created by Karen Najem on 9/21/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>


@interface PurchaseViewController : UIViewController {
    
    
    
}



@property (strong, nonatomic) IBOutlet UILabel *productTitle;
@property (strong, nonatomic) IBOutlet UITextView *productDescription;
@property (strong, nonatomic) IBOutlet UIButton *buyButton;
- (IBAction)buy:(id)sender;

@end
