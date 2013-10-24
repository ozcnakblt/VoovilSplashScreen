//
//  ViewController.m
//  VoovilSplashScreen
//
//  Created by Özcan Akbulut on 24.10.13.
//  Copyright (c) 2013 Özcan Akbulut. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Add image with tag
    UIImageView *imageLogo = (UIImageView *) [self.view viewWithTag:100];
    imageLogo.image = [UIImage imageNamed:@"launch-logo.png"];

    // Set position of logo
    // Set the fadeButton hidden on beginning
    self.launchLogo.frame = CGRectMake(0, 300, 320, 135);
    self.launchFade.hidden = YES;
    
    // Set Duration an end position of logo
    [UIView animateWithDuration:2.0 animations:^{
        self.launchLogo.frame = CGRectMake(0, 50, 320, 135);
    }completion:^(BOOL finished){
        // Set the fade effect for the button
        [UIView transitionWithView:self.view
                          duration:1.0
                           options:UIViewAnimationOptionTransitionCrossDissolve
                        animations:^{
                            // Set fadeButton visible
                            self.launchFade.hidden = NO;
                        }
                        completion:nil];
    }];
}

-(IBAction)fadeButton {
    NSLog(@"Pressed 'Fade'");
 	UIAlertView *info = [[UIAlertView alloc]
						 initWithTitle: @"VoovilSplashScreen"
						 
						 message: @"Version 1.0.0\n© 2013, Özcan Akbulut\nwww.ozcanakbulut.com"
						 delegate: self
						 cancelButtonTitle: @"Close"
						 otherButtonTitles:nil];
	[info show]	;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
