//
//  DisplayMap.h
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


@interface DisplayMap : MKPinAnnotationView <MKAnnotation>

{
    NSString *title;
    NSString *subtitle;
    CLLocationCoordinate2D coordinate;
    UIImage *imagedot;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) UIImage *imagedot;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;




@end
