//
//  DecaturViewController.h
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface DecaturViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *DecaturMapView;

@end
