//
//  Reminder.h
//  LocationReminders
//
//  Created by Kent Rogers on 5/3/17.
//  Copyright © 2017 Austin Rogers. All rights reserved.
//

#import <Parse/Parse.h>

@interface Reminder : PFObject <PFSubclassing>

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) PFGeoPoint *location;
@property(strong, nonatomic) NSNumber *radius;

@end
