//
//  RWTCategory.h
//  ScaryBugs
//
//  Created by Inna Grois on 7/27/14.
//  Copyright (c) 2014 Inna Grois. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RWTScaryBugDoc.h"

@interface RWTCategory : NSObject

@property (strong) UIImage *image ;
@property (strong) NSString *title ;
@property (strong) NSMutableArray * documents ;

-(id)initWithTitle:(NSString *)title image:(UIImage *)thumbImage;

-(void)addDocument:(RWTScaryBugDoc *)document;

@end
