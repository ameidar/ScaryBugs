//
//  RWTMasterViewController.h
//  ScaryBugs
//
//  Created by ami meidar on 6/29/14.
//  Copyright (c) 2014 ___ou___. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>
#import "RWTCategory.h"

@interface RWTMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>
@property (strong) NSMutableArray *bugs;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) RWTCategory * category;

@end
