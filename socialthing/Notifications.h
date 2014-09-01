//
//  Notifications.h
//  composure
//
//  Created by Ben Zweig on 11/23/13.
//  Copyright (c) 2013 Ben Zweig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Notifications : NSObject

- (void)sendTwitterNoti;
- (void)sendFacebookNoti;
- (void)clearNotis;
@property(weak,nonatomic)UILocalNotification *twitterNotes;
@property(weak,nonatomic)UILocalNotification *facebookNotes;

@end
