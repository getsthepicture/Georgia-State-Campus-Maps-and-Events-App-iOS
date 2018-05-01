//
//  AlpharettaViewController.m
//  tabbedmap
//
//  Created by Georgia Perimeter College on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AlpharettaViewController.h"
#import "DisplayMap.h"
#import "EventViewController.h"


@implementation AlpharettaViewController
@synthesize AlpharettaMapView;
//@synthesize eventDetailViewController;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationController.navigationBarHidden = YES;

    self.AlpharettaMapView.delegate = self;
    
    [AlpharettaMapView setMapType:MKMapTypeHybrid];
    [AlpharettaMapView setZoomEnabled:YES];
    [AlpharettaMapView setScrollEnabled:YES];

    // Pin 1
    
    //MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    MKCoordinateRegion region; 
    region.center.latitude = 34.060934 ;
    region.center.longitude = -84.254863;
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    
    [AlpharettaMapView setRegion:region animated:YES]; 
    
    DisplayMap *ann = [[DisplayMap alloc] initWithCoordinate:region.center title:@"Alpharetta Center"];
    ann.image=[UIImage imageNamed:@"gpc-logo"];
    
    [AlpharettaMapView addAnnotation:ann];
}    



- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation
{
    static NSString *parkingAnnotationIdentifier=@"ParkingAnnotationIdentifier";
    
    if([annotation isKindOfClass:[MKAnnotationView class]]){
        //Try to get an unused annotation, similar to uitableviewcells
        MKAnnotationView *annotationView=[AlpharettaMapView dequeueReusableAnnotationViewWithIdentifier:parkingAnnotationIdentifier];
        
        //If one isn't available, create a new one
        if(!annotationView){
            annotationView=[[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:parkingAnnotationIdentifier];
            annotationView.canShowCallout = YES;
              
            //Here's where the magic happens
            
            annotationView.image=[UIImage imageNamed:@"gpc-jaguar"];
            
            //Here's where the magic happens, just added this code 
            
            UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
            annotationView.rightCalloutAccessoryView = rightButton;
            
            UIImageView *leftCalloutView = [[UIImageView alloc] initWithImage:((DisplayMap *)annotation).image];
            annotationView.leftCalloutAccessoryView = leftCalloutView;
            
        }
                
        return annotationView;
    }
    
    return nil;
}


- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    DisplayMap *dm = (DisplayMap *)view.annotation;
    
    EventViewController *evc = [self.storyboard instantiateViewControllerWithIdentifier:@"eventViewIdentifier"];
    evc.title = dm.title;
    
    [self.navigationController pushViewController:evc animated:YES];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    //self.eventDetailViewController = nil;
    [self setAlpharettaMapView:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
