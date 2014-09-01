//
//  ViewController.h
//  socialthing
//
//  Created by Ben Zweig on 11/22/13.
//  Copyright (c) 2013 Ben Zweig. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "bouncyButton.h"


@interface ViewController : UIViewController
- (IBAction)twitterTouchDown:(id)sender;
- (IBAction)twitterTouchUpInside:(id)sender;
- (IBAction)twitterTouchUpOutside:(id)sender;
@property (weak, nonatomic) IBOutlet bouncyButton *twitterButton;

- (IBAction)facebookTouchDown:(id)sender;
- (IBAction)facebookTouchUpInside:(id)sender;
- (IBAction)facebookTouchUpOutside:(id)sender;
@property (weak, nonatomic) IBOutlet bouncyButton *facebookButton;
- (IBAction)infoTouchDown:(id)sender;
- (IBAction)infoTouchUpInside:(id)sender;
- (IBAction)infoTouchUpOutside:(id)sender;
@property (weak, nonatomic) IBOutlet bouncyButton *infoButton;

- (IBAction)titleTouchDown:(id)sender;
- (IBAction)titleTouchUpInside:(id)sender;
- (IBAction)titleTouchUpOutside:(id)sender;
@property (weak, nonatomic) IBOutlet bouncyButton *titleButton;

@end