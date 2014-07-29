//
//  RWTDetailViewController.h
//  ScaryBugs
//
//  Created by ami meidar on 6/29/14.
//  Copyright (c) 2014 ___ou___. All rights reserved.
//
#import "RWTRateView.h"
#import <UIKit/UIKit.h>

@class RWTScaryBugDoc;


@interface RWTDetailViewController : UIViewController <UITextFieldDelegate, RWTRateViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) RWTScaryBugDoc *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet RWTRateView *rateView;
@property (strong, nonatomic) UIImagePickerController *picker;
- (IBAction)titleFieldTextChanged:(id)sender;
- (IBAction)addPictureTapped:(id)sender;
@end


