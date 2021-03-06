//
//  RWTViewController.m
//  ScaryBugs
//
//  Created by ami meidar on 7/30/14.
//  Copyright (c) 2014 ___ou___. All rights reserved.
//

#import "RWTViewController.h"
#import "KeychainItemWrapper.h"


@interface RWTViewController ()

@end

@implementation RWTViewController

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
    KeychainItemWrapper *keychain =
    [[KeychainItemWrapper alloc] initWithIdentifier:@"TestAppLoginData" accessGroup:nil];
    
    
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"HasLaunchedOnce"])
    {
        self.view.backgroundColor = [UIColor yellowColor];
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"HasLaunchedOnce"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        // app already launched
    }
    else
    {
        self.view.backgroundColor = [UIColor grayColor];
        // Get username from keychain (if it exists)
        [usernameField setText:[keychain objectForKey:(__bridge id)kSecAttrAccount]];
        NSLog(@"username: %@", [usernameField text]);
        
        // Get password from keychain (if it exists)
        [passwordField setText:[keychain objectForKey:(__bridge id)kSecValueData]];
        NSLog(@"password: %@", [passwordField text]);
        
        
        
        
        
        // This is the first launch ever
    }
    credentialsDictionary = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"password", @"1234", nil] forKeys:[NSArray arrayWithObjects:@"username",@"inna", nil]];
    
    // Do any additional setup after loading the view.
}

- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)enterCredentials
{
    KeychainItemWrapper *keychain =
    [[KeychainItemWrapper alloc] initWithIdentifier:@"TestAppLoginData" accessGroup:nil];
    
    // Store username to keychain
    
    [keychain setObject:[usernameField text] forKey:(__bridge id)kSecAttrAccount];
    
    // Store password to keychain
    
    [keychain setObject:[passwordField text] forKey:(__bridge id)kSecValueData];
    
    
    
    if ([[credentialsDictionary objectForKey:usernameField.text]isEqualToString:passwordField.text]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Correct Password" message:@"This password is correct." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect Password" message:@"This password is incorrect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }
    
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
