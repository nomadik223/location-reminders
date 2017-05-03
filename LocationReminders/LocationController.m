//
//  LocationController.m
//  LocationReminders
//
//  Created by Kent Rogers on 5/2/17.
//  Copyright © 2017 Austin Rogers. All rights reserved.
//

#import "LocationController.h"

@implementation LocationController

+ (id)sharedLocationController {
    static LocationController *sharedLocationController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedLocationController = [[self alloc] init];
    });
    return sharedLocationController;
}

- (id)init {
    self = [super init];
    
    if (self){
        [self requestPermissions];
    }
    
    self.locationManager.delegate = self;
    
    return self;
}

- (void)requestPermissions {
    
    self.locationManager = [[CLLocationManager alloc]init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.distanceFilter = 100; //meters
    
    [self.locationManager requestAlwaysAuthorization];
    
    [self.locationManager startUpdatingLocation];
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    CLLocation *location = locations.lastObject;
    [self.delegate locationControllerUpdatedLocation:location];
    
}

@end
