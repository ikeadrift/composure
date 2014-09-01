//
//  AppDelegate.m
//  socialthing
//
//  Created by Ben Zweig on 11/22/13.
//  Copyright (c) 2013 Ben Zweig. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>
#import "bouncyButton.h"
#import "ViewController.h"
#import <Social/Social.h>
#import "HelpViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //_LaunchServiceInt = 0;
    //UILocalNotification *notification = launchOptions[UIApplicationLaunchOptionsLocalNotificationKey];
    
    // log out dat notification
    return YES;
    
}
    
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)gotMail:(UILocalNotification *)notification {
    NSLog(@"what up %@",notification);
    if ([notification.userInfo[@"service"] isEqualToString:@"twitter"]) {
        NSLog(@"gotit");
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
            SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
            [self.window.rootViewController presentViewController:composeViewController animated:YES completion:nil];
        } else {
            UIAlertView *Talert = [[UIAlertView alloc] initWithTitle:@"Uh oh!" message:@"Doesn't seem like you've allowed this app to access your Twitter account. Please do so in Settings." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [Talert show];
        }
        
    }
    if ([notification.userInfo[@"service"] isEqualToString:@"facebook"]) {
        NSLog(@"ayoo");
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
            SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
            [self.window.rootViewController presentViewController:composeViewController animated:YES completion:nil];
        } else {
            UIAlertView *FBalert = [[UIAlertView alloc] initWithTitle:@"Uh oh!" message:@"Doesn't seem like you've allowed this app to access your Facebook account. Please do so in Settings." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [FBalert show];
        }
        
    }
    
}

-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification;{
    NSLog(@"%@",notification);
    if ([notification.userInfo[@"service"] isEqualToString:@"twitter"]) {
        //[application cancelLocalNotification:notification];
        //_LaunchServiceInt = 1;
        NSLog(@"gotit");
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
            SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
            [self.window.rootViewController presentViewController:composeViewController animated:YES completion:nil];
        } else {
            UIAlertView *Talert = [[UIAlertView alloc] initWithTitle:@"Uh oh!" message:@"Doesn't seem like you've allowed this app to access your Twitter account. Please do so in Settings." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [Talert show];
        }
        
    }
    if ([notification.userInfo[@"service"] isEqualToString:@"facebook"]) {
        NSLog(@"ayoo");
        //[application cancelLocalNotification:notification];
        //_LaunchServiceInt = 1;
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
            SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
            [self.window.rootViewController presentViewController:composeViewController animated:YES completion:nil];
        } else {
            UIAlertView *FBalert = [[UIAlertView alloc] initWithTitle:@"Uh oh!" message:@"Doesn't seem like you've allowed this app to access your Facebook account. Please do so in Settings." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [FBalert show];
        }
        
    }
    
}

- (void)sendTwitterNotification:(UIApplication *)application{
    UILocalNotification *twitterNotif = [[UILocalNotification alloc] init];
    twitterNotif.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"twitter", @"service", nil];
    twitterNotif.alertBody = @"Post to Twitter";
    twitterNotif.alertAction = @"post to Twitter";
    twitterNotif.applicationIconBadgeNumber = 0;
    [application presentLocalNotificationNow:twitterNotif];
}

- (void)sendFacebookNotification:(UIApplication *)application{
    UILocalNotification *facebookNotif = [[UILocalNotification alloc] init];
    facebookNotif.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"facebook", @"service", nil];
    facebookNotif.alertBody = @"Post to Facebook";
    facebookNotif.alertAction = @"post to Facebook";
    facebookNotif.applicationIconBadgeNumber = 0;
    [application presentLocalNotificationNow:facebookNotif];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    /*
    UILocalNotification *notification = launchOptions[UIApplicationLaunchOptionsLocalNotificationKey];
    if (notification) {
        NSLog(@"there was alrady a notification. don't send");
    } else {
        [self sendTwitterNotification:(UIApplication *)application];
        [self sendFacebookNotification:(UIApplication *)application];
    }
    */
    /*if(_LaunchServiceInt == 1) {
        NSLog(@"sending twitter");
        [self sendTwitterNotification:(UIApplication *)application];
    }
    if (_LaunchServiceInt == 2) {
        [self sendFacebookNotification:(UIApplication *)application];
    }
    if (_LaunchServiceInt == 0) {
        NSLog(@"ain't nothing to do");
        
    }   
    if (_LaunchServiceInt == 3){
        [application cancelAllLocalNotifications];
        [self sendFacebookNotification:(UIApplication *) application];
        [self sendTwitterNotification:(UIApplication *) application];
    }*/
    
    [application cancelAllLocalNotifications];
    [self sendFacebookNotification:(UIApplication *) application];
    [self sendTwitterNotification:(UIApplication *) application];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    //[application cancelAllLocalNotifications];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
      //[application cancelAllLocalNotifications];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
