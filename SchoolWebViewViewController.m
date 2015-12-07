//
//  SchoolWebViewViewController.m
//  MyClassroom
//
//  Created by Almushigih, Hind A on 12/6/15.
//  Copyright © 2015 Gannon University. All rights reserved.
//

#import "SchoolWebViewViewController.h"

@interface SchoolWebViewViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *viewWeb;

@end

@implementation SchoolWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://www.prep-villa.com";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_viewWeb loadRequest:requestObj];
    // Do any additional setup after loading the view.
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
