//
//  PurchaseViewController.m
//  ObjAP
//
//  Created by Karen Najem on 9/21/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "PurchaseViewController.h"

@interface PurchaseViewController ()

@end

@implementation PurchaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //   _productID = @"";
    _buyButton.enabled = YES;
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buy:(id)sender {
    
    _buyButton.enabled = NO;
    self.productTitle.text = [NSString stringWithFormat:@"The product has beenn purchased"];
    
}
@end


