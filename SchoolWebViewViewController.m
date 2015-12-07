//
//  SchoolWebViewViewController.m
//  MyClassroom
//
//  Created by Almushigih, Hind A on 12/6/15.
//  Copyright © 2015 Gannon University. All rights reserved.
//

#import "SchoolWebViewViewController.h"

@interface SchoolWebViewViewController ()
//@property UIBarButtonItem *backButton; //(weak, nonatomic) IBOutlet UIWebView *viewWeb;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;

@end

@implementation SchoolWebViewViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://www.prep-villa.com";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_viewWeb loadRequest:requestObj];
    [self.view addSubview:_viewWeb];
    
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style: UIBarButtonItemStylePlain target:self action:nil];
//    self.navigationItem.leftBarButtonItem = backButton;
    self.backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style: UIBarButtonItemStylePlain target:self action:@selector(Back)];
    self.navigationItem.leftBarButtonItem = self.backButton;
    
    // Do any additional setup after loading the view.
}
- (IBAction)Back
{
    [self dismissViewControllerAnimated:YES completion:nil]; // ios 6
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
