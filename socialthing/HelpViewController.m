//
//  HelpViewController.m
//  Composure
//
//  Created by Ben Zweig on 1/23/14.
//  Copyright (c) 2014 Ben Zweig. All rights reserved.
//

#import "HelpViewController.h"
#import "ViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToHelp:(UIStoryboardSegue *)unwindSegue
{
}

@end
