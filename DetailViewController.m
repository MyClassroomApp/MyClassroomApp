//
//  DetailViewController.m
//  MyClassroom
//
//  Created by Hadeel Almushigih on 12/6/15.
//  Copyright © 2015 Gannon University. All rights reserved.
//

#import "DetailViewController.h"
#import "MapViewController.h"
#import "RoomListViewController.h"
@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverPresentationController *masterPopoverController;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmentedControl;
- (void)configureView;
@property (strong, nonatomic) MapViewController *mapViewController;

@property (strong, nonatomic) RoomListViewController* roomListViewController;

@end

@implementation DetailViewController

@synthesize detailItem = _detailItem;
@synthesize detailDescriptionLabel = _detailDescriptionLabel;
@synthesize masterPopoverController = _masterPopoverController;

#pragma mark - Managing the detail item





- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
    
    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissalTransitionDidEnd:YES];// dismissPopoverAnimated:YES];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

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
    [self configureView];
    [self.mySegmentedControl addTarget:self
                                action:@selector(mySegmentedControlAction:)
                      forControlEvents:UIControlEventValueChanged];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverPresentationController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

- (IBAction)mySegmentedControlAction:(id)sender {
    switch (self.mySegmentedControl.selectedSegmentIndex) {
        case 0:
            self.mapViewController = [[MapViewController alloc ]init];
            [self.view addSubview:self.mapViewController.view];
            break;
        case 1:
            self.roomListViewController = [[RoomListViewController alloc ]init];
            [self.view addSubview:self.roomListViewController.view];
            break;
    }
}


@end
