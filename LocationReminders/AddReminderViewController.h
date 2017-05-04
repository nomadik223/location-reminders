//
//  AddReminderViewController.h
//  LocationReminders
//
//  Created by Kent Rogers on 5/2/17.
//  Copyright © 2017 Austin Rogers. All rights reserved.
//

#import <UIKit/UIKit.h>

@import MapKit;

typedef void(^newReminderCreatedCompletion)(MKCircle *);

@interface AddReminderViewController : UIViewController

@property(strong,nonatomic) NSString *annotationTitle;
@property(nonatomic) CLLocationCoordinate2D coordinate;

@property(strong, nonatomic) newReminderCreatedCompletion completion;

@end
