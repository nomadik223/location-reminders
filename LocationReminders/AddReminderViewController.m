//
//  AddReminderViewController.m
//  LocationReminders
//
//  Created by Kent Rogers on 5/2/17.
//  Copyright © 2017 Austin Rogers. All rights reserved.
//

#import "AddReminderViewController.h"

#import "Reminder.h"

@interface AddReminderViewController ()

@property (weak, nonatomic) IBOutlet UITextField *reminderName;
@property (weak, nonatomic) IBOutlet UITextField *reminderRadius;

@end

@implementation AddReminderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Reminder *newReminder = [Reminder object];
    
    newReminder.name = self.annotationTitle;
    newReminder.location = [PFGeoPoint geoPointWithLatitude:self.coordinate.latitude longitude:self.coordinate.longitude];
    
    [newReminder saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        NSLog(@"Annotation Title: %@", self.annotationTitle);
        NSLog(@"Coordinates: %f, %f", self.coordinate.latitude, self.coordinate.longitude);
        
        NSLog(@"Save Reminder Successful:%i - Error: %@", succeeded, error.localizedDescription);
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"ReminderSavedToParse" object:nil];
        
        if (self.completion) {
            
            CGFloat radius = 100; //For lab: Coming from the input field
            
            MKCircle *circle = [MKCircle circleWithCenterCoordinate:self.coordinate radius:radius];
            
            self.completion(circle);
            
            [self.navigationController popViewControllerAnimated:YES];
            
        };
        
    }];
    
    NSLog(@"Annotation title: %@", self.annotationTitle);
    NSLog(@"Coordinates:  %f, %f", self.coordinate.latitude, self.coordinate.longitude);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
