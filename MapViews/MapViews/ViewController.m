//
//  ViewController.m
//  MapViews
//
//  Created by Karen Najem on 9/14/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mapView.delegate = self;
    locationManager.delegate = self;
    locationManager = [[CLLocationManager alloc]init];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)maptypes:(id)sender {
    
    if (self.segmentControl.selectedSegmentIndex == 0) {
        self.mapView.mapType = MKMapTypeStandard;
    }if (self.segmentControl.selectedSegmentIndex == 1) {
        self.mapView.mapType = MKMapTypeSatellite;
    }if (self.segmentControl.selectedSegmentIndex == 2) {
        self.mapView.mapType = MKMapTypeHybrid;
    }
    
}

- (IBAction)locateMe:(id)sender {
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    
    [locationManager startUpdatingLocation];
    self.mapView.showsUserLocation = YES;
    
    
}
@end
