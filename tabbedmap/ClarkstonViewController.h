//
//  SecondViewController.h
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface ClarkstonViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *ClarkstonMapView;

@property (strong, nonatomic) NSDictionary *buildings;

@end
