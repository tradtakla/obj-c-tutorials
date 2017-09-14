//
//  ViewController.h
//  MapViews
//
//  Created by Karen Najem on 9/14/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
    
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControl;

- (IBAction)maptypes:(id)sender;
- (IBAction)locateMe:(id)sender;

@end

