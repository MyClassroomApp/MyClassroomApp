//
//  MapViewController.m
//  MyClassroom
//
//  Created by Hind Almushigih on 8/12/15.
//  Copyright © 2015 Gannon University. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //UIImage *image = [[UIImage alloc] init];
    //self.mapImage = [[UIImageView alloc] init];
    
    //[self.mapImage setImage:[UIImage imageNamed:@"ColoredMap.png"]];
//    
//    UIImage *image = [[UIImage alloc] init];
//    image = [UIImage imageNamed: @"ColoredMap.jpg"];
//    self.mapImage = [[UIImageView alloc] initWithImage:image];
//    
//    image = [UIImage imageNamed: @"ColoredMap"];
//    [self.mapImage setImage:image];
    
    
    
    
    UIImageView *imgview = [[UIImageView alloc]
                            initWithFrame:CGRectMake(10, 10, 300, 400)];
    [imgview setImage:[UIImage imageNamed:@"ColoredMap.jpg"]];
    [imgview setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgview];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
