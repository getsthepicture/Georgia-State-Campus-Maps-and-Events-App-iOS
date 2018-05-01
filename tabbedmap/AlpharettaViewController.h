//
//  FirstViewController.h
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

//@class EventDetailViewController;



@interface AlpharettaViewController : UIViewController <MKMapViewDelegate>


@property (weak, nonatomic) IBOutlet MKMapView *AlpharettaMapView;
//@property (strong, nonatomic) IBOutlet eventDetailViewController *eventDetailViewController;

@end
