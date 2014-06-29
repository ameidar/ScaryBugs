//
//  RWTDetailViewController.h
//  ScaryBugs
//
//  Created by ami meidar on 6/29/14.
//  Copyright (c) 2014 ___ou___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
