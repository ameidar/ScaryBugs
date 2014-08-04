//
//  RWTCategory.m
//  ScaryBugs
//
//  Created by Inna Grois on 7/27/14.
//  Copyright (c) 2014 Inna Grois. All rights reserved.
//

#import "RWTCategory.h"

@implementation RWTCategory

@synthesize image = _image ;
@synthesize title = _title ;

-(id)initWithTitle:(NSString *)title image:(UIImage *)image;
{
    if (self = [super init])
    {
        self.title = title ;
        self.image = image ;
    }
    return self ;
}

@end
