//
//  Notifications.m
//  composure
//
//  Created by Ben Zweig on 11/23/13.
//  Copyright (c) 2013 Ben Zweig. All rights reserved.
//

#import "Notifications.h"

@implementation Notifications


- (void)sendTwitterNoti{
    NSDictionary *twitDict = [NSDictionary dictionaryWithObjectsAndKeys:@"object1", @"twitter", nil];
    UILocalNotification *twitterNotification = [[UILocalNotification alloc] init];
    twitterNotification.userInfo = twitDict;
    twitterNotification.soundName = nil;
    twitterNotification.applicationIconBadgeNumber = 0;
    twitterNotification.alertAction = @"Post to Twitter.";
    twitterNotification.fireDate = [NSDate date];
    twitterNotification.alertBody = @"Alert message goes here";
    twitterNotification.timeZone = [NSTimeZone localTimeZone];
    [[UIApplication sharedApplication] scheduleLocalNotification:twitterNotification];
}
- (void)sendFacebookNoti{
    
    UILocalNotification *facebookNotification = [[UILocalNotification alloc] init];
    facebookNotification.soundName = nil;
    facebookNotification.applicationIconBadgeNumber = 0;
    facebookNotification.alertAction = @"Post to Facebook.";
    facebookNotification.fireDate = [NSDate date];
    facebookNotification.alertBody = @"Alert message goes here";
    facebookNotification.timeZone = [NSTimeZone localTimeZone];
    [[UIApplication sharedApplication] scheduleLocalNotification:facebookNotification];
}

- (void)clearNotis{
    [[UIApplication sharedApplication]cancelAllLocalNotifications];
}



@end
