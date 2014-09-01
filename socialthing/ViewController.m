//
//  ViewController.m
//  socialthing
//
//  Created by Ben Zweig on 11/22/13.
//  Copyright (c) 2013 Ben Zweig. All rights reserved.
//

#import "ViewController.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Social/Social.h>
#import "HelpViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    self.title = @"Composure";
    //first-time ever defaults check and set
    //if([[NSUserDefaults standardUserDefaults] boolForKey:@"FirstLaunch"]!=YES)
    //{
      //  [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"FirstLaunch"];
    //}
    //if ([[NSUserDefaults standardUserDefaults] boolForKey:@"FirstLaunch"]){
        //proceed with app normally
    //}
    //else{
     //   [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"FirstLaunch"];
       // HelpViewController *viewController = [[HelpViewController alloc] init];
         //[self presentViewController:viewController animated:YES completion:nil];
        
    //}
    
    NSUserDefaults *firstLaunch = [NSUserDefaults standardUserDefaults];
    if (![firstLaunch objectForKey:@"FirstRun"]){
        [firstLaunch setObject:[NSDate date] forKey:@"FirstRun"];
        UIStoryboard * storyboard = self.storyboard;
        
        HelpViewController * helpMe = [storyboard instantiateViewControllerWithIdentifier: @ "helpOptions"];
        [self.navigationController pushViewController:(UIViewController *)helpMe animated:YES];
        }
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twitterTouchDown:(id)sender {
    [self.twitterButton press];
}
//bring up twitter modal
- (IBAction)twitterTouchUpInside:(id)sender {
    [self.twitterButton unpress];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [self presentViewController:composeViewController animated:YES completion:nil];
    } else {
        UIAlertView *Talert = [[UIAlertView alloc] initWithTitle:@"Uh oh!" message:@"Doesn't seem like you've allowed this app to access your Twitter account. Please do so in Settings." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [Talert show];
    }
}

//bring up facebook modal
- (IBAction)facebookTouchUpInside:(id)sender {
    [self.facebookButton unpress];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [self presentViewController:composeViewController animated:YES completion:nil];
    } else {
        UIAlertView *FBalert = [[UIAlertView alloc] initWithTitle:@"Uh oh!" message:@"Doesn't seem like you've allowed this app to access your Facebook account. Please do so in Settings." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [FBalert show];
    }
}

- (IBAction)unwindToHome:(UIStoryboardSegue *)unwindSegue
{
}

- (IBAction)unwindToHelp:(UIStoryboardSegue *)unwindSegue
{

}

- (IBAction)twitterTouchUpOutside:(id)sender {
    [self.twitterButton unpress];
}
- (IBAction)facebookTouchDown:(id)sender {
    [self.facebookButton press];
}

- (IBAction)facebookTouchUpOutside:(id)sender {
    [self.facebookButton unpress];
}

- (IBAction)infoTouchDown:(id)sender {
    [self.infoButton press];
}

- (IBAction)infoTouchUpInside:(id)sender {
    [self.infoButton unpress];
}

- (IBAction)infoTouchUpOutside:(id)sender {
    [self.infoButton unpress];
}
- (IBAction)titleTouchDown:(id)sender {
    [self.titleButton press];
}

- (IBAction)titleTouchUpInside:(id)sender {
    [self.titleButton unpress];
}

- (IBAction)titleTouchUpOutside:(id)sender {
    [self.titleButton unpress];
}
@end