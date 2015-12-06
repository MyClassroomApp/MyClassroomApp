//
//  ViewController.m
//  MyClassroom
//
//  Created by Hind Almushigih on 24/11/15.
//  Copyright © 2015 Gannon University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *infiIcon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.infiIcon setImage:[UIImage imageNamed:@"information-icon-md"]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
