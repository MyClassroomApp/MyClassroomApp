//
//  VJSplitViewController.m
//  MyClassroom
//
//  Created by Hadeel Almushigih on 12/6/15.
//  Copyright © 2015 Gannon University. All rights reserved.
//

#import "VJSplitViewController.h"

@interface VJSplitViewController ()

@end

@implementation VJSplitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //This is necessary for the UIPopOverController to appear when the interface orientation is portrait
    UINavigationController *navController = [self.viewControllers lastObject];
    self.delegate = (id)navController.topViewController;}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
