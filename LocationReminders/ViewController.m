//
//  ViewController.m
//  LocationReminders
//
//  Created by Kent Rogers on 5/1/17.
//  Copyright © 2017 Austin Rogers. All rights reserved.
//
#import "ViewController.h"

@import Parse;
@import MapKit;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self requestPermissions];
    
    self.mapView.showsUserLocation = YES;
}

- (void)requestPermissions {
    
    self.locationManager = [[CLLocationManager alloc]init];
    [self.locationManager requestAlwaysAuthorization];
    
}

- (IBAction)location1Pressed:(id)sender {
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(33.434895, -111.716919);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordinate, 400.0, 400.0);
    
    [self.mapView setRegion:region animated:YES];
    
}
- (IBAction)location2Pressed:(id)sender {
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(64.597969, -17.176180);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordinate, 400.0, 400.0);
    
    [self.mapView setRegion:region animated:YES];
    
}
- (IBAction)location3Pressed:(id)sender {
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(-33.930079, 151.152320);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordinate, 400.0, 400.0);
    
    [self.mapView setRegion:region animated:YES];
    
}


@end
