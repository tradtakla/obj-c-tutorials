//
//  DetailViewController.h
//  LondonLandmarks
//
//  Created by Karen Najem on 9/20/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController{
    double latitude;
    double longitude;
    
}

@property (strong, nonatomic) NSArray *detailModal;

@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;
@property (strong, nonatomic) IBOutlet UILabel *detailTitle;
@property (strong, nonatomic) IBOutlet UILabel *detailDescription;
@property (strong, nonatomic) IBOutlet UITextView *detailTextview;
@property (strong, nonatomic) IBOutlet MKMapView *detailMapview;
@property (strong, nonatomic) IBOutlet UIButton *directionsButton;
- (IBAction)directions:(id)sender;

@end
