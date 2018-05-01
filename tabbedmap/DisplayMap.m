//
//  DisplayMap.m
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DisplayMap.h"




@implementation DisplayMap

@synthesize title;
@synthesize subtitle;
@synthesize coordinate;
@synthesize imagedot;
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    coordinate = c;
    title = t;
    
    return self;
}




@end
