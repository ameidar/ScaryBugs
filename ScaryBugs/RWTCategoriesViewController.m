//
//  RWTCategoriesViewController.m
//  ScaryBugs
//
//  Created by Inna Grois on 7/26/14.
//  Copyright (c) 2014 Inna Grois. All rights reserved.
//

#import "RWTCategoriesViewController.h"
#import "RWTCategory.h"

@interface RWTCategoriesViewController ()
{
    NSMutableArray *_objects;
}
@end


@implementation RWTCategoriesViewController

@synthesize categories = _categories ;

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    RWTCategory * category1 = [[RWTCategory alloc] initWithTitle:@"Credit Cards" image:[UIImage imageNamed:@"potatoBugThumb.jpg"]] ;
    RWTCategory * category2 = [[RWTCategory alloc] initWithTitle:@"IDs" image:[UIImage imageNamed:@"potatoBugThumb.jpg"]] ;
    RWTCategory * category3 = [[RWTCategory alloc] initWithTitle:@"Reciepts" image:[UIImage imageNamed:@"potatoBugThumb.jpg"]] ;
    RWTCategory * category4 = [[RWTCategory alloc] initWithTitle:@"Other Documents" image:[UIImage imageNamed:@"potatoBugThumb.jpg"]] ;
    
    
    if (!_categories)
        _categories = [[NSMutableArray alloc] initWithObjects:category1, category2, category3, category4, nil] ;
        
    
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                              initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                              target:self action:@selector(addTapped:)];
    self.title = @"Categories" ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _categories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoriesCell"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"MyBasicCell"];
    }
    RWTCategory *category = [self.categories objectAtIndex:indexPath.row] ;
    cell.textLabel.text = category.title ;
    cell.imageView.image = category.image ;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_categories removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)addTapped:(id)sender
{
  //  RWTCategory * category = [[RWTCategory alloc] initWithTitle:<#(NSString *)#> image:<#(UIImage *)#>]
//    RWTScaryBugDoc *newDoc = [[RWTScaryBugDoc alloc] initWithTitle:@"New Bug" rating:0 thumbImage:nil fullImage:nil];
//    [_bugs addObject:newDoc];
    
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:_bugs.count-1 inSection:0];
//    NSArray *indexPaths = [NSArray arrayWithObject:indexPath];
//    [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:YES];
    
//    [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionMiddle];
 //   [self performSegueWithIdentifier:@"CategoreisSegue" sender:self];
}

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

-(void)didMoveToParentViewController:(UIViewController *)parent{
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    RWTDetailViewController *detailController =segue.destinationViewController;
//    RWTScaryBugDoc *bug = [self.bugs objectAtIndex:self.tableView.indexPathForSelectedRow.row];
//    detailController.detailItem = bug;
}

@end
