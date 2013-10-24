//
//  ViewController.h
//  VoovilSplashScreen
//
//  Created by Özcan Akbulut on 24.10.13.
//  Copyright (c) 2013 Özcan Akbulut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIView *launchLogo;
@property (nonatomic, strong) IBOutlet UIView *launchFade;
-(IBAction)fadeButton;

@end
