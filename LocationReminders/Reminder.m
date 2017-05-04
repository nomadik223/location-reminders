//
//  Reminder.m
//  LocationReminders
//
//  Created by Kent Rogers on 5/3/17.
//  Copyright © 2017 Austin Rogers. All rights reserved.
//

#import "Reminder.h"

@implementation Reminder

@dynamic name;
@dynamic location;
@dynamic radius;

+(void)load{
    [super load];
    [self registerSubclass];
}

+(NSString *)parseClassName{
    return @"Reminder";
}

@end
