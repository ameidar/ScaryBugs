//
//  RWTViewController.h
//  ScaryBugs
//
//  Created by ami meidar on 7/30/14.
//  Copyright (c) 2014 ___ou___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWTViewController : UIViewController
{

IBOutlet UITextField *usernameField;
IBOutlet UITextField *passwordField;

NSDictionary *credentialsDictionary;
}

- (IBAction)enterCredentials;

@end
